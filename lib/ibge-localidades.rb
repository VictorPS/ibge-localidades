module IbgeLocalidades

  require 'net/http'
  require 'json'

  API_VERSION  = 'v1'
  MAIN_URL = 'https://servicodados.ibge.gov.br/api/' + API_VERSION + '/localidades'

  def get(url)
    uri             = URI(MAIN_URL + url)
    resposta = JSON.parse(Net::HTTP.get(uri))

    return resposta
  rescue StandardError => e
    return { 'error' => 'Ocorreu um erro.',
             'backtrace'=> e.backtrace.join("\n") }
  end

  def as_objects resposta
    return self.new(resposta) if resposta.is_a? Hash
    resposta.each_with_object([]) do |obj, arr|
      arr << self.new(obj)
    end
  end

  def buscar_por_relacionamento *args
    args.each do |relacionamento|
      string_relacionamento = relacionamento.to_s
      define_singleton_method "listar_por_#{string_relacionamento}" do |id|
        as_objects get(Module.const_get("IbgeLocalidades::#{string_relacionamento.capitalize}::PATH") + id.to_s + self::PATH)
      end
    end
  end

  def listar
    as_objects get(self::PATH)
  end

  def find_by_id id
    as_objects get(self::PATH + id.to_s)
  end
end

require 'ibge_localidades/cidade.rb'
require 'ibge_localidades/mesorregiao.rb'
require 'ibge_localidades/microrregiao.rb'
require 'ibge_localidades/regiao.rb'
require 'ibge_localidades/estado.rb'