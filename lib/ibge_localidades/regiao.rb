class IbgeLocalidades::Regiao

  extend IbgeLocalidades

  attr_reader :id, :nome, :sigla

  PATH     = "/regioes/"

  def initialize(params={})
    @id       = params["id"]
    @nome     = params["nome"]
    @sigla    = params["sigla"]
  end

  def cidades
    ::IbgeLocalidades::Cidade.listar_por_regiao(id)
  end
  def estados
    ::IbgeLocalidades::Estado.listar_por_regiao(id)
  end
  def microrregioes
    ::IbgeLocalidades::Microrregiao.listar_por_regiao(id)
  end
  def mesorregioes
    ::IbgeLocalidades::Mesorregiao.listar_por_regiao(id)
  end

end