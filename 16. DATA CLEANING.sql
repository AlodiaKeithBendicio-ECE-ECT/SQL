-- FIRST MYSQL PROJECT --
   -- DATA CLEANING --
   
# converting data into a more usable format

/*
STEPS:
1. Create a new schema.
2. Type the desired name
3. Apply -> Apply
4. Right click the new schema -> Table Data Import Wizard
5. Click 'layoffs' data set
6. NEXT -> ... -> FINISH 
7. Imported 2361 records
*/

-- DATA CLEANING --

SELECT *
FROM layoffs ;

-- 1. remove duplicates
-- 2. standardize data and fix errors
-- 3. null values or blank values and see what to do
-- 4. remove any columns and rows that are not necessary - few ways

# removing data is a big NO NO YOU JUST HAVE TO CLEAN IT
# first thing we want to do is create a staging table
# This is the one we will work in and clean the data
# We want a table with the raw data in case something happens

# creating a staging table copying all of the raw data

CREATE TABLE layoffs_staging
LIKE layoffs;

# run and refresh schemas and another table 'layoffs_staging' will appear

SELECT *
FROM layoffs_staging;

INSERT layoffs_staging
SELECT *
FROM layoffs;

-- 1. REMOVE DUPLICATES --

SELECT * ,
ROW_NUMBER () OVER(
	PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, 
				`date`, stage, country, funds_raised_millions) AS row_num
FROM layoffs_staging;
