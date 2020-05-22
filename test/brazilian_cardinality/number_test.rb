require 'test_helper'

class BrazilianCardinality::NumberTest < Minitest::Test
  def setup
    @klass = BrazilianCardinality::Number
  end

  def test_units
    assert_equal 'zero', @klass.number_cardinal(0)
    assert_equal 'um', @klass.number_cardinal(1)
    assert_equal 'dois', @klass.number_cardinal(2)
    assert_equal 'três', @klass.number_cardinal(3)
    assert_equal 'quatro', @klass.number_cardinal(4)
    assert_equal 'cinco', @klass.number_cardinal(5)
    assert_equal 'seis', @klass.number_cardinal(6)
    assert_equal 'sete', @klass.number_cardinal(7)
    assert_equal 'oito', @klass.number_cardinal(8)
    assert_equal 'nove', @klass.number_cardinal(9)
  end

  def test_tens
    assert_equal 'dez', @klass.number_cardinal(10)
    assert_equal 'onze', @klass.number_cardinal(11)
    assert_equal 'doze', @klass.number_cardinal(12)
    assert_equal 'treze', @klass.number_cardinal(13)
    assert_equal 'quatorze', @klass.number_cardinal(14)
    assert_equal 'quinze', @klass.number_cardinal(15)
    assert_equal 'dezesseis', @klass.number_cardinal(16)
    assert_equal 'dezessete', @klass.number_cardinal(17)
    assert_equal 'dezoito', @klass.number_cardinal(18)
    assert_equal 'dezenove', @klass.number_cardinal(19)
    assert_equal 'vinte', @klass.number_cardinal(20)
    assert_equal 'trinta', @klass.number_cardinal(30)
    assert_equal 'quarenta', @klass.number_cardinal(40)
    assert_equal 'cinquenta', @klass.number_cardinal(50)
    assert_equal 'sessenta', @klass.number_cardinal(60)
    assert_equal 'setenta', @klass.number_cardinal(70)
    assert_equal 'oitenta', @klass.number_cardinal(80)
    assert_equal 'noventa', @klass.number_cardinal(90)
  end

  def test_tens_with_units
    assert_equal 'vinte e um', @klass.number_cardinal(21)
    assert_equal 'trinta e dois', @klass.number_cardinal(32)
    assert_equal 'quarenta e três', @klass.number_cardinal(43)
    assert_equal 'cinquenta e quatro', @klass.number_cardinal(54)
    assert_equal 'sessenta e cinco', @klass.number_cardinal(65)
    assert_equal 'setenta e seis', @klass.number_cardinal(76)
    assert_equal 'oitenta e sete', @klass.number_cardinal(87)
    assert_equal 'noventa e oito', @klass.number_cardinal(98)
  end

  def test_hundreds
    assert_equal 'cem', @klass.number_cardinal(100)
    assert_equal 'duzentos', @klass.number_cardinal(200)
    assert_equal 'trezentos', @klass.number_cardinal(300)
    assert_equal 'quatrocentos', @klass.number_cardinal(400)
    assert_equal 'quinhentos', @klass.number_cardinal(500)
    assert_equal 'seiscentos', @klass.number_cardinal(600)
    assert_equal 'setecentos', @klass.number_cardinal(700)
    assert_equal 'oitocentos', @klass.number_cardinal(800)
    assert_equal 'novecentos', @klass.number_cardinal(900)
  end

  def test_hundreds_with_tens_and_units
    assert_equal 'cento e um', @klass.number_cardinal(101)
    assert_equal 'cento e dez', @klass.number_cardinal(110)
    assert_equal 'cento e onze', @klass.number_cardinal(111)

    assert_equal 'duzentos e dois', @klass.number_cardinal(202)
    assert_equal 'duzentos e vinte', @klass.number_cardinal(220)
    assert_equal 'duzentos e vinte e dois', @klass.number_cardinal(222)

    assert_equal 'trezentos e três', @klass.number_cardinal(303)
    assert_equal 'trezentos e trinta', @klass.number_cardinal(330)
    assert_equal 'trezentos e trinta e três', @klass.number_cardinal(333)

    assert_equal 'quatrocentos e quatro', @klass.number_cardinal(404)
    assert_equal 'quatrocentos e quarenta', @klass.number_cardinal(440)
    assert_equal 'quatrocentos e quarenta e quatro', @klass.number_cardinal(444)

    assert_equal 'quinhentos e cinco', @klass.number_cardinal(505)
    assert_equal 'quinhentos e cinquenta', @klass.number_cardinal(550)
    assert_equal 'quinhentos e cinquenta e cinco', @klass.number_cardinal(555)

    assert_equal 'seiscentos e seis', @klass.number_cardinal(606)
    assert_equal 'seiscentos e sessenta', @klass.number_cardinal(660)
    assert_equal 'seiscentos e sessenta e seis', @klass.number_cardinal(666)

    assert_equal 'setecentos e sete', @klass.number_cardinal(707)
    assert_equal 'setecentos e setenta', @klass.number_cardinal(770)
    assert_equal 'setecentos e setenta e sete', @klass.number_cardinal(777)

    assert_equal 'oitocentos e oito', @klass.number_cardinal(808)
    assert_equal 'oitocentos e oitenta', @klass.number_cardinal(880)
    assert_equal 'oitocentos e oitenta e oito', @klass.number_cardinal(888)

    assert_equal 'novecentos e nove', @klass.number_cardinal(909)
    assert_equal 'novecentos e noventa', @klass.number_cardinal(990)
    assert_equal 'novecentos e noventa e nove', @klass.number_cardinal(999)
  end

  def test_thousands
    assert_equal 'um mil', @klass.number_cardinal(1_000)
    assert_equal 'um mil e um', @klass.number_cardinal(1_001)
    assert_equal 'um mil e dez', @klass.number_cardinal(1_010)
    assert_equal 'um mil e onze', @klass.number_cardinal(1_011)
    assert_equal 'um mil e cem', @klass.number_cardinal(1_100)
    assert_equal 'um mil e cento e um', @klass.number_cardinal(1_101)
    assert_equal 'um mil e cento e dez', @klass.number_cardinal(1_110)
    assert_equal 'um mil e cento e onze', @klass.number_cardinal(1_111)
    assert_equal 'dez mil', @klass.number_cardinal(10_000)
    assert_equal 'cem mil', @klass.number_cardinal(100_000)
    assert_equal 'cento e dez mil', @klass.number_cardinal(110_000)
  end

  def test_millions
    assert_equal 'um milhão', @klass.number_cardinal(1_000_000)
    assert_equal 'um milhão e um mil e um', @klass.number_cardinal(1_001_001)
    assert_equal 'um milhão e dez mil e dez', @klass.number_cardinal(1_010_010)
    assert_equal 'um milhão e onze mil e onze', @klass.number_cardinal(1_011_011)
    assert_equal 'um milhão e cem mil e cem', @klass.number_cardinal(1_100_100)
    assert_equal 'um milhão e cento e um mil e cento e um', @klass.number_cardinal(1_101_101)
    assert_equal 'um milhão e cento e dez mil e cento e dez', @klass.number_cardinal(1_110_110)
    assert_equal 'um milhão e cento e onze mil e cento e onze', @klass.number_cardinal(1_111_111)
    assert_equal 'dez milhões', @klass.number_cardinal(10_000_000)
    assert_equal 'cem milhões', @klass.number_cardinal(100_000_000)
    assert_equal 'cento e dez milhões', @klass.number_cardinal(110_000_000)
  end

  def test_billions
    assert_equal 'um bilhão', @klass.number_cardinal(1_000_000_000)
    assert_equal 'um bilhão e um milhão e um mil e um', @klass.number_cardinal(1_001_001_001)
    assert_equal 'um bilhão e dez milhões e dez mil e dez', @klass.number_cardinal(1_010_010_010)
    assert_equal 'um bilhão e onze milhões e onze mil e onze', @klass.number_cardinal(1_011_011_011)
    assert_equal 'um bilhão e cem milhões e cem mil e cem', @klass.number_cardinal(1_100_100_100)
    assert_equal 'um bilhão e cento e um milhões e cento e um mil e cento e um', @klass.number_cardinal(1_101_101_101)
    assert_equal 'um bilhão e cento e dez milhões e cento e dez mil e cento e dez', @klass.number_cardinal(1_110_110_110)
    assert_equal 'um bilhão e cento e onze milhões e cento e onze mil e cento e onze', @klass.number_cardinal(1_111_111_111)
    assert_equal 'dez bilhões', @klass.number_cardinal(10_000_000_000)
    assert_equal 'cem bilhões', @klass.number_cardinal(100_000_000_000)
    assert_equal 'cento e dez bilhões', @klass.number_cardinal(110_000_000_000)
  end

  def test_trillions
    assert_equal 'um trilhão', @klass.number_cardinal(1_000_000_000_000)
    assert_equal 'um trilhão e um bilhão e um milhão e um mil e um', @klass.number_cardinal(1_001_001_001_001)
    assert_equal 'um trilhão e dez bilhões e dez milhões e dez mil e dez', @klass.number_cardinal(1_010_010_010_010)
    assert_equal 'um trilhão e onze bilhões e onze milhões e onze mil e onze', @klass.number_cardinal(1_011_011_011_011)
    assert_equal 'um trilhão e cem bilhões e cem milhões e cem mil e cem', @klass.number_cardinal(1_100_100_100_100)
    assert_equal 'um trilhão e cento e um bilhões e cento e um milhões e cento e um mil e cento e um', @klass.number_cardinal(1_101_101_101_101)
    assert_equal 'um trilhão e cento e dez bilhões e cento e dez milhões e cento e dez mil e cento e dez', @klass.number_cardinal(1_110_110_110_110)
    assert_equal 'um trilhão e cento e onze bilhões e cento e onze milhões e cento e onze mil e cento e onze', @klass.number_cardinal(1_111_111_111_111)
    assert_equal 'dez trilhões', @klass.number_cardinal(10_000_000_000_000)
    assert_equal 'cem trilhões', @klass.number_cardinal(100_000_000_000_000)
    assert_equal 'cento e dez trilhões', @klass.number_cardinal(110_000_000_000_000)
  end

  def test_negative_units
    assert_equal 'zero', @klass.number_cardinal(-0)
    assert_equal 'menos um', @klass.number_cardinal(-1)
    assert_equal 'menos dois', @klass.number_cardinal(-2)
    assert_equal 'menos três', @klass.number_cardinal(-3)
    assert_equal 'menos quatro', @klass.number_cardinal(-4)
    assert_equal 'menos cinco', @klass.number_cardinal(-5)
    assert_equal 'menos seis', @klass.number_cardinal(-6)
    assert_equal 'menos sete', @klass.number_cardinal(-7)
    assert_equal 'menos oito', @klass.number_cardinal(-8)
    assert_equal 'menos nove', @klass.number_cardinal(-9)
  end

  def test_negative_tens
    assert_equal 'menos dez', @klass.number_cardinal(-10)
    assert_equal 'menos onze', @klass.number_cardinal(-11)
    assert_equal 'menos doze', @klass.number_cardinal(-12)
    assert_equal 'menos treze', @klass.number_cardinal(-13)
    assert_equal 'menos quatorze', @klass.number_cardinal(-14)
    assert_equal 'menos quinze', @klass.number_cardinal(-15)
    assert_equal 'menos dezesseis', @klass.number_cardinal(-16)
    assert_equal 'menos dezessete', @klass.number_cardinal(-17)
    assert_equal 'menos dezoito', @klass.number_cardinal(-18)
    assert_equal 'menos dezenove', @klass.number_cardinal(-19)
    assert_equal 'menos vinte', @klass.number_cardinal(-20)
    assert_equal 'menos trinta', @klass.number_cardinal(-30)
    assert_equal 'menos quarenta', @klass.number_cardinal(-40)
    assert_equal 'menos cinquenta', @klass.number_cardinal(-50)
    assert_equal 'menos sessenta', @klass.number_cardinal(-60)
    assert_equal 'menos setenta', @klass.number_cardinal(-70)
    assert_equal 'menos oitenta', @klass.number_cardinal(-80)
  end

  def test_negative_tens_with_units
    assert_equal 'menos vinte e um', @klass.number_cardinal(-21)
    assert_equal 'menos trinta e dois', @klass.number_cardinal(-32)
    assert_equal 'menos quarenta e três', @klass.number_cardinal(-43)
    assert_equal 'menos cinquenta e quatro', @klass.number_cardinal(-54)
    assert_equal 'menos sessenta e cinco', @klass.number_cardinal(-65)
    assert_equal 'menos setenta e seis', @klass.number_cardinal(-76)
    assert_equal 'menos oitenta e sete', @klass.number_cardinal(-87)
    assert_equal 'menos noventa e oito', @klass.number_cardinal(-98)
  end

  def test_negative_hundreds
    assert_equal 'menos cem', @klass.number_cardinal(-100)
    assert_equal 'menos duzentos', @klass.number_cardinal(-200)
    assert_equal 'menos trezentos', @klass.number_cardinal(-300)
    assert_equal 'menos quatrocentos', @klass.number_cardinal(-400)
    assert_equal 'menos quinhentos', @klass.number_cardinal(-500)
    assert_equal 'menos seiscentos', @klass.number_cardinal(-600)
    assert_equal 'menos setecentos', @klass.number_cardinal(-700)
    assert_equal 'menos oitocentos', @klass.number_cardinal(-800)
    assert_equal 'menos novecentos', @klass.number_cardinal(-900)
  end

  def test_negative_hundreds_with_tens_and_units
    assert_equal 'menos cento e um', @klass.number_cardinal(-101)
    assert_equal 'menos cento e dez', @klass.number_cardinal(-110)
    assert_equal 'menos cento e onze', @klass.number_cardinal(-111)

    assert_equal 'menos duzentos e dois', @klass.number_cardinal(-202)
    assert_equal 'menos duzentos e vinte', @klass.number_cardinal(-220)
    assert_equal 'menos duzentos e vinte e dois', @klass.number_cardinal(-222)

    assert_equal 'menos trezentos e três', @klass.number_cardinal(-303)
    assert_equal 'menos trezentos e trinta', @klass.number_cardinal(-330)
    assert_equal 'menos trezentos e trinta e três', @klass.number_cardinal(-333)

    assert_equal 'menos quatrocentos e quatro', @klass.number_cardinal(-404)
    assert_equal 'menos quatrocentos e quarenta', @klass.number_cardinal(-440)
    assert_equal 'menos quatrocentos e quarenta e quatro', @klass.number_cardinal(-444)

    assert_equal 'menos quinhentos e cinco', @klass.number_cardinal(-505)
    assert_equal 'menos quinhentos e cinquenta', @klass.number_cardinal(-550)
    assert_equal 'menos quinhentos e cinquenta e cinco', @klass.number_cardinal(-555)

    assert_equal 'menos seiscentos e seis', @klass.number_cardinal(-606)
    assert_equal 'menos seiscentos e sessenta', @klass.number_cardinal(-660)
    assert_equal 'menos seiscentos e sessenta e seis', @klass.number_cardinal(-666)

    assert_equal 'menos setecentos e sete', @klass.number_cardinal(-707)
    assert_equal 'menos setecentos e setenta', @klass.number_cardinal(-770)
    assert_equal 'menos setecentos e setenta e sete', @klass.number_cardinal(-777)

    assert_equal 'menos oitocentos e oito', @klass.number_cardinal(-808)
    assert_equal 'menos oitocentos e oitenta', @klass.number_cardinal(-880)
    assert_equal 'menos oitocentos e oitenta e oito', @klass.number_cardinal(-888)

    assert_equal 'menos novecentos e nove', @klass.number_cardinal(-909)
    assert_equal 'menos novecentos e noventa', @klass.number_cardinal(-990)
    assert_equal 'menos novecentos e noventa e nove', @klass.number_cardinal(-999)
  end

  def test_negative_thousands
    assert_equal 'menos um mil', @klass.number_cardinal(-1_000)
    assert_equal 'menos um mil e um', @klass.number_cardinal(-1_001)
    assert_equal 'menos um mil e dez', @klass.number_cardinal(-1_010)
    assert_equal 'menos um mil e onze', @klass.number_cardinal(-1_011)
    assert_equal 'menos um mil e cem', @klass.number_cardinal(-1_100)
    assert_equal 'menos um mil e cento e um', @klass.number_cardinal(-1_101)
    assert_equal 'menos um mil e cento e dez', @klass.number_cardinal(-1_110)
    assert_equal 'menos um mil e cento e onze', @klass.number_cardinal(-1_111)
    assert_equal 'menos dez mil', @klass.number_cardinal(-10_000)
    assert_equal 'menos cem mil', @klass.number_cardinal(-100_000)
    assert_equal 'menos cento e dez mil', @klass.number_cardinal(-110_000)
  end

  def test_negative_millions
    assert_equal 'menos um milhão', @klass.number_cardinal(-1_000_000)
    assert_equal 'menos um milhão e um mil e um', @klass.number_cardinal(-1_001_001)
    assert_equal 'menos um milhão e dez mil e dez', @klass.number_cardinal(-1_010_010)
    assert_equal 'menos um milhão e onze mil e onze', @klass.number_cardinal(-1_011_011)
    assert_equal 'menos um milhão e cem mil e cem', @klass.number_cardinal(-1_100_100)
    assert_equal 'menos um milhão e cento e um mil e cento e um', @klass.number_cardinal(-1_101_101)
    assert_equal 'menos um milhão e cento e dez mil e cento e dez', @klass.number_cardinal(-1_110_110)
    assert_equal 'menos um milhão e cento e onze mil e cento e onze', @klass.number_cardinal(-1_111_111)
    assert_equal 'menos dez milhões', @klass.number_cardinal(-10_000_000)
    assert_equal 'menos cem milhões', @klass.number_cardinal(-100_000_000)
    assert_equal 'menos cento e dez milhões', @klass.number_cardinal(-110_000_000)
  end

  def test_negative_billions
    assert_equal 'menos um bilhão', @klass.number_cardinal(-1_000_000_000)
    assert_equal 'menos um bilhão e um milhão e um mil e um', @klass.number_cardinal(-1_001_001_001)
    assert_equal 'menos um bilhão e dez milhões e dez mil e dez', @klass.number_cardinal(-1_010_010_010)
    assert_equal 'menos um bilhão e onze milhões e onze mil e onze', @klass.number_cardinal(-1_011_011_011)
    assert_equal 'menos um bilhão e cem milhões e cem mil e cem', @klass.number_cardinal(-1_100_100_100)
    assert_equal 'menos um bilhão e cento e um milhões e cento e um mil e cento e um', @klass.number_cardinal(-1_101_101_101)
    assert_equal 'menos um bilhão e cento e dez milhões e cento e dez mil e cento e dez', @klass.number_cardinal(-1_110_110_110)
    assert_equal 'menos um bilhão e cento e onze milhões e cento e onze mil e cento e onze', @klass.number_cardinal(-1_111_111_111)
    assert_equal 'menos dez bilhões', @klass.number_cardinal(-10_000_000_000)
    assert_equal 'menos cem bilhões', @klass.number_cardinal(-100_000_000_000)
    assert_equal 'menos cento e dez bilhões', @klass.number_cardinal(-110_000_000_000)
  end

  def test_negative_trillions
    assert_equal 'menos um trilhão', @klass.number_cardinal(-1_000_000_000_000)
    assert_equal 'menos um trilhão e um bilhão e um milhão e um mil e um', @klass.number_cardinal(-1_001_001_001_001)
    assert_equal 'menos um trilhão e dez bilhões e dez milhões e dez mil e dez', @klass.number_cardinal(-1_010_010_010_010)
    assert_equal 'menos um trilhão e onze bilhões e onze milhões e onze mil e onze', @klass.number_cardinal(-1_011_011_011_011)
    assert_equal 'menos um trilhão e cem bilhões e cem milhões e cem mil e cem', @klass.number_cardinal(-1_100_100_100_100)
    assert_equal 'menos um trilhão e cento e um bilhões e cento e um milhões e cento e um mil e cento e um', @klass.number_cardinal(-1_101_101_101_101)
    assert_equal 'menos um trilhão e cento e dez bilhões e cento e dez milhões e cento e dez mil e cento e dez', @klass.number_cardinal(-1_110_110_110_110)
    assert_equal 'menos um trilhão e cento e onze bilhões e cento e onze milhões e cento e onze mil e cento e onze', @klass.number_cardinal(-1_111_111_111_111)
    assert_equal 'menos dez trilhões', @klass.number_cardinal(-10_000_000_000_000)
    assert_equal 'menos cem trilhões', @klass.number_cardinal(-100_000_000_000_000)
    assert_equal 'menos cento e dez trilhões', @klass.number_cardinal(-110_000_000_000_000)
  end

  def test_when_number_has_a_scale_bigger_than_trillion
    assert_raises(BrazilianCardinality::Number::NumberTooBigError) { @klass.number_cardinal(1_000_000_000_000_000) }
  end

  def test_number_with_decimals
    assert_equal 'zero vírgula zero um', @klass.number_cardinal(0.01)
    assert_equal 'zero vírgula cinco', @klass.number_cardinal(0.5)
    assert_equal 'zero vírgula um', @klass.number_cardinal(0.10)
    assert_equal 'zero vírgula onze', @klass.number_cardinal(0.11)
    assert_equal 'zero vírgula vinte e três', @klass.number_cardinal(0.23)
    assert_equal 'zero vírgula cinquenta e dois', @klass.number_cardinal(0.52)
    assert_equal 'um vírgula zero um', @klass.number_cardinal(1.01)
    assert_equal 'um', @klass.number_cardinal(1.00)
    assert_equal 'um vírgula cinco', @klass.number_cardinal(1.5)
    assert_equal 'um vírgula um', @klass.number_cardinal(1.10)
    assert_equal 'um vírgula onze', @klass.number_cardinal(1.11)
    assert_equal 'um vírgula vinte e três', @klass.number_cardinal(1.23)
    assert_equal 'um vírgula cinquenta e dois', @klass.number_cardinal(1.52)
  end
end
