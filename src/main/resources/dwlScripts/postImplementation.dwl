%dw 2.0
output application/java
---
[{
	Name: payload.name,
	Gender__c: payload.gender,
	Address__c: payload.address,
	Phone__c: payload.phone,
	Email__c: payload.email,
	DateOfBirth__c: payload.date_of_birth as Date{format:"yyyy-MM-dd"}
}]