class PagesController < ApplicationController

  def about
  end

  def contact
    @employees = ["Matt", "Milene", "Marcel", "Andre", "Isa", "Pedro"]

    if params[:member].present?
      @employees = @employees.select { |employee| employee == params[:member] }
    end
  end

  def home
  end

end
