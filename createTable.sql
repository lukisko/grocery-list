create TABLE category (
    categoryID int NOT NULL AUTO_INCREMENT,
    catName varchar(50),
    PRIMARY KEY (categoryID)
);

create TABLE items (
    itemID int NOT NULL AUTO_INCREMENT,
    name varchar(50),
    categoryID int,
    PRIMARY KEY (itemID),
    FOREIGN KEY (categoryID) REFERENCES category(categoryID)
);

create table groceryList (
    id int NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    PRIMARY KEY (id)
);

create table listItems (
    itemID int not null,
    listID int not null,
    CONSTRAINT PK_Person PRIMARY KEY (itemID,listID),
    FOREIGN KEY (itemID) REFERENCES items(itemID),
    FOREIGN KEY (listID) REFERENCES groceryList(id)
);
