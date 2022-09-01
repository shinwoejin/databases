-- https://school.programmers.co.kr/learn/courses/30/lessons/59037
-- 코드를 입력하세요
-- SELECT * FROM ANIMAL_INS
SELECT ANIMAL_ID, NAME 
FROM ANIMAL_INS
WHERE INTAKE_CONDITION != 'Aged'
-- WHERE INTAKE_CONDITION <> 'Aged'
;