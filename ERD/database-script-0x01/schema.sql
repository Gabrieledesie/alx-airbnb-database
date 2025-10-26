CREATE TABLE Users (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20)
);

CREATE TABLE Properties (
    id INT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    owner_id INT,
    FOREIGN KEY (owner_id) REFERENCES Users(id)
);

CREATE TABLE Bookings (
    id INT PRIMARY KEY,
    user_id INT,
    property_id INT,
    date_from DATE,
    date_to DATE,
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (property_id) REFERENCES Properties(id)
);

CREATE TABLE Payments (
    id INT PRIMARY KEY,
    booking_id INT,
    amount DECIMAL(10, 2),
    payment_date DATE,
    FOREIGN KEY (booking_id) REFERENCES Bookings(id)
);

CREATE INDEX idx_user_id ON Bookings(user_id);
CREATE INDEX idx_property_id ON Bookings(property_id);
