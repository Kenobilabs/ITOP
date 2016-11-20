<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>EMail_Confirmation_of_WR_Receipt</fullName>
        <description>EMail Confirmation of WR Receipt</description>
        <protected>false</protected>
        <recipients>
            <field>RequesterEmail__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>SaaSMaint/WR_EMail_Confirmation</template>
    </alerts>
    <fieldUpdates>
        <fullName>Add_1_Day_to_Due_Date</fullName>
        <description>Adds 1 Day to the Work Order Due Date</description>
        <field>Due_Date__c</field>
        <formula>Due_Date__c + 1</formula>
        <name>Add 1 Day to Due Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Add_2_Days_to_Due_Date</fullName>
        <description>Add 2 Days to the Work Order Due Date</description>
        <field>Due_Date__c</field>
        <formula>Due_Date__c + 2</formula>
        <name>Add 2 Days to Due Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>MRAWOComp</fullName>
        <description>Updates the Value of the Meter Reading at Work Order Completion to the Last Meter Read Value</description>
        <field>MRVAWOC__c</field>
        <formula>PM_Schedule__r.Meter_ID__r.Last_Reading_Value__c</formula>
        <name>Meter Read Value at WO Comp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_to_Reject</fullName>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Status to Reject</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_to_Waiting_Approval</fullName>
        <description>Changes Status to &quot;Waiting Approval&quot;</description>
        <field>Status__c</field>
        <literalValue>Waiting Approval</literalValue>
        <name>Status to Waiting Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lat_on_Work_Order</fullName>
        <description>Updates the Latitude on a Work Order</description>
        <field>Latitude__c</field>
        <formula>Equipment__r.Latitude__c</formula>
        <name>Update Lat on Work Order</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Long_on_Work_Order</fullName>
        <description>Updates the Longitude on a Work Order</description>
        <field>Longitude__c</field>
        <formula>Equipment__r.Longitude__c</formula>
        <name>Update Long on Work Order</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_WOCMRV_From_WO</fullName>
        <description>Updates the Work Order Cumulative Meter Reading Value Using the Manually Entered Meter Reading and the Cumulative Meter Value at Meter Replacement</description>
        <field>CMRVAWOC__c</field>
        <formula>PM_Schedule__r.Meter_ID__r.CMVAR__c  +  MRVAWOC__c</formula>
        <name>Update WOCMRV From WO</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_WO_Exp_Acct_from_Asset</fullName>
        <description>Updates the Value of Work Order Expense Account using the Account from the Work Order Maintenance Asset</description>
        <field>Parts_Expense_Account__c</field>
        <formula>Equipment__r.Parts_Expense_Account__c</formula>
        <name>Update WO Exp Acct from Asset</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Work_Order_Close_Date</fullName>
        <description>Update Work Order Close Date = Today()</description>
        <field>Close_Date__c</field>
        <formula>TODAY()</formula>
        <name>Update Work Order Close Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Work_Order_Completion_Date</fullName>
        <description>Updates the Work Order Completion Date</description>
        <field>Completion_Date__c</field>
        <formula>TODAY()</formula>
        <name>Update Work Order Completion Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>WO_Comp_Meter_Reading_Update</fullName>
        <description>Updates Cumulative Meter Reading at Work Order Completion with the value contained in the Cumulative Reading Value on the Meter used to schedule the PM</description>
        <field>CMRVAWOC__c</field>
        <formula>PM_Schedule__r.Meter_ID__r.Cumulative_Reading_Num__c</formula>
        <name>WO Comp Meter Reading Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>WO_Record_Type_Update</fullName>
        <description>This Field Updates Work  Record Type to Work Order (Record Type - Not Picklist)</description>
        <field>RecordTypeId</field>
        <lookupValue>Work_Order</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>WO Record Type Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>WO_Status_Approved</fullName>
        <description>Updates the Work Order Status Picklist Value to &quot;Approved&quot;</description>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>WO Status Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Work_Order_Record_Type_PL_Update_EWO</fullName>
        <description>Updates the Work Order Record Type Picklist to Emergency</description>
        <field>Work_Order_Record_Type__c</field>
        <literalValue>Emergency</literalValue>
        <name>Work Order Record Type PL Update EWO</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Work_Order_Record_Type_PL_Update_MWO</fullName>
        <description>Updates the Work Order Record Type Picklist value to &quot;Model Work Order&quot;</description>
        <field>Work_Order_Record_Type__c</field>
        <literalValue>Model Work Order</literalValue>
        <name>Work Order Record Type PL Update MWO</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Work_Order_Record_Type_PL_Update_WO</fullName>
        <description>Updates the Work Order Record Type picklist value to &quot;Work Order&quot;</description>
        <field>Work_Order_Record_Type__c</field>
        <literalValue>Work Order</literalValue>
        <name>Work Order Record Type PL Update WO</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Work_Order_Record_Type_PL_Update_WR</fullName>
        <description>Updates the Work Order Record Type Picklist to &quot;Work Request&quot;</description>
        <field>Work_Order_Record_Type__c</field>
        <literalValue>Work Request</literalValue>
        <name>Work Order Record Type PL Update WR</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Assign WO Parts Expense Acct</fullName>
        <actions>
            <name>Update_WO_Exp_Acct_from_Asset</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Assigns the Work Order Parts Expense Account from the Asset Tag</description>
        <formula>ISNEW() || ISCHANGED( Equipment__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Email Confirmation of WR Receipt</fullName>
        <actions>
            <name>EMail_Confirmation_of_WR_Receipt</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smWork_Order__c.RequesterEmail__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>smWork_Order__c.Work_Order_Record_Type__c</field>
            <operation>equals</operation>
            <value>Work Request</value>
        </criteriaItems>
        <description>Sends a confirmation email when a Work Request is created and the Requester Email in not null (this would typically occur when a request is created through the Email to work Request Service).</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Exclude Sat and Sun on PM Work Order</fullName>
        <actions>
            <name>Add_2_Days_to_Due_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Evaluates if a PM Work Order is to be Excluded on a Saturday and a Sunday and adjusts the Due Date to Monday.</description>
        <formula>NOT(ISBLANK( PM_Schedule__c ))&amp;&amp;  PM_Schedule__r.Exclude_Saturday__c = True &amp;&amp;  PM_Schedule__r.Exclude_Sunday__c = True &amp;&amp;  Due_Date_Day_of_Week__c = &quot;Saturday&quot;</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Exclude Sat on PM Work Order</fullName>
        <actions>
            <name>Add_1_Day_to_Due_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Evaluates if a PM Work Order is to be Excluded on a Saturday and adjusts the Due Date to Sunday</description>
        <formula>NOT(ISBLANK( PM_Schedule__c ))&amp;&amp;  PM_Schedule__r.Exclude_Saturday__c = True &amp;&amp;  PM_Schedule__r.Exclude_Sunday__c = False &amp;&amp;  Due_Date_Day_of_Week__c = &quot;Saturday&quot;</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Exclude Sun on PM Work Order</fullName>
        <actions>
            <name>Add_1_Day_to_Due_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Evaluates if a PM Work Order is to be Excluded on a Sunday and adjusts the Due Date to Monday</description>
        <formula>NOT(ISBLANK( PM_Schedule__c ))&amp;&amp; PM_Schedule__r.Exclude_Sunday__c = True &amp;&amp;  Due_Date_Day_of_Week__c = &quot;Sunday&quot;</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update CMRVAWOC Manual MRAWOC Override</fullName>
        <actions>
            <name>Update_WOCMRV_From_WO</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates the Cumulative Meter Reading Value on a Work Order Upon Completion if the Work Order was generated from a Meter Based PM Schedule and the Meter Reading Value is Not Null or Not 0.00 (Manually entered value)</description>
        <formula>ISPICKVAL( Status__c , &quot;Completed&quot;)  &amp;&amp;  NOT((ISBLANK( MRVAWOC__c )) &amp;&amp; NOT(MRVAWOC__c  = 0.00))  &amp;&amp;  NOT( ISBLANK(  Meter_ID__c  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Lat Long on Work Order</fullName>
        <actions>
            <name>Update_Lat_on_Work_Order</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Long_on_Work_Order</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates the value of the Latitude &amp; Longitude on a Work Order when a WO is entered</description>
        <formula>NOT( ISPICKVAL( Work_Order_Record_Type__c , &quot;Model Work Order&quot;) ) &amp;&amp; ( ISNEW() || ISCHANGED( Equipment__c ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Meter Readings at WO Completion</fullName>
        <actions>
            <name>MRAWOComp</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>WO_Comp_Meter_Reading_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates the Meter Reading Values on a Work Order Upon Completion if the Work Order was generated from a Meter Based PM Schedule and the Meter Reading Value is Null or 0.00</description>
        <formula>ISPICKVAL( Status__c , &quot;Completed&quot;)  &amp;&amp;  (ISBLANK( MRVAWOC__c )||  MRVAWOC__c  = 0.00)  &amp;&amp;  NOT( ISBLANK(  Meter_ID__c  ) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Work Order Close Date</fullName>
        <actions>
            <name>Update_Work_Order_Close_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smWork_Order__c.Status__c</field>
            <operation>equals</operation>
            <value>Closed</value>
        </criteriaItems>
        <description>Updates the Work Order Close Date when the Status is Updated to Closed</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>WO Comp Notification</fullName>
        <active>false</active>
        <criteriaItems>
            <field>smWork_Order__c.Status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <description>This workflow notifies the owner of a work order when the status is complete</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Work Order Completion</fullName>
        <actions>
            <name>Update_Work_Order_Completion_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smWork_Order__c.Status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>smWork_Order__c.Completion_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Updates the Work Order Completion Date when the WO Status is changed to Completed AND the Work Order Completion Date is Null</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Work Order Record Type Update Emerg</fullName>
        <actions>
            <name>Work_Order_Record_Type_PL_Update_EWO</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smWork_Order__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Emergency</value>
        </criteriaItems>
        <description>Updates the Work Order Record Type picklist value to Emergency when the recordtype on the underlying object is set to &quot;Emergency&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Work Order Record Type Update Model</fullName>
        <actions>
            <name>Work_Order_Record_Type_PL_Update_MWO</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smWork_Order__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Model Work Order</value>
        </criteriaItems>
        <description>Updates the Work Order Record Type picklist value to Model Work Order when the recordtype on the underlying object is set to &quot;Model Work Order&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Work Order Record Type Update Request</fullName>
        <actions>
            <name>Work_Order_Record_Type_PL_Update_WR</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smWork_Order__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Work Request</value>
        </criteriaItems>
        <description>Updates the Work Order Record Type picklist value to Work Request when the recordtype on the underlying object is set to &quot;Work Request&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Work Order Record Type Update Work Order</fullName>
        <actions>
            <name>Work_Order_Record_Type_PL_Update_WO</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smWork_Order__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Work Order</value>
        </criteriaItems>
        <description>Updates the Work Order Record Type picklist value to Work Order when the recordtype on the underlying object is set to &quot;Work Order&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
