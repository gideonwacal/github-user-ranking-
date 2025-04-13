import requests
import pandas as pd

# Replace with your GitHub token for higher rate limits
headers = {'Authorization': 'token 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'}  # Update with your token

def get_user_data(username):
    url = f"https://api.github.com/users/{username}"
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        user = response.json()
        return {
            'username': user['login'],
            'public_repos': user['public_repos'],
            'followers': user['followers'],
            'following': user['following'],
            'created_at': user['created_at'],
        }
    else:
        print(f"Error: {response.status_code} for user {username}")  # Print errors
        return None

# Example usernames
usernames = ['torvalds', 'gaearon', 'mojombo']
user_data = [get_user_data(u) for u in usernames]

df = pd.DataFrame(user_data)
df.to_csv('github_users.csv', index=False)
