SELECT 
    u.username,
    s.public_repos,
    s.followers,
    (s.followers * 2 + s.public_repos) AS rank_score
FROM fact_user_stats s
JOIN dim_users u ON u.user_id = s.user_id
ORDER BY rank_score DESC;
