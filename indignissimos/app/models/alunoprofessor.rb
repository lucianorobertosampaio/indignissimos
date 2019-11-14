class Alunoprofessor < ApplicationRecord
    
    belongs_to :aluno
    belongs_to :professore
    
end
