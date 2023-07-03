CREATE TABLE IF NOT EXISTS clients(
    id SERIAL PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    address TEXT NOT NULL,
    zip_code VARCHAR(30) NOT NULL,
    country VARCHAR(100) NOT NULL,
    state INTEGER CHECK(state>=0 AND state<=1) --(0, 1) (ACTIVE, INACTIVE)
);

CREATE TABLE IF NOT EXISTS orders(
    id SERIAL PRIMARY KEY,
    service_type VARCHAR(100) NOT NULL,
    designation VARCHAR(100) NOT NULL,
    client_id INTEGER REFERENCES clients(id) ON DELETE SET NULL,
    nb_days INTEGER NOT NULL CHECK(nb_days>0),
    unit_price NUMERIC NOT NULL CHECK(unit_price>0),
    total_exclude_taxe NUMERIC NOT NULL,
    total_with_taxe NUMERIC NOT NULL,
    state INTEGER CHECK(state>=0 AND state<=2)--  (0,1,2) (CANCELED, OPTION, CONFIRMED)
);
