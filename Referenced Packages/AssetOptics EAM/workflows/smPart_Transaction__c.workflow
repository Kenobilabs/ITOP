<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Last_Receipt_Date_Update</fullName>
        <description>Updates the Last Receipt Date on smPart with the Current Date</description>
        <field>Last_Receipt_Date__c</field>
        <formula>TODAY()</formula>
        <name>Last Receipt Date Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
        <targetObject>Part__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>On_Hand_Qty_Update_GSI</fullName>
        <description>Updates the value in the On Hand Qty field of smPart when a record is entered in smPart_Transaction and the Transaction Type is Gain, Shrink or Issue</description>
        <field>On_Hand_Qty__c</field>
        <formula>CASE(  TEXT( Trans_Type__c ) , &quot;Gain&quot;,  ( Part__r.On_Hand_Qty__c  +  Qty__c ), &quot;Issue&quot;,   (Part__r.On_Hand_Qty__c  -  Qty__c ), &quot;Shrink&quot;,  (Part__r.On_Hand_Qty__c  -  Qty__c ),  (Part__r.On_Hand_Qty__c))</formula>
        <name>On Hand Qty Update GSI</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
        <targetObject>Part__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>On_Hand_Qty_Update_Rcpt</fullName>
        <description>Updates the On Hand Qty for the Part</description>
        <field>On_Hand_Qty__c</field>
        <formula>Part__r.On_Hand_Qty__c  +  Qty__c</formula>
        <name>On Hand Qty Update Rcpt</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
        <targetObject>Part__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_CR_Part_Trans_SR_Bal</fullName>
        <description>Updates the Credit Account on the Part Transaction to the Balance Sheet Acct from the Storeroom</description>
        <field>Credit_Account__c</field>
        <formula>Part__r.Storeroom__r.Inventory_Balance_Sheet_Acct__c</formula>
        <name>Update CR Part Trans SR Bal</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_CR_Part_Trans_SR_Exp</fullName>
        <description>Updates Credit Acct on Part Transaction with the Storeroom Inventory Writeoff Acct</description>
        <field>Credit_Account__c</field>
        <formula>Part__r.Storeroom__r.Inventory_Write_Off_Account__c</formula>
        <name>Update CR Part Trans SR Exp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_DR_Part_Trans_SR_Bal</fullName>
        <description>Update the Debit Acct on Part Transaction with the Storeroom Balance Sheet Acct</description>
        <field>Debit_Account__c</field>
        <formula>Part__r.Storeroom__r.Inventory_Balance_Sheet_Acct__c</formula>
        <name>Update DR Part Trans SR Bal</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_DR_Part_Trans_SR_Exp</fullName>
        <description>Updates the Debit Account on Part Transaction with the Storeroom Inventory Writeoff Acct</description>
        <field>Debit_Account__c</field>
        <formula>Part__r.Storeroom__r.Inventory_Write_Off_Account__c</formula>
        <name>Update DR Part Trans SR Exp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_DR_Part_Trans_WO_Exp</fullName>
        <description>Updates the Debit Account on Part Transaction Record with the Work Order Parts Expense Acct</description>
        <field>Debit_Account__c</field>
        <formula>Work_Order__r.Parts_Expense_Account__c</formula>
        <name>Update DR Part Trans WO Exp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Last_Gain_Date_on_smPart</fullName>
        <description>This workflow updates the Last Gain Date on smPart when a Part Transaction of Gain Type is being recorded.</description>
        <field>Last_Gain_Date__c</field>
        <formula>TODAY()</formula>
        <name>Update Last Gain Date on smPart</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Part__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Last_Issue_Date_on_smPart</fullName>
        <description>Updates the Last Issue Date on smPart with the current date</description>
        <field>Last_Issue_Date__c</field>
        <formula>TODAY()</formula>
        <name>Update Last Issue Date on smPart</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
        <targetObject>Part__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Last_Order_Date_on_smPart</fullName>
        <description>Updates the Last Order Date on smPart with the current date</description>
        <field>Last_Order_Date__c</field>
        <formula>TODAY()</formula>
        <name>Update Last Order Date on smPart</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
        <targetObject>Part__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Last_Shrink_Date_on_smPart</fullName>
        <description>Update Last Shrink Date of smPart Object when a trans type of Shrink will be created on Part Transacction</description>
        <field>Last_Shrink_Date__c</field>
        <formula>TODAY()</formula>
        <name>Update Last Shrink Date on smPart</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Part__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_On_OrderQty_Receipt</fullName>
        <description>Updates the On Order Qty for smPart when a Receipt Transaction Occurs</description>
        <field>On_Order_Qty__c</field>
        <formula>Part__r.On_Order_Qty__c -  Qty__c</formula>
        <name>Update On Order Qty Receipt</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
        <targetObject>Part__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Unit_Value_on_Part_Trans</fullName>
        <description>Update Unit Value on Part Transaction with Part Unit Value</description>
        <field>Unit_Value__c</field>
        <formula>Part__r.Unit_Value__c</formula>
        <name>Update Unit Value on Part Trans</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_smPart_On_Order_Qty_Order</fullName>
        <description>Updates smPart.On_Order_Qty when an &quot;Order&quot; trans type record is entered into smPart_Transaction</description>
        <field>On_Order_Qty__c</field>
        <formula>Part__r.On_Order_Qty__c  +  Qty__c</formula>
        <name>Update smPart On Order Qty Order</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
        <targetObject>Part__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>smPart_Last_In_Cost_Update</fullName>
        <description>Updates the &quot;Last In Cost&quot; on smPart with the Unit Value on smPartTransaction when transaction type is Receipt</description>
        <field>Last_In_Cost__c</field>
        <formula>Unit_Value__c</formula>
        <name>smPart Last In Cost Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
        <targetObject>Part__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>smPart_WeightedAvgCost_Update</fullName>
        <description>Updates the &quot;Weighted Avg Cost&quot; on smPart.  Calculation is based on smPart.OnHandQty being updated prior to the calculation of the new Weighted Average Cost.</description>
        <field>Weighted_Avg_Cost__c</field>
        <formula>(( Part__r.On_Hand_Qty__c -  Qty__c ) *  Part__r.Weighted_Avg_Cost__c +  Trans_Value__c ) /  Part__r.On_Hand_Qty__c</formula>
        <name>smPart WeightedAvgCost Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
        <targetObject>Part__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>smPart_WeightedAvgCost_Update_V2</fullName>
        <description>Calculates and Updates the Weighted Average Cost for a Part assuming that the On Hand Qty is calculated AFTER the WAC is calculated.</description>
        <field>Weighted_Avg_Cost__c</field>
        <formula>(( Part__r.On_Hand_Qty__c *   Part__r.Weighted_Avg_Cost__c  ) +  Trans_Value__c ) / ( Part__r.On_Hand_Qty__c +  Qty__c )</formula>
        <name>smPart WeightedAvgCost Update V2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>true</protected>
        <targetObject>Part__c</targetObject>
    </fieldUpdates>
    <rules>
        <fullName>OnHand_Qty_Update_GSI</fullName>
        <actions>
            <name>On_Hand_Qty_Update_GSI</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smPart_Transaction__c.Qty__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>smPart_Transaction__c.Trans_Type__c</field>
            <operation>equals</operation>
            <value>Gain,Issue,Shrink</value>
        </criteriaItems>
        <description>Initiates the Field Update workflow to update the OnHand Qty for smPart when a Part Transaction is entered and the Transaction Type is Gain, Shrink, or Issue</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Parts Cost Update at Receipt Transaction</fullName>
        <active>false</active>
        <description>Obsolete</description>
        <formula>ISPICKVAL(Trans_Type__c, &quot;Receipt&quot;)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Parts Cost Update at Receipt Transaction V2</fullName>
        <actions>
            <name>On_Hand_Qty_Update_Rcpt</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_On_OrderQty_Receipt</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>smPart_Last_In_Cost_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>smPart_WeightedAvgCost_Update_V2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smPart_Transaction__c.Trans_Type__c</field>
            <operation>equals</operation>
            <value>Receipt</value>
        </criteriaItems>
        <description>smPartTransaction Receipt Type Updates to Last In Cost, Weighted Avg Cost, On Hand Qty, and On Order Qty</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Accts on Part Transaction Gain</fullName>
        <actions>
            <name>Update_CR_Part_Trans_SR_Exp</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_DR_Part_Trans_SR_Bal</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smPart_Transaction__c.Trans_Type__c</field>
            <operation>equals</operation>
            <value>Gain</value>
        </criteriaItems>
        <description>Updates the Debit and Credit Accounts on the Part Transaction during record creation of the Transaction Type is Gain</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Accts on Part Transaction Issue</fullName>
        <actions>
            <name>Update_CR_Part_Trans_SR_Bal</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_DR_Part_Trans_WO_Exp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smPart_Transaction__c.Trans_Type__c</field>
            <operation>equals</operation>
            <value>Issue</value>
        </criteriaItems>
        <description>Updates the Debit and Credit Accounts on the Part Transaction during record creation of the Transaction Type is Issue</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Accts on Part Transaction Shrink</fullName>
        <actions>
            <name>Update_CR_Part_Trans_SR_Bal</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_DR_Part_Trans_SR_Exp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smPart_Transaction__c.Trans_Type__c</field>
            <operation>equals</operation>
            <value>Shrink</value>
        </criteriaItems>
        <description>Updates the Debit and Credit Accounts on the Part Transaction during record creation of the Transaction Type is Shrink</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Last Gain Date on smPart</fullName>
        <actions>
            <name>Update_Last_Gain_Date_on_smPart</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smPart_Transaction__c.Trans_Type__c</field>
            <operation>equals</operation>
            <value>Gain</value>
        </criteriaItems>
        <description>Updates the Last Gain Date on smPart when a Gain type smPartTransaction record is entered</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Last Issue Date on smPart</fullName>
        <actions>
            <name>Update_Last_Issue_Date_on_smPart</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smPart_Transaction__c.Trans_Type__c</field>
            <operation>equals</operation>
            <value>Issue</value>
        </criteriaItems>
        <description>Updates the Last Issue Date on smPart when an Issue type smPartTransaction record is entered</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Last Order Date on smPart</fullName>
        <actions>
            <name>Update_Last_Order_Date_on_smPart</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smPart_Transaction__c.Trans_Type__c</field>
            <operation>equals</operation>
            <value>Order</value>
        </criteriaItems>
        <description>Updates the Last Order Date on smPart when an Order type smPartTransaction record is entered</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Last Receipt Date on smPart</fullName>
        <actions>
            <name>Last_Receipt_Date_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smPart_Transaction__c.Trans_Type__c</field>
            <operation>equals</operation>
            <value>Receipt</value>
        </criteriaItems>
        <description>Updates the Last Receipt Date on smPart when a Receipt type smPartTransaction record is entered</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Last Shrink Date on smPart</fullName>
        <actions>
            <name>Update_Last_Shrink_Date_on_smPart</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smPart_Transaction__c.Trans_Type__c</field>
            <operation>equals</operation>
            <value>Shrink</value>
        </criteriaItems>
        <description>Last Shrink Date will be updated when a part transaction type of Shrink will be created.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update On Order Qty Order</fullName>
        <actions>
            <name>Update_smPart_On_Order_Qty_Order</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smPart_Transaction__c.Trans_Type__c</field>
            <operation>equals</operation>
            <value>Order</value>
        </criteriaItems>
        <description>Updates the On Order Qty on smPart when an &quot;Order&quot; trans type record is entered into smPart_Transaction</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Unit Value on Part Trans</fullName>
        <actions>
            <name>Update_Unit_Value_on_Part_Trans</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smPart_Transaction__c.Trans_Type__c</field>
            <operation>equals</operation>
            <value>Gain,Issue,Shrink</value>
        </criteriaItems>
        <description>Updates the Unit Value on Part Transaction when the Transaction Type is Issue, Gain, or Shrink</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
