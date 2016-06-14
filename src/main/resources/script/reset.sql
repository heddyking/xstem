drop schema ss1604c195_rd2 cascade;
create schema ss1604c195_rd2;


---------------##########Replace Start 1 With Start 666666#########--------------------
-----------------------##########TRIGGER FUNCTIONS#########----------------------------
CREATE OR REPLACE FUNCTION fn_recruit_applyment_insert()  
RETURNS trigger AS  
$$  
BEGIN  
    INSERT INTO ss1604c195_rd2.recruit_applyment_log(steid, positionid, state, updatedby, createdat, updatedat, applymentid)
    VALUES (new.steid, new.positionid, new.state, new.updatedby, new.createdat, new.updatedat, new.applymentid);
    RETURN NEW;  
END;  
$$  
LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fn_recruit_applyment_update()  
RETURNS trigger AS  
$$  
BEGIN  
    INSERT INTO ss1604c195_rd2.recruit_applyment_log(steid, positionid, state, updatedby, createdat, updatedat, applymentid)
    VALUES (new.steid, new.positionid, new.state, new.updatedby, new.createdat, new.updatedat, new.applymentid);
    RETURN NEW;  
END;  
$$  
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION fn_recruit_pool_insert()  
RETURNS trigger AS  
$$  
BEGIN  
    INSERT INTO ss1604c195_rd2.recruit_pool_log(
            poolid, positionid, realnumber, apply_due, apply_start, poster_url, 
            createdby, updatedby, createdat, updatedat,isvalid)
    VALUES (new.poolid, new.positionid, new.realnumber, new.apply_due, new.apply_start, new.poster_url, 
            new.createdby, new.updatedby, new.createdat, new.updatedat,new.isvalid);

    RETURN NEW;  
END;  
$$  
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION fn_recruit_pool_update()  
RETURNS trigger AS  
$$  
BEGIN  
    INSERT INTO ss1604c195_rd2.recruit_pool_log(
            poolid, positionid, realnumber, apply_due, apply_start, poster_url, 
            createdby, updatedby, createdat, updatedat,isvalid)
    VALUES (new.poolid, new.positionid, new.realnumber, new.apply_due, new.apply_start, new.poster_url, 
            new.createdby, new.updatedby, new.createdat, new.updatedat,new.isvalid);
            
    RETURN NEW;   
END;  
$$  
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION fn_recruit_position_insert()  
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

CREATE OR REPLACE FUNCTION fn_staffing_change_insert()  
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
-----------------------##################################----------------------------