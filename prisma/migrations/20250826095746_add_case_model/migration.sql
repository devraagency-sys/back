-- CreateTable
CREATE TABLE "Case" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "budget" TEXT NOT NULL,
    "users" TEXT NOT NULL,
    "geo" TEXT NOT NULL,
    "cpi" TEXT NOT NULL,
    "img" TEXT NOT NULL,

    CONSTRAINT "Case_pkey" PRIMARY KEY ("id")
);
