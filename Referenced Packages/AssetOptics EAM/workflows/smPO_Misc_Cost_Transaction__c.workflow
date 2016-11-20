<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Unit_Cost_on_PO_Misc_Cost_Trans</fullName>
        <description>Updates PO Misc Cost Transaction Unit Cost = PO Misc Cost Unit Cost</description>
        <field>Unit_Cost__c</field>
        <formula>PO_Misc_Cost__r.Unit_Cost__c</formula>
        <name>Update Unit Cost on PO Misc Cost Trans</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <rules>
        <fullName>Update Unit Cost on PO Misc Cost Trans</fullName>
        <actions>
            <name>Update_Unit_Cost_on_PO_Misc_Cost_Trans</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smPO_Misc_Cost_Transaction__c.Transaction_Qty_v2__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <description>Updates the value of PO Misc Cost Transaction Unit Cost to the PO Misc Cost Unit Cost at time of record creation</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
