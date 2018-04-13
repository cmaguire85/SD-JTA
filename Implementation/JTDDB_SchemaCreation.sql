USE [JTDDB]

--Drop Schemas if they already exist within the database
BEGIN
IF EXISTS (SELECT name FROM sys.schemas WHERE name = 'ATC')
DROP SCHEMA [ATC];
IF EXISTS (SELECT name FROM sys.schemas WHERE name = 'TechOps')
DROP SCHEMA [TechOps];
END

--Create ATC, TechOps, and JTADefinitionReport schemas
BEGIN
EXEC ('CREATE SCHEMA ATC;');
END

BEGIN
EXEC ('CREATE SCHEMA TechOps;');
END
