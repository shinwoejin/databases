
CREATE TABLE Answer_Number
(
  Unique_Answer VARCHAR(200) NOT NULL,
  Answer        VARCHAR(200) NOT NULL,
  PRIMARY KEY (Unique_Answer)
);

CREATE TABLE Name_Number
(
  Unique_Name VARCHAR(200) NOT NULL,
  Name        VARCHAR(200) NOT NULL,
  PRIMARY KEY (Unique_Name)
);

CREATE TABLE Name_Question
(
  Unique_Name VARCHAR(200) NOT NULL,
  Unique_ques VARCHAR(200) NOT NULL,
  PRIMARY KEY (Unique_Name)
);

CREATE TABLE Num_Answer
(
  Unique_Num    VARCHAR(200) NOT NULL,
  Unique_Answer VARCHAR(200) NOT NULL,
  PRIMARY KEY (Unique_Num, Unique_Answer)
);

CREATE TABLE Num_Number
(
  Unique_Num VARCHAR(200) NOT NULL,
  Num        VARCHAR(200) NOT NULL,
  PRIMARY KEY (Unique_Num)
);

CREATE TABLE Number_Collection
(
  Unique_Name   VARCHAR(200) NOT NULL,
  Unique_ques   VARCHAR(200) NOT NULL,
  Unique_Answer VARCHAR(200) NOT NULL
);

ALTER TABLE Name_Question
  ADD CONSTRAINT FK_Name_Number_TO_Name_Question
    FOREIGN KEY (Unique_Name)
    REFERENCES Name_Number (Unique_Name);

ALTER TABLE Name_Question
  ADD CONSTRAINT FK_Num_Number_TO_Name_Question
    FOREIGN KEY (Unique_ques)
    REFERENCES Num_Number (Unique_Num);

ALTER TABLE Num_Answer
  ADD CONSTRAINT FK_Num_Number_TO_Num_Answer
    FOREIGN KEY (Unique_Num)
    REFERENCES Num_Number (Unique_Num);

ALTER TABLE Num_Answer
  ADD CONSTRAINT FK_Answer_Number_TO_Num_Answer
    FOREIGN KEY (Unique_Answer)
    REFERENCES Answer_Number (Unique_Answer);

ALTER TABLE Number_Collection
  ADD CONSTRAINT FK_Name_Question_TO_Number_Collection
    FOREIGN KEY (Unique_Name)
    REFERENCES Name_Question (Unique_Name);

ALTER TABLE Number_Collection
  ADD CONSTRAINT FK_Num_Answer_TO_Number_Collection
    FOREIGN KEY (Unique_ques, Unique_Answer)
    REFERENCES Num_Answer (Unique_Num, Unique_Answer);
