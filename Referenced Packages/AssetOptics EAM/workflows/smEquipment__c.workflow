<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Auto_ID_Maintenance_Asset</fullName>
        <description>Assigns the Asset Tag Number to the Asset Tag ID.</description>
        <field>Name</field>
        <formula>&quot;AT-&quot;&amp;Asset_Number__c</formula>
        <name>Auto ID Maintenance Asset</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>smEquip_RecordType_PL_Update_Bldg</fullName>
        <description>Updates the Asset Recordtype PICKLIST to Building</description>
        <field>AssetRecordType__c</field>
        <literalValue>Building</literalValue>
        <name>smEquip_RecordType_PL_Update_Bldg</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>smEquip_RecordType_PL_Update_Comp</fullName>
        <description>Updates the Asset Record Type picklist value to Component</description>
        <field>AssetRecordType__c</field>
        <literalValue>Component</literalValue>
        <name>smEquip_RecordType_PL_Update_Comp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>smEquip_RecordType_PL_Update_Equip</fullName>
        <description>Updates the Asset Record Type picklist to Equipment</description>
        <field>AssetRecordType__c</field>
        <literalValue>Equipment</literalValue>
        <name>smEquip_RecordType_PL_Update_Equip</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>smEquip_RecordType_PL_Update_Location</fullName>
        <description>Updates the Asset Record Type picklist value to Location</description>
        <field>AssetRecordType__c</field>
        <literalValue>Location</literalValue>
        <name>smEquip_RecordType_PL_Update_Location</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>smEquip_RecordType_PL_Update_Vehicle</fullName>
        <description>Updates the Asset Recordtype Picklist to Vehicle</description>
        <field>AssetRecordType__c</field>
        <literalValue>Vehicle</literalValue>
        <name>smEquip_RecordType_PL_Update_Vehicle</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>true</protected>
    </fieldUpdates>
    <rules>
        <fullName>Auto ID Maintenance Asset</fullName>
        <actions>
            <name>Auto_ID_Maintenance_Asset</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Assigns the value of Asset Tag Number to Asset Tag ID if the Auto ID Maintenance Asset install parameter is True</description>
        <formula>$Setup.Asset_Install_Para__c.Auto_ID_Maintenance_Asset__c</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Equip RecordType Update Building</fullName>
        <actions>
            <name>smEquip_RecordType_PL_Update_Bldg</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smEquipment__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Building</value>
        </criteriaItems>
        <description>Updates the Asset Record Type Picklist value to &quot;Building&quot; when the underlying object recordtype is set to &quot;Building&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Equip RecordType Update Component</fullName>
        <actions>
            <name>smEquip_RecordType_PL_Update_Comp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smEquipment__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Component</value>
        </criteriaItems>
        <description>Updates the Asset Record Type Picklist value to &quot;Component&quot; when the underlying object recordtype is set to &quot;Component&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Equip RecordType Update Equipment</fullName>
        <actions>
            <name>smEquip_RecordType_PL_Update_Equip</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smEquipment__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Equipment</value>
        </criteriaItems>
        <description>Updates the Asset Record Type Picklist value to &quot;Equipment&quot; when the underlying object recordtype is set to &quot;Equipment&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Equip RecordType Update Location</fullName>
        <actions>
            <name>smEquip_RecordType_PL_Update_Location</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smEquipment__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Location</value>
        </criteriaItems>
        <description>Updates the Asset Record Type Picklist value to &quot;Location&quot; when the underlying object recordtype is set to &quot;Location&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Equip RecordType Update Vehicle</fullName>
        <actions>
            <name>smEquip_RecordType_PL_Update_Vehicle</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smEquipment__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Vehicle</value>
        </criteriaItems>
        <description>Updates the Asset Record Type Picklist value to &quot;Vehicle&quot; when the underlying object recordtype is set to &quot;Vehicle&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
