-- SCRIPT PARA A CRIAÇÃO DO BANCO
Create table Candidato (
id_candidato number not null,
nome_candidato varchar2(30),
usuario_candidato varchar2(30),
usuario_senha varchar2(20),
constraint id_candidato primary key  (id_candidato)
)
Create table Pessoa (
id_pessoa number not null,
nome_pessoa number not null,
cpf_pessoa number not null,
constraint id_pessoa primary key (id_pessoa)
)
Create table Localizacao (
id_localizacao number not null,
nome_localizacao varchar2(30),
tamanho_localizacao number not null,  
constraint id_localizacao primary key (id_localizacao)
)
Create table Cadastro (
id_cadastro number not null,
id_localizacao number not null,
id_candidato number not null,
primary key (id_cadastro),
foreign key (id_candidato) references Candidato (id_candidato),
foreign key (id_localizacao) references Localizacao (id_localizacao)
)
Create table Campanha (
id_campanha number not null,
id_cadastro number not null,
id_pessoa number not null,
nome_campanha varchar2(30),
PRIMARY KEY (id_campanha),
foreign key (id_cadastro) references Cadastro(id_cadastro),
foreign key (id_pessoa) references Pessoa(id_pessoa)
)