class Aluno < ApplicationRecord
    belongs_to :escola
    
    has_many :professores, through: :alunoprofessors
    has_many :alunoprofessors
end
