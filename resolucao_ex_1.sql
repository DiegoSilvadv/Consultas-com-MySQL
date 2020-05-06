-- exercicio 1
select v.placa, c.nome FROM veiculo v
inner join cliente c
on
c.cpf = v.cliente_cpf;

-- exercicio 2
select cpf, nome from cliente 
inner join veiculo 
where placa = "JJJ-2020";

-- exercicio 3
select placa, cor 
from veiculo 
where Modelo_CodMod = 1;

-- exercicio 4
select placa, ano 
from veiculo 
where Modelo_CodMod = 1;

-- exercicio 5
select placa, ano, Descricao 
from veiculo v
inner join modelo m
on
m.codMod = v.Modelo_codMod
where
ano >= 2010;

-- exercicio 6
select endereco, hsEntrada, hsSaida 
from estaciona e
inner join patio p
inner join veiculo v
on 
p.num = e.Patio_num
and 
v.placa = e.Veiculo_placa
where placa = "JEG-1010";

-- exercicio 7
select count(*) 
from veiculo 
where cor = "verde";

-- exercicio 8 
select nome FROM veiculo v
inner join modelo m
inner join cliente c
on
c.cpf = v.Cliente_cpf
and
v.Modelo_codMod = m.codMod
where codMod = 1;

-- exercicio 9 
select placa, hsEntrada, hsSaida 
from estaciona e
inner join veiculo v
on 
v.placa = e.Veiculo_placa
where cor = "verde";

-- exercicio 10
select endereco 
from patio p
inner join estaciona e
inner join veiculo v
on
p.num = e.Patio_num
and 
v.placa = e.Veiculo_placa
where placa = "JJJ-2020";


-- exercicio 11
select nome 
FROM veiculo v
inner join patio p
inner join cliente c
inner join estaciona e
on
c.cpf = v.Cliente_cpf
and
p.num = e.Patio_num
and
v.placa = e.Veiculo_placa
where num = 2;

-- exercicio 12
select cpf 
FROM veiculo v
inner join patio p
inner join cliente c
inner join estaciona e
on
c.cpf = v.Cliente_cpf
and
p.num = e.Patio_num
and
v.placa = e.Veiculo_placa
where num = 3;

-- exercicio 13
select Descricao, cor 
FROM veiculo v
inner join modelo m
inner join patio p
inner join estaciona e
on
m.codMod = v.Modelo_codMod
and
p.num = e.Patio_num
and
v.placa = e.Veiculo_placa
where num = 2;

-- exercicio 14
select placa, nome, Descricao
from veiculo v
inner join cliente c
inner join modelo m
on 
c.cpf = v.Cliente_cpf
and 
m.codMod = v.Modelo_codMod;

