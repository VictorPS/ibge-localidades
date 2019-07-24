require 'minitest/autorun'
require 'ibge-localidades'

class CidadeTest < Minitest::Test
  def test_cidade_listar
    obj = IbgeLocalidades::Cidade.listar
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_cidade_listar_por_mesorregiao
    obj = IbgeLocalidades::Cidade.listar_por_mesorregiao('1101')
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_cidade_listar_por_microrregiao
    obj = IbgeLocalidades::Cidade.listar_por_microrregiao('11001')
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_cidade_listar_por_regiao
    obj = IbgeLocalidades::Cidade.listar_por_regiao('1')
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_cidade_listar_por_estado
    obj = IbgeLocalidades::Cidade.listar_por_estado('11')
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_cidade_find_by_id
    obj = IbgeLocalidades::Cidade.find_by_id('1100015')
    assert_equal true, obj.is_a?(IbgeLocalidades::Cidade), "The object found is a #{obj.class}"
  end
end