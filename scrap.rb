require 'nokogiri'
require 'net/http'

def parser(url)

  # Usamos o net/http para fazer a requisição da página
  https= Net::HTTP.new(url, 443)
  # ativamos a segurança SSL
  https.use_ssl = true

  # informamos que o caminho no site será a oágina inicial
  response = https.get('/')

  # Usamos o Nokigirl para parsear do documento
  doc = Nokogiri::HTML(response.body)
  # Informamos que queremos apenas o que está dentro da tag <p></p>
  p = doc.at('p')

  puts p.content

end
