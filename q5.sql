DELIMITER $$

CREATE PROCEDURE PrintAllSubscribersWatchHistory()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE subID INT;

    DECLARE cur CURSOR FOR SELECT SubscriberID FROM Subscribers;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;
    loop_all: LOOP
        FETCH cur INTO subID;
        IF done THEN
            LEAVE loop_all;
        END IF;
        CALL GetWatchHistoryBySubscriber(subID);
    END LOOP;
    CLOSE cur;
END$$

DELIMITER ;

