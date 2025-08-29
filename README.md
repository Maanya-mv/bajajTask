curl -X POST "https://bfhldevapigw.healthrx.co.in/hiring/testWebhook/JAVA" \
-H "Authorization: <accessToken>" \
-H "Content-Type: application/json" \
-d '{
  "finalQuery": "SELECT p.amount, CONCAT(e.first_name,'' '',e.last_name) AS NAME, TIMESTAMPDIFF(YEAR, e.dob, DATE(p.payment_time)) AS AGE, d.department_name FROM payments p JOIN employee e ON e.emp_id = p.emp_id JOIN department d ON d.department_id = e.department WHERE DAY(p.payment_time) <> 1 AND p.amount = (SELECT MAX(amount) FROM payments WHERE DAY(payment_time) <> 1);"
}'
