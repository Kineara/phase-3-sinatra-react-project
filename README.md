# MotoAssist Backend

Front End Repo - https://github.com/Kineara/MotoAssist_frontend

## User Experience
User should be able to create an individual profile for each vehicle, and then store maintenance data about that vehicle in the database. Users should be able to create a vehicle, or select one from the NHTSA vehicle database to prepopulate information. 

NHTSA API - https://vpic.nhtsa.dot.gov/api/

## Models
User
Motorcycle
Car
Task

Tasks


## Endpoints
/user


## Relationships
A Motorcycle/Car has many Tasks
Each Task belongs to a Motorcycle/Car
Each Motorcycle/Car belongs to a User
A User has many Motorcycle/Cars
