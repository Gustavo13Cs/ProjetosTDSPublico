use Tesla;
go
Create table Veiculo(
VEID int check(VEID between 1 and 20) primary key,
VEIDESCRICAO varchar (100) not null,
VEIVALOR int not null,
VEICODMODELO int not null,
)
go
Create table Modelo(
MODID int check(MODID between 1 and 1) primary key,
MODDESCRICAO varchar (100) not null,
MODANO int not null,
VEID int check(VEID between 1 and 20)
FOREIGN KEY (VEID) REFERENCES Veiculo(VEID)
)

---DML ---
Select * from  Veiculo
Select * from  Modelo