DROP TRIGGER IF EXISTS tr_recruit_position_update ON ss1604c195_rd4.recruit_position;
CREATE TRIGGER tr_recruit_position_update
AFTER UPDATE ON ss1604c195_rd4.recruit_position
FOR EACH ROW
EXECUTE PROCEDURE ss1604c195_rd4.fn_recruit_position_update();