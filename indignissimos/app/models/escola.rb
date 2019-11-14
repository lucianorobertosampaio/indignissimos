class Escola < ApplicationRecord
        has_many :alunos
        has_many :professores
end
