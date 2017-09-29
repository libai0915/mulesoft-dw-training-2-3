%dw 1.0
%input payload application/java
%output application/java


%namespace ns0 http://soap.training.mulesoft.com/
%type currency = :string {format: "###.00"}
%type flight = :object {class: "com.mulesoft.training.FlightBogus"}
---
[
  {
    airlineName: "Delta",
    availableSeats: 40,
    departureDate: "Mar 20, 2015" as :string {format: "MMM dd, yyyy"},
    destination: "SFO",
    flightCode: "A1B2C3",
    origination: "MUA",
    planeType: "BOEING 737",
    price: "400.00" as :currency {format: "###.00"}
  } as :flight {class: "com.mulesoft.training.Flight"},
  {
    airlineName: "Delta",
    availableSeats: 30,
    departureDate: "Feb 12, 2015" as :string {format: "MMM dd, yyyy"},
    destination: "SFO",
    flightCode: "A1BTT4",
    origination: "MUA",
    planeType: "BOEING 777",
    price: "593.00" as :currency {format: "###.00"}
  } as :flight {class: "com.mulesoft.training.Flight"},
  {
    airlineName: "Delta",
    availableSeats: 10,
    departureDate: "Feb 12, 2015" as :string {format: "MMM dd, yyyy"},
    destination: "SFO",
    flightCode: "A14244",
    origination: "MUA",
    planeType: "BOEING 787",
    price: "294.00" as :currency {format: "###.00"}
  } as :flight {class: "com.mulesoft.training.Flight"}
]