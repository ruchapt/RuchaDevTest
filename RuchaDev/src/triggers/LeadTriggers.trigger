trigger LeadTriggers on Lead (before update) {
	if(Trigger.isUpdate){
		if(Trigger.isBefore){
			//LeadTriggerHelper.handleLeadsBeforeUpdate(Trigger.oldMap,Trigger.newMap);
		}
	}
}