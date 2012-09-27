public with sharing class MerchandiseAttachments {
	public String merchandiseId{get;set;}
	public List<Attachment> merAttachments;
	
	public List<Attachment> getMerAttachments(){
		if(merAttachments == null)
			merAttachments = [Select a.Name, a.Id, a.ContentType, a.BodyLength, a.Body From Attachment a where ParentId='a00E0000002o96V'];
		return merAttachments;
	}
}