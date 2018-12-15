require 'test_helper'

class BrazilianCardinality::CurrencyTest < Minitest::Test
  def setup
    @klass = BrazilianCardinality::Currency
  end

  def test_positive_values
    assert_equal 'grátis', @klass.currency_cardinal(0)
    assert_equal 'um centavo de real', @klass.currency_cardinal(0.01)
    assert_equal 'dois centavos de real', @klass.currency_cardinal(0.02)
    assert_equal 'vinte e um centavos de real', @klass.currency_cardinal(0.21)
    assert_equal 'um real', @klass.currency_cardinal(1.00)
    assert_equal 'um real', @klass.currency_cardinal(1)
    assert_equal 'um real e um centavo', @klass.currency_cardinal(1.01)
    assert_equal 'um real e dois centavos', @klass.currency_cardinal(1.02)
    assert_equal 'um real e quarenta centavos', @klass.currency_cardinal(1.4)
    assert_equal 'um milhão de reais e um centavo', @klass.currency_cardinal(1_000_000.01)
    assert_equal 'dois milhões de reais e um centavo', @klass.currency_cardinal(2_000_000.01)
    assert_equal 'dois milhões e duzentos reais e um centavo', @klass.currency_cardinal(2_000_200.01)
    assert_equal 'um bilhão de reais e um centavo', @klass.currency_cardinal(1_000_000_000.01)
    assert_equal 'um trilhão de reais e um centavo', @klass.currency_cardinal(1_000_000_000_000.01)
    assert_equal 'cento e vinte e oito mil e duzentos e quarenta e três reais e vinte e oito centavos', @klass.currency_cardinal(128_243.28)
    assert_equal 'oitenta e dois mil e trezentos e oitenta e nove reais e dezenove centavos', @klass.currency_cardinal(82_389.19)
    assert_equal 'dois mil e trezentos e quarenta e sete reais e vinte e oito centavos', @klass.currency_cardinal(2_347.28)
    assert_equal 'noventa e dois mil e trezentos e setenta e dois reais e oitenta e seis centavos', @klass.currency_cardinal(92_372.86)
  end

  def test_negative_values
    assert_equal 'grátis', @klass.currency_cardinal(-0)
    assert_equal 'um centavo de real negativo', @klass.currency_cardinal(-0.01)
    assert_equal 'dois centavos de real negativos', @klass.currency_cardinal(-0.02)
    assert_equal 'vinte e um centavos de real negativos', @klass.currency_cardinal(-0.21)
    assert_equal 'um real negativo', @klass.currency_cardinal(-1.00)
    assert_equal 'um real negativo', @klass.currency_cardinal(-1)
    assert_equal 'um real e um centavo negativos', @klass.currency_cardinal(-1.01)
    assert_equal 'um real e dois centavos negativos', @klass.currency_cardinal(-1.02)
    assert_equal 'um real e quarenta centavos negativos', @klass.currency_cardinal(-1.4)
    assert_equal 'um milhão de reais e um centavo negativos', @klass.currency_cardinal(-1_000_000.01)
    assert_equal 'dois milhões de reais e um centavo negativos', @klass.currency_cardinal(-2_000_000.01)
    assert_equal 'dois milhões e duzentos reais e um centavo negativos', @klass.currency_cardinal(-2_000_200.01)
    assert_equal 'um bilhão de reais e um centavo negativos', @klass.currency_cardinal(-1_000_000_000.01)
    assert_equal 'um trilhão de reais e um centavo negativos', @klass.currency_cardinal(-1_000_000_000_000.01)
    assert_equal 'cento e vinte e oito mil e duzentos e quarenta e três reais e vinte e oito centavos negativos', @klass.currency_cardinal(-128_243.28)
    assert_equal 'oitenta e dois mil e trezentos e oitenta e nove reais e dezenove centavos negativos', @klass.currency_cardinal(-82_389.19)
    assert_equal 'dois mil e trezentos e quarenta e sete reais e vinte e oito centavos negativos', @klass.currency_cardinal(-2_347.28)
    assert_equal 'noventa e dois mil e trezentos e setenta e dois reais e oitenta e seis centavos negativos', @klass.currency_cardinal(-92_372.86)
  end
end
