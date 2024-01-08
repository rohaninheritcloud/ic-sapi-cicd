%dw 2.0
output application/java
---
[
	{
		"Id": attributes.uriParams.ID,
		("Name": payload.name) if(not isEmpty(payload.name)),
		("Gender__c": payload.gender) if(not isEmpty(payload.gender)),
		("Phone__c": payload.phone) if(not isEmpty(payload.phone)),
		("Address__c": payload.address) if(not isEmpty(payload.address)),
		("DateOfBirth__c": payload.date_of_birth as Date{format: "yyyy-MM-dd"}) if(not isEmpty(payload.date_of_birth)),
		("Email__c": payload.email) if(not isEmpty(payload.email))
	}
]