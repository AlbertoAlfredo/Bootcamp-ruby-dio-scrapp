require_relative('scrap.rb')


puts 'Cole a url completa do site que será feito scrapp, no formato example.com'

url = gets.chomp

parser(url)
