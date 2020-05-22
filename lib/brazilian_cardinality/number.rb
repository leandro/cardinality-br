module BrazilianCardinality
  module Number
    NumberTooBigError = Class.new(StandardError)

    ONES = {
      0 => 'zero',
      1 => 'um',
      2 => 'dois',
      3 => 'três',
      4 => 'quatro',
      5 => 'cinco',
      6 => 'seis',
      7 => 'sete',
      8 => 'oito',
      9 => 'nove'
    }.freeze

    TENS = {
      10 => 'dez',
      11 => 'onze',
      12 => 'doze',
      13 => 'treze',
      14 => 'quatorze',
      15 => 'quinze',
      16 => 'dezesseis',
      17 => 'dezessete',
      18 => 'dezoito',
      19 => 'dezenove',
      20 => 'vinte',
      30 => 'trinta',
      40 => 'quarenta',
      50 => 'cinquenta',
      60 => 'sessenta',
      70 => 'setenta',
      80 => 'oitenta',
      90 => 'noventa'
    }.freeze

    HUNDREDS = {
      100 => 'cento',
      200 => 'duzentos',
      300 => 'trezentos',
      400 => 'quatrocentos',
      500 => 'quinhentos',
      600 => 'seiscentos',
      700 => 'setecentos',
      800 => 'oitocentos',
      900 => 'novecentos'
    }.freeze

    class << self
      def number_cardinal(number)
        negative = number.negative? ? 'menos ' : ''
        abs_value = number.abs
        decimals = abs_value.to_s.split('.')[1].to_s[0, 2]
        integer = abs_value.to_i
        expression = raw_cardinal_expression(integer, decimals)

        "#{negative}#{expression}"
      end

      private

      def raw_cardinal_expression(integer, decimals)
        integer_expression = cardinal_number_integer_part(integer)
        cents_expression = cardinal_decimals(decimals)
        [integer_expression, cents_expression].compact.join(' vírgula ')
      end

      def cardinal_number_integer_part(value)
        case value
        when 0..999 then cardinal_for_0_up_to_999(value)
        when 1000..999_999_999_999_999 then cardinal_for_thousands_to_trillions(value)
        else raise NumberTooBigError, "#{value} is too big"
        end
      end

      def cardinal_decimals(decimals)
        return if decimals.to_i.zero?

        if decimals[0].to_i.zero?
          decimal_prefix = 'zero'
        end

        decimals = decimals.to_i
        [decimal_prefix, Number.number_cardinal(decimals)].compact.join(' ')
      end

      def cardinal_for_0_up_to_999(number)
        case number
        when 0..9 then ONES[number]
        when 10..19 then TENS[number]
        when 20..99 then cardinal_for_tens_and_hundreds(number, 10)
        when 100 then 'cem'
        when 101..999 then cardinal_for_tens_and_hundreds(number, 100)
        end
      end

      def cardinal_for_thousands_to_trillions(number)
        case number
        when 1000..999_999
          cardinal_for_scale_of_thousands(number, 1_000, 'mil', 'mil')
        when 1_000_000..999_999_999
          cardinal_for_scale_of_thousands(number, 1_000_000, 'milhão', 'milhões')
        when 1_000_000_000..999_999_999_999
          cardinal_for_scale_of_thousands(number, 1_000_000_000, 'bilhão', 'bilhões')
        when 1_000_000_000_000..999_999_999_999_999
          cardinal_for_scale_of_thousands(number, 1_000_000_000_000, 'trilhão', 'trilhões')
        end
      end

      def cardinal_for_tens_and_hundreds(number, scale)
        remainder = number % scale
        words_map = scale == 10 ? TENS : HUNDREDS
        return words_map[number] if remainder.zero?
        "#{words_map[number - remainder]} e #{number_cardinal(remainder)}"
      end

      def cardinal_for_scale_of_thousands(number, scale, singular, plural)
        quocient = number / scale
        remainder = number % scale
        word = quocient > 1 ? plural : singular
        high_order_units = "#{number_cardinal(quocient)} #{word}"
        return high_order_units if remainder.zero?
        "#{high_order_units} e #{number_cardinal(remainder)}"
      end

      def cardinal_for_fraction(fraction)
        return '' unless fraction

        fraction = (fraction * 10).to_i

        fraction_expression = case fraction
                              when 0..999 then cardinal_for_0_up_to_999(fraction)
                              when 1000..999_999_999_999_999 then cardinal_for_thousands_to_trillions(fraction)
                              else raise NumberTooBigError, "#{fraction} is too big"
                              end

        ' vírgula ' + fraction_expression
      end
    end
  end
end
