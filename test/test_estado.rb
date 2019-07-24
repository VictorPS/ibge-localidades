require 'minitest/autorun'
require 'ibge-localidades'

class EstadoTest < Minitest::Test

  def setup
    @estado = IbgeLocalidades::Estado.find_by_id(33)
  end

  def test_estado_listar
    obj = IbgeLocalidades::Estado.listar
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_estado_listar_por_regiao
    obj = IbgeLocalidades::Estado.listar_por_regiao('1')
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_estado_find_by_id
    obj = IbgeLocalidades::Estado.find_by_id('33')
    assert_equal true, obj.is_a?(IbgeLocalidades::Estado), "The object found is a #{obj.class}"
  end

  def test_estado_cidades
    obj = @estado.cidades
    assert_equal true, obj.is_a?(Array),  "The object found is a #{obj.class}"
  end
  def test_estado_microrregioes
    obj = @estado.microrregioes
    assert_equal true, obj.is_a?(Array),  "The object found is a #{obj.class}"
  end
  def test_estado_mesorregioes
    obj = @estado.mesorregioes
    assert_equal true, obj.is_a?(Array),  "The object found is a #{obj.class}"
  end
end