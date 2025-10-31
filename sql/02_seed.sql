/* Insert sample data for players, runs, bowling, and matches */

USE Group_35;
GO

INSERT INTO dbo.List_of_Players (Player, Birth_date, Team, Batting_style, Bowling_style) VALUES
('Virat Kohli','1988-11-05','India','Right-hand bat',NULL),
('Babar Azam','1994-10-15','Pakistan','Right-hand bat',NULL),
('David Warner','1986-10-27','Australia','Left-hand bat',NULL),
('Rashid Khan','1998-09-20','Afghanistan','Right-hand bat','Legbreak googly'),
('Jasprit Bumrah','1993-12-06','India','Right-hand bat','Right-arm fast'),
('Ben Stokes','1991-06-04','England','Left-hand bat','Right-arm medium'),
('Shakib Al Hasan','1987-03-24','Bangladesh','Left-hand bat','Slow left-arm orthodox'),
('Trent Boult','1989-07-22','New Zealand','Right-hand bat','Left-arm fast'),
('Aiden Markram','1994-10-04','South Africa','Right-hand bat','Offbreak'),
('Shaheen Afridi','2000-04-06','Pakistan','Left-hand bat','Left-arm fast');
