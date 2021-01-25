CREATE TABLE sailors(
sid VARCHAR(10),
sname CHAR(20),
rating INT,
age INT);

INSERT INTO sailors VALUES('101','AAA','7','60');    
INSERT INTO sailors VALUES('102','BOB','8','65');  

CREATE TABLE boats(
bid VARCHAR(10),
bname CHAR(20),
color CHAR(10));

INSERT INTO boats VALUES('101','mmm','BLUE');    
INSERT INTO boats VALUES('102','nnn','RED');  
INSERT INTO boats VALUES('103','ppp','BLUE');

CREATE TABLE reserves(
sid VARCHAR(10),
bid VARCHAR(10),
day DATE NOT NULL);


INSERT INTO reserves VALUES('102','102','2021-01-25');    
INSERT INTO reserves VALUES('101','101','2021-01-26');  

    SELECT A.SID , A.SNAME, A.RATING ,A.AGE
    FROM sailors AS A
    INNER JOIN reserves AS C ON A.SID =C.SID AND C.BID =101;
    
    SELECT B.BNAME
    FROM reserves AS C
    INNER JOIN sailors AS A ON A.SID =C.SID AND A.SNAME ='BOB'
    INNER JOIN boats AS B ON B.BID = C.BID;
    
    SELECT A.SNAME
    FROM sailors AS A
    INNER JOIN reserves AS C ON A.SID = C.SID
    INNER JOIN boats AS B ON B.BID = C.BID AND B.COLOR ='RED'
    ORDER BY A.AGE ;
    
    SELECT DISTINCT A.SNAME
    FROM sailors AS A 
    INNER JOIN reserves AS c ON A.SID IN (C.SID);
    
    SELECT A.SID , A.SNAME
    FROM reserves AS C
    INNER JOIN reserves AS D ON C.SID <> D.SID AND C.DAY =D.DAY
    INNER JOIN sailors AS A ON D.SID = A.SID;