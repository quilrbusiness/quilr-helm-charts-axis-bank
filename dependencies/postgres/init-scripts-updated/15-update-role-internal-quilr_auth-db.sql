-- Connect to db for further operations

\connect quilr_auth;

update roles set name = 'admin';
