
As a person,
So that I can use a bike,
I'd like to get a bike from a docking station.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working


Objects           |    Mesages 
Person              
bike                check if bike is working 
Docking Station     release bike 

DockingStation <-- release_bike --> a Bike
Bike <-- working? --> true/false



We'll call the check_if_bike_working method (message sender) on the Bike object (message reciever) 

We'll call the release_bike method (message sender) on the Docking Station object (message reciever) 


----------

1) As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

2) As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked


** EXAMPLE FROM SOPHIE ** 
Object              |   Message (method that is calling)  | Result (expected return)
Member of public
1) DockingStation                  dock(bike)                 return bike 
2) DockingStation.                 bike                       return bike 


DockingStation <--- dock <--- a Bike 
DockingStation <--- #bike ---> [array, of, bikes]
 

 -----


challenge 12

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.


Objects          | Messages 
DockingStation   | release_bike 

DockingStation <--- release_bike ---> if bike is not empty, release bike 


Challenge 13 

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.


Objects          | Messages   | result 
DockingStation   | dock(bike) | 



Challenge 14 

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

If docking station has 20 or more bikes 

Objects           | Messages     | result 
DockingStation    | dock(bike)   | error 

DockingStation <---- dock(bike) ----> error 

If docking station has less than 20 bikes 

Objects           | Messages     | result 
DockingStation    | dock(bike)   | return bike 

DockingStation <---- dock(bike) ----> return bike 



Challenge 17 

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

Objects           | Messages          | result 
DockingStation      change_capacity   capacity change

Challenge 18 

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

Objects           | Messages          | result 
DockingStation      #return_bike        add bike to stored bikes (@bikes array)
Bike                #report_broken      Change Working? to false 


As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.


Objects           | Messages          | result 
DockingStation      release_bike        working bike 

