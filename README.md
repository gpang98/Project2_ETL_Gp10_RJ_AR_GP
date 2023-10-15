# Crowdfunding_ETL_Project_2

This project under Group 10 is jointly done by the following contributors:
1. Ryan James
2. Athira Reji
3. Geoffrey Pang

Codes used are taken from lecture notes and ChatGPT.

The GitHub repository consist of the following files:
1. ETL_Mini_Project2_Gp10_RJ_AR_GP.ipynb - all the required codes are in this file.
2. ETL_Mini_Project_Started_Code.ipynb - this was the original file for starting the codes.
3. Project2_ERD_Diagram.jpg - ERD diagram showing the tables relationship generated from QuickDBD.
4. Project2_Schema_Final.sql 
    - the postgresql job used to generate the crowdfunding_db database.
    - the csv files (under Resource folder) are loaded to the individual table using Data Import making sure the header tick is selected.
5. Resources folder 
    - consist of the original two files contact.xlsx and crowrdfunding.xlsx as data input and 
    - the 4 csv files (categrory, subcategory, contact and crowdfunding) generated using Step 1 codes and
    - later loaded into the postgresql database in Step 4.
6. Checking_data_input.sql - to check whether the CSV files have been loaded properly.
7. Images Folder 
    - 4 jpg files showing the postgresql database and the result of the Step 6 queries.
8. README file - this file explaining the GitHub repo file structure.