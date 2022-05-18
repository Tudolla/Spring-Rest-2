create table if not exists Ingredient (
id varchar(4) not null,
name varchar(25) not null,
type varchar(10) not null,
PRIMARY KEY (id)
);
create table if not exists Taco (
id int NOT NULL,
name varchar(50) not null,
createdAt timestamp not null,
PRIMARY KEY (id)
);
create table if not exists Taco_Ingredients (
taco int not null,
ingredient varchar(4) not null,
FOREIGN KEY (taco) REFERENCES Taco(id),
FOREIGN KEY (ingredient) REFERENCES Ingredient(id)
);
create table if not exists Taco_Order (

id int NOT NULL,

deliveryName varchar(50) not null,
deliveryStreet varchar(50) not null,
deliveryCity varchar(50) not null,
deliveryState varchar(2) not null,
deliveryZip varchar(10) not null,
ccNumber varchar(16) not null,
ccExpiration varchar(5) not null,
ccCVV varchar(3) not null,
placedAt timestamp not null,

PRIMARY KEY (id)

);
create table if not exists Taco_Order_Tacos (
tacoOrder int not null,
taco int not null,
FOREIGN KEY (tacoOrder) REFERENCES Taco_Order(id),
FOREIGN KEY (taco) REFERENCES Taco(id)
);