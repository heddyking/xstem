CREATE OR REPLACE FUNCTION fn_recruit_applyment_insert()  
RETURNS trigger AS  
$$  
BEGIN  
    INSERT INTO ss1604c195_rd4.recruit_applyment_log(steid, positionid, state, updatedby, createdat, updatedat, applymentid)
    VALUES (new.steid, new.positionid, new.state, new.updatedby, new.createdat, new.updatedat, new.applymentid);
    RETURN NEW;  
END;  
$$  
LANGUAGE 'plpgsql';