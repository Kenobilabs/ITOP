<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>AutoID_Std_Task</fullName>
        <description>Assign the Standard Task Number to the Standard Task Name</description>
        <field>Name</field>
        <formula>&quot;ST-&quot;&amp; Std_Task_Number__c</formula>
        <name>AutoID Std Task</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <rules>
        <fullName>AutoID Std Task</fullName>
        <actions>
            <name>AutoID_Std_Task</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Automatically Assign the Standard Task Number to the Standard Task Name when the record is Creates</description>
        <formula>$Setup.Work_Order_Install_Para__c.AutoID_Standard_Tasks__c</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
