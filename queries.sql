-- write your queries here

\c joins_exercise

SELECT owners.id, first_name, last_name, vehicles.id, make, model, year, price, owner_id
    FROM owners
    LEFT JOIN vehicles ON owners.id = vehicles.owner_id;


SELECT first_name, last_name, COUNT(*) 
    FROM vehicles 
    JOIN owners ON vehicles.owner_id = owners.id 
    GROUP BY owners.id 
    ORDER BY first_name ASC;


SELECT first_name, last_name, ROUND(AVG(price)) AS average_price, COUNT(owner_id) 
    FROM vehicles
    JOIN owners ON  vehicles.owner_id = owners.id
    GROUP BY owners.id 
    HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000
    ORDER BY average_price DESC;