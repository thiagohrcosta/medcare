## MedCare
![enter image description here](https://res.cloudinary.com/dloadb2bx/image/upload/v1623961275/medcare1_gnbsd6.png)
O objetivo do presente projeto foi desenvolver uma aplicação para uma clínica médica aqui denominada **MedCare** que permita ao usuário cadastrar médicos, pacientes e agendar consultas respeitando **regras de negócio** previamente determinadas pelo cliente.

Acesse a aplicação diretamente no Heroku [clicando aqui](https://app-medcare.herokuapp.com/):

Não foi adicionada qualquer restrição ao usuário no Heroku, assim basta criar uma conta para acessar e testar a aplicação, caso queira usar uma já criada os dados de acesso seguem abaixo:

 - Login: admin@admin.com
 - senha: 123456

## Tecnologias utilizadas
<img alt="Ruby" src="https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white"/> <img alt="Rails" src="https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white"/> <img alt="HTML5" src="https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white"/> <img alt="CSS3" src="https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white"/> <img alt="SASS" src="https://img.shields.io/badge/SASS-hotpink.svg?style=for-the-badge&logo=SASS&logoColor=white"/> <img alt="Bootstrap" src="https://img.shields.io/badge/bootstrap-%23563D7C.svg?style=for-the-badge&logo=bootstrap&logoColor=white"/> <img alt="Postgres" src ="https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white"/>

### Gems utilizadas
 - [Devise](https://github.com/heartcombo/devise) - Autenticação de usuário
 - [Simple_Form](https://github.com/heartcombo/simple_form)
 -  [Ransack](https://github.com/activerecord-hackery/ransack) - Filtros avançados
 - [Cpf_Cnpj](https://github.com/fnando/cpf_cnpj) - Geração de CPFs
 - [Validators](https://github.com/fnando/validators) - Validação de CPF
 - [Rspec](https://github.com/rspec/rspec) - Testes
 - [Shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers) - Testes


### Versões
 - Ruby - 2.6.6
 - Rails - Rails 6.1.3.2
- PostgreSQL -  12.7

## Modelagem do Banco de Dados
![db](https://res.cloudinary.com/dloadb2bx/image/upload/v1623963141/medcaredb_hjiazf.png)

## O que o usuário pode fazer?

### Tela do médico
A partir do menu **médicos** o **usuário** pode cadastrar um novo médico respeitando a regra de negócio exigida pelo cliente.
![Med1](https://res.cloudinary.com/dloadb2bx/image/upload/v1623951654/medCare2_eb4zut.gif)

### Edição e Exclusão de médico
No menu lateral esquerdo é possível acessar a página de listagem de todos os médicos cadastrados no sistema, podendo editar ou excluir um determinado médico. Como **regra de negócio** não será possível excluir um médico caso este tenha consultas agendadas. Consultas só podem ser agendadas se houver prévia indicação de médico e paciente.

### Cadastrar novo paciente
![Med2](https://res.cloudinary.com/dloadb2bx/image/upload/v1623949079/medCare3_thkj8r.png)
Já na tela de paciente o **usuário** poderá cadastrar um novo paciente atentando-se ao fato de que **é exigido um CPF válido** pela aplicação.
Caso não possua um CPF para utilizar no cadastro **foi disponibilizado um gerador de CPF** dentro da aplicação de forma a permitir testes.
![Med3](https://res.cloudinary.com/dloadb2bx/image/upload/v1623949194/medCarecpf_klvbx0.png)

Para acessar abra o terminal na pasta do arquivo e rode `rails c`, em seguida digite o comando `CPF.generate` para gerar um número válido, em seguida utilize-o para cadastrar na aplicação.

### Editar ou excluir paciente
![Med4](https://res.cloudinary.com/dloadb2bx/image/upload/v1623950394/medCare7_bgfzdk.png)
Também foi adicionada tela onde é possível que o **usuário** possa editar e excluir um determinado paciente

### Agendar nova consulta
![Med5](https://res.cloudinary.com/dloadb2bx/image/upload/v1623949363/medCare4_niciwy.png)
Respeitando a **regra de negócio** foi disponibilizada uma tela de agendamento de consultas onde o **usuário** poderá selecionar o paciente e o médico previamente cadastrados no sistema e agendar a data e horário de início da consulta. O **horário de término será automaticamente determinado** a partir do horário de início.

# Filtrar médico - Dashboard
Uma das principais **regras de negício** era permitir que o **usuário** fosse capaz de filtrar médicos por nome, sendo o filtro inicial aquele que lista todos os médicos.
![Med6](https://res.cloudinary.com/dloadb2bx/image/upload/v1623951440/medCare_i31pcs.gif)
 Ao clicar em um determinado médico dados específicos serão gerados em tela, tais como a **total de consultas realizadas pelo médico** já realizada por este médico e quantos **pacientes únicos atendidos** foram atendidos por ele.

# Testes - Rspec
Para a realização dos testes foi utilziado o **Rspec** sendo criados 24 testes.
![Rspec](https://res.cloudinary.com/dloadb2bx/image/upload/v1623950824/medCareTest_mqvqsg.png)

Para rodar os testes acesse a pasta do arquivo pelo terminal e rode o compando `rspec spec/models`.

# Como rodar o projeto?
Caso você já tenha instalado o Ruby on Rails nas versões apontadas no início, após efetuar o download do projeto é necessário rodar os seguintes comandos dentro da pasta do arquivo:

-   yarn install;
-  bundle install;

Em seguida para iniciar o banco de dados é necessário rodar os seguintes comandos:

-   rails db:create (caso o banco de dados não esteja criado);
-   rails db:migrante (para implementar as migrações no bando de dados);

Persistindo erros relacionados ao banco de dados rode no terminal o comando  `rails db:reset`. Ao final rode o comando `rails s`  para iniciar a aplicação em `localhost:3000`.

# Etapas de desenvolvimento
**14 de junho, 2021**

     - Projeto criado em Rails;
     - Model Doctor criado;
     - Model Patient criado;
     - Model Appointment criado;
     - Controllers Doctor criado;
     - Controllers Patient criado;
     - Controllers Appointment criado;
     - Relacionamento entre Models adicionado;
     - Ações em Doctors Controller adicionadas;
     - Rspec gem adicionada;
     - Shoulda-matchers gem adcionada;
     - Testes adicionados para Doctor com Rspec;
     - Devise gem adicionada;
     - Devise views adicionadas.

**15 de junho, 2021**

    - Devise adicionado para autenticação na Home Page;
    - Página de Login adicionada;
    - Dashboard inicial completo;
    - Simple Form For adicionado;
    - HTML e CSS para adicionar novos médicos implementado;
    - Redirecionamento de rotas Dashboard e Doctors;
    - Adicionando Doctors e botões para editar e apagar;
    - Método para apagar médico adicionado;
    - Método para editar médico adicionado;
    - Restrição para remover médico com agendamento marcado implementada;
    - Adicionado Pacientes ao Dash;
    - Adicionado rotas doctors e patients;
    - Tela de criação de pacientes completa;
    - Testes adicionados para Patients com Rspec;
    - Adicionado path para editar paciente;
    - Ações para edição e update de paciente criadas no controller;
    - Rota appointment adicionada;
    - Redirecionamento de rotas do Appointment no Dashboard;
    - Adicionada view para Appointment;
    - Ações em Appointment controller adicionadas;
    - Validações adicionadas em Appointment;
    - Validações para evitar agendamento no mesmo horário implementada;
    - Favicon adicionado;
    - Adicionado contador de agendamentos e pacientes únicos.

**16 de junho, 2021**

    - Rotas refatoradas para method: delete;
    - Filtro adicionado com Ransack gem;
    - Adicionada soma de agendamentos por médico;
    - Adicionada soma de pacientes únicos atendidos por médico;
    - CSS adicionado ao filtro;
    - CSS adicionado para as tabelas;
    - Adicionados testes para validar CRM;
    - Adicionados testes para validar CRM_UF;
    - Adicionados testes para Appointment com Rspec;

**17 de junho, 2021**

    - Correção na apresentação e formatação da data;
    - Define que ends_at será obrigatoriamente 30 minutos após starts_at;
    - Validação de CPF completa;
    - Testes para verificar validação de CPF completos;
    - Adicionada validação para horário de abertura, almoço e fechamento;
    - Adicionado About Us na Home Page;
    - Adicionado Footer na Home Page;
    - Adicionado CSS para Sign up e Forgot Password;
    - Adicionado Readme.

**19 de junho, 2021**

    - Adicionada variávies de cores ao CSS;
    - Refatoramento de nomeclaturas;
    - Refatoramento do model para se tormar mais "Dry";
    - Bug em testes corrigido para suportar validação customizada;
    - Agendamentos listados por data;
    - Filtro para selecionar médicos adicionado ao index de médicos;
    - Adicionada responsividade para Home Page;
    - Padronização de quotes.

**20 de junho, 2021**

    - Adicionando campo "listar todos os médicos";
    - Adicionada view para editar appointment;
