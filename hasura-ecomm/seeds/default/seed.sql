INSERT INTO "public"."users" ("id", "name")
 
 
 
-- Describe the dataset:
SELECT
"u" AS "id",
CONCAT('Name', "u") AS "name"
 
 
 
-- Set the size of the dataset:
FROM generate_series(1, 10) AS "u"
 
 
 
-- Manage conflicts with existing values:
ON CONFLICT ON CONSTRAINT "user_pkey"
DO UPDATE SET
"name" = EXCLUDED."name";
 
 
 
INSERT INTO "public"."rooms" ("id","user_id","chat_name")
 
SELECT
"r" AS "id", 
"r" AS "user_id",
CONCAT('n',"r")AS "chat_name"
 
 
 
 
-- Set the size of the dataset:
FROM generate_series(1, 10) AS "r"
 
 
 
-- Manage conflicts with existing values:
ON CONFLICT ON CONSTRAINT "rooms_pkey"
DO UPDATE SET
"user_id" = EXCLUDED."user_id";
 
 
 
 
INSERT INTO "public"."messages" ("id", "user_id","message_text","chatroom_id","timestamp")
 
 
 
-- Describe the dataset:
SELECT
"r" AS "id",
"r" AS "user_id",
CONCAT('Message', "r") AS "message_text",
"r" AS "chatroom_id",
CURRENT_TIMESTAMP AS "timestamp"
 
 
 
-- Set the size of the dataset:
FROM generate_series(1, 10) AS "r"
 
 
 
-- Manage conflicts with existing values:
ON CONFLICT ON CONSTRAINT message_pkey
DO UPDATE SET
"chatroom_id" = EXCLUDED."chatroom_id",
"user_id" = EXCLUDED."user_id",
"message_text" = EXCLUDED."message_text"