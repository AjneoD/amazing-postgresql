 CREATE TABLE IF NOT EXISTS "public"."messages"(
 
    "id" TEXT,
 
     "user_id" INTEGER NOT NULL,
 
     "message_text" TEXT NOT NULL,
 
     "chatroom_id" INTEGER NOT NULL,
 
     "timestamp" DATE,
 
     CONSTRAINT "message_pkey" PRIMARY KEY ("id")
 
);