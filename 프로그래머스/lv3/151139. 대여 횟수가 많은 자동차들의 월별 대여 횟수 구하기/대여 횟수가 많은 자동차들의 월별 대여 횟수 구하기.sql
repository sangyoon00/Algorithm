-- 코드를 입력하세요
/*
GROUP BY : 월별
END_DATE를 기준으로 개수를 세야함
월 오름차순, 자동차 ID 내림차순
*/
SELECT MONTH(START_DATE) AS MONTH, CAR_ID, COUNT(*) AS RECORDS 
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY  
WHERE (MONTH(START_DATE) BETWEEN 8 AND 10)  
AND CAR_ID IN(
    SELECT CAR_ID FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
    WHERE MONTH(START_DATE) BETWEEN 8 AND 10
    GROUP BY CAR_ID HAVING COUNT(*) >=5)
GROUP BY MONTH, CAR_ID ORDER BY MONTH, CAR_ID DESC
