module BrazilianCardinality
  module Currency
    class << self
      def currency_cardinal(value)
        return 'grátis' if value.zero?

        abs_value = value.abs
        cents = abs_value.to_s.split('.')[1].to_s[0, 2].to_i
        integer = abs_value.to_i
        expression = raw_cardinal_expression(integer, cents)

        expression << " de #{currency_name}" if integer.zero?
        expression << negative_wording(value, cents)
        expression
      end

      private

      def currency_name(plural = false)
        ::BrazilianCardinality::CURRENCY_NAME[plural ? 1 : 0]
      end

      def negative_wording(value, cents)
        negative_word = ' negativo' if value.negative?
        value = value.abs
        negative_word << 's' if negative_word && (value > 1 || cents > 1)
        negative_word.to_s
      end

      def raw_cardinal_expression(integer, cents)
        integer_expression = cardinal_currency_integer_part(integer)
        cents_expression = cardinal_cents(cents)
        [integer_expression, cents_expression].compact.join(' e ')
      end

      def cardinal_cents(cents)
        return if cents.zero?
        expression = Number.number_cardinal(cents)
        currency_word = cents == 1 ? 'centavo' : 'centavos'
        "#{expression} #{currency_word}"
      end

      def cardinal_currency_integer_part(value)
        return if value.zero?
        expression = Number.number_cardinal(value)
        preposition = 'de ' if expression =~ /(ão|ões)$/
        "#{expression} #{preposition}#{currency_word(value)}"
      end

      def currency_word(value)
        currency_name(value > 1)
      end
    end
  end
end
