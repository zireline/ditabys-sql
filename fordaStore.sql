DROP DATABASE IF EXISTS fordaStore;
CREATE DATABASE fordaStore;
USE fordaStore;

CREATE TABLE User (
  userID INT AUTO_INCREMENT NOT NULL,
  username VARCHAR(255) NOT NULL,
  userPassword VARCHAR(255) NOT NULL,
  PRIMARY KEY(userID)
);
CREATE TABLE Container (
  containerID INT AUTO_INCREMENT NOT NULL,
  containerTitle VARCHAR(255) NOT NULL,
  userID INT,
  PRIMARY KEY(containerID),
  FOREIGN KEY(userID) REFERENCES User(userID)
);
CREATE TABLE ContentCredentials(
  contentCredentialsID INT AUTO_INCREMENT,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  PRIMARY KEY(contentCredentialsID)
);
CREATE TABLE Content (
  contentID INT AUTO_INCREMENT NOT NULL,
  contentText VARCHAR(255) NOT NULL,
  containerID INT NOT NULL,
  contentCredentialsID INT,
  PRIMARY KEY(contentID),
  FOREIGN KEY(containerID) REFERENCES Container(containerID),
  FOREIGN KEY(contentCredentialsID) REFERENCES ContentCredentials( contentCredentialsID)
);