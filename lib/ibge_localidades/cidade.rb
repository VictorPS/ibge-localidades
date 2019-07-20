class IbgeLocalidades::Cidade

  extend IbgeLocalidades

  attr_reader :id, :nome, :microrregiao

  buscar_por_relacionamento "mesorregiao", "microrregiao", "regiao", "estado"

  PATH     = "/municipios/"

  def initialize(params={})
    @id            = params["id"]
    @nome          = params["nome"]
    @microrregiao   = ::IbgeLocalidades::Microrregiao.new(params["microrregiao"])
  end

end