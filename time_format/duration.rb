require 'rubygems'
require 'active_support/inflector'

# Utilitity which provides human readable durations for seconds
class Duration
  IN_MINUTE = 60
  IN_HOUR = IN_MINUTE * 60
  IN_DAY = IN_HOUR * 24
  IN_SECOND = 1

  attr_accessor :seconds
  attr_reader :humanized_string

  def initialize(seconds)
    @seconds = seconds
    @humanized_string = ''
    humanize
  end

  def to_s
    @humanized_string
  end

  private def humanize
    seconds_left = @seconds

    seconds_left = humanize_part(seconds_left, IN_DAY, 'Day')
    seconds_left = humanize_part(seconds_left, IN_HOUR, 'Hour')
    seconds_left = humanize_part(seconds_left, IN_MINUTE, 'Minute')
    humanize_part(seconds_left, IN_SECOND, 'Seconds', ' and')
  end

  private def humanize_part(seconds_left, interval_length, label, separator = ',')
    if seconds_left / interval_length > 0
      units = seconds_left / interval_length
      @humanized_string = concat_string @humanized_string, (pluralize_with_label units, label), separator
      seconds_left -= (seconds_left / interval_length) * interval_length
    end
    seconds_left
  end

  private def pluralize_with_label(units, label)
    "#{units} #{units > 1 ? label.pluralize : label}"
  end

  private def concat_string(accumulator, part, separator)
    return part if accumulator.empty?

    accumulator << "#{separator} #{part}"
  end
end
