-- Dimension Table: Users
CREATE TABLE dim_users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100),
    created_at DATETIME
);
select * from dim_users;
-- Fact Table: User Stats
CREATE TABLE fact_user_stats (
    stat_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    public_repos INT,
    followers INT,
    following INT,
    FOREIGN KEY (user_id) REFERENCES dim_users(user_id)
);

-- Insert into dim_users
INSERT INTO dim_users (username, created_at)
VALUES ('torvalds', '2011-09-03'), ('gaearon', '2013-06-24'), ('mojombo', '2007-10-20');

-- Insert into fact_user_stats
INSERT INTO fact_user_stats (user_id, public_repos, followers, following)
VALUES (1, 6, 250000, 0), (2, 250, 85000, 42), (3, 60, 20000, 10);
