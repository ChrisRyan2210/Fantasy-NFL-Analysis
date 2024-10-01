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

This project was undertaken soon after I graduated and right before I started my first data analyst job. The project analyses the impact that playing in a specific conference/team in college has on rookie wide receivers in the NFL and how they score in Fantasy Football.

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

1. **Data Transformation**:
   - SSIS
       - Using SSIS to join fantasy scoring data (joining different years) and import it to SSMS ![FF_StatsSSIS](https://github.com/user-attachments/assets/b1bdf9ba-41a9-4ace-b5a0-ea30e651fcd8)
       - Using SSIS to join rookie data (joining different years) and import it to SSMS ![RookieSSIS](https://github.com/user-attachments/assets/d679eab9-7521-408e-a7a3-fd7d05ad9b67)
2. **Data Cleaning**:
   - SQL (SQL Server Management Studio)
       - Removed suffixes in player names to allow tables to be joined correctly. ![image](https://github.com/user-attachments/assets/a2425540-c264-48a4-ba13-18380026652c)
         
## Visualisations

Link to interactive Tableau Dashboard: https://public.tableau.com/app/profile/christopher.ryan3675/viz/FantasyFootballScoringDashboard/Dashboard1

1. **Visualisation 1**

   ![image](https://github.com/user-attachments/assets/47f53efb-96b0-4129-9071-3b0e0cdf8123)

   - This dashboard shows the average point per game (PPG) scored over a players career as well as displaying the players by draft round. Furthermore, the relative size of the marks on the dashboard represent total points score.
   - The two refenence lines (WR 1) and (WR 2) represent the average points a player would need to score over their career to finish in the sought after WR 1 and WR 2 fantasy rankings.
     
2. **Visualization 2**

   ![image](https://github.com/user-attachments/assets/0552ebcb-0b99-4243-9501-a1f4cba53192)

   - It's clear to see that the SEC boasts the highest number of WR 1/WR 2 players in fantasy football, with 9 total players achieving at least a career average WR 2 finish.
   - In fact, the next best conference is the Big Ten with only 4 players scoring an average of at least a WR 2 finish over their careers.

## Results

- **Key Finding 1**: Fantasy football players should focus on players who played in the SEC. Outside of this, college conference is not a good indicator of fantasy success.
- **Key Finding 2**: As draft round increases. There is a visible drop in the average PPG. However there are exceptions in later rounds. This indicates that players drafted in earlier rounds might be given more opportunities to play whether or not they are playing well.
- **Key Finding 3**: Draft round is not a good indicator of players who score a WR 1 average over their careers. There seems to be a negative correlation between draft round and PPG, however this correlation is not strong due to the outliers in the later round.
- **Key Finding 4**: There is a strong correlation between scoring at least 10 PPG and beign drafted in the top 3 rounds.
- **Key Finding 5**: Fantasy players may benefit from takign as many "flyer" picks as possible in later rounds and stashing them as there seems to be oppotunities to get a "hit" if enough chances are taken.

## Contact

Feel free to contact me for any questions or collaborations:

- **Email**: [chrisryan@umail.ucc.ie](mailto:your-email@example.com)
- **LinkedIn**: [My LinkedIn Profile](https://www.linkedin.com/in/christopher-ryan-8229a81b9/)
