class Professore < ApplicationRecord
    belongs_to :escola
    
    has_many :alunos, through: :alunoprofessors
    has_many :alunoprofessors
end
