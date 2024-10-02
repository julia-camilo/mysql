-- Selecione o nome e siglas da tabela departamento;
select sigla_depto, nome_depto from departamento;
-- Selecione a sigla e nome dos departamentos não repetidos;
SELECT DISTINCT sigla_depto, nome_depto from departamento;
-- Selecione o nome dos funcionarios.
SELECT nome_funcionario FROM funcionario;
-- Selecione todos os nomes diferentes dos funcionarios
SELECT DISTINCT nome_funcionario FROM funcionario;
-- Selecione todos os projetos diferentes e seus nomes.
SELECT DISTINCT nome_projeto FROM projeto;
-- Selecione todos os departamentos com um número menor do que 11 funcionários.
SELECT nome_depto FROM departamento WHERE qtdfuncionariosdepto < 11;
-- Selecione todos os departamentos com um número maior ou igual a 15 funcionários.
SELECT nome_depto FROM departamento WHERE qtdfuncionariosdepto >=15;
-- Selecione todos os funcionários de um departamento específico (no nosso caso será TI).
SELECT nome_funcionario FROM funcionario WHERE sigla_depto = 'IT';
-- Selecione todos os funcionários com seus respectivos cargos em ordem alfabética descendente.
SELECT nome_funcionario, cargo FROM funcionario ORDER BY CARGO DESC;
-- Selecione todos os nomes dos departamentos com suas respectivas siglas em ordem alfabética ascendente
SELECT nome_depto, sigla_depto FROM departamento ORDER BY sigla_depto ASC;
-- Selecione todos os projetos em ordem alfabética descendente com base em seus nomes.
SELECT * FROM projeto ORDER BY nome_projeto DESC;
-- Considere que a tabela funcionário precisa ser alterada, será necessário adicionar a coluna data_admissao (tipo date), salario (tipo decimal com até duas casas de precisão)
ALTER TABLE funcionario
ADD COLUMN data_admissao date,
ADD COLUMN salario decimal(12, 2);
-- Considere que a tabela projeto também precisa ser alterada, será necessário adicionar a coluna duração (tipo numérico) deve representar em meses a duração de um projeto.
ALTER TABLE projeto
ADD COLUMN duracao int;
-- Para garantir a consistência dos dados você deve fazer os inserts (de data de admissão e salário) nas duplas já existentes.
SELECT * FROM funcionario;
UPDATE funcionario SET
data_admissao = '2022-02-15',
salario = 5478.15
WHERE codfuncionario = 8;
-- Agora faça as alterações necessárias para deixar os campos data_admissao e salario como itens obrigatórios para futuros inserts.
