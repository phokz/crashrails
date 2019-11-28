class ImportController < ApplicationController
  def show_form
  end

  def review
    @import_id = Random.rand(2**31)
    xlsx = Roo::Spreadsheet.open(params[:file].tempfile.path)
    sheets = []; xlsx.each_with_pagename { |name, sheet| sheets << sheet }
    @data = []
    sheets.first.each{|row| @data << row}
    
    @data.each_with_index do |row, idx|
      next if idx < 1
      customer = Customer.create(email: row[0], firstname: row[1], lastname: row[2], import_id: @import_id)
      if customer.persisted?
        Order.create(name: row[3], customer: customer, import_id: @import_id)
      else
        Order.create(name: row[3], customer: Customer.find_by(email: row[0]), import_id: @import_id)
      end
    end
 
    @customers = Customer.all
  end

  def index
      @customers = Customer.where(import_id: nil).all
  end

  def perform
    Customer.where(import_id: params[:import_id]).update_all(import_id: nil)
    Order.where(import_id: params[:import_id]).update_all(import_id: nil)
    redirect_to imports_path
  end

  def decline
    Customer.where(import_id: params[:import_id]).delete_all
    Order.where(import_id: params[:import_id]).delete_all
    redirect_to imports_path
  end
end
