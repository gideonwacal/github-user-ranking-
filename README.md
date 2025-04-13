# github-user-ranking-
# GitHub User Data Ranking

This project uses the GitHub API to extract user data, store it in a MySQL data warehouse, and compute a custom ranking score based on each user's followers and public repositories.

## 🚀 Features

- Extracts GitHub user data using the GitHub REST API
- Stores user profiles and statistics in a MySQL data warehouse
- Calculates a custom rank score using SQL
- Provides an example CSV and query for further analysis

## 📊 Ranking Logic

The rank score is calculated using the following formula:
rank_score = (followers * 2) + public_repos



This gives more weight to followers while still considering the number of public repositories.

## 🛠️ Technologies Used

- **Python** – For data extraction from GitHub API
- **MySQL** – As the data warehouse for storing and analyzing user data
- **Pandas** – For handling and exporting data
- **GitHub API** – To fetch real-time public user stats

## 📂 Files in This Repository

| File                      | Description                                      |
|---------------------------|--------------------------------------------------|
| `extract_github_users.py`| Script to fetch GitHub user data and export CSV |
| `github_users.csv`       | Sample user data fetched from GitHub            |
| `database_schema.sql`    | SQL script to create MySQL tables               |    |
| `ranking_query.sql`      | SQL query to rank users                         |
| `report.pdf`             | Final report explaining the project             |

## 🧪 How to Run

1. Clone this repo:
git clone https://github.com/your-username/github-user-ranking.git

 
2. Install Python requirements (if needed):
```bash
pip install pandas requests mysql-connector-python
Add your GitHub token in extract_github_users.py:

python
Copy
Edit
headers = {'Authorization': 'token YOUR_GITHUB_TOKEN'}
Run the script:

bash
Copy
Edit
python extract_github_users.py
Import github_users.csv into MySQL and run the ranking query from ranking_query.sql.

📬 Author
Wacal Gideon
📧 gideonwacal33@gmail.com

