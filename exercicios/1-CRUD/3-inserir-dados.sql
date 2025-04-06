-- Insira 3 classes salariais na tabela salario_classe
INSERT INTO salario_classe (id_salario, nivel, salario)
VALUES
(1, 'Estágirio(a)', 1500),
(2, 'Júnior(a)', 2500),
(3, 'Pleno(a)', 3500);
-- Insira 1 nova classe salarial, sem declarar o atributo id_salario
INSERT INTO salario_classe (nivel, salario)
VALUES
('Sênior(a)', 5000);