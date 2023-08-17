create database criminalidade_sp;
use criminalidade_sp;

create table boletim_ocorrencia ( 
num_bo char (10),
ano_bo int, 
id_delegacia int, 
nome_departamento varchar(45),
delegacia varchar(45),
mes int, 
rubrica varchar(100),
conduta varchar(45),
cidade varchar(45),
logradouro varchar(60)
);

#Quantas ocorrências foram registradas em cada departamento?
select nome_departamento, count(*) from boletim_ocorrencia group by nome_departamento;

SELECT * FROM BOLETIM_OCORRENCIA;
#Quais são as 5 delegacias que registraram o maior número de ocorrências?
select nome_departamento, count(*) as total_ocorrencias from boletim_ocorrencia  group by id_delegacia order by total_ocorrencias desc limit 5;


#Qual é o mês com o maior número de ocorrências registradas?
select mes, count(*) 
as total_ocorrencias 
from boletim_ocorrencia 
group by mes
 order by total_ocorrencias 
 desc limit 1;


#Quais são as 10 rubricas mais frequentes nas ocorrências?
select rubrica, count(*) as total_ocorrencias 
from boletim_ocorrencia
group by rubrica 
order by total_ocorrencias desc
 limit 10;
 
 
 
 #Quantas ocorrências de "homicídio" foram registradas em cada ano?
 select ano_bo, count(*) as total_homicidios 
 from boletim_ocorrencia 
 where rubrica like '%Homicídio%'
 group by ano_bo;
 
 
 #Qual é o logradouro mais comum onde ocorrem ocorrências de "furto"?
select logradouro, COUNT(*) AS total_furtos
from boletim_ocorrencia
where rubrica like  '%furto%'
group by logradouro
order by  total_furtos DESC limit 1;



#Quantas ocorrências foram registradas em cada ano para a cidade de "São Paulo"?
SELECT ano_bo, COUNT(*) AS total_ocorrencias
FROM boletim_ocorrencia
WHERE cidade like '%s.Paulo%'
GROUP BY ano_bo
ORDER BY ano_bo;




#Quais são as cidades onde ocorreram ocorrências no ano de 2016?
SELECT DISTINCT cidade
FROM boletim_ocorrencia
WHERE ano_bo = 2016;
















