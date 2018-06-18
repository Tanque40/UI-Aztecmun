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
      presentes = params[:presente]
      presentes.each do |s|
        Presente.create(s[0], s[1])
      end
  end
end
