<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Planned_Hours</fullName>
        <description>Update the Work Order Task Planned Hours with the Estimated Hours from the Work Order Task Library Standard Task</description>
        <field>Planned_Hours__c</field>
        <formula>Std_Task__r.Estimated_Hours__c</formula>
        <name>Update Planned Hours</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_WO_Task_Comment</fullName>
        <description>Update the WO Task Comments with the Work Order Standard Task Library Description</description>
        <field>Comments__c</field>
        <formula>Std_Task__r.Description__c</formula>
        <name>Update WO Task Comment</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_WO_Task_Instructions</fullName>
        <description>Update the WO Task Instructions with the Work Order Standard Task Library Instructions</description>
        <field>Instructions__c</field>
        <formula>Std_Task__r.Instructions__c</formula>
        <name>Update WO Task Instructions</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>smWOT_Planned_Labor_Cost_Update</fullName>
        <description>Updates the Planned Labor Cost on the Work Order Task</description>
        <field>Planned_Labor_Cost__c</field>
        <formula>IF( ISBLANK( Craft__c ),  $Setup.Work_Order_Install_Para__c.WO_Task_Default_Rate__c  *  Planned_Hours__c , Craft__r.Planned_Labor_Rate__c  *  Planned_Hours__c)</formula>
        <name>smWOT_Planned_Labor_Cost_Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <rules>
        <fullName>Update WO Task from Std Task</fullName>
        <actions>
            <name>Update_Planned_Hours</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_WO_Task_Comment</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_WO_Task_Instructions</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Update the Work Order Task Details from the Work Order Standard Task Details</description>
        <formula>(ISNEW() &amp;&amp; NOT(ISBLANK( Std_Task__c ))) || (ISCHANGED( Std_Task__c ) &amp;&amp; NOT(ISBLANK( Std_Task__c )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>smWOT_Planned_Labor_Cost_Update</fullName>
        <actions>
            <name>smWOT_Planned_Labor_Cost_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates the Planned Labor Cost on the Work Order Task</description>
        <formula>ISCHANGED( Planned_Hours__c )  ||  ISCHANGED( Craft__c ) ||  ISNEW()</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
