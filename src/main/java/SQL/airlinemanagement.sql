CREATE DATABASE IF NOT EXISTS `airlinemanagement` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `airlinemanagement`;

-- Table Structure for table `city`

CREATE TABLE `city` (
`cityId` int(10) NOT NULL PRIMARY KEY,
`country_Id` int(10) NOT NULL,
`nameOfCity` varchar(50) NOT NULL,
`lastUpdate` timestamp NOT NULL
);

-- Table structure for table `country`

CREATE TABLE `country` (
`countryId` int(10) NOT NULL PRIMARY KEY,
`nameOfCountry` varchar(50) NOT NULL,
`lastUpdate` timestamp NOT NULL
);

-- Table structure for table `customer`

CREATE TABLE `customer` (
`customerId` int(10) NOT NULL PRIMARY KEY ,
`address_Id` int(10) NOT NULL,
`flight_Id` int(10) NOT NULL,
`airport_Id` int(10) NOT NULL,
`firstName` varchar(255) NOT NULL,
`lastName` varchar(255) NOT NULL,
`userName` varchar(16) NOT NULL,
`email` varchar(50) NOT NULL,
`phoneNumber` varchar(20) NOT NULL,
`active` char(1) NOT NULL,
`password` varchar(40) NOT NULL,
`lastUpdate` timestamp NOT NULL
);


-- Table structure for table `airplane`

CREATE TABLE `airplane` (
`airplaneId` int(10) NOT NULL PRIMARY KEY,
`flight_Id` int(10) NOT NULL,
`registrationNumber` int(25) NOT NULL,
`modelNumber` int(25) NOT NULL,
`active` char(1) NOT NULL,
`lastFlown` timestamp NOT NULL
);

-- Table structure for table `airport`

CREATE TABLE `airport` (
`airportId` int(10) NOT NULL PRIMARY KEY,
`nameOfAirport` varchar(255) NOT NULL,
`active` char(1) NOT NULL,
`lastUpdate` timestamp NOT NULL
);

-- Table structure for table `address`

CREATE TABLE `address` (
`addressId` int(10) NOT NULL PRIMARY KEY,
`city_Id` int(10) NOT NULL,
`address` varchar(50) NOT NULL,
`district` int(20) NOT NULL,
`postalCode` varchar(10) NOT NULL,
`lastUpdate` timestamp NOT NULL
);

-- Table structure for table `employee`

CREATE TABLE `employee` (
`employeeId` int(10) NOT NULL PRIMARY KEY,
`brand_Id` int (10) NOT NULL,
`firstName` varchar(255),
`lastName` varchar(255),
`lastUpdate` timestamp
);

-- Table structure for table `brand`

CREATE TABLE `brand` (
`brandId` int(10) NOT NULL PRIMARY KEY,
`nameOFBrand` varchar(255) NOT NULL,
`brandOwner` varchar (255) NOT NULL,
`lastUpdate` timestamp NOT NULL
);

-- Table structure for table `flight_employee`

CREATE TABLE `flight_employee` (
`flight_Id` int(10) NOT NULL,
`employee_Id` int(10) NOT NULL,
`lastUpdate` timestamp NOT NULL
);

-- Table structure for table `flight_type`

CREATE TABLE `flight_type` (
`flight_Id` int(10) NOT NULL PRIMARY KEY,
`flightStatus` varchar(25) NOT NULL,
`flightType` varchar(25) NOT NULL,
`flightPrice` int(4) NOT NULL
);

-- Table structure for table `flight`

CREATE TABLE `flight` (
`flightId` int(10) NOT NULL PRIMARY KEY,
`flightNumber` int(10) NOT NULL,
`flight_Price` int(4) NOT NULL,
`departureCountry` varchar(50) NOT NULL,
`arrivalCountry` varchar(50) NOT NULL,
`flight_Type` varchar(25) NOT NULL,
`departureTime` timestamp NOT NULL,
`arrivalTime` timestamp NOT NULL
);

-- Table structure for table `payment`

CREATE TABLE `payment` (
`paymentId` int(10) NOT NULL PRIMARY KEY,
`customer_Id` int(10) NOT NULL,
`flight_Id` int(10) NOT NULL,
`amount` int(4) NOT NULL,
`paymentDate` timestamp NOT NULL
);

-- Table structure for table `booking`

CREATE TABLE `booking` (
`bookingId` int(10) NOT NULL PRIMARY KEY,
`customer_Id` int(10) NOT NULL,
`flight_Id` int(10) NOT NULL,
`seatNumber` int(4) NOT NULL,
`h` timestamp NOT NULL
);

-- Constraints for tables

-- Constraints for table `city`

ALTER TABLE `city`
	ADD CONSTRAINT FOREIGN KEY (`country_Id`) REFERENCES `country` (`countryId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

-- Constraints for table `address`

ALTER TABLE `address`
	ADD CONSTRAINT FOREIGN KEY (`city_Id`) REFERENCES `city` (`cityId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

-- Constraints for table `customer`

ALTER TABLE `customer`
	ADD CONSTRAINT FOREIGN KEY (`address_Id`) REFERENCES `address` (`addressId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

ALTER TABLE `customer`
	ADD CONSTRAINT FOREIGN KEY (`flight_Id`) REFERENCES `flight` (`flightId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

-- Constraint for table `employee`

ALTER TABLE `employee`
	ADD CONSTRAINT FOREIGN KEY (`brand_Id`) REFERENCES `brand` (`brandId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

-- Constraints for table `flight`

ALTER TABLE `flight`
	ADD CONSTRAINT FOREIGN KEY (`flight_Price`) REFERENCES `flight_type` (`flightPrice`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

ALTER TABLE `flight`
	ADD CONSTRAINT FOREIGN KEY (`flight_Type`) REFERENCES `flight_type` (`flightType`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

-- Constraints for table `flight_employee`

ALTER TABLE `flight_employee`
	ADD CONSTRAINT FOREIGN KEY (`flight_Id`) REFERENCES `flight` (`flightId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

ALTER TABLE `flight_employee`
	ADD CONSTRAINT FOREIGN KEY (`employee_Id`) REFERENCES `employee` (`employeeId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

-- Constraints for table `payment`

ALTER TABLE `payment`
	ADD CONSTRAINT FOREIGN KEY (`customer_Id`) REFERENCES `customer` (`customerId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
ALTER TABLE `payment`
	ADD CONSTRAINT FOREIGN KEY (`flight_Id`) REFERENCES `flight` (`flightId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;