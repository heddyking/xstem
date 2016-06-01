DROP TRIGGER IF EXISTS tr_recruit_pool_insert ON ss1604c195_rd4.recruit_pool;
CREATE TRIGGER tr_recruit_pool_insert
AFTER INSERT ON ss1604c195_rd4.recruit_pool
FOR EACH ROW
EXECUTE PROCEDURE ss1604c195_rd4.fn_recruit_pool_insert();