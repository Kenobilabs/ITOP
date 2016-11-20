<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_PO_Part_Unit_Cost</fullName>
        <description>Updates the value of PO Part Unit Cost to equal Part Purchase Price</description>
        <field>Unit_Cost__c</field>
        <formula>Part__r.Purchase_Price__c</formula>
        <name>Update PO Part Unit Cost</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <rules>
        <fullName>Auto Update Unit Cost</fullName>
        <actions>
            <name>Update_PO_Part_Unit_Cost</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>smPO_Part__c.Unit_Cost__c</field>
            <operation>equals</operation>
            <value>EUR 0</value>
        </criteriaItems>
        <criteriaItems>
            <field>smPO_Part__c.Unit_Cost__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Automatically assigns PO Part Unit Cost to the Purchase Price value on the Part if the Unit Cost is Null or Zero</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
