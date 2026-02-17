-- Calculate monthly active users
SELECT month, COUNT(DISTINCT user_id) AS active_users
FROM usage_data
GROUP BY month;

-- Calculate operational efficiency rate
SELECT 
    SUM(tasks_completed) / SUM(tasks_assigned) * 100 AS efficiency_rate
FROM operations_data;

-- Identify KPI deviation
SELECT *
FROM kpi_metrics
WHERE performance_value < target_threshold;
