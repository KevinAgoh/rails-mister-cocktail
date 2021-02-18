class DosesController < ApplicationController

  def show
    @dose = Dose.find(params[:id])
  end

end
