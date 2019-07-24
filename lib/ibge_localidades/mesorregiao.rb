class IbgeLocalidades::Mesorregiao

  extend IbgeLocalidades

  attr_reader :id, :nome, :estado

  buscar_por_relacionamento :regiao, :estado

  PATH    = "/mesorregioes/"

  def initialize(params={})
    @id       = params["id"]
    @nome     = params["nome"]
    @estado   = ::IbgeLocalidades::Estado.new(params["UF"])
  end

  def cidades
    ::IbgeLocalidades::Cidade.listar_por_mesorregiao(id)
  end
  def microrregioes
    ::IbgeLocalidades::Microrregiao.listar_por_mesorregiao(id)
  end

end