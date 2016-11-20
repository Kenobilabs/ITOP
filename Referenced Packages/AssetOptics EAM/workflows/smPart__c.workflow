<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Auto_Description_Part</fullName>
        <description>Assigns the Item Master Description to the Part Description</description>
        <field>Description__c</field>
        <formula>Item_Master__r.Description__c</formula>
        <name>Auto Description Part</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Auto_ID_Part</fullName>
        <description>Overrides the Value of the Part ID with the Item ID</description>
        <field>Name</field>
        <formula>&quot;P-&quot;&amp; Item_Master__r.Item_Num__c</formula>
        <name>Auto ID Part</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Last_Price_Update_Today</fullName>
        <description>Updates Last Price Update Field with System Date</description>
        <field>Last_Price_Update__c</field>
        <formula>TODAY()</formula>
        <name>Update Last Price Update Today</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>smPart_Unit_Value_Update</fullName>
        <description>Updates smPart.Unit_Value</description>
        <field>Unit_Value__c</field>
        <formula>CASE( TEXT( Valuation_Method__c ) , &quot;Weighted Average&quot;,  Weighted_Avg_Cost__c , &quot;Standard&quot;,  Standard_Cost__c ,&quot;Last In&quot;,  Last_In_Cost__c , Unit_Value__c )</formula>
        <name>smPart Unit Value Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <rules>
        <fullName>Auto ID Part</fullName>
        <actions>
            <name>Auto_Description_Part</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Auto_ID_Part</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>If the Auto ID Part Install Parameter equals True, then this workflow will override the value of the Part ID to be the Item ID and the Part Description with the Item Master Description upon record creation</description>
        <formula>$Setup.MRO_Install_Para__c.Auto_ID_Part__c</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Last Price Update</fullName>
        <actions>
            <name>Update_Last_Price_Update_Today</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates &quot;Last Price Update&quot; Date Field when the Purchase Price is Changed</description>
        <formula>ISCHANGED( Purchase_Price__c ) &amp;&amp; NOT(Purchase_Price__c = 0)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>smPart Unit Value Update</fullName>
        <actions>
            <name>smPart_Unit_Value_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates smPart.Unit_Value based on the Valuation Method</description>
        <formula>ISCHANGED( Last_In_Cost__c )  ||  ISCHANGED( Standard_Cost__c )  ||  ISCHANGED( Weighted_Avg_Cost__c )  ||   ISCHANGED( Valuation_Method__c ) || ISNEW()</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
