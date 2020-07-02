/*  -- +===================================================================+
  -- +                           urbanefficiency
  -- +===================================================================+
  -- |                                                                    |
  -- |Author: Kullayappa Adapala                                          |
  -- |Initial Build Date:  6/27/2020                                      |
  -- |Source File Name: SBQQ_WOrkorde_test.apxc                           |
     |                                                                    |
  -- |                                                                    |
  -- |                                                                    |
  -- |Usage:Code acovarge SBQQ_recommendation_Helper,                     |
     |      SBQQ_recommendation_Handler                                   |
  -- |                                                                    |
  -- |Modification History:                                               |
  -- |=====================                                               |
  -- |Version     Date           Author       Remarks                     |
  -- |=========   ============  =========    ===========================  |
  -- |1.0          6/27/2020   Kullayappa A    Initial draft version     |
  -- +===================================================================+
*/
@isTest
Public class SBQQ_WOrkorde_test{
    @testSetup static void setup() {
     
     Project__c Project=new Project__c();
         Project.Name = 'Test';
         
     Insert Project;
     
     List<Project__c> listprj=[select id from Project__c where Name=:'nicor'];
     system.debug('Projectdetails=='+listprj);
     Account acc=new account();
         acc.Name = 'Test Org';
         acc.Project__c = Project.Id;
         acc.Program_Name__c = 'Test';
         acc.Building_Account_No__c ='123456';
         acc.Telephone__c = '1234567899';
         acc.Preferred_Communication__c ='Email';
         acc.Property_Manager_Name_Rental_Only__c = 'Name';
         acc.Ethnicity_optional__c = 'Hispanic';
         acc.What_is_your_electric_utility__c = 'MidAmerican Energy';
         acc.Do_you_receive_LIHEAP_SNAP_or_SSI__c = 'Yes LIHEAP';
         acc.Has_home_been_weatherized_in_last_2yrs__c = 'Yes';
         acc.Total_Household_Income__c =12.00;    
         acc.Building_type__c = 'Single Family';
         acc.Total_square_footage__c = 88;
         acc.Number_of_household_members_under_age_6__c =1;
         acc.Number_of_household_members_age_65__c   = 1;
         acc.No_of_Household_with_Chronic_Respiratory__c=2;
         acc.Number_of_pregnant_household_members__c    =3;
         acc.Do_you_have_pets_that_live_in_the_home__c  ='Yes';
         acc.BillingCountry = 'United States';
         acc.Billingcity = 'Medford';
         acc.BillingState = 'MA';
         acc.BillingPostalCode = '560023';
         acc.Is_smoking_allowed_in_your_home__c = 'Throughout the home including bedrooms';
         acc.Number_of_smokers_in_household__c = 5;
         acc.Number_of_disabled_household_members__c=3;
         acc.Number_of_household_members_age_7_17__c =5;
         acc.Do_you_use_your_attic_for_storage__c = 'Yes';
         acc.Basement__c= 'Yes';
         acc.Number_of_stories__c =1;
         acc.Number_of_Occupants_in_your_home__c = 1;
         acc.Is_home_under_current_construction__c='Yes';
         acc.Is_this_a_single_family_or_multi_family__c = 'Single Family';
         acc.What_is_your_natural_gas_utility__c = 'Ameren';
         acc.Property_Manager_Telephone_Rental_Only__c = '911111111';
         acc.Rent_or_Own__c = 'Rent';
         acc.Phone='123456';
         acc.MobileNumber__c = '123456789';
         acc.Intake_Date__c=system.today();
         acc.Building_Premise_ID__c='12321232';
         
        Insert acc;
         
      Contact con=new Contact();
          con.Lastname='Testcon';
          con.AccountId = acc.Id;
          con.IC_Name__c = 'Testing';
          con.Program_Name__c = 'Testing Program';
          con.Program_Year__c = 'PY2020';
          con.Email = 'Test@urban.com';
          con.Contact_Type__c='Customer';
         
          Insert con;
      WorkType wrktype=new WorkType();
          wrktype.Name = 'Testing_worktype';
          wrktype.DurationType='Hours';
          wrktype.EstimatedDuration=1;
      Insert wrktype;
     
      OperatingHours oprating_hrs=new OperatingHours();
          oprating_hrs.Name = 'NEW';
          oprating_hrs.TimeZone=String.valueof(UserInfo.getTimeZone());
//'(GMT-07:00) Pacific Daylight Time (America/Los_Angeles)';
      insert oprating_hrs;
      ServiceTerritory service_territory=new ServiceTerritory();
     
          service_territory.Name = 'Testing service';
          service_territory.OperatingHoursId=oprating_hrs.Id;
          service_territory.IsActive =true;
      Insert service_territory;
     
      WorkOrder wrkorder=new Workorder();
          Id devRecordTypeId = Schema.SObjectType.Workorder.getRecordTypeInfosByName().get('Nicor').getRecordTypeId();
         wrkorder.RecordTypeId= devRecordTypeId;//Schema.SObjectType.Account.getRecordTypeInfosByName().get('Nicor').getRecordTypeId();
         wrkorder.WorkTypeid = wrktype.id;
         wrkorder.project_del__c=Project.Id;
         wrkorder.Building_Account_No__c =acc.Building_Account_No__c;
         wrkorder.Telephone__c = '1234567899';
         wrkorder.Preferred_Communication__c ='Email';
         wrkorder.Property_Manager_Name_Rental_Only__c = 'Name';
         wrkorder.Ethnicity_optional__c = 'Hispanic';
         wrkorder.What_is_your_electric_utility__c = 'MidAmerican Energy';
         wrkorder.Do_you_receive_LIHEAP_SNAP_or_SSI__c = 'Yes LIHEAP';
         wrkorder.Has_home_been_weatherized_in_last_2yrs__c = 'Yes';
         wrkorder.Total_Household_Income__c =12.00;    
         wrkorder.Building_type__c = acc.Building_type__c;
         wrkorder.Total_square_footage__c = 88;
         wrkorder.Number_of_household_members_under_age_6__c =1;
         wrkorder.Number_of_household_members_age_65__c   = 1;
         wrkorder.No_of_Household_with_Chronic_Respiratory__c=2;
         wrkorder.Number_of_pregnant_household_members__c    =3;
         wrkorder.Do_you_have_pets_that_live_in_the_home__c  ='Yes';
        wrkorder.ServiceTerritoryId= service_territory.Id;
         wrkorder.ContactId = con.id;
        wrkorder.Pricebook2Id=Test.getStandardPricebookId();
         /*wrkorder.BillingPostalCode = '560023';*/
         wrkorder.Is_smoking_allowed_in_your_home__c = 'Throughout the home including bedrooms';
         wrkorder.Number_of_smokers_in_household__c = 5;
         wrkorder.Number_of_disabled_household_members__c=3;
         wrkorder.Number_of_household_members_age_7_17__c =5;
         wrkorder.Do_you_use_your_attic_for_storage__c = 'Yes';
         wrkorder.Basement__c= acc.Basement__c;
         wrkorder.Number_of_stories__c =1;
         wrkorder.Number_of_Occupants_in_your_home__c = 1;
         wrkorder.Is_home_under_current_construction__c='Yes';
         wrkorder.Is_this_a_single_family_or_multi_family__c = 'Single Family';
         wrkorder.What_is_your_natural_gas_utility__c = 'Ameren';
         //wrkorder.Property_Manager_Telephone_Rental_Only__c = '911111111';
         wrkorder.Rent_or_Own__c = 'Rent';
        wrkorder.City=acc.billingcity;
        wrkorder.Country= acc.BillingCountry;
         wrkorder.Intake_Date__c=system.today();
         wrkorder.Building_Premise_ID__c=acc.Building_Premise_ID__c;
         
         Insert wrkorder;
         
        /* Product2 producto =new Product2();
        producto.Name='test';
        producto.productCode='1234';
        producto.isActive = true;
        //producto.Proveedor__c = cuenta2.Id;
        //producto.CurrencyIsoCode='MXN';
       
        insert producto;
       
        Pricebook2 standard = [Select Id, Name, IsActive From Pricebook2 where IsStandard = true LIMIT 1];
       
        PriceBook2 pb2=new PriceBook2();
        pb2.Name = 'test';
        pb2.IsActive = true;
        insert pb2;
       
        PricebookEntry pbe = createPricebookEntry(standard,pb2,producto);

         */
         WorkOrderLineItem wrklines=new WorkOrderLineItem();
         wrklines.Work_Order_Record_Type__c = 'Assessment/DI';
             wrklines.WorkOrderId = wrkorder.Id;
           //  wrklines.Measure_Installed__c = 'Assessment';
             wrklines.Recommendation_PrimarySpaceHeating__c ='';
             wrklines.RecommendationBuildingShell__c ='';
             wrklines.RecommendationPrimaryCooling__c ='';
             wrklines.RecommendationThermostat__c  ='';


            wrklines.Recommendation_WaterHeater__c  ='';
            wrklines.Recommendation_Oven__c  ='';
            wrklines.RecommendationRefrigerator__c  ='';
            wrklines.Recommendation_Vegetation__c  ='';
            wrklines.Recommendation_ExhaustFan__c  ='';
            wrklines.Recommendation_Yard__c  ='';
            wrklines.Recommendation_Drainage__c  ='';
            wrklines.Recommendation_Exterior__c  ='';
            wrklines.Recommendation_CleaningPractices__c  ='';
            wrklines.Recommendation_EmergencyPlans__c  ='';
            wrklines.Recommendation_WasteChemical__c  ='';
            wrklines.Recommendation_Structure__c  ='';
            wrklines.RecommendationRoof__c  ='';
            wrklines.Recommendation_Security__c  ='';
            wrklines.Recommendation_Walls__c  ='';
            wrklines.Recommendation_Foundation__c  ='';
            wrklines.Recommendation_Windows__c  ='';
            wrklines.Recommendation_ElectricalSafety__c  ='';
            wrklines.Recommendation_GeneralSafety__c  ='';
            wrklines.Recommendation_Ventilation__c  ='';
            wrklines.Recommendation_Moisture__c  ='';
            wrklines.Recommendation_Contaminants__c  ='';
            wrklines.Recommendation_Allergens__c  ='';
            wrklines.Recommendation_Pests__c  ='';
            wrklines.RecommendationChildSafety__c  ='';
            wrklines.Recommendation_Fireplace__c  ='';
            wrklines.RecommendationAttic1__c  ='';
            wrklines.Recommendation_Attic2__c  ='';
            wrklines.RecommendationFloor1__c  ='';
            wrklines.Recommendation_RimBand__c  ='';
            wrklines.Recommendation_WallInsulation__c  ='';
            wrklines.Recommendation_FireSafety__c  ='';
            wrklines.Recommendation_Smoke__c  ='';
            wrklines.Recommendation_Plumbing__c  ='';
            wrklines.Recommendation_Duct1__c  ='Air seal register - Note Location';
            wrklines.Recommendation_Duct2__c  ='';
            wrklines.Recommendation_Dryer__c  ='';
            wrklines.Recommendations_centralise__c  ='';

            wrklines.PRE_Aerator_DIMeasure__c  ='';
            wrklines.PRE_Centralise__c  ='';
            wrklines.PRE_CFM50BuildingShell__c  ='';
            //wrklines.PRE_CFM50BuildingShellNew__c=Decimal.valueof('');
            wrklines.PRE_Fire_Extinguisher_DIMeasures__c  ='';
            wrklines.Pre_Installation_Efficiency__c  ='';
            wrklines.Pre_Installation_Inspection_Comments__c  ='';
            //wrklines.Pre_Installation_Inspector_Name__c  ='';
            wrklines.Pre_Install_Value__c  ='';
            wrklines.PRE_LED_DIMeasures__c  ='';
            wrklines.PRE_Outlet_Cover_Night_Light_Curtain__c  ='';
            wrklines.Pre_Output_Capacity__c  =1;
            wrklines.PRE_Pipe_wrapDIMeasure__c  ='';
            wrklines.PRE_R_ValueDuct1__c  ='';
            wrklines.PRE_R_ValueAttic1__c  ='';
            wrklines.PRE_R_Value_Duct2__c  ='';
            wrklines.PRE_R_Value_Attic2__c  ='';
            wrklines.PRE_R_ValueFloor1__c  ='';
            wrklines.PRE_R_Value_RimBand__c  ='';
            wrklines.PRE_R_Value_WallInsulation__c  ='';
            wrklines.PRE_ShowerheadDIMeasure__c  ='';
            wrklines.PRE_Smoke_CO2_Detector_DIMeasures__c  ='';
            wrklines.PRE_ThermostatDIMeasure__c  ='';
            wrklines.Previous_Home_Testing_Renovations__c='Energy Assessment';


            wrklines.POST_AeratorDIMEasure__c  ='';
            wrklines.POST_Centralise__c  ='';
            wrklines.POST_CFM50BuildingShell__c  ='';
            //wrklines.POST_CFM50_BuildingshellNew__c  =1;
            wrklines.POST_Fire_Extinguisher_DIMeasure__c  ='';
            wrklines.Post_Installation_Efficiency__c  ='';
            wrklines.Post_Installation_Inspection_Comments__c  ='';
            wrklines.Post_Installation_Inspector_Name__c  ='';
            //wrklines.Post_Install_Value__c;
            wrklines.POST_LED_DIMeasures__c  ='';
            wrklines.POST_Outlet_Cover_Night_Light_Curtain__c  ='';
            wrklines.Post_Output_Capacity__c =2;
            wrklines.POST_Pipe_WrapDIMeasure__c  ='';
            wrklines.POST_R_ValueDuct1__c  ='';
            wrklines.POST_R_ValueAttic1__c  ='';
            wrklines.POST_R_ValueDuct2__c  ='';
            wrklines.POST_R_ValueAttic2__c  ='';
            wrklines.POST_R_ValueFloor1__c  ='';
            wrklines.POST_R_ValueRimBand__c  ='';
            wrklines.POST_R_ValueWallInsulation__c  ='';
            wrklines.POST_ShowerheadDIMeasure__c  ='';
            wrklines.POST_Smoke_CO2_Detector__c  ='';
            wrklines.POST_ThermostatDIMeasure__c  ='';


             wrklines.NotesBuildingShell__c    ='';
             wrklines.Notes_Inspection__c   ='';
             wrklines.Notes_PrimarySpaceHeating__c ='';
             wrklines.NotesPrimaryCooling__c  ='';
             wrklines.POST_AeratorDIMEasure__c ='';
             wrklines.POST_CFM50BuildingShell__c ='';
            // wrklines.POST_CFM50_BuildingshellNew__c ='';
             wrklines.POST_Fire_Extinguisher_DIMeasure__c ='';
             wrklines.PRE_Aerator_DIMeasure__c ='';


             wrklines.PRE_CFM50BuildingShell__c ='';
             //wrklines.PRE_CFM50BuildingShellNew__c='';
             wrklines.PRE_Fire_Extinguisher_DIMeasures__c ='';


             wrklines.Notes_Inspection__c = '';
             wrklines.Notes_PrimarySpaceHeating__c = '';
             wrklines.NotesPrimaryCooling__c = '';
             wrklines.Notes_WaterHeater__c='';
             wrklines.NotesThermostat__c = '';
             wrklines.NotesChildSafety__c = '';
             wrklines.Notes_Fireplace__c = '';
             wrklines.Notes_Oven__c = '';
             wrklines.NotesRefrigerator__c='';
             wrklines.Notes_Dryer__c = '';
             wrklines.Notes_Yard__c = '';
             wrklines.Notes_Vegetation__c = '';
             wrklines.Notes_Drainage__c = '';
             wrklines.Notes_Exterior__c = '';
             wrklines.Notes_CleaningPractices__c = '';
             wrklines.Notes_ElectricalSafety__c = '';
             wrklines.NotesWorstCaseDepressurization__c='';
             wrklines.Notes_WasteChemical__c = '';
             wrklines.NotesGas__c='';
             wrklines.Notes_Structure__c = '';
             wrklines.Notes_Roof__c = '';
             wrklines.Notes_EmergencyPlans__c = '';
             wrklines.Notes_Security__c = '';
             wrklines.Notes_Foundation__c = '';
             wrklines.Notes_Walls__c= '';
             wrklines.Notes_Windows__c = '';
             wrklines.Notes_Plumbing__c='';
             wrklines.Notes_GeneralSafety__c = '';
             wrklines.Notes_Firesafety__c = '';
             wrklines.Notes_Moisture__c = '';
             wrklines.Notes_Ventilation__c = '';
             wrklines.Notes_Contaminants__c = '';
             wrklines.Notes_Allergens__c = '';
             wrklines.Notes_Pests__c = '';
             wrklines.NotesDuct1__c = '';
             wrklines.NotesAttic1__c = '';
             wrklines.Notes_Attic2__c = '';
             wrklines.Notes_Duct2__c = '';
             wrklines.Notes_RimBand__c = '';
             wrklines.NotesFloor1__c = '';
             wrklines.Notes_WallInsulation__c = 'Testing';
             wrklines.Notes_centralise__c = '';
                       
           
             
             Insert wrklines;
             
             update wrklines;
             
       
         
     
    }
    static testMethod void testmethod1(){
    SBQQ_recommendation_Helper.WrkOrderline=true;
    }
   
}