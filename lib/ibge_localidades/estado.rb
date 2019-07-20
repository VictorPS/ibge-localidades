class IbgeLocalidades::Estado

  extend IbgeLocalidades

  attr_reader :id, :nome, :sigla, :regiao

  buscar_por_relacionamento "regiao"

  PATH        = "/estados/"

  def initialize(params={})
    @id          = params["id"]
    @nome        = params["nome"]
    @sigla       = params["sigla"]
    @regiao      = ::IbgeLocalidades::Regiao.new(params["regiao"])
  end

end