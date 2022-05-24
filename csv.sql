--Create Database using CSV file
CREATE DATABASE usingCSV;

CREATE TABLE public.customer (
    customer_id character varying(255) NOT NULL,
    customer_name character varying(255),
    segment character varying(255),
    age integer,
    country character varying(255),
    city character varying(255),
    state character varying(255),
    postal_code bigint,
    region character varying(255)
);

copy customer from '...PostgreSQL\14\data\Customer.csv' CSV header; --for load data from csv file
