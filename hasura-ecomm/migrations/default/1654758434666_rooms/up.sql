CREATE TABLE IF NOT EXISTS "public"."rooms" (
 
  "id" INTEGER,
 
  "user_id" INTEGER NOT NULL,
 
  "chat_name" TEXT,
 
  CONSTRAINT "rooms_pkey" PRIMARY KEY ("id")
 
);