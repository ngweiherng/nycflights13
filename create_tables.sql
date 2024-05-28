-- !preview conn=con_flight

-- Table for data on tickets used to board the Titanic
DROP TABLE IF EXISTS weather CASCADE;
CREATE TABLE weather (
   origin VARCHAR(3),
   year INT,
   month INT,
   day INT,
   hour INT,
   temp FLOAT,
   dewp FLOAT,
   humid FLOAT,
   wind_dir FLOAT,
   wind_speed FLOAT,
   wind_gust FLOAT,
   precip FLOAT,
   pressure FLOAT,
   visib FLOAT,
   time_hour TIMESTAMP
);
COPY weather
FROM 'C:/Users/agccc/OneDrive/Desktop/AAI1001/nycflights13/nycflights13/weather.csv'
CSV HEADER;

-- Table for airlines
DROP TABLE IF EXISTS airlines CASCADE;
CREATE TABLE airlines (
   carrier VARCHAR(2),
   name VARCHAR(100)
);
COPY airlines
FROM 'C:/Users/agccc/OneDrive/Desktop/AAI1001/nycflights13/nycflights13/airlines.csv'
CSV HEADER;


-- Table for airports
DROP TABLE IF EXISTS airports CASCADE;
CREATE TABLE airports (
   faa VARCHAR(3),
   name VARCHAR(100),
   lat FLOAT,
   lon FLOAT,
   alt INT,
   tz INT,
   dst VARCHAR(1),
   tzone VARCHAR(100)
);
COPY airports
FROM 'C:/Users/agccc/OneDrive/Desktop/AAI1001/nycflights13/nycflights13/airports.csv'
CSV HEADER;

-- Table for flights
DROP TABLE IF EXISTS flights CASCADE;
CREATE TABLE flights (
   year INT,
   month INT,
   day INT,
   dep_time INT,
   sched_dep_time INT,
   dep_delay INT,
   arr_time INT,
   sched_arr_time INT,
   arr_delay INT,
   carrier VARCHAR(2),
   flight INT,
   tailnum VARCHAR(10),
   origin VARCHAR(3),
   dest VARCHAR(3),
   air_time INT,
   distance INT,
   hour INT,
   minute INT,
   time_hour TIMESTAMP
);
COPY flights
FROM 'C:/Users/agccc/OneDrive/Desktop/AAI1001/nycflights13/nycflights13/flights.csv'
CSV HEADER;

-- Table for planes
DROP TABLE IF EXISTS planes CASCADE;
CREATE TABLE planes (
   tailnum VARCHAR(10),
   year INT,
   type VARCHAR(100),
   manufacturer VARCHAR(100),
   model VARCHAR(100),
   engines INT,
   seats INT,
   speed INT,
   engine VARCHAR(100)
);
COPY planes
FROM 'C:/Users/agccc/OneDrive/Desktop/AAI1001/nycflights13/nycflights13/planes.csv'
CSV HEADER;