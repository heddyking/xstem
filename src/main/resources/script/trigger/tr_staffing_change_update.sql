DROP TRIGGER IF EXISTS tr_staffing_change_update ON ss1604c195_rd2.staffing_change;
CREATE TRIGGER tr_staffing_change_update
AFTER UPDATE ON ss1604c195_rd2.staffing_change
FOR EACH ROW
EXECUTE PROCEDURE ss1604c195_rd2.fn_staffing_change_update();