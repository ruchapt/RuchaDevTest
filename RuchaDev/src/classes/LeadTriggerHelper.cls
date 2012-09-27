public with sharing class LeadTriggerHelper {
	
	/*public static void handleLeadsBeforeUpdate(Map<Id,Lead> oldLeadMap, Map<Id,Lead> newLeadMap){
		List<Lead> leadstoBeProcessedForAssignment = new List<Lead>();
		for(Lead l : newLeadMap.values()){
			if(l.Status == 'Submitted'){
				leadstoBeProcessedForAssignment.add(l);
			}
		}
		
		if(leadstoBeProcessedForAssignment.size() > 0){
			assignLeads(leadstoBeProcessedForAssignment);
		}
	}
	
	private static void assignLeads(List<Lead> leadList){
		 String objectName = String.valueOf(Schema.Lead.getSObjectType());
		 
		 ADRA.AllocationService service = ADRA.AllocationService.getInstance(objectName);
		 
		 List<ADRA.RuleProcessor.MatchResult> matchedList = service.ruleprocessor.match(leadList);
		 
		 Set<Id> ruleIdSet = new Set<Id>();
         for(ADRA.RuleProcessor.MatchResult mr : matchedList){
           		if(mr.matched){
           			ruleIdSet.add(mr.baseRuleId);
           			if(mr.extensionRuleId != null){
           				ruleIdSet.add(mr.extensionRuleId);
           			}
           		}
           			
         }
         
         for(Lead t : leadList){
        	for(ADRA.RuleProcessor.MatchResult mr : matchedList){
        		Lead mrRec = (Lead)mr.record;
        		if(t.id == mrRec.id){
        			for(ADRA__Assignee__c assignee : [Select ADRA__User__c, ADRA__Rule__c, Aruba_Assignee_Type__c from ADRA__Assignee__c where ADRA__Rule__c in :ruleIdSet]){
		        		if(mr.baseRuleId == assignee.ADRA__Rule__c){
		        			if(assignee.Aruba_Assignee_Type__c == 'TAM'){
		        				t.TAM__c = assignee.ADRA__User__c;
		        			}
		        			else if(assignee.Aruba_Assignee_Type__c == 'CAM'){
		        				t.CAM__c = assignee.ADRA__User__c;
		        			}
		        		}
		        		
		        		if(mr.extensionRuleId == assignee.ADRA__Rule__c){
		        			if(assignee.Aruba_Assignee_Type__c == 'TAM'){
		        				t.TAM__c = assignee.ADRA__User__c;
		        			}
		        			else if(assignee.Aruba_Assignee_Type__c == 'CAM'){
		        				t.CAM__c = assignee.ADRA__User__c;
		        			}
		        		}		        		
		        	}
        		}
	        	
        	}
        }
	}*/
}