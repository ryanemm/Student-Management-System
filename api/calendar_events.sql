DROP TABLE IF EXISTS calendar_events;
CREATE TABLE calendar_events(
    eventId int(11) NOT NULL AUTO_INCREMENT,
    eventDescription varchar(200) NOT NULL,
    eventDate date NOT NULL,
    PRIMARY KEY ('eventId')  
);