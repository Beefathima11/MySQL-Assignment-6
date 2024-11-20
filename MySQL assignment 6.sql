Create database Assignment_6;
Use Assignment_6;
CREATE TABLE Country1 (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating DECIMAL(3, 2),
    Country_Id INT,
    Country_name VARCHAR(100)
);
INSERT INTO Country1 (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Smith', 5000000, 4.5, 101, 'United States'),
(2, 'Emma', 'Johnson', 3500000, 4.2, 102, 'Canada'),
(3, 'Liam', 'Williams', 8500000, 4.7, 103, 'United Kingdom'),
(4, 'Olivia', 'Brown', 2500000, 4.0, 104, 'Australia'),
(5, 'Noah', 'Davis', 4500000, 4.3, 105, 'New Zealand'),
(6, 'Sophia', 'Wilson', 12000000, 4.8, 106, 'India'),
(7, 'James', 'Moore', 8000000, 4.6, 107, 'Germany'),
(8, 'Isabella', 'Taylor', 7000000, 4.4, 108, 'France'),
(9, 'Elijah', 'Anderson', 6000000, 4.1, 109, 'Japan'),
(10, 'Mia', 'Thomas', 4000000, 4.0, 110, 'Italy');






CREATE TABLE persons11 (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating DECIMAL(3, 2),
    Country_Id INT,
    Country_name VARCHAR(100)
);

INSERT INTO persons11 (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Smith', 5000000, 4.5, 101, 'United States'),
(2, 'Emma', 'Johnson', 3500000, 4.2, 102, 'Canada'),
(3, 'Liam', 'Williams', 8500000, 4.7, 103, 'United Kingdom'),
(4, 'Olivia', 'Brown', 2500000, 4.0, 104, 'Australia'),
(5, 'Noah', 'Davis', 4500000, 4.3, 105, 'New Zealand'),
(6, 'Sophia', 'Wilson', 12000000, 4.8, 106, 'India'),
(7, 'James', 'Moore', 8000000, 4.6, 107, 'Germany'),
(8, 'Isabella', 'Taylor', 7000000, 4.4, 108, 'France'),
(9, 'Elijah', 'Anderson', 6000000, 4.1, 109, 'Japan'),
(10, 'Mia', 'Thomas', 4000000, 4.0, 110, 'Italy');

SELECT 
    Country1.Country_name AS Country_from_Country,
    persons11.Fname, 
    persons11.Lname, 
    persons11.Country_name AS Country_from_Persons,
    persons11.Rating
FROM 
    Country1
INNER JOIN 
    persons11 
ON 
    Country1.Country_Id = persons11.Country_Id;
    
    SELECT 
    Country1.Country_name AS Country_from_Country,
    persons11.Fname, 
    persons11.Lname, 
    persons11.Country_name AS Country_from_Persons,
    persons11.Rating
FROM 
    Country1
LEFT JOIN 
    persons11 
ON 
    Country1.Country_Id = persons11.Country_Id;
    
    SELECT 
    Country1.Country_name AS Country_from_Country,
    persons11.Fname, 
    persons11.Lname, 
    persons11.Country_name AS Country_from_Persons,
    persons11.Rating
FROM 
    Country1
RIGHT JOIN 
    persons11 
ON 
    Country1.Country_Id = persons11.Country_Id;
    
    SELECT DISTINCT Country_name
FROM 
    Country1
UNION
SELECT DISTINCT Country_name
FROM 
    persons11;
    
    SELECT Country_name
FROM 
    Country1
UNION ALL
SELECT Country_name
FROM 
    persons11;
    
    SELECT 
    Id, 
    Fname, 
    Lname, 
    Population, 
    ROUND(Rating) AS Rounded_Rating, 
    Country_Id, 
    Country_name
FROM 
    persons11;