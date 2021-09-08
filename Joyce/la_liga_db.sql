-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "league_table" (
    "Rk" int   NOT NULL,
    "Squad" varchar   NOT NULL,
    "MP" int   NOT NULL,
    "W" int   NOT NULL,
    "D" int   NOT NULL,
    "L" int   NOT NULL,
    "GF" int   NOT NULL,
    "GA" int   NOT NULL,
    "GD" int   NOT NULL,
    "Pts" int   NOT NULL,
    CONSTRAINT "pk_league_table" PRIMARY KEY (
        "Squad"
     )
);

CREATE TABLE "player_standard_stats" (
    "Player" varchar   NOT NULL,
    "Nation" Varchar   NOT NULL,
    "Pos" varchar   NOT NULL,
    "Squad" varchar   NOT NULL,
    "Age" int   NOT NULL,
    "Born" int   NOT NULL,
    "MP" int   NOT NULL,
    "Starts" int   NOT NULL,
    "Min" int   NOT NULL,
    "Gls" int   NOT NULL,
    "Ast" int   NOT NULL,
    "PK" int   NOT NULL,
    "CrdY" int   NOT NULL,
    "CrdR" int   NOT NULL
);

ALTER TABLE "player_standard_stats" ADD CONSTRAINT "fk_player_standard_stats_Squad" FOREIGN KEY("Squad")
REFERENCES "league_table" ("Squad");



CREATE TABLE "Top_Goal_Scorer" (
	"Squad" varchar   NOT NULL,
    "Player" Varchar   NOT NULL,
	"Goals Scored" int  NOT NULL
	);
