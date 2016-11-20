<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>WOTL_DT_Actual_Cost</fullName>
        <description>Updates the Work Order Task Labor with the Doubletime Actual Costs</description>
        <field>Actual_Labor_Cost_Doubletime__c</field>
        <formula>IF(ISBLANK( Contact_Resource__c ),  User_Resource__r.Labor_Rate_Doubletime__c  *  Doubletime_Hours__c  ,  Contact_Resource__r.Labor_Rate_Doubletime__c  * Doubletime_Hours__c )</formula>
        <name>WOTL DT Actual Cost</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>WOTL_Reg_Hrs_Act_Cost</fullName>
        <description>Updates the Work Order Task Labor Record with the Actual Cost for Regular Hours</description>
        <field>Actual_Labor_Cost_Regular__c</field>
        <formula>IF(ISBLANK( Contact_Resource__c ),  User_Resource__r.Labor_Rate_Regular__c  *  Regular_Hours__c ,  Contact_Resource__r.Labor_Rate_Regular__c  *  Regular_Hours__c )</formula>
        <name>WOTL Reg Hrs Act Cost</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>smWOTL_OTHrs_Act_Cost</fullName>
        <description>Updates the Work Order Labor Task with the actual costs based on OT hrs and OT Hourly rate</description>
        <field>Actual_Labor_Cost_Overtime__c</field>
        <formula>IF(ISBLANK( Contact_Resource__c ),   User_Resource__r.Labor_Rate_Overtime__c  *  Overtime_Hours__c  ,   Contact_Resource__r.Labor_Rate_Overtime__c  *  Overtime_Hours__c  )</formula>
        <name>smWOTL_OTHrs_Act_Cost</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <rules>
        <fullName>smWOTL_Actual_Cost_Update</fullName>
        <actions>
            <name>WOTL_DT_Actual_Cost</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>WOTL_Reg_Hrs_Act_Cost</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>smWOTL_OTHrs_Act_Cost</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates the Actual Cost Amounts on the Work Order Task Labor object</description>
        <formula>Total_Labor_Hours__c  &lt;&gt; 0</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
