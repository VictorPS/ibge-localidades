require 'minitest/autorun'
require 'ibge-localidades'

class IbgeLocalidadesTest < Minitest::Test

  # TEST CIDADE

  def test_cidade_listar
    obj = IbgeLocalidades::Cidade.listar
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_cidade_listar_por_mesorregiao
    obj = IbgeLocalidades::Cidade.listar_por_mesorregiao('33')
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_cidade_listar_por_microrregiao
    obj = IbgeLocalidades::Cidade.listar_por_microrregiao('33')
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_cidade_listar_por_regiao
    obj = IbgeLocalidades::Cidade.listar_por_regiao('33')
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_cidade_listar_por_estado
    obj = IbgeLocalidades::Cidade.listar_por_estado('33')
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_cidade_find_by_id
    obj = IbgeLocalidades::Cidade.find_by_id('3303807')
    assert_equal true, obj.is_a?(IbgeLocalidades::Cidade), "The object found is a #{obj.class}"
  end

  # TEST ESTADO

  def test_estado_listar
    obj = IbgeLocalidades::Estado.listar
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_estado_listar_por_regiao
    obj = IbgeLocalidades::Estado.listar_por_regiao('33')
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_estado_find_by_id
    obj = IbgeLocalidades::Estado.find_by_id('33')
    assert_equal true, obj.is_a?(IbgeLocalidades::Estado), "The object found is a #{obj.class}"
  end

  # TEST MESORREGIAO

  def test_microrregiao_listar
    obj = IbgeLocalidades::Mesorregiao.listar
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_microrregiao_listar_por_regiao
    obj = IbgeLocalidades::Mesorregiao.listar_por_regiao('33')
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_microrregiao_listar_por_estado
    obj = IbgeLocalidades::Mesorregiao.listar_por_estado('33')
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_microrregiao_find_by_id
    obj = IbgeLocalidades::Mesorregiao.find_by_id('1101')
    assert_equal true, obj.is_a?(IbgeLocalidades::Mesorregiao), "The object found is a #{obj.class}"
  end

  # TEST MICRORREGIAO

  def test_microrregiao_listar
    obj = IbgeLocalidades::Microrregiao.listar
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_microrregiao_listar_por_mesorregiao
    obj = IbgeLocalidades::Microrregiao.listar_por_mesorregiao('33')
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_microrregiao_listar_por_regiao
    obj = IbgeLocalidades::Microrregiao.listar_por_regiao('33')
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_microrregiao_listar_por_estado
    obj = IbgeLocalidades::Microrregiao.listar_por_estado('33')
    assert_equal true, obj.is_a?(Array), "The object found is a #{obj.class}"
  end
  def test_microrregiao_find_by_id
    obj = IbgeLocalidades::Microrregiao.find_by_id('11001')
    assert_equal true, obj.is_a?(IbgeLocalidades::Microrregiao), "The object found is a #{obj.class}"
  end

  # TEST REGIAO

  def test_regiao_listar
    assert_equal true, IbgeLocalidades::Regiao.listar.is_a?(Array)
  end
  def test_regiao_find_by_id
    obj = IbgeLocalidades::Regiao.find_by_id('1')
    assert_equal true, obj.is_a?(IbgeLocalidades::Regiao), "The object found is a #{obj.class}"
  end

end