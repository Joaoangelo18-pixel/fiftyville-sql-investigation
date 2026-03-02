# fiftyville-sql-investigation
SQL investigation project based on CS50's Fiftyville problem set.
-- =====================================
-- Fiftyville SQL Investigation
-- =====================================

-- 1. Crime Scene Report
SELECT *
FROM crime_scene_reports
WHERE year = 2021
  AND month = 7
  AND day = 28
  AND street = 'Humphrey Street';

-- 2. Witness Interviews
SELECT name, transcript
FROM interviews
WHERE year = 2021
  AND month = 7
  AND day = 28;

-- 3. Phone Calls (short duration)
SELECT caller, receiver, duration
FROM phone_calls
WHERE year = 2021
  AND month = 7
  AND day = 28
  AND duration < 60;

-- 4. ATM Withdrawals
SELECT account_number, amount
FROM atm_transactions
WHERE year = 2021
  AND month = 7
  AND day = 28
  AND transaction_type = 'withdraw';

-- 5. Flights Leaving Fiftyville
SELECT *
FROM flights
WHERE origin_airport_id = (
    SELECT id FROM airports WHERE city = 'Fiftyville'
)
ORDER BY hour, minute
LIMIT 1;
