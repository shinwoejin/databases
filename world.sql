
CREATE TABLE city_me
(
  ID          INT          NOT NULL COMMENT '아이디',
  Name        VARCHAR(200) NULL     COMMENT '도시명',
  District    VARCHAR(200) NULL     ,
  Population  INT          NULL    ,
  CountryCode VARCHAR(200) NOT NULL COMMENT '국가 코드',
  PRIMARY KEY (ID)
) COMMENT '도시';

CREATE TABLE country_me
(
  CountryCode    VARCHAR(200)    NOT NULL,
  Code           VARCHAR(200)    NULL    ,
  Name           VARCHAR(200)    NULL    ,
  Continent      INT             NULL    ,
  Region         VARCHAR(200)    NULL    ,
  SurfaceArea    FLOAT(10,2)     NULL    ,
  	IndepYear    INT             NULL    ,
  Population     INT             NULL    ,
  LifeExpectancy 	FLOAT(3, 1)    NULL    ,
  GNP            FLOAT(10,2)     NULL    ,
  GNPOld         FLOAT(10,2)     NULL    ,
  LocalName      VARCHAR(200)    NULL    ,
  GovernmentForm VARCHAR(200)    NULL    ,
  HeadOfState    VARCHAR(200)    NULL    ,
  Capital        INT             NULL    ,
  Code2          VARCHAR(200)    NULL    ,
  PRIMARY KEY (CountryCode)
) COMMENT '국가';

CREATE TABLE countrylanguage_me
(
  Language    VARCHAR(200) NOT NULL COMMENT '언어명',
  IsOfficial  INT          NULL    ,
  Percentage  FLOAT(4,1)   NULL    ,
  CountryCode VARCHAR(200) NOT NULL COMMENT '국가코드',
  PRIMARY KEY (CountryCode)
) COMMENT '국가별 언어';

ALTER TABLE city_me
  ADD CONSTRAINT FK_country_me_TO_city_me
    FOREIGN KEY (CountryCode)
    REFERENCES countrylanguage_me (CountryCode);
