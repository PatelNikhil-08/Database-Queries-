# Database-Queries-
SQL Queries

Note: Due to some issues I cannot upload the table but I can cetainly add the schemas which is important to write queries. I will also add the question for which the queries are written for.

Important: I understand that to a full extend that it is hard to write or solve queries without the table, but due to certain circumstances I cannot upload the table. So, please follow the quesition the queries and the then try to match the solution. 

--> The schemas of the tables will be given and such tables are loaded with real NBA statistics data. Specifically, the database contains the following six tables:
1) coaches_season, each tuple of which describes the performance of one coach in one season;
2) teams, each tuple of which gives the basic information of a team;
3) players, each tuple of which gives the basic information of one player;
4) player_rs, each tuple of which gives the detailed performance of one player in one regular season;
5) player_rs_career, each tuple of which gives the detailed regular-season performance of one player in his career;
6) draft, each tuple of which shows the information of an NBA draft.


***QUESTIONS****


Your task in this project is to write the following queries in SQL and make sure they run in the PostgreSQL database. If you make any assumptions, clearly state them as comments in your submitted file.

1. Find all the coaches who have coached exactly TWO teams. List their first names followed by their last names;
2. Find all the players who played in a Boston team or a Denver team. List their first names only.
3. Find those who happened to be a coach and a player in the same team in the same season. List their first names, last names, the team where this happened, and the year(s) when this happened.
4. Find the average height (in centimeters) of each team coached by Phil Jackson in each season. Print the team name, season and the average height value (in centimeters), and sort the results by the average height.
5. Find the coach(es) (first name and last name) who have coached the largest number of players in year 2003.
6. Find the coaches who coached in ALL leagues. List their first names followed by their last names.
7. Find those who happened to be a coach and a player in the same season, but in different teams. List their first names, last names, the season and the teams this happened.
8. Find the players who have scored more points than Michael Jordan did. Print out the first name, last name, and total number of points they scored.
9. Find the most successful coach in regular seasons in history. The level of success of a coach is measured as season_win /(season_win + season_loss). Note that you have to count in all seasons a coach attended to calculate this value.
10. List the name(s) of school(s) that sent the second largest number of drafts to NBA. List the name of each school and the number of drafts sent.




