class Redireccion < ActionController::Base
    def redireccionar
        redirect_to root_path
    end
end
