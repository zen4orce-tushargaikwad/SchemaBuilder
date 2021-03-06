public with sharing class CustomSchemaBuilder {
		// Create Text, TextArea and TextAreaLong Fields 
		
		Public static void CSVData(map<string,map<string,string>> mapfilelds)
		{
			MetadataService.CustomField customAttribute = new MetadataService.CustomField();
			 
			for(String fieldApi : mapfilelds.keySet()){   																			//System.debug('outer map value'+fieldApi);
        	Map<String, String> innerMap1 = mapfilelds.get(fieldApi);
        	customAttribute = CommonOptionValues(innerMap1);
        	
        	if(innerMap1.get('FieldType')=='AutoNumber'){
        			customAttribute=createAutoNumer(innerMap1,customAttribute);
        	}
            else if(innerMap1.get('FieldType')=='Text'){
        			customAttribute=createTextField(innerMap1,customAttribute);
        	}
        	else if(innerMap1.get('FieldType')=='LongTextArea'){
        			customAttribute=createLongTextField(innerMap1,customAttribute);
        		}
        	else if(innerMap1.get('FieldType')=='Checkbox'){
        			customAttribute=createCheckbox(innerMap1,customAttribute);
        		}
        	else if(innerMap1.get('FieldType')=='MasterDetail'||innerMap1.get('FieldType')=='Lookup'){
        			customAttribute=createRelatioShip(innerMap1,customAttribute);
        		}
        	else if(innerMap1.get('FieldType')=='Number'||innerMap1.get('FieldType')=='Currency'){
        			customAttribute=createNumber_Currency(innerMap1,customAttribute);
        		}
        	else if(innerMap1.get('FieldType')=='EncryptedText'){
        			customAttribute=createEncryptedText(innerMap1,customAttribute);
        		}
        	else if(innerMap1.get('FieldType')=='Location'){
        			customAttribute=createLocation(innerMap1,customAttribute);
        		}
        	else if(innerMap1.get('FieldType')=='Summary'){
        			customAttribute=createSummary(innerMap1,customAttribute);
        		}
        	else if(innerMap1.get('FieldType')=='Picklist'){
        			customAttribute=createPicklist(innerMap1,customAttribute);
        		}
        	else if(innerMap1.get('FieldType')=='MultiselectPicklist'){
        			customAttribute=createMultiselectPicklist(innerMap1,customAttribute);
        		}
        	// Insert Field into Salesforce								
        	CommitDB(customAttribute);
		}
		}
	
		public static MetadataService.CustomField createAutoNumer(Map<String, String> innerMap1,MetadataService.CustomField customAttribute){
			customAttribute.displayFormat = 'CS-{0000}';
        	return customAttribute;
		}	
		public static MetadataService.CustomField createTextField(Map<String, String> innerMap1,MetadataService.CustomField customAttribute){
			customAttribute.length = Integer.valueOf(innerMap1.get('Length'));
        	customAttribute.defaultValue= innerMap1.get('DefaultValue');
        	return customAttribute;
		}
		public static MetadataService.CustomField createLongTextField(Map<String, String> innerMap1,MetadataService.CustomField customAttribute){
			customAttribute.length = Integer.valueOf(innerMap1.get('Length'));
        	customAttribute.defaultValue= innerMap1.get('DefaultValue');
        	customAttribute.visibleLines = 3;
        	return customAttribute;
		}
		public static MetadataService.CustomField createCheckbox(Map<String, String> innerMap1,MetadataService.CustomField customAttribute){
        	customAttribute.defaultValue= innerMap1.get('DefaultValue');
        	return customAttribute;
		}
		public static MetadataService.CustomField createRelatioShip(Map<String, String> innerMap1,MetadataService.CustomField customAttribute){
        	customAttribute.relationshipLabel = innerMap1.get('RelationShipName');
        	customAttribute.relationshipName = innerMap1.get('RelationShipName');
        	customAttribute.referenceTo = innerMap1.get('ReferenceTo');
        	return customAttribute;
		}
		public static MetadataService.CustomField createNumber_Currency(Map<String, String> innerMap1,MetadataService.CustomField customAttribute){
        	customAttribute.precision = Integer.valueOf(innerMap1.get('Percision'));
        	customAttribute.scale = Integer.valueOf(innerMap1.get('Scale'));
        	customAttribute.defaultValue= innerMap1.get('DefaultValue');
        	return customAttribute;
		}
		public static MetadataService.CustomField createEncryptedText(Map<String, String> innerMap1,MetadataService.CustomField customAttribute){
        	customAttribute.maskChar='X';
        	customAttribute.maskType='All';
        	customAttribute.length = Integer.valueOf(innerMap1.get('Length'));
        	return customAttribute;
		}
		public static MetadataService.CustomField createLocation(Map<String, String> innerMap1,MetadataService.CustomField customAttribute){
        	customAttribute.displayLocationInDecimal=true;	         
     		customAttribute.scale = 2;
        	return customAttribute;
		}
			// Need to check some code fro removing hardcoding
		public static MetadataService.CustomField createSummary(Map<String, String> innerMap1,MetadataService.CustomField customAttribute){
        	customAttribute.summarizedField='test__c.EmpSalary__c';//test__c
           	customAttribute.summaryForeignKey='test__c.mdetail__c';
            customAttribute.summaryOperation='count';
        	return customAttribute;
		}
		public static MetadataService.CustomField createPicklist(Map<String, String> innerMap1,MetadataService.CustomField customAttribute){
        	MetadataService.Picklist pick = new MetadataService.Picklist();
        	pick.sorted = false;
        	   List<MetadataService.PicklistValue> sObjectlst = new List<MetadataService.PicklistValue>(); 
        	   for(integer i=0;i<5;i++){
	        		MetadataService.PicklistValue pValue = new MetadataService.PicklistValue();
    	    		pValue.fullName = 'Value1'+i;
        			pValue.default_x = false;
        			sObjectlst.add(pValue);	
        	   }
	        	MetadataService.PicklistValue pValue = new MetadataService.PicklistValue();
    	    		pValue.fullName = 'Value1';
        			pValue.default_x = false;
         		MetadataService.PicklistValue pValue1 = new MetadataService.PicklistValue();
        			pValue1.fullName = 'Value2';
        			pValue1.default_x = false;
         		MetadataService.PicklistValue pValue2 = new MetadataService.PicklistValue();
        			pValue2.fullName = 'Value3';
        			pValue2.default_x = false;
         		MetadataService.PicklistValue pValue3 = new MetadataService.PicklistValue();
       	 			pValue3.fullName = 'Value4';
        			pValue3.default_x = false;
        
        		pick.picklistValues = new List<MetadataService.PicklistValue>();
        		
        		for(MetadataService.PicklistValue mp : sObjectlst){
        		   pick.picklistValues.add(mp)	;
        		}
        		customAttribute.picklist = pick;
        	return customAttribute;
		}
		public static MetadataService.CustomField createMultiselectPicklist(Map<String, String> innerMap1,MetadataService.CustomField customAttribute){
        	customAttribute.visibleLines = 3;
        	
        	MetadataService.Picklist pick = new MetadataService.Picklist();
        	pick.sorted = false;
        	   List<MetadataService.PicklistValue> sObjectlst = new List<MetadataService.PicklistValue>(); 
        	   for(integer i=0;i<5;i++){
	        		MetadataService.PicklistValue pValue = new MetadataService.PicklistValue();
    	    		pValue.fullName = 'Value1'+i;
        			pValue.default_x = false;
        			sObjectlst.add(pValue);	
        	   }
	        	MetadataService.PicklistValue pValue = new MetadataService.PicklistValue();
    	    		pValue.fullName = 'Value1';
        			pValue.default_x = false;
         		MetadataService.PicklistValue pValue1 = new MetadataService.PicklistValue();
        			pValue1.fullName = 'Value2';
        			pValue1.default_x = false;
         		MetadataService.PicklistValue pValue2 = new MetadataService.PicklistValue();
        			pValue2.fullName = 'Value3';
        			pValue2.default_x = false;
         		MetadataService.PicklistValue pValue3 = new MetadataService.PicklistValue();
       	 			pValue3.fullName = 'Value4';
        			pValue3.default_x = false;
        		pick.picklistValues = new List<MetadataService.PicklistValue>();
        		
        		for(MetadataService.PicklistValue mp : sObjectlst){
        		   pick.picklistValues.add(mp)	;
        		}
        		customAttribute.picklist = pick;
        	return customAttribute;
		}
		public static MetadataService.CustomField CommonOptionValues(Map<String, String> innerMap1){
			MetadataService.CustomField customField1 = new MetadataService.CustomField();
        	customField1.fullName = 'CSVO__c'+'.'+innerMap1.get('FieldApiName');
        	customField1.type_x = innerMap1.get('FieldType');
        	customField1.label = innerMap1.get('FieldName'); 
            customField1.required= Boolean.valueOf(innerMap1.get('Required')) ;
        	customField1.description= innerMap1.get('Description');
        	customField1.inlineHelpText = innerMap1.get('InlineHelpText');
        	customField1.externalId = Boolean.valueOf(innerMap1.get('ExternalId'));
        	customField1.unique = Boolean.valueOf(innerMap1.get('Unique'));
        	return customField1;
		}
		public Static void CommitDB(MetadataService.CustomField custom){
			MetadataService.MetadataPort service = createService();    
         	List<MetadataService.SaveResult> results =
            service.createMetadata(
                new MetadataService.Metadata[] { custom });
        	handleSaveResults(results[0]);
		}
		   
   // Method for handle exception 
 public class MetaDataAPIExamplesException extends Exception { }
   // Method for creating connection and session
    public static MetadataService.MetadataPort createService(){
        MetadataService.MetadataPort service = new MetadataService.MetadataPort();
        service.SessionHeader = new MetadataService.SessionHeader_element();
        service.SessionHeader.sessionId = UserInfo.getSessionId();
        return service;
    }
    
     /**
     * Example helper method to interpret a SaveResult, throws an exception if errors are found
     **/
    public static void handleSaveResults(MetadataService.SaveResult saveResult) {
        // Nothing to see?
        if(saveResult==null || saveResult.success)
            return;
        // Construct error message and throw an exception
        if(saveResult.errors!=null){
            List<String> messages = new List<String>();
            messages.add(
                (saveResult.errors.size()==1 ? 'Error ' : 'Errors ') +
                    'occured processing component ' + saveResult.fullName + '.');
            for(MetadataService.Error error : saveResult.errors)
                messages.add(
                    error.message + ' (' + error.statusCode + ').' +
                    ( error.fields!=null && error.fields.size()>0 ?
                        ' Fields ' + String.join(error.fields, ',') + '.' : '' ) );
            if(messages.size()>0)
                throw new MetaDataAPIExamplesException(String.join(messages, ' '));
        }
        if(!saveResult.success)
            throw new MetaDataAPIExamplesException('Request failed with no specified error.'+saveResult);
    }
    
     public static void handleDeleteResults(MetadataService.DeleteResult deleteResult) {
        // Nothing to see?
        if(deleteResult==null || deleteResult.success)
            return;
        // Construct error message and throw an exception
        if(deleteResult.errors!=null) {
            List<String> messages = new List<String>();
            messages.add(
                (deleteResult.errors.size()==1 ? 'Error ' : 'Errors ') +
                    'occured processing component ' + deleteResult.fullName + '.');
            for(MetadataService.Error error : deleteResult.errors)
                messages.add(
                    error.message + ' (' + error.statusCode + ').' +
                    ( error.fields!=null && error.fields.size()>0 ?
                        ' Fields ' + String.join(error.fields, ',') + '.' : '' ) );
            if(messages.size()>0)
                throw new MetaDataAPIExamplesException(String.join(messages, ' '));
        }
        if(!deleteResult.success)
            throw new MetaDataAPIExamplesException('Request failed with no specified error.');
    }
    
     public static void handleUpsertResults(MetadataService.UpsertResult upsertResult){
        // Nothing to see?
        if(upsertResult==null || upsertResult.success)
            return;
        // Construct error message and throw an exception
        if(upsertResult.errors!=null)
        {
            List<String> messages = new List<String>();
            messages.add(
                (upsertResult.errors.size()==1 ? 'Error ' : 'Errors ') +
                    'occured processing component ' + upsertResult.fullName + '.');
            for(MetadataService.Error error : upsertResult.errors)
                messages.add(
                    error.message + ' (' + error.statusCode + ').' +
                    ( error.fields!=null && error.fields.size()>0 ?
                        ' Fields ' + String.join(error.fields, ',') + '.' : '' ) );
            if(messages.size()>0)
                throw new MetaDataAPIExamplesException(String.join(messages, ' '));
        }
        if(!upsertResult.success)
            throw new MetaDataAPIExamplesException('Request failed with no specified error.');
    }
    
    
      public static final Map<DisplayType, String> FLOWTYPEBYDISPLAYTYPE = 
            new Map<DisplayType, String>{ 
                DisplayType.anytype => 'String',
                DisplayType.base64 => 'String',
                DisplayType.Boolean => 'Boolean', 
                DisplayType.Combobox => 'String',
                DisplayType.Currency => 'Currency',
                DisplayType.Date => 'Date',
                DisplayType.DateTime => 'DateTime', 
                DisplayType.Double => 'Number',
                DisplayType.Email => 'String',
                DisplayType.EncryptedString => 'String',
                DisplayType.Id => 'String',
                DisplayType.Integer => 'Number',
                DisplayType.MultiPicklist => 'Multipicklist',
                DisplayType.Percent => 'Number', 
                DisplayType.Phone => 'String',
                DisplayType.Picklist => 'Picklist',
                DisplayType.Reference => 'Reference',
                DisplayType.String => 'String',
                DisplayType.TextArea => 'String',
                DisplayType.Time => 'String',
                DisplayType.URL => 'String'};
  

	

}