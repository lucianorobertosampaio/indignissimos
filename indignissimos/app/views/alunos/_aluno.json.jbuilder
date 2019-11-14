json.extract! aluno, :id, :nome, :sobre, :idade, :nascimento, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)
