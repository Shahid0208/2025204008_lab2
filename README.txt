Steps to execute:
1. Import the given tables and insert sample data into MySQL Workbench.
2. Run q1.sql to create ListAllSubscribers() procedure.
3. Run q2.sql to create GetWatchHistoryBySubscriber() procedure.
4. Run q3.sql to create AddSubscriberIfNotExists() procedure.
5. Run q4.sql to create SendWatchTimeReport() procedure.
6. Run q5.sql to create PrintAllSubscribersWatchHistory() procedure.
Test each procedure by calling them using:
CALL ListAllSubscribers();
CALL GetWatchHistoryBySubscriber(1);
CALL AddSubscriberIfNotExists('New User');
CALL SendWatchTimeReport();
CALL PrintAllSubscribersWatchHistory();

