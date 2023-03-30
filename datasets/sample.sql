BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"NumberOfLocations__c" VARCHAR(255), 
	"SLAExpirationDate__c" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Sample Account for Entitlements','','','');
CREATE TABLE "Contact" (
	id INTEGER NOT NULL, 
	"DLRS_All_OCRs__c" VARCHAR(255), 
	"DLRS_CountOCRs__c" VARCHAR(255), 
	"DoNotCall" VARCHAR(255), 
	"FirstName" VARCHAR(255), 
	"HasOptedOutOfEmail" VARCHAR(255), 
	"HasOptedOutOfFax" VARCHAR(255), 
	"LastName" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"ReportsToId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Contact" VALUES(1,'Decision Maker;Evaluator;Decision Maker;Executive Sponsor','4.0','False','test','False','False','one','','');
INSERT INTO "Contact" VALUES(2,'Business User;Evaluator;Executive Sponsor','3.0','False','test','False','False','two','','');
INSERT INTO "Contact" VALUES(3,'Business User;Evaluator;Executive Sponsor','3.0','False','test','False','False','two','','');
INSERT INTO "Contact" VALUES(4,'Evaluator;Executive Sponsor','2.0','False','test','False','False','three','','');
INSERT INTO "Contact" VALUES(5,'Decision Maker;Evaluator;Decision Maker;Executive Sponsor','4.0','False','test','False','False','one','','');
INSERT INTO "Contact" VALUES(6,'Evaluator;Executive Sponsor','2.0','False','test','False','False','three','','');
CREATE TABLE "Opportunity" (
	id INTEGER NOT NULL, 
	"CloseDate" VARCHAR(255), 
	"IsPrivate" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"StageName" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"ContactId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Opportunity" VALUES(1,'2023-03-01','False','one opp','Closed Won','','');
INSERT INTO "Opportunity" VALUES(2,'2023-03-01','False','two opp','Closed Won','','');
CREATE TABLE "OpportunityContactRole" (
	id INTEGER NOT NULL, 
	"IsPrimary" VARCHAR(255), 
	"ContactId" VARCHAR(255), 
	"OpportunityId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "OpportunityContactRole" VALUES(1,'False','1','1');
INSERT INTO "OpportunityContactRole" VALUES(2,'False','2','1');
INSERT INTO "OpportunityContactRole" VALUES(3,'False','6','1');
INSERT INTO "OpportunityContactRole" VALUES(4,'False','1','1');
INSERT INTO "OpportunityContactRole" VALUES(5,'False','1','2');
INSERT INTO "OpportunityContactRole" VALUES(6,'False','2','2');
INSERT INTO "OpportunityContactRole" VALUES(7,'False','1','2');
INSERT INTO "OpportunityContactRole" VALUES(8,'False','6','2');
INSERT INTO "OpportunityContactRole" VALUES(9,'False','2','2');
COMMIT;
