DELIMITER $$

CREATE PROCEDURE AddSubscriberIfNotExists(IN subName VARCHAR(100))
BEGIN
    DECLARE cnt INT;
    SELECT COUNT(*) INTO cnt FROM Subscribers WHERE SubscriberName = subName;

    IF cnt = 0 THEN
        INSERT INTO Subscribers (SubscriberName, SubscriptionDate)
        VALUES (subName, CURDATE());
    END IF;
END$$

DELIMITER ;

