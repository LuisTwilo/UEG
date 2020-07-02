trigger SBQQ_updateRecommendation on WorkOrderLineItem (before insert,before update) {

    if(trigger.isbefore){
         if(SBQQ_recommendation_Helper.WrkOrderline){
                SBQQ_recommendation_Helper.WrkOrderline=false;
         SBQQ_Automation_Prodcut_Handler.UpdateProduct(trigger.new);
         SBQQ_recommendation_Handler.Recommendation_updates(trigger.new);
         }
    }
    
 
}