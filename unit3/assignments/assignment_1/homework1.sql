select firstname, lastname, substring(firstname, 1, 1) || substring(lastname, 1, 1) as initials
from sql_masterclass.users
limit 10