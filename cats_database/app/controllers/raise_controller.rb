class RaiseController < ApplicationController
  def exception
     raise "Boo"
  end
end
