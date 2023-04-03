-- 코드를 입력하세요
/*출력 : 종, 이름, 성별및 중성화여부
아이디 순서대로*/
SELECT ANIMAL_TYPE, IFNULL(NAME,'No name'), SEX_UPON_INTAKE
FROM ANIMAL_INS ORDER BY ANIMAL_ID