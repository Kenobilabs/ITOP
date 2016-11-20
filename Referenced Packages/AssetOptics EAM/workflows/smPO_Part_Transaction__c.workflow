<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>PO_Part_Last_Rcpt_Date_Update</fullName>
        <description>Updates the Last Receipt Date on the PO Part with the Current Date</description>
        <field>Last_Receipt_Date__c</field>
        <formula>TODAY()</formula>
        <name>PO Part Last Rcpt Date Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
        <targetObject>PO_Part__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PO_Part_Trans_Unit_Cost</fullName>
        <description>Updates the Value of PO Part Trans Unit Cost with the value of PO Part Unit Cost at time of record creation</description>
        <field>Unit_Cost__c</field>
        <formula>PO_Part__r.Unit_Cost__c</formula>
        <name>Update PO Part Trans Unit Cost</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <rules>
        <fullName>Update Last Receipt Date on PPL</fullName>
        <actions>
            <name>PO_Part_Last_Rcpt_Date_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smPO_Part_Transaction__c.Transaction_Type__c</field>
            <operation>equals</operation>
            <value>Receipt</value>
        </criteriaItems>
        <description>Last Receipt Update on Purchase Order Part Line when a PO Part Transaction of Receipt Type is Entered</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update PO Part Trans Unit Cost</fullName>
        <actions>
            <name>Update_PO_Part_Trans_Unit_Cost</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smPO_Part_Transaction__c.Transaction_Qty__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <description>Updates the Value of PO Part Transaction Unit Cost from the PO Part line at time of record entry</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
