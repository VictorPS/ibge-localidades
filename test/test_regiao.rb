  require 'minitest/autorun'
require 'ibge-localidades'

class RegiaoTest < Minitest::Test

  def setup
    @regiao = IbgeLocalidades::Regiao.find_by_id(1)
  end

  def test_regiao_listar
    assert_equal true, IbgeLocalidades::Regiao.listar.is_a?(Array)
  end
  def test_regiao_find_by_id
    obj = IbgeLocalidades::Regiao.find_by_id('1')
    assert_equal true, obj.is_a?(IbgeLocalidades::Regiao), "The object found is a #{obj.class}"
  end


  def test_regiao_cidades
    obj = @regiao.cidades
    assert_equal true, obj.is_a?(Array),  "The object found is a #{obj.class}"
  end
  def test_regiao_microrregioes
    obj = @regiao.microrregioes
    assert_equal true, obj.is_a?(Array),  "The object found is a #{obj.class}"
  end
  def test_regiao_mesorregioes
    obj = @regiao.mesorregioes
    assert_equal true, obj.is_a?(Array),  "The object found is a #{obj.class}"
  end
  def test_regiao_estado
    obj = @regiao.mesorregioes
    assert_equal true, obj.is_a?(Array),  "The object found is a #{obj.class}"
  end
end