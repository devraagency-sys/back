-- CreateTable
CREATE TABLE "Media" (
    "id" SERIAL NOT NULL,
    "logo" TEXT NOT NULL,
    "link" TEXT NOT NULL,

    CONSTRAINT "Media_pkey" PRIMARY KEY ("id")
);
