module DelegadosHelper

    def esCDE?
        if action_name == "CDE"
            return true
        end
    end

    def esCIJ?
        if action_name == "CIJ"
            return true
        end
    end

    def esUNEP?
        if action_name == "UNEP"
            return true
        end
    end

    def esNATO?
        if action_name == "NATO"
            return true
        end
    end
end
