
DROP DATABASE IF EXISTS `LMS`;
CREATE DATABASE `LMS`;
USE `LMS`;

SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;

CREATE TABLE `student` (
    `student_id` INT AUTO_INCREMENT PRIMARY KEY,
    `first_name` VARCHAR(50),
    `last_name` VARCHAR(50),
    `birthdate` DATE,
    `gender` ENUM('m', 'f'),
    `grade` VARCHAR(10),
    `username` VARCHAR(100) UNIQUE,
    `email` VARCHAR(100) UNIQUE,
    `password` VARCHAR(100)
);


INSERT INTO `student` (`first_name`, `last_name`, `birthdate`, `gender`, `grade`, `username`, `email`, `password`) 
VALUES ('Mahesh', 'Kondapalli', '2004-09-12', 'm', '7.43', 'MaheshSyam_K', 'maheshkondapalli5@gmail.com', 'Mahesh@1527'),
		('Fate', 'Nasir', '1990-08-03', 'f', '3.7', 'fate12', 'fatenasir@gmail.com', 'fate1234');

CREATE TABLE `admin` (
    `admin_id` INT AUTO_INCREMENT PRIMARY KEY,
    `first_name` VARCHAR(50),
    `last_name` VARCHAR(50),
    `gender` VARCHAR(10),
    `username` VARCHAR(50),
    `email` VARCHAR(100),
    `password` VARCHAR(100)
); 

INSERT INTO `admin` (`first_name`, `last_name`, `gender`, `username`, `email`, `password`) 
VALUES ('Abebe', 'Kebede', 'm', 'abekebe', 'AB@gmail.com', '12AB34CD');

INSERT INTO `admin` (`first_name`, `last_name`, `gender`, `username`, `email`, `password`) 
VALUES ('Netsanet', 'Endale', 'f', 'netsi', 'netsanetendale@gmail.com', '1234netsi');

INSERT INTO `admin` (`first_name`, `last_name`, `gender`, `username`, `email`, `password`) 
VALUES ('Kemal', 'Abdu', 'm', 'keme', 'kemalabdu@gmail.com', '1234567890');

INSERT INTO `admin` (`first_name`, `last_name`, `gender`, `username`, `email`, `password`) 
VALUES ('Mahesh Syam Kumar', 'Kondapalli', 'm', 'MaheshSyam_K', 'maheshkondapalli5@gmail.com', 'Mahesh@1527');

CREATE TABLE `books` (
    `book_id` INT AUTO_INCREMENT PRIMARY KEY,
    `title` VARCHAR(255),
    `author` VARCHAR(255),
    `publication_date` DATE,
    `department` VARCHAR(255),
    `status` VARCHAR(255)
);

INSERT INTO `books` (`title`, `author`, `publication_date`, `department`, `status`) 
VALUES ('Introduction to the Theory of Computation', 'Michael Sipser', '2012-02-14', 'Software_Engineering', 'Available'),
	   ('Code Complete: A Practical Handbook of Software Construction', 'Steve McConnell', '2004-06-09', 'Software_Engineering', 'Available'),
    ('The Mythical Man-Month: Essays on Software Engineering', 'Frederick P. Brooks Jr.', '1995-08-12', 'Software_Engineering', 'Available'),
    ( 'Refactoring: Improving the Design of Existing Code', 'Martin Fowler', '1999-07-08', 'Software_Engineering', 'Available'),
    ( 'Structure and Interpretation of Computer Programs', 'Harold Abelson, Gerald Jay Sussman, Julie Sussman', '1996-07-15', 'Software_Engineering', 'Available'),
    ( 'The Art of Computer Programming', 'Donald E. Knuth', '1968-07-01', 'Software_Engineering', 'Available'),
    ( 'Software Engineering: A Practitioner\'s Approach', 'Roger S. Pressman, Bruce Maxim', '2014-03-28', 'Software_Engineering', 'Available'),
    ( 'Designing Data-Intensive Applications', 'Martin Kleppmann', '2017-03-16', 'Software_Engineering', 'Available'),
    ( 'Clean Architecture: A Craftsman\'s Guide to Software Structure and Design', 'Robert C. Martin', '2017-09-20', 'Software Engineering', 'Available'),
    ('Principles of Compiler Design', 'Alfred V. Aho, Jeffrey D. Ullman', '1977-01-01', 'Software Engineering', 'Available'),
    ('Microelectronic Circuits', 'Adel S. Sedra, Kenneth C. Smith', '2014-11-17', 'Electrical_Engineering', 'Available'),
    ('Electric Machinery Fundamentals', 'Stephen J. Chapman', '2017-02-10', 'Electrical_Engineering', 'Available'),
    ('Power System Analysis and Design', 'J. Duncan Glover, Thomas J. Overbye, Mulukutla S. Sarma', '2017-02-24', 'Electrical_Engineering', 'Available'),
    ('Digital Signal Processing', 'John G. Proakis, Dimitris G. Manolakis', '2013-09-13', 'Electrical_Engineering', 'Available'),
    ('Control Systems Engineering', 'Norman S. Nise', '2019-01-25', 'Electrical_Engineering', 'Available'),
    ('Fundamentals of Electric Circuits', 'Charles K. Alexander, Matthew N. O. Sadiku', '2012-02-03', 'Electrical_Engineering', 'Available'),
    ('Power Electronics: Converters, Applications, and Design', 'Ned Mohan, Tore M. Undeland, William P. Robbins', '2014-01-10', 'Electrical_Engineering', 'Available'),
    ('Signals and Systems', 'Alan V. Oppenheim, Alan S. Willsky, S. Hamid Nawab', '2013-07-12', 'Electrical_Engineering', 'Available'),
    ('Electromagnetic Fields and Waves', 'Paul Lorrain, Dale R. Corson, François Lorrain', '1990-12-15', 'Electrical_Engineering', 'Available'),
    ( 'Digital Communications', 'John G. Proakis, Masoud Salehi', '2013-08-12', 'Electrical_Engineering', 'Available'),
    ( 'Mechanics of Materials', 'Russell C. Hibbeler', '2017-01-15', 'Mechanical_Engineering', 'Available'),
    ( 'Introduction to Thermal Systems Engineering: Thermodynamics, Fluid Mechanics, and Heat Transfer', 'Michael J. Moran, Howard N. Shapiro, Bruce R. Munson, David P. DeWitt', '2016-01-11', 'Mechanical_Engineering', 'Available'),
    ('Engineering Mechanics: Statics', 'J. L. Meriam, L. G. Kraige', '2016-02-08', 'Mechanical_Engineering', 'Available'),
    ( 'Fundamentals of Fluid Mechanics', 'Bruce R. Munson, Donald F. Young, Theodore H. Okiishi, Wade W. Huebsch', '2015-02-02', 'Mechanical_Engineering', 'Available'),
    ( 'Machine Design: An Integrated Approach', 'Robert L. Norton', '2019-01-23', 'Mechanical_Engineering', 'Available'),
    ( 'Heat and Mass Transfer: Fundamentals and Applications', 'Yunus A. Çengel, Afshin J. Ghajar', '2014-02-03', 'Mechanical_Engineering', 'Available'),
    ( 'Engineering Mechanics: Dynamics', 'J. L. Meriam, L. G. Kraige, Jeffrey N. Bolton', '2015-08-11', 'Mechanical_Engineering', 'Available'),
    ( 'Fluid Mechanics: Fundamentals and Applications', 'Yunus A. Çengel, John M. Cimbala', '2017-01-18', 'Mechanical_Engineering', 'Available'),
    ( 'Shigley\'s Mechanical Engineering Design', 'Richard G. Budynas, Keith J. Nisbett', '2014-09-08', 'Mechanical_Engineering', 'Available'),
    ( 'Engineering Vibration', 'Daniel J. Inman', '2013-03-13', 'Mechanical_Engineering', 'Available'),
    ( 'Electromechanical Systems and Devices', 'Sergey Edward Lyshevski', '2016-09-14', 'Electromechanical_Engineering', 'Available'),
    ( 'Electromechanical Energy Conversion: Dynamics, Machines, and Drives', 'David J. Braun', '2017-03-21', 'Electromechanical_Engineering', 'Available'),
   ('Introduction to Mechatronics and Measurement Systems', 'David G. Alciatore, Michael B. Histand', '2018-01-03', 'Electromechanical_Engineering', 'Available'),
( 'Electric Motors and Drives: Fundamentals, Types and Applications', 'Austin Hughes, Bill Drury', '2013-08-06', 'Electromechanical_Engineering', 'Available'),
( 'Mechatronics: Principles and Applications', 'Godfrey C. Onwubolu', '2016-08-04', 'Electromechanical_Engineering', 'Available'),
( 'Sensors and Actuators: Control System Instrumentation', 'Clarence W. de Silva', '2018-07-24', 'Electromechanical_Engineering', 'Available'),
( 'Electromechanical Dynamics, Part I: Discrete Systems', 'Herbert H. Woodson, James R. Melcher', '2012-10-29', 'Electromechanical_Engineering', 'Available'),
( 'Robotics: Modelling, Planning and Control', 'Bruno Siciliano, Lorenzo Sciavicco, Luigi Villani, Giuseppe Oriolo', '2010-07-20', 'Electromechanical_Engineering', 'Available'),
( 'Electric Drives and Electromechanical Systems: Applications and Control', 'Richard Crowder', '2018-12-11', 'Electromechanical_Engineering', 'Available'),
 ( 'Introduction to Robotics: Mechanics and Control', 'John J. Craig', '2018-05-18', 'Electromechanical_Engineering', 'Available'),
( 'Structural Analysis', 'Russell C. Hibbeler', '2018-02-06', 'Civil_Engineering', 'Available'),
( 'Reinforced Concrete: Mechanics and Design', 'James K. Wight, James G. MacGregor', '2014-01-24', 'Civil_Engineering', 'Available'),
('Geotechnical Engineering: Principles and Practices', 'Donald P. Coduto, William A. Kitch, Man-Chu Ronald Yeung', '2010-08-31', 'Civil_Engineering', 'Available'),
( 'Transportation Engineering: An Introduction', 'C. Jotin Khisty, B. Kent Lall', '2015-08-31', 'Civil_Engineering', 'Available'),
( 'Water Resources Engineering', 'Larry W. Mays', '2010-10-25', 'Civil_Engineering', 'Available'),
( 'Construction Planning, Equipment, and Methods', 'Robert L. Peurifoy, Clifford J. Schexnayder, Aviad Shapira, Robert Schmitt', '2010-07-02', 'Civil_Engineering', 'Available'),
( 'Environmental Engineering: Fundamentals, Sustainability, Design', 'James R. Mihelcic, Julie B. Zimmerman', '2016-01-27', 'Civil_Engineering', 'Available'),
( 'Highway Engineering', 'Roger L. Brockenbrough, Kenneth J. Boedecker', '2009-08-01', 'Civil_Engineering', 'Available'),
( 'Fundamentals of Structural Analysis', 'Kenneth M. Leet, Chia-Ming Uang, Joel T. Lanning', '2017-04-13', 'Civil_Engineering', 'Available'),
( 'Soil Mechanics and Foundations', 'Muni Budhu', '2013-08-30', 'Civil_Engineering', 'Available'),
( 'Architecture: Form, Space, and Order', 'Francis D. K. Ching', '2014-09-15', 'Architecture', 'Available'),
( 'The Architecture Reference & Specification Book: Everything Architects Need to Know Every Day', 'Julia McMorrough', '2013-05-07', 'Architecture', 'Available'),
('Architectural Graphics', 'Francis D. K. Ching', '2015-03-16', 'Architecture', 'Available'),
( 'Architectural Drawing: A Visual Compendium of Types and Methods', 'Rendow Yee', '2012-09-04', 'Architecture', 'Available'),
( 'Building Construction Illustrated', 'Francis D. K. Ching', '2014-02-03', 'Architecture', 'Available'),
( 'The Future of Architecture in 100 Buildings', 'Marc Kushner', '2015-03-10', 'Architecture', 'Available'),
( '101 Things I Learned in Architecture School', 'Matthew Frederick', '2007-08-01', 'Architecture', 'Available'),
( 'Time-Saver Standards for Architectural Design', 'Michael J. Crosbie', '2017-03-20', 'Architecture', 'Available'),
( 'The Architecture Student''s Handbook of Professional Practice', 'American Institute of Architects', '2013-08-12', 'Architecture', 'Available'),
( 'Architectural Acoustics', 'David Egan', '2007-07-24', 'Architecture', 'Available'),
( 'Introductory Mining Engineering', 'Howard L. Hartman, Jan M. Mutmansky', '2002-08-09', 'Mining_Engineering', 'Available'),
( 'SME Mining Engineering Handbook', 'Peter Darling Editor)', '2011-02-01', 'Mining_Engineering', 'Available'),
('Hardrock Seismic Exploration', 'Terry Engelder', '2001-09-25', 'Mining_Engineering', 'Available'),
( 'Mining Economics and Strategy', 'Ian C. Runge', '1998-09-01', 'Mining_Engineering', 'Available'),
( 'Surface Mining: Second Edition', 'Kenneth S. Kutchta, Austin S. Kuhn', '1999-01-01', 'Mining_Engineering', 'Available'),
( 'Mine Ventilation and Air Conditioning', 'Howard L. Hartman, Jan M. Mutmansky', '2005-08-12', 'Mining_Engineering', 'Available'),
( 'Mining and the Environment: From Ore to Metal', 'Karlheinz Spitz, John Trudinger', '2016-09-01', 'Mining_Engineering', 'Available'),
( 'Open Pit Mine Planning and Design: Fundamentals, CSMine Software Package, CD-ROM', 'William A. Hustrulid, Mark Kuchta, Randall K. Martin', '2006-06-30', 'Mining_Engineering', 'Available'),
( 'Blasting Principles for Open Pit Mining', 'William A. Hustrulid, William Hustrulid', '1999-01-01', 'Mining_Engineering', 'Available'),
('Rock Mechanics for Underground Mining', 'B.H.G. Brady, E.T. Brown', '2004-12-15', 'Mining_Engineering', 'Available'),
('Introduction to Environmental Engineering and Science', 'Gilbert M. Masters, Wendell P. Ela', '2014-01-21', 'Environmental_Engineering', 'Available'),
('Water and Wastewater Engineering', 'Mackenzie L. Davis, David A. Cornwell', '2010-01-19', 'Environmental_Engineering', 'Available'),
('Environmental Science and Engineering', 'J. Glynn Henry, Gary W. Heinke', '2008-02-27', 'Environmental_Engineering', 'Available'),
('Air Pollution: Its Origin and Control', 'Kenneth Wark, Cecil F. Warner, Wayne T. Davis', '2012-01-01', 'Environmental_Engineering', 'Available'),
('Solid Waste Engineering: A Global Perspective', 'William A. Worrell, P. Aarne Vesilind, Christian Ludwig', '2011-10-03', 'Environmental_Engineering', 'Available'),
('Environmental Engineering: Fundamentals, Sustainability, Design', 'James R. Mihelcic, Julie B. Zimmerman', '2016-01-27', 'Environmental_Engineering', 'Available'),
('Water Resources Engineering', 'Larry W. Mays', '2010-10-25', 'Environmental_Engineering', 'Available'),
('Principles of Environmental Engineering and Science', 'Mackenzie L. Davis, Susan J. Masten', '2019-07-26', 'Environmental_Engineering', 'Available'),
  ('Environmental Biotechnology: Principles and Applications', 'Bruce Rittmann, Perry L. McCarty', '2011-01-01', 'Environmental_Engineering', 'Available'),
  ( 'Environmental Chemistry', 'Stanley E. Manahan', '2009-05-08', 'Environmental_Engineering', 'Available'),
  ( 'Industrial Chemistry: For Advanced Students', 'Jack Appleton, Heinrich Offermanns', '2010-09-01', 'Industrial_Chemistry', 'Available'),
  ( 'Industrial Chemistry: Organic', 'Allen B. Crow, Frederick H. Getzen', '1992-01-01', 'Industrial_Chemistry', 'Available'),
  ('Industrial Chemistry: Inorganic', 'Allen B. Crow, Frederick H. Getzen', '1992-01-01', 'Industrial_Chemistry', 'Available'),
  ( 'Industrial Chemistry: Environmental Impact', 'Terence J. Collins, Thomas R. Kurfurst', '2002-08-01', 'Industrial_Chemistry', 'Available'),
  ( 'Industrial Chemistry: Principles and Applications', 'Chris A. Clausen III, Guy Mattson', '2012-10-19', 'Industrial_Chemistry', 'Available'),
  ( 'Introduction to Industrial Chemistry', 'Paul T. Anastas, Julianne M. Ando', '2020-08-18', 'Industrial_Chemistry', 'Available'),
  ( 'Industrial Chemistry: For Advanced Students', 'W. Keim', '2019-05-01', 'Industrial_Chemistry', 'Available'),
  ( 'Industrial Chemistry: Theory and Practice', 'Achim Schmidt', '2017-06-22', 'Industrial_Chemistry', 'Available'),
  ( 'Industrial Chemistry: Pharmaceuticals', 'Chittaranjan B. Kole', '2017-09-27', 'Industrial_Chemistry', 'Available'),
  ( 'Industrial Chemistry: For Advanced Students', 'Michele Aresta, Angela Dibenedetto, Franck Dumeignil', '2021-07-01', 'Industrial_Chemistry', 'Available'),
  ( 'Principles of Igneous and Metamorphic Petrology', 'Anthony Philpotts, Jay Ague', '2009-05-29', 'Geology', 'Available'),
( 'Structural Geology', 'Haakon Fossen', '2015-12-11', 'Geology', 'Available'),
  ('Sedimentary Geology', 'Donald R. Prothero, Fred Schwab', '2018-11-01', 'Geology', 'Available'),
  ( 'The Geology of Ore Deposits', 'John M. Guilbert, Charles F. Park Jr.', '2007-12-28', 'Geology', 'Available'),
  ( 'Principles of Geotechnical Engineering', 'Braja M. Das, Khaled Sobhan', '2017-01-01', 'Geology', 'Available'),
    ( 'Earth: Portrait of a Planet', 'Stephen Marshak', '2015-09-25', 'Geology', 'Available'),
    ( 'Geomorphology', 'Biddy Passmore', '2019-03-15', 'Geology', 'Available'),
    ( 'Environmental Geology', 'Carla W. Montgomery', '2012-01-01', 'Geology', 'Available'),
    ( 'Introduction to Mineralogy', 'William D. Nesse', '2011-09-13', 'Geology', 'Available'),
    ( 'Introduction to Geochemistry: Principles and Applications', 'Kula C. Misra', '2012-09-17', 'Geology', 'Available'),
    ( 'Food Chemistry', 'H.-D. Belitz, Werner Grosch, Peter Schieberle', '2016-02-11', 'Food_Science', 'Available'),
    ( 'Food Science', 'Norman N. Potter, Joseph H. Hotchkiss', '1998-07-01', 'Food_Science', 'Available'),
    ('Introduction to Food Science and Food Systems', 'Rick Parker, Miriah Pace', '2020-02-07', 'Food_Science', 'Available'),
    ( 'Food Processing Technology: Principles and Practice', 'P.J. Fellows', '2016-02-23', 'Food_Science', 'Available'),
    ( 'Food Microbiology: Fundamentals and Frontiers', 'Michael P. Doyle, Robert L. Buchanan', '2012-03-26', 'Food_Science', 'Available'),
    ( 'Food Microbiology', 'Michael ', '2012-03-26', 'Food_Science', 'Available'),
    ( 'Food Science and Technology', 'Geoffrey Campbell-Platt', '2018-08-31', 'Food_Science', 'Available'),
    ( 'Food Packaging Science and Technology', 'Gordon L. Robertson', '2012-01-09', 'Food_Science', 'Available'),
    ( 'Food Rheology and Texture', 'Howard R. Moskowitz, Talia Mizrahi', '2013-06-03', 'Food_Science', 'Available'),
    ('Food Engineering: Integrated Approaches', 'Gustavo V. Barbosa-Cánovas, Maria Cecilia do Amaral Sobral, Pablo Juliano', '2013-01-03', 'Food_Science', 'Available'),
    ('Molecular Biotechnology: Principles and Applications of Recombinant DNA', 'Bernard R. Glick, Jack J. Pasternak', '2019-08-23', 'Biotechnology', 'Available'),
    ('Bioprocess Engineering Principles', 'Pauline M. Doran', '2012-12-14', 'Biotechnology', 'Available'),
    ('Biotechnology: An Introduction', 'Susan R. Barnum', '2016-12-29', 'Biotechnology', 'Available'),
    ('Principles of Fermentation Technology', 'Peter F. Stanbury, Allan Whitaker, Stephen J. Hall', '2016-04-18', 'Biotechnology', 'Available'),
    ('Genetic Engineering: Principles and Methods', 'Jane K. Setlow', '2019-11-27', 'Biotechnology', 'Available'),
    ('Introduction to Biotechnology', 'William J. Thieman, Michael A. Palladino', '2018-01-01', 'Biotechnology', 'Available'),
    ('Industrial Biotechnology: Products and Processes', 'Chapman and Hall', '2017-01-12', 'Biotechnology', 'Available'),
    ('Biotechnology: Science for the New Millennium', 'Ellyn Daugherty', '2016-03-02', 'Biotechnology', 'Available'),
    ('Basic Biotechnology', 'Colin Ratledge, Bjorn Kristiansen', '2013-05-14', 'Biotechnology', 'Available'),
    ('Biotechnology: Academic Cell Update Edition', 'David P. Clark, Nanette J. Pazdernik', '2019-05-15', 'Biotechnology', 'Available');

