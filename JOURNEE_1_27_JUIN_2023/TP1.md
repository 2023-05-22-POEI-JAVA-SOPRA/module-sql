# EXERCICES

​

````sql
CREATE TABLE IF NOT EXISTS users(
id SERIAL PRIMARY KEY,
firstName VARCHAR(50) NOT NULL,
lastName VARCHAR(50) NOT NULL,
country VARCHAR(50) NOT NULL,
city VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
phone_number VARCHAR(20) UNIQUE,
date_of_birth DATE NOT NULL
);
```
​
1. Sélectionnez tous les enregistrements de la table "users" où le prénom commence par "A".

```sql
SELECT * FROM users WHERE LOWER(firstName) LIKE LOWER('A%');
````

​ 2. Sélectionnez tous les enregistrements de la table "users" où le nom de famille contient "son".

```sql
SELECT * FROM users WHERE LOWER(lastName) LIKE LOWER('%son%');
```

​ 3. Sélectionnez tous les enregistrements de la table "users" où le numéro de téléphone est NULL.

```sql
SELECT * FROM users WHERE phone_number IS NULL;
```

​ 4. Sélectionnez tous les enregistrements de la table "users" où la date de naissance est antérieure au 1er janvier 2000.

```sql
SELECT * FROM users WHERE date_of_birth < '2000-01-01';
```

​ 5. Sélectionnez tous les enregistrements de la table "users" triés par ordre alphabétique du nom de famille.

```sql
SELECT * FROM users ORDER BY lastName ASC;
```

6. Sélectionnez le prénom et le nom de famille des utilisateurs qui ont un numéro de téléphone commençant par "+1".

```sql
SELECT firstName, lastName FROM users WHERE phone_number LIKE '+1%';
```

​ 7. Sélectionnez le prénom et le nom de famille des utilisateurs qui ont une adresse e-mail Yahoo et qui sont nés après le 1er janvier 1990.

```sql
SELECT firstName, lastName FROM users WHERE LOWER(email) LIKE LOWER('%@yahoo.%') AND date_of_birth > '1990-01-01'::DATE;
```
