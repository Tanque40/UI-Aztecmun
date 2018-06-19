class InterfazController < ApplicationController
  def index
  end

  def CDE
      @delegados = Delegado.where('comite_id = ? and presente = ?', 1, false).sort
      @presentes = Delegado.where('comite_id = ? and presente = ?', 1, true).sort
  end

  def UNEP
      @delegados = Delegado.where('comite_id = ? and presente = ?', 2, false)
      @presentes = Delegado.where('comite_id = ? and presente = ?', 2, true)
  end

  def CIJ
     @delegados = Delegado.where('comite_id = ? and presente = ?', 3, false)
     @presentes = Delegado.where('comite_id = ? and presente = ?', 3, true)
  end

  def NATO
      @delegados = Delegado.where('comite_id = ? and presente = ?', 1, false)
      @presentes = Delegado.where('comite_id = ? and presente = ?', 1, true)
  end

  def create
      presentes = params[:delegado]
      logger.info("Tienes es parametros pendejo #{presentes}")
      presentes.each do |key, s|
          logger.info("Esta pendejada es la que quieres buscar #{presentes[key]}")
        Delegado.find(presentes[key]).update_attribute(:presente, true)
      end
      redirect_back(fallback_location: root_path)
  end
end
