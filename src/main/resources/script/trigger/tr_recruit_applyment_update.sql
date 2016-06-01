DROP TRIGGER IF EXISTS tr_recruit_applyment_update ON ss1604c195_rd4.recruit_applyment;
CREATE TRIGGER tr_recruit_applyment_update
AFTER UPDATE ON ss1604c195_rd4.recruit_applyment
FOR EACH ROW
EXECUTE PROCEDURE ss1604c195_rd4.fn_recruit_applyment_update();