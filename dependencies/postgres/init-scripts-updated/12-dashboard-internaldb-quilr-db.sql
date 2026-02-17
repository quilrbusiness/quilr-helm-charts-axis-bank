
-- Connect to db for further operations

\connect quilr;

-- Table Definition
CREATE TABLE "public"."dashboard" (
    "dashboard_id" varchar(255) NOT NULL,
    "title" varchar(255) NOT NULL,
    "description" text,
    "active" bool NOT NULL,
    "widgets_list" json NOT NULL,
    "user_id" varchar(255),
    "subscriber" varchar(255),
    "version" varchar(255) NOT NULL,
    PRIMARY KEY ("dashboard_id")
);


-- Indices
CREATE INDEX ix_dashboard_title ON public.dashboard USING btree (title)
