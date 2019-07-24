require 'minitest/autorun'
require 'ibge-localidades'

class MicrorregiaoTest < Minitest::Test

  def setup
    @microrregiao = IbgeLocalidades::Microrregiao.find_by_id(11001)
  end

  def test_microrregiao_listar
    obj = IbgeLocalidades::Microrregiao.listar
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_microrregiao_listar_por_mesorregiao
    obj = IbgeLocalidades::Microrregiao.listar_por_mesorregiao('1101')
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_microrregiao_listar_por_regiao
    obj = IbgeLocalidades::Microrregiao.listar_por_regiao('1')
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_microrregiao_listar_por_estado
    obj = IbgeLocalidades::Microrregiao.listar_por_estado('11')
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_microrregiao_find_by_id
    obj = IbgeLocalidades::Microrregiao.find_by_id('11001')
    assert_equal true, obj.is_a?(IbgeLocalidades::Microrregiao), "The object found is a #{obj.class}"
  end


  def test_microrregiao_cidades
    obj = @microrregiao.cidades
    assert_equal true, obj.is_a?(Array),  "The object found is a #{obj.class}"
  end
end