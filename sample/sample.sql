CREATE EXTENSION pg_credereum;
CREATE TABLE t (id serial PRIMARY KEY, value int NOT NULL);
CREATE TRIGGER t_after AFTER INSERT OR UPDATE OR DELETE ON t
FOR EACH ROW EXECUTE PROCEDURE credereum_acc_trigger();
