#!/usr/bin/env ruby

require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'nokogiri'
  gem 'pry', '~> 0.12.2'
end

filename = 'CHL_invoices_190017-190020.xml'
doc = Nokogiri.XML(File.read(filename))

doc.xpath('dat:dataPack/dat:dataPackItem/inv:invoice/inv:invoiceHeader/inv:number/typ:numberRequested').each {|i| puts i.text}

binding.pry


