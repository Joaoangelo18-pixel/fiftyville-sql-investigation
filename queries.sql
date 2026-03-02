-- Fiftyville SQL Investigation
-- Based on CS50 Problem Set

-- 1. Crime scene report
SELECT *
FROM crime_scene_reports
WHERE year = 2021
  AND month = 7
  AND day = 28
  AND street = 'Humphrey Street';

-- 2. Witness interviews
SELECT name, transcript
FROM interviews
WHERE year = 2021
  AND month = 7
  AND day = 28;

-- 3. Phone calls (short duration)
SELECT caller, receiver, duration
FROM phone_calls
WHERE year = 2021
  AND month = 7
  AND day = 28
  AND duration < 60;

-- 4. ATM withdrawals
SELECT account_number, amount
FROM atm_transactions
WHERE year = 2021
  AND month = 7
  AND day = 28
  AND transaction_type = 'withdraw';

-- 5. Flights leaving Fiftyville
SELECT *
FROM flights
WHERE origin_airport_id = (
    SELECT id FROM airports WHERE city = 'Fiftyville'
)
ORDER BY hour, minute
LIMIT 1;
