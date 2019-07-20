Gem::Specification.new do |s|
  s.name        = 'ibge-localidades'
  s.version     = '0.1.0'
  s.date        = '2019-07-20'
  s.summary     = "Uma gem criada para acessar os dados da API do IBGE (cidades, estados, regiões etc)"
  s.description = "A simple hello world gem"
  s.authors     = ["Victor Palombo Silvano"]
  s.email       = 'victorpsilvano@gmail.com'
  s.files       = ["lib/ibge-localidades.rb",
                    "lib/ibge_localidades/cidade.rb",
                    "lib/ibge_localidades/estado.rb",
                    "lib/ibge_localidades/regiao.rb",
                    "lib/ibge_localidades/mesorregiao.rb",
                    "lib/ibge_localidades/microrregiao.rb"
                  ]
  s.homepage    = 'https://rubygems.org/gems/ibge-localidades'
  s.license     = 'MIT'
end