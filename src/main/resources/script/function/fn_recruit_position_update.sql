CREATE OR REPLACE FUNCTION fn_recruit_position_update()  
RETURNS trigger AS  
$$  
BEGIN  
    INSERT INTO ss1604c195_rd2.recruit_position_log(
            positionname, "number", location_req, date_req, duration_req, 
            skill_req1, skill_req2, skill_req3, skill_req4, skill_req5, createdby, 
            updatedby, createdat, updatedat, departmentid, positionid, description,isvalid)
    VALUES (
    		new.positionname, new."number", new.location_req, new.date_req, new.duration_req, 
            new.skill_req1, new.skill_req2, new.skill_req3, new.skill_req4, new.skill_req5, new.createdby, 
            new.updatedby, new.createdat, new.updatedat, new.departmentid, new.positionid, new.description,new.isvalid);
    RETURN NEW;   
END;  
$$  
LANGUAGE 'plpgsql';