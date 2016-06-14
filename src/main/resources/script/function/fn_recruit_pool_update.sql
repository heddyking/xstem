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