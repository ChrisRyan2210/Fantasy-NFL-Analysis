# Fantasy-NFL-Analysis

## Table of Contents

- [Project Overview](#project-overview)
- [Tools Used](#tools-used)
- [Data](#data)
- [Methodology](#methodology)
- [Analysis](#analysis)
- [Results](#results)
- [Visualizations](#visualizations)

## Project Overview

This project was undertaken soon after I graduated and right before I started my first data analyst job. The project focuses on the analysis of an online survey of tech job salaries across Ireland/Northern Ireland. The objective was to get a deeper understanding of potential salary progression as a data analyst, while also seeing if there were any standout career paths that had higher financial payoffs.

This project was completed as a passion project in the hopes to improve my understanding of fantasy NFL scoring as I play in a number of big money fantasy leagues. Moreover, there were two main questions I wanted to answer. 

  - Does real life college conference have an effect on fantasy points scored?
  - Does real life draft round have an effect on fantasy points scored?

## Tools Used
![SQL Server Badge](https://img.shields.io/badge/SQL_Server-CC2927?style=for-the-badge&logo=Microsoft-SQL-Server&logoColor=white)
![Excel Badge](https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=Microsoft-Excel&logoColor=white)
![SSIS Badge](https://img.shields.io/badge/SSIS-003366?style=for-the-badge&logo=Microsoft&logoColor=white)
![Tableau Badge](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=Tableau&logoColor=white)
- **Excel**: For preliminary analysis
- **SSIS**: For ETL purposes
- **SQL**: For data cleaning and transformation.
- **Tableau**: For data visualisation

## Data

- **Source**:
    - Fantasy Scoring Data received from: (https://www.fantasypros.com/)
    - Rookie/Draft Info received from: (https://www.pro-football-reference.com/years/2015/draft.htm)
    - College Conference Spreadsheet generated from ChatGPTv3.5
- **Time period**:
    - Fantasy Data: 2013 - 2023
    - Rookie/Draft Data: 2013 - 2023

## Methodology

1. **Data Cleaning**:
   - Excel
       - Performed preliminary analysis on Excel to remove columns not relevant to my objective.
       - Removed any entries of unemployed people as most still had salaries entered which would skew the data.
   - SQL (SQL Server Management Studio)
       - Removed additional unememployed rows that were missed in initial screening. ![sql1](https://github.com/user-attachments/assets/65f25e5b-a09c-457c-8ce2-975d3e76e9e0)
2. **Data Transformation**:
   - SQL (SQL Server Management Studio)
       - Udpated total compensation column to a number instead of range and transformed data type to float.![image](https://github.com/user-attachments/assets/4330e367-e9e5-4200-a1c4-41c38ad94fd8)
3. **Data Analysis**: Discuss the analytical methods and tools used to analyze the data.
   - SQL (SQL Server Management Studio)
       - Performed some initial basic exploratory analysis to get understanding of data. ![image](https://github.com/user-attachments/assets/62e24d6a-ab11-4a3f-88f7-bf3162f95253)
       - 
## Visualizations

1. **Visualization 1**

   ![image](https://github.com/user-attachments/assets/ab7ca3a4-2056-47fc-8bef-f232da3330c7)

   - Business Analytics & Data Analytics rank 24th and 25th respectively (75.81 and 79.03 percentile) compared to other tech job salaries.
   - Average salary of 70000 and 67000 euro per year across the entire dataset.
     
2. **Visualization 2**

   ![image](https://github.com/user-attachments/assets/ea4611a1-49a9-4641-bf48-755feeb7e69c)

   - DA/BA are lower than the average salary in each region.
   - Dublin offeres highest salaries for DA/BA. Interestingly, Cork is second lowest.

3. **Visualization 3**

   ![image](https://github.com/user-attachments/assets/99d74d03-ea2c-41aa-998a-8f4bd567c4cd)

   - Graduate roles offer higher salaries than junior positions. This might indicate that some junior (entry) positions don't require college degrees and hence are paid less.
   - Gradual increase until senior positions where their is potential for large jumps in salary.

4. **Visualization 4**

   ![image](https://github.com/user-attachments/assets/e22f266f-6fb2-4630-94f4-373d518cc8af)

   - Clear gap between DA/BA and DE/DS. Highlights a natural career progression.
   - Upon further analysis of the dataset, Python (amond other coding languages) are the main technologies that seperate DA/BA from DE/DS.

5. **Visualization 5**

   ![image](https://github.com/user-attachments/assets/a52dc2ff-bb63-41fe-90bf-c29e6c263f06)


   - In contrast to visualisation 2, seven regions show DE/DS that earn above the regions average.
   - Again, a clear disparity between salaries for the roles.

6. **Visualization 6**

   ![image](https://github.com/user-attachments/assets/974b990b-98a2-42fb-84e7-5d042bb83715)

7. **Visualization 7**


   ![image](https://github.com/user-attachments/assets/345859ba-d9ee-4969-98b8-42a65d892876)


   - Both graphs above highlight the earnings gap between the roles. Almost all seniority levels offer higher comp for DE/DS, becoming even larger of a gap at high seniority levels.
   - There are a number of roles that are offered to DE/DS that are not present for DA/BA.

## Analysis

- **Descriptive Statistics**: Summarize the main statistical findings (TBA).
- **Trends and Patterns**: Describe any trends or patterns you identified in the data(TBA).

## Results

- **Key Finding 1**: While urban locations and areas outside of Ireland offer higher total compensation, interestingly, Cork has lower compensation.
- **Key Finding 2**: Most regions exhibit clustering around the €50K to €80K range, indicating this is a common compensation range for Data/Business Analysts in these areas. This gives me a good indication to potential earnings upon completetion of my graduate program.
- **Key Finding 3**: Data Engineering/Science roles consistently offer higher compensation across all levels of seniority compared to Data/Business Analyst roles, with an even higher disparity at higher seniority levels. This indicated that organisations may need to restructure compensation costs or increase number of senior roles for Data/Business Analysts to attract and retain talent. 

## Contact

Feel free to contact me for any questions or collaborations:

- **Email**: [chrisryan@umail.ucc.ie](mailto:your-email@example.com)
- **LinkedIn**: [My LinkedIn Profile](https://www.linkedin.com/in/christopher-ryan-8229a81b9/)
