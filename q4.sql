DELIMITER $$

CREATE PROCEDURE SendWatchTimeReport()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE subID INT;

    DECLARE cur CURSOR FOR SELECT SubscriberID FROM Subscribers;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;
    loop_subs: LOOP
        FETCH cur INTO subID;
        IF done THEN
            LEAVE loop_subs;
        END IF;

        IF (SELECT COUNT(*) FROM WatchHistory WHERE SubscriberID = subID) > 0 THEN
            CALL GetWatchHistoryBySubscriber(subID);
        END IF;
    END LOOP;
    CLOSE cur;
END$$

DELIMITER ;

