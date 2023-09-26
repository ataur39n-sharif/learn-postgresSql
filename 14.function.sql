/* 

	#Function
		=> do return
	
	#Stored procedure
		=> no return
		=> can use transaction facilities
	
	#SQL function => dose a specific task.

 */

-- Stored procedural function

CREATE PROCEDURE deactivate_unpaid_accounts()   -- function name
LANGUAGE SQL -- select then language (sql,pgSQL,others)
AS $$ -- function start
UPDATE employee SET department_id = null WHERE emp_id = 0; -- query list inside this function
$$ -- function end

CALL deactivate_unpaid_accounts(); -- call the function

-- function
CREATE FUNCTION account_type_count(account_type text) RETURNS integer -- function name, parameter with type and return type
LANGUAGE plpgsql -- select the language (sql,pgSQL,others)
AS $$
	DECLARE account_count int; -- declare a variable. 
	BEGIN -- function start
		SELECT count(*) INTO account_count FROM accounts WHERE accounts.account_type= $1;
		RETURN account_count; -- return the value
	END; -- function end