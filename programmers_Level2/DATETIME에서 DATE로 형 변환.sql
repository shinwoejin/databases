-- https://school.programmers.co.kr/learn/courses/30/lessons/59414
-- 코드를 입력하세요
SELECT ANIMAL_ID, NAME, LEFT(CAST(DATETIME AS CHAR), 10) AS '날짜'
FROM ANIMAL_INS
;