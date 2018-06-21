module InterfazHelper
    def terminar_oradores
        Comite.where(comite: action_name).update_all(finishOradores: true)
    end

    def iniciar_oradores
        Comite.where(comite: action_name).update_all(finishOradores: false)
    end
end
