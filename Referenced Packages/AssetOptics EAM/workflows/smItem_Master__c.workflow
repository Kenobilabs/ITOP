<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Auto_ID_Item_Master</fullName>
        <description>Assigns the Item Master Number to the Item Master ID.</description>
        <field>Name</field>
        <formula>&quot;IM-&quot; &amp; Item_Num__c</formula>
        <name>Auto ID Item Master</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <rules>
        <fullName>Auto ID Item Master</fullName>
        <actions>
            <name>Auto_ID_Item_Master</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Automatically assigns the Item Master Number to the Item Master ID</description>
        <formula>$Setup.MRO_Install_Para__c.Auto_ID_Item_Master__c</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
