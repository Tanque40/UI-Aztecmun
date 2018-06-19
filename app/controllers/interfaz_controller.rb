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
     @presentes.each do |s|
         logger.info("Tienes a estos pendejos presentes #{s.pais}")
    end

  end

  def NATO
      @delegados = Delegado.where('comite_id = ? and presente = ?', 4, false)
      @presentes = Delegado.where('comite_id = ? and presente = ?', 4, true)
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

  def cerrar
      comite = params[:comite]
      id = Comite.where(comite: comite)
      Delegado.where("comite_id = ? AND presente = ?", id.ids, true).update_all(presente: false)
      redirect_to root_path
  end
end
