
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




As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

Objects          | Messages 
Docking Station  | Dock bike
Docking Station  | return bikes that it holds 

DockingStation <--- dock <--- a Bike 

DockingStation <--- #bike ---> [array, of, bikes]








