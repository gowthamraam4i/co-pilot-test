--create comments for the below procedure

CREATE OR REPLACE package XXFND_SCHEDULE_DEL_PKG
as
    --
   -- +=================================================================================+
   -- |              QIA Schedule Table delete package                                    |
   -- +=================================================================================+
   -- | Name             :  XXFND_SCHEDULE_DEL_PKG                                        |
   -- | Description      :  Schedule Table delete package                                 |
   -- |                                                                                   |
   -- |                                                                                   |
   -- |Change Record:                                                                     |
   -- |===============                                                                    |
   -- |Version   Date         Author            Remarks                                   |
   -- |=======   ===========  =============     ==========================================|
   -- |1.0       14-SEP-2022  Rajarajan M       Initial Version:                          |
   -- |1.1       15-JUN-2023  Vivek G           Added a procedure "PO_LINES_PRC" and      |
   -- |                                          commented on a procedure "EMP_MASTER_PRC"|
   -- +===================================================================================+
--    procedure PERSON_STG_PRC;    
--    procedure PER_ASSIGNMENT_STG_PRC;
--    procedure ABSENCE_PRC;   
--    procedure PERSON_DEPENDENT_PRC;   
--    procedure USER_STG_PRC;  
    procedure  PO_LINES_PRC ;
 --   procedure EMP_MASTER_PRC;  
    procedure main_prc;  

end XXFND_SCHEDULE_DEL_PKG;
