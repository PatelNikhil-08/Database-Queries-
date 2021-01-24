--Nikhil Patel 
-- FUNCTION 1
CREATE OR REPLACE FUNCTION fibonacci (lastN INTEGER)
RETURNS int AS $$
DECLARE

BEGIN
  IF (lastN<=1) THEN
      RETURN lastN;
  ELSE
      RETURN fibonacci(lastN-1)+fibonacci(lastN-2);
  END IF;

END;
$$ LANGUAGE plpgsql;
SELECT* from fibonacci(20);

-- FUNCTION 2
CREATE OR REPLACE FUNCTION player_height_rank (fname VARCHAR, lname VARCHAR) RETURNS int AS $$
DECLARE

   PRANK INTEGER;

BEGIN

	select PLAYER_RANK INTO PRANK from (
			SELECT ilkid,firstname,lastname,h_feet,h_inches,RANK () OVER (
			ORDER BY h_feet desc,h_inches DESC
		 ) AS PLAYER_RANK from players)src
		 WHERE firstname = fname and lastname = lname;

	IF COALESCE(PRANK,0) = 0 THEN
		RETURN 0;
    ELSE
      RETURN PRANK;
    END IF;

END;
$$ LANGUAGE plpgsql;
 SELECT* from player_height_rank('Reggie', 'Miller');
