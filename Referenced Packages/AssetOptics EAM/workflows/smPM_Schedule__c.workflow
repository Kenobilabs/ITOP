<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>PM_Due_Date_Override_Blank</fullName>
        <description>Sets PM_Due_Date_Override__c to a Blank Value</description>
        <field>PM_Due_Date_Override__c</field>
        <name>PM Due Date Override Blank</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>true</protected>
    </fieldUpdates>
    <rules>
        <fullName>PM Due Date Override to Blank Value</fullName>
        <actions>
            <name>PM_Due_Date_Override_Blank</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Sets the PM Due Date Override to a Blank Value</description>
        <formula>ISCHANGED( Current_Work_Order__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
