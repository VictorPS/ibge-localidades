class IbgeLocalidades::Estado

  extend IbgeLocalidades

  attr_reader :id, :nome, :sigla, :regiao

  buscar_por_relacionamento :regiao

  PATH        = "/estados/"

  def initialize(params={})
    @id          = params["id"]
    @nome        = params["nome"]
    @sigla       = params["sigla"]
    @regiao      = ::IbgeLocalidades::Regiao.new(params["regiao"])
  end

  def cidades
    ::IbgeLocalidades::Cidade.listar_por_estado(id)
  end
  def mesorregioes
    ::IbgeLocalidades::Mesorregiao.listar_por_estado(id)
  end
  def microrregioes
    ::IbgeLocalidades::Microrregiao.listar_por_estado(id)
  end

end