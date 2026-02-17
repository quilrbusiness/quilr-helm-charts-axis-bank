
-- Connect to db for further operations

\connect quilr;

alter table execution_controls add column if not exists is_deleted boolean default false;
