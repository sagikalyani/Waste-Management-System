
CREATE TABLE userslogin (
    
    username VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



CREATE TABLE userssignup (
    user_id SERIAL PRIMARY KEY,        -- Unique identifier for each user
    username VARCHAR(50) NOT NULL UNIQUE,  -- Username, must be unique
    email VARCHAR(100) NOT NULL UNIQUE,     -- User's email, must be unique
    password_hash VARCHAR(255) NOT NULL,    -- Hashed password for security
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Timestamp for when the user was created
);

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,          -- Unique identifier for each user
    email VARCHAR(100) NOT NULL UNIQUE,  -- User's email, must be unique
    newpassword VARCHAR(255) NOT NULL,
    confirmpassword VARCHAR(200) NOT NULL, -- Hashed password
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Timestamp for when the user was created
);

create table Typeofwaste(Selectwastetype varchar(50));
insert into Typeofwaste values("Household Waste");
insert into Typeofwaste values("Industrial Waste");
insert into Typeofwaste values("Hazardous Waste"); 
insert into Typeofwaste values("Recyclable Waste");
insert into Typeofwaste values("Oraganic Waste");
insert into Typeofwaste values("Other");
CREATE TABLE complaints (
    complaint_id SERIAL PRIMARY KEY,        -- Unique identifier for each complaint
    name VARCHAR(100) NOT NULL,             -- Name of the person filing the complaint
    email VARCHAR(100) NOT NULL,            -- Email of the person filing the complaint
    country VARCHAR(100) NOT NULL,          -- Country where the complaint is filed
    state VARCHAR(100) NOT NULL,            -- State where the complaint is filed
    district VARCHAR(100),                   -- District (optional)
    city VARCHAR(100),  
    address VARCHAR(100),                     -- City (optional)
    waste_type VARCHAR(50) NOT NULL,        -- Type of waste
    description TEXT NOT NULL,               -- Description of the complaint
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Timestamp for when the complaint was filed
);



create table Trackcomplaint(ComplaintID int(50));
SELECT complaint_id, status 
FROM complaints 
WHERE complaint_id = 'C-2024-001'; -- Replace with the dynamic value submitted by the user

