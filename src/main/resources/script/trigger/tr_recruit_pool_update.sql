DROP TRIGGER IF EXISTS tr_recruit_pool_update ON ss1604c195_rd2.recruit_pool;
CREATE TRIGGER tr_recruit_pool_update
AFTER UPDATE ON ss1604c195_rd2.recruit_pool
FOR EACH ROW
EXECUTE PROCEDURE ss1604c195_rd2.fn_recruit_pool_update();