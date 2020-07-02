/*  -- +===================================================================+
  -- +                           Urbanefficiency
  -- +===================================================================+
  -- |                                                                    |
  -- |Author: Kullayappa Adapala                                          |
  -- |Initial Build Date:  6/17/2020                                      |
  -- |Source File Name: SBQQ_Automation_Prodcut_Handler.apxc              |
     |                                                                    |
  -- |                                                                    |
  -- |                                                                    |
  -- |Usage: Update product in Quotelines                                 |
  -- |                                                                    |
  -- |Modification History:                                               |
  -- |=====================                                               |
  -- |Version     Date           Author       Remarks                     |
  -- |=========   ============  =========    ===========================  |
  -- |1.0          6/17/2020   Kullayappa A    Initial draft version     |
  -- +===================================================================+
  */
Public class SBQQ_Automation_Prodcut_Handler{
    Public Static void UpdateProduct(List<WorkOrderLineItem> triggernew){
        List<WorkOrderLineItem> wrkLines=new List<WorkOrderLineItem>();
        List<Id> WrkOrderId=new List<Id>();
        for(WorkOrderLineItem WrkOrderLine:triggernew){
            WrkOrderId.add(WrkOrderLine.WorkOrderId);
        }
        Map<String,Id> varmap=new Map<String,Id>();
        List<String> varlist=new List<String>();
        List<String> varlist_pricebook=new List<String>();
        for(WorkOrder wrkorder:[select id,Is_this_a_single_family_or_multi_family__c,Pricebook2Id from WorkOrder where Id=:WrkOrderId[0]]){
            varmap.put(wrkorder.Is_this_a_single_family_or_multi_family__c,wrkorder.id);
            varlist.add(wrkorder.Is_this_a_single_family_or_multi_family__c+' '+'Measure');
            varlist_pricebook.add(wrkorder.Pricebook2Id);
        }
        for(WorkOrderLineItem WrkOrder_Lines:triggernew){
            for(PricebookEntry prd:[select Id,Name,Product2.Name,Product2.Family from PricebookEntry where Pricebook2Id=:varlist_pricebook[0] and Product2.Name=:WrkOrder_Lines.Measure_Installed__c]){
                if(WrkOrder_Lines.Measure_Installed__c != null){
                    if(varlist[0]==prd.Product2.Family && WrkOrder_Lines.Measure_Installed__c == prd.Name){
                        String ss=prd.id;
                       WrkOrder_Lines.PricebookEntryId= ss.deleteWhitespace();
                    }
                }
            }
         wrkLines.add(WrkOrder_Lines);
        }
    }
}