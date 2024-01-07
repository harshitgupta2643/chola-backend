-- CreateTable
CREATE TABLE "DriverHasCar" (
    "DRIVER_IDS" INTEGER NOT NULL,
    "CAR_NUMS" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "DriverRecivesRequest" (
    "DRIVER_IDS" INTEGER NOT NULL,
    "REQ_ID" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "DriverHasCar_DRIVER_IDS_key" ON "DriverHasCar"("DRIVER_IDS");

-- CreateIndex
CREATE UNIQUE INDEX "DriverHasCar_CAR_NUMS_key" ON "DriverHasCar"("CAR_NUMS");

-- CreateIndex
CREATE UNIQUE INDEX "DriverRecivesRequest_DRIVER_IDS_key" ON "DriverRecivesRequest"("DRIVER_IDS");

-- CreateIndex
CREATE UNIQUE INDEX "DriverRecivesRequest_REQ_ID_key" ON "DriverRecivesRequest"("REQ_ID");

-- AddForeignKey
ALTER TABLE "DriverHasCar" ADD CONSTRAINT "DriverHasCar_DRIVER_IDS_fkey" FOREIGN KEY ("DRIVER_IDS") REFERENCES "Driver"("DRIVER_ID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "DriverHasCar" ADD CONSTRAINT "DriverHasCar_CAR_NUMS_fkey" FOREIGN KEY ("CAR_NUMS") REFERENCES "Car"("CAR_NUM") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "DriverRecivesRequest" ADD CONSTRAINT "DriverRecivesRequest_DRIVER_IDS_fkey" FOREIGN KEY ("DRIVER_IDS") REFERENCES "Driver"("DRIVER_ID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "DriverRecivesRequest" ADD CONSTRAINT "DriverRecivesRequest_REQ_ID_fkey" FOREIGN KEY ("REQ_ID") REFERENCES "Request"("REQ_ID") ON DELETE RESTRICT ON UPDATE CASCADE;
