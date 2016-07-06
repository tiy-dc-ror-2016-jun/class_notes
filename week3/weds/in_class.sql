SELECT first_name
FROM people
WHERE last_name = 'Smith'

SELECT *
FROM people
ORDER BY created_at desc
LIMIT 3

SELECT COUNT(*) AS num_of_people, last_name
FROM people
GROUP BY last_name

SELECT MAX(created_at) AS newest_person, last_name
FROM people
GROUP BY last_name

SELECT people.first_name, people.last_name, email_addresses.email_address
FROM email_addresses
INNER JOIN people
ON email_addresses.person_id = people.id

SELECT people.first_name, people.last_name, email_addresses.email_address
FROM people
LEFT JOIN email_addresses
ON email_addresses.person_id = people.id
WHERE email_addresses.email_address IS NULL
ORDER BY people.last_name
LIMIT 3
