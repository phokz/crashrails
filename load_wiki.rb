#!/usr/bin/env ruby

require 'bundler/inline'
require 'open-uri'

gemfile do
  source 'https://rubygems.org'
  gem 'nokogiri'
  gem 'pry', '~> 0.12.2'
end

html = open('https://cs.wikipedia.org/wiki/Simpsonovi_(18._%C5%99ada)').read

doc = Nokogiri.HTML(html)

#doc.css('.wikitable')
#doc.css('.wikitable').size
#doc.at('.wikitable')
#doc.css('.wikitable').class
#doc.at('.wikitable').class
#doc.css('.wikitable').first.class
#doc.at('.wikitable').css('tr').size
#doc.at('.wikitable').css('tr.se-dil').size

doc.at('.wikitable').css('tr.se-dil').each{|row| puts row.at('td:nth(2)').text}
[<32;1;1M[<32;1;1M
binding.pry


