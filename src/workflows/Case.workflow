<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>BUDD_Is_Data_Buddy_Case</fullName>
        <field>RecordTypeId</field>
        <lookupValue>BUDD_Data_Buddy_Case</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Is Data Buddy Case</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>External_ID_Case_MERC</fullName>
        <description>Populates External ID with OrdID and ID</description>
        <field>Mercury_External_Id_MERC__c</field>
        <formula>CASESAFEID($Organization.Id) &amp;&quot;_&quot;&amp; CASESAFEID(Id)</formula>
        <name>External ID-Case</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Language_to_English</fullName>
        <field>Language_MERC__c</field>
        <literalValue>en</literalValue>
        <name>Set Language to English</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Country</fullName>
        <description>Update Country Code on Case.</description>
        <field>Country_GLBL__c</field>
        <formula>CASE(
  Left(Text(Origin),2),
&quot;GB&quot;,&quot;GB&quot;,
&quot;IE&quot;,&quot;IE&quot;,
&quot;DK&quot;,&quot;DK&quot;,
&quot;NO&quot;,&quot;NO&quot;,
&quot;SE&quot;,&quot;SE&quot;,
&quot;FI&quot;,&quot;FI&quot;,
&quot;DE&quot;,&quot;DE&quot;,
&quot;AT&quot;,&quot;AT&quot;,
&quot;CH&quot;,&quot;CH&quot;,
&quot;TR&quot;,&quot;TR&quot;,
&quot;SP&quot;,&quot;SP&quot;,
&quot;PT&quot;,&quot;PT&quot;,
&quot;IT&quot;,&quot;IT&quot;,
&quot;RO&quot;,&quot;RO&quot;,
&quot;BE&quot;,&quot;BE&quot;,
&quot;FR&quot;,&quot;FR&quot;,
&quot;NL&quot;,&quot;NL&quot;,
&quot;PL&quot;,&quot;PL&quot;,
&quot;CZ&quot;,&quot;CZ&quot;,
&quot;HU&quot;,&quot;HU&quot;,
&quot;SK&quot;,&quot;SK&quot;,
&quot;RU&quot;,&quot;RU&quot;,
&quot;UA&quot;,&quot;UA&quot;,
&quot;BG&quot;,&quot;BG&quot;,
&quot;HR&quot;,&quot;HR&quot;,
&quot;CY&quot;,&quot;CY&quot;,
&quot;EE&quot;,&quot;EE&quot;,
&quot;LV&quot;,&quot;LV&quot;,
&quot;LT&quot;,&quot;LT&quot;,
&quot;RS&quot;,&quot;RS&quot;,
&quot;SI&quot;,&quot;SI&quot;,
&apos;none&apos;)</formula>
        <name>Update Case Country</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Language_Czech</fullName>
        <field>Language_MERC__c</field>
        <literalValue>cs</literalValue>
        <name>Update Case Language - Czech</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Language_Danish</fullName>
        <field>Language_MERC__c</field>
        <literalValue>da</literalValue>
        <name>Update Case Language - Danish</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Language_Dutch</fullName>
        <field>Language_MERC__c</field>
        <literalValue>nl</literalValue>
        <name>Update Case Language - Dutch</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Language_Finnish</fullName>
        <field>Language_MERC__c</field>
        <literalValue>fi</literalValue>
        <name>Update Case Language - Finnish</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Language_French</fullName>
        <field>Language_MERC__c</field>
        <literalValue>fr</literalValue>
        <name>Update Case Language - French</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Language_German</fullName>
        <field>Language_MERC__c</field>
        <literalValue>de</literalValue>
        <name>Update Case Language - German</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Language_Hungarian</fullName>
        <field>Language_MERC__c</field>
        <literalValue>hu</literalValue>
        <name>Update Case Language - Hungarian</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Language_Italian</fullName>
        <field>Language_MERC__c</field>
        <literalValue>it</literalValue>
        <name>Update Case Language - Italian</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Language_Norwegian</fullName>
        <field>Language_MERC__c</field>
        <literalValue>no</literalValue>
        <name>Update Case Language - Norwegian</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Language_Polish</fullName>
        <field>Language_MERC__c</field>
        <literalValue>pl</literalValue>
        <name>Update Case Language - Polish</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Language_Portuguese</fullName>
        <field>Language_MERC__c</field>
        <literalValue>pt</literalValue>
        <name>Update Case Language - Portuguese</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Language_Romainian</fullName>
        <field>Language_MERC__c</field>
        <literalValue>ro</literalValue>
        <name>Update Case Language - Romainian</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Language_Russian</fullName>
        <field>Language_MERC__c</field>
        <literalValue>ru</literalValue>
        <name>Update Case Language - Russian</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Language_Slovakian</fullName>
        <field>Language_MERC__c</field>
        <literalValue>sk</literalValue>
        <name>Update Case Language - Slovakian</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Language_Spanish</fullName>
        <field>Language_MERC__c</field>
        <literalValue>es</literalValue>
        <name>Update Case Language - Spanish</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Language_Swedish</fullName>
        <field>Language_MERC__c</field>
        <literalValue>sv</literalValue>
        <name>Update Case Language - Swedish</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Language_Turkish</fullName>
        <field>Language_MERC__c</field>
        <literalValue>tr</literalValue>
        <name>Update Case Language - Turkish</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Country_on_Case</fullName>
        <description>Update Country Code on Case.</description>
        <field>Country_GLBL__c</field>
        <formula>&apos;GB&apos;</formula>
        <name>Update Country on Case</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Language_Field_on_Case</fullName>
        <description>Updates Language field based on Case Origin. Created 01/01/2014 by KLorenti, Mavens Consulting</description>
        <field>Language_MERC__c</field>
        <literalValue>en</literalValue>
        <name>Update Language Field on Case</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Language_to_English</fullName>
        <field>Language_MERC__c</field>
        <literalValue>en</literalValue>
        <name>Update Language to English</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Is Data Buddy Case</fullName>
        <actions>
            <name>BUDD_Is_Data_Buddy_Case</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.BUDD_Is_Data_Buddy_Case__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>MERC_External ID-Cases</fullName>
        <actions>
            <name>External_ID_Case_MERC</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Mercury_External_Id_MERC__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Populates the external id upon creation of a record : MERC : Created on 12/5/2013 by Oliver Dunford, Mavens Consulting</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>MERC_Update Case Country</fullName>
        <actions>
            <name>Update_Case_Country</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>ATDE,BABS,BEFL,BEFR,BGBG,CHDE,CHFR,CHIT,CYEL,CYTR,CZCZ,DEDE,DKDK,EEET,EUROPE,FIFI,FRFR,GBEN,HRHR,HUHU,IEEN,ITIT,LTLT,LVLV,NLDU,NONO,PLPL,PTPT,RORO,RSSR,RURU,SESE,SISL,SKSK,SPSP,TRTR,UARU</value>
        </criteriaItems>
        <description>Update Country field on Case based on origin : MERC : Created on 11/05/2013 by Oliver Dunford, Mavens Consulting</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>MERC_Update Case Country and Language - GBEN</fullName>
        <actions>
            <name>Update_Language_Field_on_Case</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>GBEN</value>
        </criteriaItems>
        <description>Update Country &amp; Language field on Case based on origin : MERC : Created on 11/05/2013 by Oliver Dunford, Mavens Consulting</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MERC_Update Case Country and Language - IEEN</fullName>
        <actions>
            <name>Update_Language_to_English</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>IEEN</value>
        </criteriaItems>
        <description>Update Country &amp; Language field on Case based on origin : MERC : Created on 11/05/2013 by Oliver Dunford, Mavens Consulting</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MERC_Update Case Language - Czech</fullName>
        <actions>
            <name>Update_Case_Language_Czech</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>CZCZ</value>
        </criteriaItems>
        <description>Update Language field on Case based on origin : MERC : Created on 04/01/2014 by Katy Lorenti, Mavens Consulting</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MERC_Update Case Language - Danish</fullName>
        <actions>
            <name>Update_Case_Language_Danish</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>DKDK</value>
        </criteriaItems>
        <description>Update Language field on Case based on origin : MERC : Created on 04/01/2014 by Katy Lorenti, Mavens Consulting</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MERC_Update Case Language - Dutch</fullName>
        <actions>
            <name>Update_Case_Language_Dutch</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>BEFL,NLDU</value>
        </criteriaItems>
        <description>Update Language field on Case based on origin : MERC : Created on 04/01/2014 by Katy Lorenti, Mavens Consulting</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MERC_Update Case Language - English</fullName>
        <actions>
            <name>Set_Language_to_English</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>GBEN,IEEN</value>
        </criteriaItems>
        <description>Update Language field on Case based on origin : MERC : Created on 04/01/2014 by Katy Lorenti, Mavens Consulting</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MERC_Update Case Language - Finnish</fullName>
        <actions>
            <name>Update_Case_Language_Finnish</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>FIFI</value>
        </criteriaItems>
        <description>Update Language field on Case based on origin : MERC : Created on 04/01/2014 by Katy Lorenti, Mavens Consulting</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MERC_Update Case Language - French</fullName>
        <actions>
            <name>Update_Case_Language_French</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>CHFR,FRFR,BEFR</value>
        </criteriaItems>
        <description>Update Language field on Case based on origin : MERC : Created on 04/01/2014 by Katy Lorenti, Mavens Consulting</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MERC_Update Case Language - German</fullName>
        <actions>
            <name>Update_Case_Language_German</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>DEDE,ATDE,CHDE</value>
        </criteriaItems>
        <description>Update Language field on Case based on origin : MERC : Created on 04/01/2014 by Katy Lorenti, Mavens Consulting</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MERC_Update Case Language - Hungarian</fullName>
        <actions>
            <name>Update_Case_Language_Hungarian</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>HUHU</value>
        </criteriaItems>
        <description>Update Language field on Case based on origin : MERC : Created on 04/01/2014 by Katy Lorenti, Mavens Consulting</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MERC_Update Case Language - Italian</fullName>
        <actions>
            <name>Update_Case_Language_Italian</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>ITIT,CHIT</value>
        </criteriaItems>
        <description>Update Language field on Case based on origin : MERC : Created on 04/01/2014 by Katy Lorenti, Mavens Consulting</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MERC_Update Case Language - Norwegian</fullName>
        <actions>
            <name>Update_Case_Language_Norwegian</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>NONO</value>
        </criteriaItems>
        <description>Update Language field on Case based on origin : MERC : Created on 04/01/2014 by Katy Lorenti, Mavens Consulting</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MERC_Update Case Language - Polish</fullName>
        <actions>
            <name>Update_Case_Language_Polish</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>PLPL</value>
        </criteriaItems>
        <description>Update Language field on Case based on origin : MERC : Created on 04/01/2014 by Katy Lorenti, Mavens Consulting</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MERC_Update Case Language - Portuguese</fullName>
        <actions>
            <name>Update_Case_Language_Portuguese</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>PTPT</value>
        </criteriaItems>
        <description>Update Language field on Case based on origin : MERC : Created on 04/01/2014 by Katy Lorenti, Mavens Consulting</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MERC_Update Case Language - Romainian</fullName>
        <actions>
            <name>Update_Case_Language_Romainian</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>RORO</value>
        </criteriaItems>
        <description>Update Language field on Case based on origin : MERC : Created on 04/01/2014 by Katy Lorenti, Mavens Consulting</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MERC_Update Case Language - Russian</fullName>
        <actions>
            <name>Update_Case_Language_Russian</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>RURU,UARU</value>
        </criteriaItems>
        <description>Update Language field on Case based on origin : MERC : Created on 04/01/2014 by Katy Lorenti, Mavens Consulting</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MERC_Update Case Language - Slovakian</fullName>
        <actions>
            <name>Update_Case_Language_Slovakian</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>SKSK</value>
        </criteriaItems>
        <description>Update Language field on Case based on origin : MERC : Created on 04/01/2014 by Katy Lorenti, Mavens Consulting</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MERC_Update Case Language - Spanish</fullName>
        <actions>
            <name>Update_Case_Language_Spanish</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>SPSP</value>
        </criteriaItems>
        <description>Update Language field on Case based on origin : MERC : Created on 04/01/2014 by Katy Lorenti, Mavens Consulting</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MERC_Update Case Language - Swedish</fullName>
        <actions>
            <name>Update_Case_Language_Swedish</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>SESE</value>
        </criteriaItems>
        <description>Update Language field on Case based on origin : MERC : Created on 04/01/2014 by Katy Lorenti, Mavens Consulting</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MERC_Update Case Language - Turkish</fullName>
        <actions>
            <name>Update_Case_Language_Turkish</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>TRTR</value>
        </criteriaItems>
        <description>Update Language field on Case based on origin : MERC : Created on 04/01/2014 by Katy Lorenti, Mavens Consulting</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
