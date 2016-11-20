<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>PBQ_ID_Update</fullName>
        <field>Name</field>
        <formula>TEXT(Row__c) &amp; &quot;-&quot; &amp;  TEXT(Section__c) &amp; &quot;-&quot; &amp;  TEXT(Level__c) &amp; &quot;-&quot; &amp; TEXT(Bin__c) &amp; &quot;-&quot; &amp;  TEXT(Divider__c)</formula>
        <name>PBQ ID Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <rules>
        <fullName>PBQ ID Update</fullName>
        <actions>
            <name>PBQ_ID_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates the Part Bin Qty Record ID on Record Creation and subsequent Edits.</description>
        <formula>ISCHANGED(Row__c)  || ISCHANGED( Section__c )  ||  ISCHANGED(Divider__c ) ||  ISCHANGED( Level__c)  ||  ISCHANGED(Bin__c ) ||  ISNEW()</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
