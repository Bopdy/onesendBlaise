create table Users (
    id integer primary key,
    username text not null,
    email text not null,
    password text not null
)

create table Merchant (
    id integer primary key,
    user_id text integer not null,
    website text not null,
)

create table Wallet (
    id integer primary key,
    address text not null,
    user text not null,
)

create table Currency (
    id integer primary key,
    name text not null,
    abbreviation text not null,
)

create table Payment (
    id integer primary key,
    user_id,
    order_id integer not null,
    price integer not null,
    success_url text not null,
    cancel_url text not null
)

create table Transactions (
    id integer primary key,
    payment_id integer not null,
    description text not null,
    destination text not null,
    status text not null,
    amount integer not null,
    fee integer not null,
    wallet_id integer not null
)