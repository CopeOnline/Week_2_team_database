-- INSERT new record
INSERT INTO account(account_firstname, account_lastname, account_email, account_password)
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

-- Update account_type to "Admin"
UPDATE account
SET account_type = 'Admin'
WHERE account_firstname = 'Tony' and account_lastname = 'Stark';

-- Delete Tony Stark record
DELETE FROM account
WHERE account_firstname = 'Tony' and account_lastname = 'Stark';


-- Update the description
UPDATE inventory
SET inv_description = REPLACE(inv_description, 'small interiors' , 'a huge interior') 
WHERE inv_make = 'GM' and inv_model = 'Hummer';

-- INNER JOIN to get 'Sport' make and model
SELECT inv_make, inv_model
FROM inventory
INNER JOIN classification ON inventory.classification_id=classification.classification_id and classification.classification_id = '2';

-- Set file path from /images to /images/vehicles
UPDATE inventory
SET inv_image = REPLACE(inv_image, '/images' , '/images/vehicles'),
inv_thumbnail = REPLACE(inv_thumbnail, '/images' , '/images/vehicles');