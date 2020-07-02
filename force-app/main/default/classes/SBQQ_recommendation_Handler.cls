/*  -- +===================================================================+
  -- +                           urbanefficiency
  -- +===================================================================+
  -- |                                                                    |
  -- |Author: Kullayappa Adapala                                          |
  -- |Initial Build Date:  6/11/2020                                      |
  -- |Source File Name: SBQQ_recommendation_Handler.apxc                  |
     |                                                                    |
  -- |                                                                    |
  -- |                                                                    |
  -- |Usage: Display the pagelayout Recommendation,notes,Pre and Post     |
     |       values in salesforce                                         |
  -- |                                                                    |
  -- |Modification History:                                               |
  -- |=====================                                               |
  -- |Version     Date           Author       Remarks                     |
  -- |=========   ============  =========    ===========================  |
  -- |1.0          6/11/2020   Kullayappa A    Initial draft version      |
  -- +===================================================================+
  */
Public class SBQQ_recommendation_Handler{
    Public static void Recommendation_updates(List<WorkOrderLineItem> triggernew){
        String ids;
        String recommendations;
        String Notes;
        String quantity;
        String PRE_value;
        String POST_value;                       
        List<WorkOrderLineItem> workorderlist=new list<WorkOrderLineItem>();
        for(WorkOrderLineItem wrkorderlines:triggernew){
            if(wrkorderlines.RecommendationBuildingShell__c != null){recommendations = String.valueof(wrkorderlines.RecommendationBuildingShell__c);}else if(wrkorderlines.Recommendation_PrimarySpaceHeating__c != null){recommendations =String.valueof(wrkorderlines.Recommendation_PrimarySpaceHeating__c);}else if(wrkorderlines.RecommendationPrimaryCooling__c != null){recommendations =String.valueof(wrkorderlines.RecommendationPrimaryCooling__c);}else if(wrkorderlines.RecommendationThermostat__c!= null){recommendations =String.valueof(wrkorderlines.RecommendationThermostat__c);recommendations =String.valueof(wrkorderlines.RecommendationThermostat__c);
            recommendations =String.valueof(wrkorderlines.Recommendation_WaterHeater__c);}
            else if(wrkorderlines.Recommendation_Fireplace__c!= null){recommendations = wrkorderlines.Recommendation_Fireplace__c;}
            else if(wrkorderlines.RecommendationChildSafety__c!= null){
            recommendations =String.valueof(wrkorderlines.RecommendationChildSafety__c);
            }else if(wrkorderlines.Recommendation_Oven__c!= null){
            recommendations =String.valueof(wrkorderlines.Recommendation_Oven__c);
            }else if(wrkorderlines.RecommendationRefrigerator__c!= null){
            recommendations =String.valueof(wrkorderlines.RecommendationRefrigerator__c);
            }else if(wrkorderlines.Recommendation_Dryer__c!= null){
            recommendations =String.valueof(wrkorderlines.Recommendation_Dryer__c);
            }else if(wrkorderlines.Recommendation_Vegetation__c!= null){
            recommendations =String.valueof(wrkorderlines.Recommendation_Vegetation__c);
            }else if(wrkorderlines.Recommendation_ExhaustFan__c!= null){
            recommendations =String.valueof(wrkorderlines.Recommendation_ExhaustFan__c);
            }else if(wrkorderlines.Recommendation_Yard__c!= null){
            recommendations =String.valueof(wrkorderlines.Recommendation_Yard__c);
            }else if(wrkorderlines.Recommendation_Drainage__c!= null){
            recommendations =String.valueof(wrkorderlines.Recommendation_Drainage__c);
            }else if(wrkorderlines.Recommendation_CleaningPractices__c!= null){
            recommendations =String.valueof(wrkorderlines.Recommendation_CleaningPractices__c);
            }else if(wrkorderlines.Recommendation_Exterior__c!= null){
            recommendations =String.valueof(wrkorderlines.Recommendation_Exterior__c);
            }else if(wrkorderlines.Recommendation_WasteChemical__c != null){
            recommendations =String.valueof(wrkorderlines.Recommendation_WasteChemical__c);
            }else if(wrkorderlines.Recommendation_EmergencyPlans__c != null){
            recommendations =String.valueof(wrkorderlines.Recommendation_EmergencyPlans__c);
            }else if(wrkorderlines.Recommendation_Structure__c != null){
            recommendations =String.valueof(wrkorderlines.Recommendation_Structure__c);
            }else if(wrkorderlines.RecommendationRoof__c != null){
            recommendations =String.valueof(wrkorderlines.RecommendationRoof__c);
            }else if(wrkorderlines.Recommendation_Windows__c != null){
            recommendations =String.valueof(wrkorderlines.Recommendation_Windows__c);
            }else if(wrkorderlines.Recommendation_Security__c != null){
            recommendations =String.valueof(wrkorderlines.Recommendation_Security__c);
            }else if(wrkorderlines.Recommendation_Foundation__c != null){
            recommendations =String.valueof(wrkorderlines.Recommendation_Foundation__c);
            }else if(wrkorderlines.Recommendation_Walls__c != null){
            recommendations =String.valueof(wrkorderlines.Recommendation_Walls__c);
            }else if(wrkorderlines.Recommendation_ElectricalSafety__c != null){
            recommendations =String.valueof(wrkorderlines.Recommendation_ElectricalSafety__c);
            }else if(wrkorderlines.Recommendation_FireSafety__c != null){
            recommendations =String.valueof(wrkorderlines.Recommendation_FireSafety__c);
            }else if(wrkorderlines.Recommendation_GeneralSafety__c != null){
            recommendations =String.valueof(wrkorderlines.Recommendation_GeneralSafety__c);
            }else if(wrkorderlines.Recommendation_Moisture__c != null){
            recommendations =String.valueof(wrkorderlines.Recommendation_Moisture__c);
            }else if(wrkorderlines.Recommendation_Ventilation__c != null){
            recommendations =String.valueof(wrkorderlines.Recommendation_Ventilation__c);
            }else if(wrkorderlines.Recommendation_Contaminants__c != null){
            recommendations =String.valueof(wrkorderlines.Recommendation_Contaminants__c);
            }else if(wrkorderlines.Recommendation_Allergens__c != null){
            recommendations =String.valueof(wrkorderlines.Recommendation_Allergens__c);
            }else if(wrkorderlines.Recommendation_Pests__c != null){
            recommendations =String.valueof(wrkorderlines.Recommendation_Pests__c);
            }else if(wrkorderlines.RecommendationAttic1__c != null){
            recommendations =String.valueof(wrkorderlines.RecommendationAttic1__c);
            }else if(wrkorderlines.Recommendation_Duct2__c != null){
            recommendations =String.valueof(wrkorderlines.Recommendation_Duct2__c);
            }else if(wrkorderlines.Recommendation_Attic2__c != null){
            recommendations =String.valueof(wrkorderlines.Recommendation_Attic2__c);
            }else if(wrkorderlines.RecommendationFloor1__c != null){
            recommendations =String.valueof(wrkorderlines.RecommendationFloor1__c);
            }else if(wrkorderlines.Recommendation_RimBand__c != null){
            recommendations =String.valueof(wrkorderlines.Recommendation_RimBand__c);
            }else if(wrkorderlines.Recommendation_WallInsulation__c != null){
            recommendations =String.valueof(wrkorderlines.Recommendation_WallInsulation__c);
            }else if(wrkorderlines.Recommendation_Smoke__c != null){
            recommendations =String.valueof(wrkorderlines.Recommendation_Smoke__c);
            }else if(wrkorderlines.Recommendation_Plumbing__c != null){
            recommendations =String.valueof(wrkorderlines.Recommendation_Plumbing__c);
            }else if(wrkorderlines.Recommendation_Duct1__c != null){
            recommendations =String.valueof(wrkorderlines.Recommendation_Duct1__c);
            }
            
            
        
        wrkorderlines.Recommendations_centralise__c =recommendations;
        if(wrkorderlines.NotesBuildingShell__c != null){Notes = String.valueof(wrkorderlines.NotesBuildingShell__c);}
        else if(wrkorderlines.Notes_Inspection__c != null){Notes = String.valueof(wrkorderlines.Notes_Inspection__c);}
        else if(wrkorderlines.Notes_PrimarySpaceHeating__c != null){Notes = String.valueof(wrkorderlines.Notes_PrimarySpaceHeating__c);}
        else if(wrkorderlines.NotesPrimaryCooling__c != null){Notes = String.valueof(wrkorderlines.NotesPrimaryCooling__c);}
        else if(wrkorderlines.Notes_WaterHeater__c != null){Notes = String.valueof(wrkorderlines.Notes_WaterHeater__c);}
         else if(wrkorderlines.NotesThermostat__c != null){Notes = String.valueof(wrkorderlines.NotesThermostat__c);}
         else if(wrkorderlines.NotesChildSafety__c != null){Notes = String.valueof(wrkorderlines.NotesChildSafety__c);}
        else if(wrkorderlines.Notes_Fireplace__c != null){Notes = String.valueof(wrkorderlines.Notes_Fireplace__c);}
        else if(wrkorderlines.Notes_Oven__c != null){Notes = String.valueof(wrkorderlines.Notes_Oven__c);}
        else if(wrkorderlines.NotesRefrigerator__c != null){Notes = String.valueof(wrkorderlines.NotesRefrigerator__c);}
        else if(wrkorderlines.Notes_Dryer__c != null){Notes = String.valueof(wrkorderlines.Notes_Dryer__c);}
        else if(wrkorderlines.Notes_Yard__c != null){Notes = String.valueof(wrkorderlines.Notes_Yard__c);}
        else if(wrkorderlines.Notes_Vegetation__c != null){Notes = String.valueof(wrkorderlines.Notes_Vegetation__c);}
        else if(wrkorderlines.Notes_Drainage__c != null){Notes = String.valueof(wrkorderlines.Notes_Drainage__c);}
        else if(wrkorderlines.Notes_Exterior__c != null){Notes = String.valueof(wrkorderlines.Notes_Exterior__c);}
        else if(wrkorderlines.Notes_CleaningPractices__c != null){Notes = String.valueof(wrkorderlines.Notes_CleaningPractices__c);}
        else if(wrkorderlines.Notes_ElectricalSafety__c != null){Notes = String.valueof(wrkorderlines.Notes_ElectricalSafety__c);}
         else if(wrkorderlines.NotesWorstCaseDepressurization__c != null){Notes = String.valueof(wrkorderlines.NotesWorstCaseDepressurization__c);}
        else if(wrkorderlines.Notes_WasteChemical__c != null){Notes = String.valueof(wrkorderlines.Notes_WasteChemical__c);}
         else if(wrkorderlines.NotesGas__c != null){Notes = String.valueof(wrkorderlines.NotesGas__c);}
        else if(wrkorderlines.Notes_Structure__c != null){Notes = String.valueof(wrkorderlines.Notes_Structure__c);}
         else if(wrkorderlines.Notes_Roof__c != null){Notes = String.valueof(wrkorderlines.Notes_Roof__c);}
         else if(wrkorderlines.Notes_EmergencyPlans__c != null){Notes = String.valueof(wrkorderlines.Notes_EmergencyPlans__c);}
         else if(wrkorderlines.Notes_Security__c != null){Notes = String.valueof(wrkorderlines.Notes_Security__c);}
         else if(wrkorderlines.Notes_Foundation__c != null){Notes = String.valueof(wrkorderlines.Notes_Foundation__c);}
         else if(wrkorderlines.Notes_Walls__c != null){Notes = String.valueof(wrkorderlines.Notes_Walls__c);}
         else if(wrkorderlines.Notes_Windows__c != null){Notes = String.valueof(wrkorderlines.Notes_Windows__c);}
         else if(wrkorderlines.Notes_Plumbing__c != null){Notes = String.valueof(wrkorderlines.Notes_Plumbing__c);}
         else if(wrkorderlines.Notes_GeneralSafety__c != null){Notes = String.valueof(wrkorderlines.Notes_GeneralSafety__c);}
        else if(wrkorderlines.Notes_Firesafety__c != null){Notes = String.valueof(wrkorderlines.Notes_Firesafety__c);}
         else if(wrkorderlines.Notes_Moisture__c != null){Notes = String.valueof(wrkorderlines.Notes_Moisture__c);}
         else if(wrkorderlines.Notes_Ventilation__c != null){Notes = String.valueof(wrkorderlines.Notes_Ventilation__c);}
        else if(wrkorderlines.Notes_Contaminants__c != null){Notes = String.valueof(wrkorderlines.Notes_Contaminants__c);}
         else if(wrkorderlines.Notes_Allergens__c != null){Notes = String.valueof(wrkorderlines.Notes_Allergens__c);}
         else if(wrkorderlines.Notes_Pests__c != null){Notes = String.valueof(wrkorderlines.Notes_Pests__c);}
         else if(wrkorderlines.NotesDuct1__c != null){Notes = String.valueof(wrkorderlines.NotesDuct1__c);}
         else if(wrkorderlines.NotesAttic1__c != null){Notes = String.valueof(wrkorderlines.NotesAttic1__c);}
        else if(wrkorderlines.Notes_Duct2__c != null){Notes = String.valueof(wrkorderlines.Notes_Duct2__c);}
         else if(wrkorderlines.Notes_Attic2__c != null){Notes = String.valueof(wrkorderlines.Notes_Attic2__c);}
         else if(wrkorderlines.Notes_RimBand__c != null){Notes = String.valueof(wrkorderlines.Notes_RimBand__c);}
         else if(wrkorderlines.NotesFloor1__c != null){Notes = String.valueof(wrkorderlines.NotesFloor1__c);}
        else if(wrkorderlines.Notes_WallInsulation__c != null){Notes = String.valueof(wrkorderlines.Notes_WallInsulation__c);}
         
        
            wrkorderlines.Notes_centralise__c=Notes;
            
        
        if(wrkorderlines.POST_AeratorDIMEasure__c != null){POST_value = String.valueof(wrkorderlines.POST_AeratorDIMEasure__c);}
        else if(wrkorderlines.POST_CFM50BuildingShell__c!= null){POST_value = String.valueof(wrkorderlines.POST_CFM50BuildingShell__c);}
         else if(wrkorderlines.POST_CFM50_BuildingshellNew__c != null){POST_value = String.valueof(wrkorderlines.POST_CFM50_BuildingshellNew__c);}
         else if(wrkorderlines.POST_Fire_Extinguisher_DIMeasure__c != null){POST_value = String.valueof(wrkorderlines.POST_Fire_Extinguisher_DIMeasure__c);}
         else if(wrkorderlines.Post_Installation_Inspection_Approval_Da__c != null){POST_value = String.valueof(wrkorderlines.Post_Installation_Inspection_Approval_Da__c);}
         else if(wrkorderlines.Post_Installation_Inspection_Comments__c != null){POST_value = String.valueof(wrkorderlines.Post_Installation_Inspection_Comments__c);}
        else if(wrkorderlines.Post_Installation_Inspection_Date__c != null){POST_value = String.valueof(wrkorderlines.Post_Installation_Inspection_Date__c);}
         else if(wrkorderlines.Post_Installation_Inspector_Name__c != null){POST_value = String.valueof(wrkorderlines.Post_Installation_Inspector_Name__c);}
         else if(wrkorderlines.POST_LED_DIMeasures__c != null){POST_value = String.valueof(wrkorderlines.POST_LED_DIMeasures__c);}
         else if(wrkorderlines.POST_Outlet_Cover_Night_Light_Curtain__c != null){POST_value = String.valueof(wrkorderlines.POST_Outlet_Cover_Night_Light_Curtain__c);}
         else if(wrkorderlines.POST_Pipe_WrapDIMeasure__c != null){POST_value = String.valueof(wrkorderlines.POST_Pipe_WrapDIMeasure__c);}
         else if(wrkorderlines.POST_R_ValueAttic1__c!= null){POST_value = String.valueof(wrkorderlines.POST_R_ValueAttic1__c);}
         else if(wrkorderlines.POST_R_ValueDuct2__c != null){POST_value = String.valueof(wrkorderlines.POST_R_ValueDuct2__c);}
         else if(wrkorderlines.POST_R_ValueAttic2__c != null){ POST_value = String.valueof(wrkorderlines.POST_R_ValueAttic2__c);}
        else if(wrkorderlines.POST_R_ValueDuct1__c != null){POST_value = String.valueof(wrkorderlines.POST_R_ValueDuct1__c);}
         else if(wrkorderlines.POST_R_ValueFloor1__c != null){ POST_value = String.valueof(wrkorderlines.POST_R_ValueFloor1__c);}
         else if(wrkorderlines.POST_R_ValueRimBand__c != null){POST_value = String.valueof(wrkorderlines.POST_R_ValueRimBand__c);}
         else if(wrkorderlines.POST_R_ValueWallInsulation__c != null){POST_value = String.valueof(wrkorderlines.POST_R_ValueWallInsulation__c);}
         else if(wrkorderlines.POST_ShowerheadDIMeasure__c != null){POST_value = String.valueof(wrkorderlines.POST_ShowerheadDIMeasure__c);}
         else if(wrkorderlines.POST_Smoke_CO2_Detector__c != null){ POST_value = String.valueof(wrkorderlines.POST_Smoke_CO2_Detector__c);}
         else if(wrkorderlines.POST_ThermostatDIMeasure__c != null){POST_value = String.valueof(wrkorderlines.POST_ThermostatDIMeasure__c);}
          else if(wrkorderlines.Post_Install_Value__c != null){POST_value = String.valueof(wrkorderlines.Post_Install_Value__c);}
          else if(wrkorderlines.Post_Installation_Efficiency__c != null){POST_value = String.valueof(wrkorderlines.Post_Installation_Efficiency__c);}
         else if(wrkorderlines.Post_Output_Capacity__c != null){POST_value = String.valueof(wrkorderlines.Post_Output_Capacity__c);}
           
        wrkorderlines.POST_Centralise__c = POST_value;
        
        if(wrkorderlines.PRE_Aerator_DIMeasure__c != null){PRE_value = String.valueof(wrkorderlines.PRE_Aerator_DIMeasure__c);}
        else if(wrkorderlines.PRE_CFM50BuildingShell__c != null){PRE_value = String.valueof(wrkorderlines.PRE_CFM50BuildingShell__c);}
         else if(wrkorderlines.PRE_CFM50BuildingShellNew__c != null){PRE_value = String.valueof(wrkorderlines.PRE_CFM50BuildingShellNew__c);}
         else if(wrkorderlines.PRE_Fire_Extinguisher_DIMeasures__c != null){PRE_value = String.valueof(wrkorderlines.PRE_Fire_Extinguisher_DIMeasures__c);}
       else if(wrkorderlines.Pre_Installation_Inspection_Comments__c != null){PRE_value = String.valueof(wrkorderlines.Pre_Installation_Inspection_Comments__c);}
        // else if(wrkorderlines.Pre_Installation_Inspector_Name__c != null){PRE_value = String.valueof(wrkorderlines.Pre_Installation_Inspector_Name__c);}
         else if(wrkorderlines.PRE_LED_DIMeasures__c != null){PRE_value = String.valueof(wrkorderlines.PRE_LED_DIMeasures__c);}
        else if(wrkorderlines.PRE_Outlet_Cover_Night_Light_Curtain__c != null){PRE_value = String.valueof(wrkorderlines.PRE_Outlet_Cover_Night_Light_Curtain__c);}
        else if(wrkorderlines.PRE_Pipe_wrapDIMeasure__c != null){PRE_value = String.valueof(wrkorderlines.PRE_Pipe_wrapDIMeasure__c);}
        else if(wrkorderlines.PRE_R_ValueDuct1__c != null){PRE_value = String.valueof(wrkorderlines.PRE_R_ValueDuct1__c);}
        else if(wrkorderlines.PRE_R_ValueAttic1__c != null){PRE_value = String.valueof(wrkorderlines.PRE_R_ValueAttic1__c);}
        else if(wrkorderlines.PRE_R_Value_Duct2__c != null){PRE_value = String.valueof(wrkorderlines.PRE_R_Value_Duct2__c);}
         else if(wrkorderlines.PRE_R_Value_Attic2__c != null){PRE_value = String.valueof(wrkorderlines.PRE_R_Value_Attic2__c);}
         else if(wrkorderlines.PRE_R_ValueFloor1__c != null){PRE_value = String.valueof(wrkorderlines.PRE_R_ValueFloor1__c);}
         else if(wrkorderlines.PRE_R_Value_RimBand__c != null){PRE_value = String.valueof(wrkorderlines.PRE_R_Value_RimBand__c);}
        else if(wrkorderlines.PRE_R_Value_WallInsulation__c != null){PRE_value = String.valueof(wrkorderlines.PRE_R_Value_WallInsulation__c);}
        else if(wrkorderlines.PRE_ShowerheadDIMeasure__c != null){PRE_value = String.valueof(wrkorderlines.PRE_ShowerheadDIMeasure__c);}
        else if(wrkorderlines.PRE_Smoke_CO2_Detector_DIMeasures__c != null){PRE_value = String.valueof(wrkorderlines.PRE_Smoke_CO2_Detector_DIMeasures__c);}
         else if(wrkorderlines.PRE_ThermostatDIMeasure__c != null){PRE_value = String.valueof(wrkorderlines.PRE_ThermostatDIMeasure__c);}
         else if(wrkorderlines.Pre_Install_Value__c != null){PRE_value = String.valueof(wrkorderlines.Pre_Install_Value__c);}
         else if(wrkorderlines.Pre_Installation_Efficiency__c != null){PRE_value = String.valueof(wrkorderlines.Pre_Installation_Efficiency__c);}
         //else if(wrkorderlines.Pre_Installation_Inspection_Date__c != null){PRE_value = String.valueof(wrkorderlines.Pre_Installation_Inspection_Date__c);}
         else if(wrkorderlines.Pre_Output_Capacity__c != null){PRE_value = String.valueof(wrkorderlines.Pre_Output_Capacity__c);}
         else if(wrkorderlines.Previous_Home_Testing_Renovations__c != null){PRE_value = String.valueof(wrkorderlines.Previous_Home_Testing_Renovations__c);}
            
        wrkorderlines.PRE_Centralise__c = PRE_value;
        workorderlist.add(wrkorderlines);
        }

    }
}