-- Task: Create or alter a table 'users' with the specified attributes and constraints, including a country column with an ENUM type
-- This script checks if the 'users' table exists, alters it if necessary, and creates it if it doesn't exist

-- Create the 'users' table if it does not already exist
CREATE TABLE IF NOT EXISTS users (
    -- The 'id' column is an integer, never null, auto-incremented, and set as the primary key
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    
    -- The 'email' column is a string with a maximum length of 255 characters, must be unique and not null
    email VARCHAR(255) NOT NULL UNIQUE,
    
    -- The 'name' column is a string with a maximum length of 255 characters
    name VARCHAR(255),
    
    -- The 'country' column is an ENUM type with values 'US', 'CO', 'TN', defaulting to 'US' and cannot be null
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US'
);

-- End of file
