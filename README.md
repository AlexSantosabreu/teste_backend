#Teste

      Desenvolver uma API JSON RESTful em Ruby (utilizando qualquer framework), que utilize todos os métodos (GET, POST, PUT, DELETE).
      Especificação:
      Monte uma base de veículo com a seguinte estrutura:
      id: PK
      marca: string
      veiculo: string
      ano: integer
      descricao: text
      vendido: bool
      created_at: datetime
      updated_at: datetime
      API Endpoints:
      GET/veiculos: Retorna todos os veículos
      GET/veiculos/{id}: Retorna os detalhes de um veículo específico
      POST/veiculos: Adiciona um novo veículo
      PUT/veiculos/{id}: Atualiza os dados de um veículo
      DELETE/veiculos/{id}: Apaga o veículo
      
      
  -------------------------------------------------------------------------    
      Para conseguir rodar na sua maquina você deve criar um arquivo .env
      passando as suas configurações:
      
      DATABASE_NAME=
      DATABASE_USER=
      DATABASE_PASSWORD=
      DATABASE_HOST=
      
      Caso queira pode rodar rails db:seed, para popular seu banco de dados.