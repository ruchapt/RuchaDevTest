public with sharing class TestTriggerHelper {
		/*public static void handleTestsBeforeUpdate(Map<Id,Test__c> oldLeadMap, Map<Id,Test__c> newLeadMap){
			List<Test__c> testList = newLeadMap.values();
			allocateTests(testList);
		}
		
		public static void allocateTests(List<Test__c> testList){
			 String objectName = String.valueOf(Schema.Test__c.getSObjectType());
			 
			 ADRA.AllocationService service = ADRA.AllocationService.getInstance(objectName);
			 
			 List<ADRA.RuleProcessor.MatchResult> matchedList = service.ruleprocessor.match(testList);
          Set<Id> ruleIdSet = new Set<Id>();
           for(ADRA.RuleProcessor.MatchResult mr : matchedList){
           		if(mr.matched){
           			ruleIdSet.add(mr.baseRuleId);
           			if(mr.extensionRuleId != null){
           				ruleIdSet.add(mr.extensionRuleId);
           			}
           		}
           			
           }
        system.debug('ruleidset: ' + ruleidset);
        for(Test__c t : testList){
        	for(ADRA.RuleProcessor.MatchResult mr : matchedList){
        		Test__c mrRec = (Test__c)mr.record;
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