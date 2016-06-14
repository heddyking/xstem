DROP TRIGGER IF EXISTS tr_recruit_applyment_insert ON ss1604c195_rd2.recruit_applyment;
CREATE TRIGGER tr_recruit_applyment_insert
AFTER INSERT ON ss1604c195_rd2.recruit_applyment
FOR EACH ROW
EXECUTE PROCEDURE ss1604c195_rd2.fn_recruit_applyment_insert();