<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Meter_Last_Reading_Date_Update</fullName>
        <description>Updates the Last Reading Date on a Meter</description>
        <field>Last_Reading_Date__c</field>
        <formula>Reading_Date__c</formula>
        <name>Meter Last Reading Date Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
        <targetObject>Meter_ID__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Meter_Last_Reading_Value_Update</fullName>
        <description>Updates the Last Meter Reading Value</description>
        <field>Last_Reading_Value__c</field>
        <formula>Reading_Value_Num__c</formula>
        <name>Meter Last Reading Value Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
        <targetObject>Meter_ID__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_CMVAR</fullName>
        <description>Updates the Cumulative Meter Value at Replacement with the Cumulative Meter Value</description>
        <field>CMVAR__c</field>
        <formula>Meter_ID__r.Cumulative_Reading_Num__c</formula>
        <name>Update CMVAR</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
        <targetObject>Meter_ID__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Cumulative_Reading_Counter_Meter</fullName>
        <description>Updates the Cumulative Reading on a Counter Type Meter</description>
        <field>Cumulative_Reading_Num__c</field>
        <formula>Meter_ID__r.Cumulative_Reading_Num__c  +  Reading_Value_Num__c</formula>
        <name>Update Cumulative Reading Counter Meter</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
        <targetObject>Meter_ID__c</targetObject>
    </fieldUpdates>
    <rules>
        <fullName>Meter Updates from Readings</fullName>
        <actions>
            <name>Meter_Last_Reading_Date_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Meter_Last_Reading_Value_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates values on the Meter based on the current meter reading values</description>
        <formula>NOT( ISPICKVAL( Meter_ID__r.Type__c , &quot;Logical&quot;) )  &amp;&amp; ( Reading_Date__c &gt;  Meter_ID__r.Last_Reading_Date__c )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update CMVAR</fullName>
        <actions>
            <name>Update_CMVAR</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smMeter_Reading__c.Reading_Value_Num__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <description>Updates Cumulative Meter Value at Replacement (CMVAR) when a Zero (0) value is entered in the Meter Readings</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Cumulative Reading Counter Meter</fullName>
        <actions>
            <name>Update_Cumulative_Reading_Counter_Meter</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates the Cumulative Meter Reading Value on a Counter Type Meter</description>
        <formula>ISPICKVAL(Meter_ID__r.Type__c, &quot;Counter&quot;)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
