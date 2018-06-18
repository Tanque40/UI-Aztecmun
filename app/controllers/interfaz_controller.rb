class InterfazController < ApplicationController
  def index
  end

  def CDE
      @delegados = Delegado.where(comite_id: 1).sort
      @presente = Presente.new
  end

  def UNEP
      @delegados = Delegado.where(comite_id: 2)
      @presente = Presente.new
  end

  def CIJ
      @delegados = Delegado.where(comite_id: 3)
      @presente = Presente.new
  end

  def NATO
      @delegados = Delegado.where(comite_id: 4)
      @presente = Presente.new
  end

  def create
      presente = params[:presente]
  end
end
