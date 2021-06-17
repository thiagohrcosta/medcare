## MedCare
![enter image description here](https://res.cloudinary.com/dloadb2bx/image/upload/v1623961275/medcare1_gnbsd6.png)
O objetivo do presente projeto foi desenvolver uma aplicação para uma clínica médica aqui denominada **MedCare** que permita ao usuário cadastrar médicos, pacientes e agendar consultas respeitando **regras de negócio** previamente determinadas pelo cliente.

Acesse a aplicação diretamente no Heroku [clicando aqui](https://app-medcare.herokuapp.com/):

## Tecnologias utilizadas
<img alt="Ruby" src="https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white"/> <img alt="Rails" src="https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white"/> <img alt="HTML5" src="https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white"/> <img alt="CSS3" src="https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white"/> <img alt="SASS" src="https://img.shields.io/badge/SASS-hotpink.svg?style=for-the-badge&logo=SASS&logoColor=white"/> <img alt="Bootstrap" src="https://img.shields.io/badge/bootstrap-%23563D7C.svg?style=for-the-badge&logo=bootstrap&logoColor=white"/> <img alt="Postgres" src ="https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white"/>

### Gems utilizadas
 - [Devise](https://github.com/heartcombo/devise) - Autenticação de usuário
 - [Simple_Form](https://github.com/heartcombo/simple_form)
 -  [Ransack](https://github.com/activerecord-hackery/ransack) - Filtros avançados
 - [Cpf_Cnpj](https://github.com/fnando/cpf_cnpj) - Geração de CPFs
 - [Validators](https://github.com/fnando/validators) - Validação de CPF
 - [Rspec](https://github.com/rspec/rspec) - Testes

### Versões
 - Ruby - 2.6.6
 - Rails - Rails 6.1.3.2
- PostgreSQL -  12.7

## O que o usuário pode fazer?

### Tela do médico
![enter image description here](https://res.cloudinary.com/dloadb2bx/image/upload/v1623948994/medCare2_mzturl.png)
A partir de tal tela o **usuário** pode cadastrar um novo médico respeitando a regra de negócio exigida pelo cliente.
![enter image description here](https://res.cloudinary.com/dloadb2bx/image/upload/v1623951654/medCare2_eb4zut.gif)

### Edição e Exclusão de médico
![enter image description here](https://res.cloudinary.com/dloadb2bx/image/upload/v1623949544/medCare6_vzl8mh.png)
No menu lateral esquerdo é possível acessar a página de listagem de todos os médicos cadastrados no sistema, podendo editar ou excluir um determinado médico. Como **regra de negócio** não será possível excluir um médico caso este tenha consultas agendadas.

### Cadastrar novo paciente
![enter image description here](https://res.cloudinary.com/dloadb2bx/image/upload/v1623949079/medCare3_thkj8r.png)
Já na tela de paciente o **usuário** poderá cadastrar um novo paciente atentando-se ao fato de que **é exigido um CPF válido** pela aplicação.
Caso não possua um CPF para utilizar no cadastro **foi disponibilizado um gerador de CPF** dentro da aplicação de forma a permitir testes.
![enter image description here](https://res.cloudinary.com/dloadb2bx/image/upload/v1623949194/medCarecpf_klvbx0.png)

Para acessar abra o terminal na pasta do arquivo e rode `rails c`, em seguida digite o comando `CPF.generate` para gerar um número válido, em seguida utilize-o para cadastrar na aplicação.

### Editar ou excluir paciente
![enter image description here](https://res.cloudinary.com/dloadb2bx/image/upload/v1623950394/medCare7_bgfzdk.png)
Também foi adicionada tela onde é possível que o **usuário** possa editar e excluir um determinado paciente

### Agendar nova consulta
![enter image description here](https://res.cloudinary.com/dloadb2bx/image/upload/v1623949363/medCare4_niciwy.png)
Respeitando a **regra de negócio** foi disponibilizada uma tela de agendamento de consultas onde o **usuário** poderá selecionar o paciente e o médico previamente cadastrados no sistema e agendar a data e horário de início da consulta. O h**orário de término será automaticamente determinado** a partir do horário de início.

# Filtrar médico - Dashboard
Uma das principais **regras de negício** era permitir que o **usuário** fosse capaz de filtrar médicos por nome, sendo o filtro inicial aquele que lista todos os médicos.
![enter image description here](https://res.cloudinary.com/dloadb2bx/image/upload/v1623951440/medCare_i31pcs.gif)
 Ao clicar em um determinado médico dados específicos serão gerados em tela, tais como a **total de consultas realizadas pelo médico** já realizada por este médico e quantos **pacientes únicos atendidos** foram atendidos por ele.

# Testes - Rspec
Para a realização dos testes foi utilziado o **Rspec** sendo criados 24 testes.
![Rspec](https://res.cloudinary.com/dloadb2bx/image/upload/v1623950824/medCareTest_mqvqsg.png)
