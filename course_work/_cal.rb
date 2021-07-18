# frozen_string_literal: true

require 'date'

class Cal
  START =
    {
      'cn' => Date::GREGORIAN, # China
      'de' => 2_342_032,         # Germany (protestant states)
      'dk' => 2_342_032,         # Denmark
      'es' => 2_299_161,         # Spain
      'fi' => 2_361_390,         # Finland
      'fr' => 2_299_227,         # France
      'gb' => 2_361_222,         # United Kingdom
      'gr' => 2_423_868,         # Greece
      'hu' => 2_301_004,         # Hungary
      'it' => 2_299_161,         # Italy
      'jp' => Date::GREGORIAN, # Japan
      'no' => 2_342_032,         # Norway
      'pl' => 2_299_161,         # Poland
      'pt' => 2_299_161,         # Portugal
      'ru' => 2_421_639,         # Russia
      'se' => 2_361_390,         # Sweden
      'us' => 2_361_222,         # United States
      'os' => Date::JULIAN,    # (old style)
      'ns' => Date::GREGORIAN  # (new style)
    }.freeze

  DEFAULT_START = 'gb'

  def initialize
    opt_j; opt_m; opt_t; opt_y; opt_c
  end

  def opt_j(flag = false) = @opt_j = flag

  def opt_m(flag = false) = @opt_m = flag

  def opt_t(flag = false) = @opt_t = flag

  def opt_y(flag = false) = @opt_y = flag

  def opt_c(arg = DEFAULT_START) = @start = START[arg]

  def set_params
    @dw = @opt_j ? 3 : 2
    @mw = @dw * 7 - 1
    @mn = @opt_j ? 2 : 3
    @tw = (@mw + 2) * @mn - 2
    @k  = @opt_m ? 1 : 0
    @da = @opt_j ? :yday : :mday
  end

  def pict(y, m)
    d = (1..31).detect { |x| Date.valid_date?(y, m, x, @start) }
    fi = Date.new(y, m, d, @start)
    fi -= (fi.jd - @k + 1) % 7

    ve  = (fi..fi +  6).collect do |cu|
      %w[S M Tu W Th F S][cu.wday]
    end
    ve += (fi..fi + 41).collect do |cu|
      if cu.mon == m then cu.send(@da) end.to_s
    end

    ve = ve.collect { |e| e.rjust(@dw) }

    gr = group(ve, 7)
    gr = trans(gr) if @opt_t
    ta = gr.collect { |xs| xs.join(' ') }

    ca = %w[January February March April May June July
            August September October November December][m - 1]
    ca = "#{ca} #{y}" unless @opt_y
    ca = ca.center(@mw)

    ta.unshift(ca)
  end

  def group(xs, n)
    (0..xs.size / n - 1).collect { |i| xs[i * n, n] }
  end

  def trans(xs)
    (0..xs[0].size - 1).collect { |i| xs.collect { |x| x[i] } }
  end

  def stack(xs)
    xs.empty? ? [] : xs[0] + stack(xs[1..])
  end

  def block(xs, n)
    stack(group(xs, n).collect { |ys| trans(ys).collect { |zs| zs.join('  ') } })
  end

  def unlines(xs)
    xs.collect { |x| "#{x}\n" }.join
  end

  def monthly(y, m)
    unlines(pict(y, m))
  end

  def addmon(y, m, n)
    y, m = (y * 12 + (m - 1) + n).divmod(12)
    [y, m + 1]
  end

  def yearly(y)
    y.to_s.center(@tw) + "\n\n" +
      unlines(block((0..11).collect { |n| pict(*addmon(y, 1, n)) }, @mn)) + "\n"
  end

  def print(y, m)
    set_params
    @opt_y ? yearly(y) : monthly(y, m)
  end
end

if __FILE__ == $PROGRAM_NAME

  require 'getoptlong'

  def usage
    warn 'usage: cal [-c iso3166] [-jmty] [[month] year]'
    exit 1
  end

  cal = Cal.new

  begin
    GetoptLong.new(['-c', GetoptLong::REQUIRED_ARGUMENT],
                   ['-j', GetoptLong::NO_ARGUMENT],
                   ['-m', GetoptLong::NO_ARGUMENT],
                   ['-t', GetoptLong::NO_ARGUMENT],
                   ['-y', GetoptLong::NO_ARGUMENT])
              .each do |opt, arg|
      case opt
      when '-c' then cal.opt_c(arg) || raise
      when '-j' then cal.opt_j(true)
      when '-m' then cal.opt_m(true)
      when '-t' then cal.opt_t(true)
      when '-y' then cal.opt_y(true)
      end
    end
  rescue StandardError
    usage
  end

  y, m = ARGV.values_at(1, 0).compact.collect(&:to_i)
  cal.opt_y(true) if y && !m

  to = Date.today
  y ||= to.year
  m ||= to.mon

  usage unless m >= 1 && m <= 12
  usage unless y >= -4712

  print cal.print(y, m)

end
