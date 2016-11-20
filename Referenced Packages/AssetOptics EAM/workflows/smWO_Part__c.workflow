<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Actual_WO_Part_Expense</fullName>
        <description>Actual Work Order Part Expense</description>
        <field>Actual_Part_Cost__c</field>
        <formula>PRIORVALUE( Actual_Part_Cost__c ) + (Issued_Qty__c - PRIORVALUE( Issued_Qty__c ) ) * Part__r.Unit_Value__c</formula>
        <name>Actual WO Part Expense</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Planned_WO_Part_Expense</fullName>
        <description>Planned WO Part Expense</description>
        <field>Planned_Part_Cost__c</field>
        <formula>Planned_Qty__c  *  Part__r.Unit_Value__c</formula>
        <name>Planned WO Part Expense</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>WO_Part_Open_Commit_Qty_Update</fullName>
        <description>This Field Updates writes the value contained in WO Part Commit Qty field to WO Part Open Commit Qty field.  This is a workaround to accomodate the fact the WO Part Commit Qty is a Formula Field and cannot be used in another Formula Field.</description>
        <field>Open_Commit_Qty__c</field>
        <formula>Commit_Qty__c</formula>
        <name>WO Part Open Commit Qty Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <rules>
        <fullName>Open Commit Qty Update</fullName>
        <actions>
            <name>WO_Part_Open_Commit_Qty_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates the Open Commit Qty if the formula value of Commit Qty Is Changed</description>
        <formula>ISCHANGED( Commit_Qty__c ) || ISNEW()</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>WO Part Expense Update</fullName>
        <actions>
            <name>Actual_WO_Part_Expense</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Planned_WO_Part_Expense</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>smWO_Part__c.Issued_Qty__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>smWO_Part__c.Planned_Qty__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <description>Updates the values of planned and actual work order part expenses</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
