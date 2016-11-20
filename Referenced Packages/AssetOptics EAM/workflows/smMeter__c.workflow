<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Cumulative_Reading</fullName>
        <description>Updates the Cumulative Reading on a &quot;Continuous&quot; meter</description>
        <field>Cumulative_Reading_Num__c</field>
        <formula>Cumulative_Reading_Num__c + ( Last_Reading_Value__c - PRIORVALUE( Last_Reading_Value__c ) )</formula>
        <name>Update Cumulative Reading</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <rules>
        <fullName>Update Cumulative Reading</fullName>
        <actions>
            <name>Update_Cumulative_Reading</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates the Cumulative Reading on a Continuous Meter</description>
        <formula>ISPICKVAL( Type__c , &quot;Continuous&quot;) &amp;&amp; ( Last_Reading_Value__c  &lt;&gt; 0  ||  NOT( ISCHANGED( Last_Reading_Value__c ) ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
