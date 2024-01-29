SELECT
    Date,
    SUM(CASE WHEN "sub_Type" = 'Free-To-Paid' THEN new_subscriptions ELSE 0 END) AS Free_To_Paid,
    SUM(CASE WHEN "sub_Type" = 'Paid Digital' THEN new_subscriptions ELSE 0 END) AS Paid_Digital
FROM
    "LN_31_60_Start_data"
GROUP BY
    Date
ORDER BY
    Date ASC;
