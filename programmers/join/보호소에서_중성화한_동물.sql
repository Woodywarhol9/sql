SELECT INS.ANIMAL_ID, INS.ANIMAL_TYPE, INS.NAME
    FROM ANIMAL_INS AS INS
        LEFT OUTER JOIN ANIMAL_OUTS AS OUTS
        ON INS.ANIMAL_ID = OUTS.ANIMAL_ID
        -- INS가 Intact였다가 OUT에선 Intact가 아닌 동물 추출
        WHERE INS.SEX_UPON_INTAKE LIKE ("Intact%") AND OUTS.SEX_UPON_OUTCOME NOT LIKE ("Intact%")
        -- WHERE INS.SEX_UPON_INTAKE != OUTS.SEX_UPON_OUTCOME
        -- ANIMAL_ID 별로 정렬
        ORDER BY INS.ANIMAL_ID;