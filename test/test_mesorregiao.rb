require 'minitest/autorun'
require 'ibge-localidades'

class MesorregiaoTest < Minitest::Test

  def setup
    @mesorregiao = IbgeLocalidades::Mesorregiao.find_by_id(1101)
  end

  def test_mesorregiao_listar
    obj = IbgeLocalidades::Mesorregiao.listar
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_mesorregiao_listar_por_regiao
    obj = IbgeLocalidades::Mesorregiao.listar_por_regiao('1')
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_mesorregiao_listar_por_estado
    obj = IbgeLocalidades::Mesorregiao.listar_por_estado('11')
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_mesorregiao_find_by_id
    obj = IbgeLocalidades::Mesorregiao.find_by_id('1101')
    assert_equal true, obj.is_a?(IbgeLocalidades::Mesorregiao), "The object found is a #{obj.class}"
  end

  def test_mesorregiao_cidades
    obj = @mesorregiao.cidades
    assert_equal true, obj.is_a?(Array),  "The object found is a #{obj.class}"
  end
  def test_mesorregiao_microrregioes
    obj = @mesorregiao.microrregioes
    assert_equal true, obj.is_a?(Array),  "The object found is a #{obj.class}"
  end
end