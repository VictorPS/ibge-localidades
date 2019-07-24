class IbgeLocalidades::Microrregiao

  extend IbgeLocalidades

  attr_reader :id, :nome, :mesorregiao

  buscar_por_relacionamento :mesorregiao, :regiao, :estado

  PATH        = "/microrregioes/"

  def initialize(params={})
    @id            = params["id"]
    @nome          = params["nome"]
    @mesorregiao   = ::IbgeLocalidades::Mesorregiao.new(params["mesorregiao"])
  end

  def cidades
    ::IbgeLocalidades::Cidade.listar_por_microrregiao(id)
  end

end