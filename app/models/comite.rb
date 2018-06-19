class Comite < ApplicationRecord
    has_many :topic
    has_many :delegado
end
