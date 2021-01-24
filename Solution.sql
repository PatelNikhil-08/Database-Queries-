
SELECT c.firstname, c.lastname 
	FROM coaches_season c 
GROUP BY c.cid, c.firstname, c.lastname 
HAVING COUNT(DISTINCT c.tid) = 2; 



SELECT DISTINCT p.firstname 
	FROM player_rs p, teams t 
WHERE p.tid = t.tid and (upper(t.location) = 'DENVER' or upper(t.location) = 'BOSTON');



SELECT DISTINCT c.firstname, c.lastname, c.year, t.name 
	FROM coaches_season c, teams t, player_rs p 
WHERE upper(c.tid) = upper(t.tid) and upper(p.tid) = upper(t.tid) and upper(c.cid) = upper(p.ilkid) and c.year = p.year 
ORDER BY c.year;


SELECT t.name, c.year, avg((p.h_feet * 12 + p.h_inches) * 2.54) 
	FROM coaches_season c, teams t, players p, player_rs pr 
WHERE upper(c.firstname) = 'PHIL' and upper(c.lastname) = 'JACKSON' 
		and upper(c.tid) = upper(t.tid) and upper(c.tid) = upper(pr.tid) 
		and upper(p.ilkid) = upper(pr.ilkid) and c.year = pr.year 
GROUP BY c.tid, t.location, t.name, c.year 
ORDER BY avg DESC;


SELECT c.firstname, c.lastname 
	FROM player_rs p, coaches_season c 
WHERE p.year = 2003 and c.year = 2003 and upper(p.tid) = upper(c.tid) 
GROUP BY c.firstname, c.lastname, p.tid 
HAVING count(p.ilkid) in (
	SELECT max(players.count) 
		FROM (
			SELECT count(DISTINCT p.ilkid) 
				FROM player_rs p, teams t, coaches_season c 
			WHERE p.year = 2003 and c.year = 2003 and (upper(p.tid) = upper(t.tid) and upper(c.tid) = upper(t.tid)) 
			GROUP BY p.tid
			) players);



SELECT c.firstname, c.lastname 
	FROM coaches_season c, teams t 
WHERE upper(c.tid) = upper(t.tid) 
GROUP BY c.cid, c.firstname, c.lastname 
HAVING count(DISTINCT t.league) in (
	SELECT max(t.count) 
		FROM (
			SELECT count(DISTINCT t.league) 
				FROM teams t) t) 
	ORDER BY c.firstname;



SELECT c.firstname, c.lastname, c.year, t2.name, t1.name 
	FROM coaches_season c, teams t1, teams t2, player_rs p 
WHERE upper(c.tid) = upper(t1.tid) and upper(p.tid) = upper(t2.tid) and upper(t1.tid) != upper(t2.tid) 
		and upper(c.firstname) = upper(p.firstname) and upper(c.lastname) = upper(p.lastname) 
		and c.year = p.year and upper(c.cid) = upper(p.ilkid);



SELECT p2.firstname, p2.lastname, p2.pts 
	FROM player_rs_career p1, player_rs_career p2 
WHERE (upper(p1.firstname) = 'MICHAEL' and upper(p1.lastname) = 'JORDAN') 
		and (upper(p2.firstname) != 'MICHAEL' and upper(p2.lastname) != 'JORDAN') and p2.pts > p1.pts;



SELECT c.firstname, c.lastname, sum(c.season_win) / (sum(c.season_win) + sum(season_loss)) as success 
	FROM coaches_season c 
GROUP BY c.cid, c.firstname, c.lastname 
ORDER BY success DESC limit 1;





