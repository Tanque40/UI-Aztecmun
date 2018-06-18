class Comite < ApplicationRecord
    has_many :topics
    has_many :delegados
end
