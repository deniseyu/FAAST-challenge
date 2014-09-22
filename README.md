FAAST System Design

There are four classes in this system: Passenger, Carriage, Train, Station.

There is one module, PeopleHolder, which is included in Carriage and Station.

Passengers have two attributes: wallet_balance and paid. When wallet balance is called on a passenger, the amount of money remaining in her wallet will be displayed. When paid is called, a station will be able to verify whether a passenger has paid for her journey. When a passenger taps out of a station, the station will flip her “paid?” status to false — in other words, the stations are smart and can track payment for each trip, there are no unlimited ride Oysters :) 

Once a passenger is in the station, he can board a carriage. Each carriage has a capacity of 40 riders. I have not yet worked out a way to view all of the passengers on a train — perhaps this can be done in the future by concatenating the passenger arrays in each carriage… 

Each train is comprised of multiple carriages. When we call a new train, it will have no carriages, so we will need to initialize a few carriages and add them one by one to the train. The trains can enter and exit stations.

Tests are written using London style TDD with aggressive amounts of class attributes, sorry about that haha.

———————————


Challenge Assignment: 
Week 1's weekend challenge to build a new series of tubes for Boris

The FAAST system will cater for the following:

There will be a number of trains inside the system.

Trains will travel from station to station.

Inside of a station, when the train stops, passengers will alight and enter the carriages of the train.

A Passenger will touch in at the station and touch out at the destination station.

Each coach of a train can hold up to 40 passengers.

Each train is made of a number of coaches.

Bonus: If you want to impress the mayor of London even more you will add a charging system where the passengers can only touch in a station (and access the train) if their account has more than 2 GBP.




