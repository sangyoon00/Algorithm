-- 코드를 입력하세요
/*
조건 1 : 가장 오랫동안 보호소
조건 2 : 3마리만 지정 LIMIT
조건 3 : 보호시작일순
ANIMAL_INS AI, ANIMAL_OUTS AO
*/
SELECT AI.NAME AS NAME, AI.DATETIME AS DATETIME
FROM ANIMAL_INS AI LEFT JOIN ANIMAL_OUTS AO
ON AI.ANIMAL_ID = AO.ANIMAL_ID
WHERE AO.ANIMAL_ID IS NULL
ORDER BY AI.DATETIME LIMIT 3