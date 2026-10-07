CREATE DATABASE HospitalDB;
USE HospitalDB;

-- Patient Table
CREATE TABLE Patient (
    Patient_ID INT PRIMARY KEY,
    Patient_Name VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Phone VARCHAR(15),
    Address VARCHAR(100)
);

-- Doctor Table
CREATE TABLE Doctor (
    Doctor_ID INT PRIMARY KEY,
    Doctor_Name VARCHAR(50),
    Specialization VARCHAR(50),
    Phone VARCHAR(15)
);

-- Appointment Table
CREATE TABLE Appointment (
    Appointment_ID INT PRIMARY KEY,
    Patient_ID INT,
    Doctor_ID INT,
    Appointment_Date DATE,
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);

-- Room Table
CREATE TABLE Room (
    Room_ID INT PRIMARY KEY,
    Room_Type VARCHAR(30),
    Charges DECIMAL(10,2)
);

-- Admission Table
CREATE TABLE Admission (
    Admission_ID INT PRIMARY KEY,
    Patient_ID INT,
    Room_ID INT,
    Admit_Date DATE,
    Discharge_Date DATE,
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Room_ID) REFERENCES Room(Room_ID)
);

-- Billing Table
CREATE TABLE Billing (
    Bill_ID INT PRIMARY KEY,
    Patient_ID INT,
    Amount DECIMAL(10,2),
    Bill_Date DATE,
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
);
