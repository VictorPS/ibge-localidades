class IbgeLocalidades::Regiao

  extend IbgeLocalidades

  attr_reader :id, :nome, :sigla

  PATH     = "/regioes/"

  def initialize(params={})
    @id       = params["id"]
    @nome     = params["nome"]
    @sigla    = params["sigla"]
  end

end