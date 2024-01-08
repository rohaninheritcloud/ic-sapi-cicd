%dw 2.0
output application/json
---
payload map((item,index)->{
	"name": item.Name__c,
	"gender": item.Gender__c,
	"phone": item.Phone__c,
	"address": item.Address__c,
	"email": item.Email__c,
	"date_of_birth": item.DateOfBirth__c,
	"id": item.Id,
	"last_modified_date": item.LastModifiedDate
})