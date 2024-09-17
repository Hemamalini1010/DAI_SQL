SELECT sender_id , COUNT(MESSAGE_ID) AS MESSAGE_COUNT
FROM messages
WHERE TO_CHAR(Sent_date, 'MM') = '08' and TO_CHAR(Sent_date, 'YYYY') = '2022'
GROUP BY sender_id order by COUNT(MESSAGE_ID) desc limit 2
