CREATE OR REPLACE PACKAGE BODY xxfnd_schedule_del_pkg AS
  --
   -- +=================================================================================+
   -- |              QIA Schedule Table delete package                                   |
   -- +=================================================================================+
   -- | Name             :  XXFND_SCHEDULE_DEL_PKG                                      |
   -- | Description      :  Schedule Table delete package                               |
   -- |                                                                                 |
   -- |                                                  |
   -- |Change Record:                                                                   |
   -- |===============                                                                  |
   -- |Version   Date         Author            Remarks                                 |
   -- |=======   ===========  =============     ========================================|
   -- |1.0       14-SEP-2022  Rajarajan M       Initial Version:     
   -- |1.1       15-JUN-2023  Vivek G           Added a procedure "PO_LINES_PRC" and     |
   -- |                                         commented on a procedure "EMP_MASTER_PRC"|
   -- +=================================================================================+
 /*   PROCEDURE person_stg_prc IS
    BEGIN
        INSERT INTO xxfnd_schedule_del_log_t
            (
                SELECT
                    'PERSON_STG',
                    unique_id,
                    sysdate
                FROM
                    (
                        SELECT
                            rowidtochar(source_rowid) unique_id
                        FROM
                            person_stg
                        MINUS
                        SELECT
                            TRIM(regexp_substr(t.unique_id, '[^,]+', 1, commas.column_value)) AS site
                        FROM
                            xxfnd_schedule_del_t       t,
                            TABLE ( CAST(MULTISET(
                                SELECT
                                    level
                                FROM
                                    dual
                                CONNECT BY
                                    level <= length(regexp_replace(t.unique_id, '[^,]+')) + 1
                            ) AS sys.odcinumberlist) ) commas
                        WHERE
                            t.table_name = 'PERSON_STG'
                    )
            );

        DELETE FROM person_stg
        WHERE
            rowidtochar(source_rowid) IN (
                SELECT
                    rowidtochar(source_rowid) unique_id
                FROM
                    person_stg
                MINUS
                SELECT
                    TRIM(regexp_substr(t.unique_id, '[^,]+', 1, commas.column_value)) AS site
                FROM
                    xxfnd_schedule_del_t       t, TABLE ( CAST(MULTISET(
                        SELECT
                            level
                        FROM
                            dual
                        CONNECT BY
                            level <= length(regexp_replace(t.unique_id, '[^,]+')) + 1
                    ) AS sys.odcinumberlist) ) commas
                WHERE
                    t.table_name = 'PERSON_STG'
            );

        COMMIT;
    END person_stg_prc;

    PROCEDURE per_assignment_stg_prc IS
    BEGIN
        INSERT INTO xxfnd_schedule_del_log_t
            (
                SELECT
                    'PER_ASSIGNMENT_STG',
                    unique_id,
                    sysdate
                FROM
                    (
                        SELECT
                            rowidtochar(source_rowid) unique_id
                        FROM
                            per_assignment_stg
                        MINUS
                        SELECT
                            TRIM(regexp_substr(t.unique_id, '[^,]+', 1, commas.column_value)) AS site
                        FROM
                            xxfnd_schedule_del_t       t,
                            TABLE ( CAST(MULTISET(
                                SELECT
                                    level
                                FROM
                                    dual
                                CONNECT BY
                                    level <= length(regexp_replace(t.unique_id, '[^,]+')) + 1
                            ) AS sys.odcinumberlist) ) commas
                        WHERE
                            t.table_name = 'PER_ASSIGNMENT_STG'
                    )
            );

        DELETE FROM per_assignment_stg
        WHERE
            rowidtochar(source_rowid) IN (
                SELECT
                    rowidtochar(source_rowid) unique_id
                FROM
                    per_assignment_stg
                MINUS
                SELECT
                    TRIM(regexp_substr(t.unique_id, '[^,]+', 1, commas.column_value)) AS site
                FROM
                    xxfnd_schedule_del_t       t, TABLE ( CAST(MULTISET(
                        SELECT
                            level
                        FROM
                            dual
                        CONNECT BY
                            level <= length(regexp_replace(t.unique_id, '[^,]+')) + 1
                    ) AS sys.odcinumberlist) ) commas
                WHERE
                    t.table_name = 'PER_ASSIGNMENT_STG'
            );

        COMMIT;
    END per_assignment_stg_prc;

    PROCEDURE absence_prc IS
    BEGIN
        INSERT INTO xxfnd_schedule_del_log_t
            (
                SELECT
                    'ABSENCE',
                    unique_id,
                    sysdate
                FROM
                    (
                        SELECT
                            rowidtochar(source_rowid) unique_id
                        FROM
                            absence
                        MINUS
                        SELECT
                            TRIM(regexp_substr(t.unique_id, '[^,]+', 1, commas.column_value)) AS site
                        FROM
                            xxfnd_schedule_del_t       t,
                            TABLE ( CAST(MULTISET(
                                SELECT
                                    level
                                FROM
                                    dual
                                CONNECT BY
                                    level <= length(regexp_replace(t.unique_id, '[^,]+')) + 1
                            ) AS sys.odcinumberlist) ) commas
                        WHERE
                            t.table_name = 'ABSENCE'
                    )
            );

        DELETE FROM absence
        WHERE
            rowidtochar(source_rowid) IN (
                SELECT
                    rowidtochar(source_rowid) unique_id
                FROM
                    absence
                MINUS
                SELECT
                    TRIM(regexp_substr(t.unique_id, '[^,]+', 1, commas.column_value)) AS site
                FROM
                    xxfnd_schedule_del_t       t, TABLE ( CAST(MULTISET(
                        SELECT
                            level
                        FROM
                            dual
                        CONNECT BY
                            level <= length(regexp_replace(t.unique_id, '[^,]+')) + 1
                    ) AS sys.odcinumberlist) ) commas
                WHERE
                    t.table_name = 'ABSENCE'
            );

        COMMIT;
    END absence_prc;

    PROCEDURE person_dependent_prc IS
    BEGIN
        INSERT INTO xxfnd_schedule_del_log_t
            (
                SELECT
                    'PERSON_DEPENDENT',
                    unique_id,
                    sysdate
                FROM
                    (
                        SELECT
                            rowidtochar(source_rowid) unique_id
                        FROM
                            person_dependent
                        MINUS
                        SELECT
                            TRIM(regexp_substr(t.unique_id, '[^,]+', 1, commas.column_value)) AS site
                        FROM
                            xxfnd_schedule_del_t       t,
                            TABLE ( CAST(MULTISET(
                                SELECT
                                    level
                                FROM
                                    dual
                                CONNECT BY
                                    level <= length(regexp_replace(t.unique_id, '[^,]+')) + 1
                            ) AS sys.odcinumberlist) ) commas
                        WHERE
                            t.table_name = 'PERSON_DEPENDENT'
                    )
            );

        DELETE FROM person_dependent
        WHERE
            rowidtochar(source_rowid) IN (
                SELECT
                    rowidtochar(source_rowid) unique_id
                FROM
                    person_dependent
                MINUS
                SELECT
                    TRIM(regexp_substr(t.unique_id, '[^,]+', 1, commas.column_value)) AS site
                FROM
                    xxfnd_schedule_del_t       t, TABLE ( CAST(MULTISET(
                        SELECT
                            level
                        FROM
                            dual
                        CONNECT BY
                            level <= length(regexp_replace(t.unique_id, '[^,]+')) + 1
                    ) AS sys.odcinumberlist) ) commas
                WHERE
                    t.table_name = 'PERSON_DEPENDENT'
            );

        COMMIT;
    END person_dependent_prc;

    PROCEDURE user_stg_prc IS
    BEGIN
        INSERT INTO xxfnd_schedule_del_log_t
            (
                SELECT
                    'USERS_STG',
                    unique_id,
                    sysdate
                FROM
                    (
                        SELECT
                            rowidtochar(source_rowid) unique_id
                        FROM
                            users_stg
                        MINUS
                        SELECT
                            TRIM(regexp_substr(t.unique_id, '[^,]+', 1, commas.column_value)) AS site
                        FROM
                            xxfnd_schedule_del_t       t,
                            TABLE ( CAST(MULTISET(
                                SELECT
                                    level
                                FROM
                                    dual
                                CONNECT BY
                                    level <= length(regexp_replace(t.unique_id, '[^,]+')) + 1
                            ) AS sys.odcinumberlist) ) commas
                        WHERE
                            t.table_name = 'USERS_STG'
                    )
            );

        DELETE FROM users_stg
        WHERE
            rowidtochar(source_rowid) IN (
                SELECT
                    rowidtochar(source_rowid) unique_id
                FROM
                    users_stg
                MINUS
                SELECT
                    TRIM(regexp_substr(t.unique_id, '[^,]+', 1, commas.column_value)) AS site
                FROM
                    xxfnd_schedule_del_t       t, TABLE ( CAST(MULTISET(
                        SELECT
                            level
                        FROM
                            dual
                        CONNECT BY
                            level <= length(regexp_replace(t.unique_id, '[^,]+')) + 1
                    ) AS sys.odcinumberlist) ) commas
                WHERE
                    t.table_name = 'USERS_STG'
            );

        COMMIT;
    END user_stg_prc;  */

    PROCEDURE  PO_LINES_PRC  is

    BEGIN
        INSERT INTO xxfnd_schedule_del_log_t
            (
                SELECT
                    'PO_LINES',
                    unique_id,
                    sysdate
                FROM
                    (
                        SELECT
                            rowidtochar(source_rowid) unique_id
                        FROM
                            PO_LINES
                        MINUS
                        SELECT
                            TRIM(regexp_substr(t.unique_id, '[^,]+', 1, commas.column_value)) AS site
                        FROM
                            xxfnd_schedule_del_t       t,
                            TABLE ( CAST(MULTISET(
                                SELECT
                                    level
                                FROM
                                    dual
                                CONNECT BY
                                    level <= length(regexp_replace(t.unique_id, '[^,]+')) + 1
                            ) AS sys.odcinumberlist) ) commas
                        WHERE
                            t.table_name = 'PO_LINES'
                    )
            );

 /*       DELETE FROM PO_LINES
        WHERE
            rowidtochar(source_rowid) IN (
                SELECT
                    rowidtochar(source_rowid) unique_id
                FROM
                    PO_LINES
                MINUS
                SELECT
                    TRIM(regexp_substr(t.unique_id, '[^,]+', 1, commas.column_value)) AS site
                FROM
                    xxfnd_schedule_del_t       t, TABLE ( CAST(MULTISET(
                        SELECT
                            level
                        FROM
                            dual
                        CONNECT BY
                            level <= length(regexp_replace(t.unique_id, '[^,]+')) + 1
                    ) AS sys.odcinumberlist) ) commas
                WHERE
                    t.table_name = 'PO_LINES'
            );
*/
        COMMIT; 
    END PO_LINES_PRC;  


/*  PROCEDURE emp_master_prc IS

        CURSOR c_emp IS
        SELECT
            employee_number,
            COUNT(*)
        FROM
            xxhr_emp_master_date_t
        WHERE
                1 = 1
            AND trunc(sysdate) BETWEEN assignment_start_date AND assignment_end_date
            AND trunc(sysdate) BETWEEN people_start_date AND people_end_date
        GROUP BY
            employee_number
        HAVING
            COUNT(*) != 1;

    BEGIN
        FOR lp_emp IN c_emp LOOP
            DELETE FROM xxhr_emp_master_date_t
            WHERE
                ( ROWID ) NOT IN (
                    SELECT
                        MAX(ROWID)
                    FROM
                        xxhr_emp_master_date_t a
                    WHERE
                            a.employee_number = lp_emp.employee_number
                        AND trunc(sysdate) BETWEEN a.assignment_start_date AND a.assignment_end_date
                        AND trunc(sysdate) BETWEEN a.people_start_date AND a.people_end_date
                )
                AND trunc(sysdate) BETWEEN assignment_start_date AND assignment_end_date
                AND trunc(sysdate) BETWEEN people_start_date AND people_end_date
                AND employee_number = lp_emp.employee_number;

        END LOOP;
    END emp_master_prc; */

    PROCEDURE main_prc IS

        CURSOR cp_table IS
        SELECT DISTINCT 
               TABLE_NAME,UNIQUE_ID,delete_flag
    FROM
            xxfnd_schedule_del_t t
        WHERE
            nvl(t.delete_flag, 'N') = 'N';



        lp_date      SYS_REFCURSOR;
        lp_date_row  VARCHAR(1500);
        lv_script    VARCHAR2(4000);
        lv_delscript VARCHAR2(4000);
    BEGIN
--        dbms_session.sleep(30);
 XX_DEBUG ('insert in to xxfnd_log 1');

        INSERT INTO xxfnd_log (
            schedule_id,
            column2,
            column3,
            column4,
            module,
            appr_level
        ) VALUES (
            - 1,
            'Came into Delete Schedule',
            sysdate,
            'HEADER',
            'SYNC',
            1
        );
XX_DEBUG (' end insert in to xxfnd_log 1');

XX_DEBUG('Loop');
        FOR lp_table IN cp_table LOOP
            dbms_output.put_line('Table_name===>' || lp_table.table_name);
XX_DEBUG ('   insert in to xxfnd_log 2');

            INSERT INTO xxfnd_log (
                schedule_id,
                column2,
                column3,
                column4,
                module,
                appr_level
            ) VALUES (
                - 1,
                'TABLE_NAME : ' || lp_table.table_name,
                sysdate,
                'TABLE',
                'SYNC',
                2
            );
XX_DEBUG (' end insert in to xxfnd_log 2');

            lv_script := 'SELECT    rowidtochar(source_rowid) unique_id FROM '
                         || lp_table.table_name
                         || '  WHERE
    source_rowid = source_rowid || '''' MINUS SELECT
                               TRIM(regexp_substr(t.unique_id, ''[^,]+'', 1, commas.column_value))  AS site
                               FROM
                    xxfnd_schedule_del_t       t, TABLE ( CAST(MULTISET(
                        SELECT
                            level
                        FROM
                            dual
                        CONNECT BY
                            level <= length(regexp_replace(t.unique_id, ''[^,]+'')) + 1
                    ) AS sys.odcinumberlist) ) commas
                WHERE t.table_name = t.table_name || '''' and  t.unique_id = t.unique_id || '''' and nvl(DELETE_FLAG,''N'') = ''N'' and t.unique_id not in (select unique_id from xxfnd_schedule_del_log_t) and t.table_name   LIKE upper('''
                         || lp_table.table_name
                         || ''')';

            dbms_output.put_line('Script===>' || lv_script);
XX_DEBUG('open lp_date');

            OPEN lp_date FOR lv_script;

            IF ( lp_date IS NOT NULL ) THEN
                LOOP
                    FETCH lp_date INTO lp_date_row;
XX_DEBUG ('   insert in to xxfnd_log 3');


                    INSERT INTO xxfnd_log (
                        schedule_id,
                        column2,
                        column3,
                        column4,
                        module,
                        appr_level
                    ) VALUES (
                        - 1,
                        'lp_date_row : ' || lp_date_row,
                        sysdate,
                        lv_script,
                        'SYNC',
                        3
                    );
XX_DEBUG (' end insert in to xxfnd_log 3');

                    IF lp_date_row IS NOT NULL THEN
                        INSERT INTO xxfnd_schedule_del_log_t (
                            table_name,
                            unique_id,
                            creation_date
                        ) VALUES (
                            lp_table.table_name,
                            lp_date_row,
                            sysdate
                        );
XX_DEBUG ('   insert in to xxfnd_schedule_del_log_t ');

                        UPDATE xxfnd_schedule_del_t
                        SET
                            delete_flag = 'Y'
                        WHERE
                                table_name = lp_table.table_name
                            AND unique_id LIKE '%'
                                               || lp_date_row
                                               || '%';
XX_DEBUG ('   update in to xxfnd_schedule_del_log_t ');

                       lv_delscript := 'DELETE FROM '
                                        || lp_table.table_name
                                        || ' where rowidtochar(source_rowid) =:1';
                        dbms_output.put_line('Delete ===>' || lv_delscript);
                        EXECUTE IMMEDIATE lv_delscript
                            USING lp_date_row;  
                    END IF;

                    COMMIT;
                    EXIT WHEN lp_date%notfound;
                END LOOP;
            END IF;

            CLOSE lp_date;
XX_DEBUG(' Close lp_date');
        END LOOP;
--        update xxfnd_schedule_del_t set delete_flag = 'Y' where 1=1;
        COMMIT;

--        xxfnd_schedule_del_pkg.emp_master_prc;
    END main_prc;

END xxfnd_schedule_del_pkg;