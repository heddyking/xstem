CREATE OR REPLACE FUNCTION fn_staffing_change_update()  
RETURNS trigger AS  
$$  
BEGIN  
    INSERT INTO ss1604c195_rd2.staffing_change_log(
            steid, from_positionid, to_positionid, date_req, duration_req, 
            createdby, updatedby, createdat, updatedat, state, changeid)
    VALUES (
    		new.steid, new.from_positionid, new.to_positionid, new.date_req, new.duration_req, 
            new.createdby, new.updatedby, new.createdat, new.updatedat, new.state, new.changeid);
    RETURN NEW; 
END;  
$$  
LANGUAGE 'plpgsql';