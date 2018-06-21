class InterfazController < ApplicationController
  def index
  end

  def CDE
      @delegados = Delegado.where('comite_id = ? and presente = ?', 1, false).sort
      @presentes = Delegado.where('comite_id = ? and presente = ?', 1, true).sort
      @totalPresentes = @presentes.length
      @topico = Topic.where(comite_id: 1)
      @topico.each do |t|
        if t.use
            @activeTopic = true
            @topic = t.topico
        else
            @activeTopic = false
        end
      end
      @finishOradores = Comite.where(comite: action_name)
  end

  def UNEP
      @delegados = Delegado.where('comite_id = ? and presente = ?', 2, false)
      @presentes = Delegado.where('comite_id = ? and presente = ?', 2, true)
      @topico = Topic.where(comite_id: 2)
      @totalPresentes = @presentes.length
      @topico.each do |t|
        if t.use
            @activeTopic = true
            @topic = t.topico
        else
            @activeTopic = false
        end
      end
      @finishOradores = Comite.where(comite: action_name)
  end

  def CIJ
     @delegados = Delegado.where('comite_id = ? and presente = ?', 3, false)
     @presentes = Delegado.where('comite_id = ? and presente = ?', 3, true)
     @totalPresentes = @presentes.length
     @presentes.each do |s|
         logger.info("Tienes a estos pendejos presentes #{s.pais}")
     end
     @topico = Topic.where(comite_id: 3)
     @topico.each do |t|
       if t.use
           @activeTopic = true
           @topic = t.topico
       else
           @activeTopic = false
       end
     end
     @finishOradores = Comite.where(comite: action_name)
  end

  def NATO
      @delegados = Delegado.where('comite_id = ? and presente = ?', 4, false)
      @presentes = Delegado.where('comite_id = ? and presente = ?', 4, true)
      @topico = Topic.where(comite_id: 4)
      @totalPresentes = @presentes.length
      @topico.each do |t|
        if t.use
            @activeTopic = true
            @topic = t.topico
        else
            @activeTopic = false
        end
      end
      @finishOradores = Comite.where(comite: action_name)
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

  def seleccionarTopico
      topico = params[:topico]
      Topic.find(topico).update(use: true)
      redirect_back(fallback_location: root_path)
  end

  def cerrar
      comite = params[:comite]
      id = Comite.where(comite: comite)
      Delegado.where("comite_id = ? AND presente = ?", id.ids, true).update_all(presente: false)
      redirect_to root_path
  end
end
