<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>updatefiled</fullName>
        <field>Name</field>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>TestNewWFLOW%2EWFlowRule</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Account.Phone</field>
            <operation>equals</operation>
            <value>500</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>TestNewWFLOW1%2EWFlowRule</fullName>
        <actions>
            <name>asd</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.Phone</field>
            <operation>equals</operation>
            <value>500</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>TestNewWFLOW2%2EWFlowRule</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Account.Phone</field>
            <operation>equals</operation>
            <value>500</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>TestNewWFLOW50%2EWFlowRule50</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Account.Phone</field>
            <operation>equals</operation>
            <value>500</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>TestNewWFLOW80%2EWFlowRule80</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Account.Phone</field>
            <operation>equals</operation>
            <value>500</value>
        </criteriaItems>
        <description>from metadata</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>TestNewWFLOW90%2EWFlowRule90</fullName>
        <actions>
            <name>test</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.Phone</field>
            <operation>equals</operation>
            <value>500</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>TestNewWFLOW91%2EWFlowRule91</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Account.Phone</field>
            <operation>equals</operation>
            <value>500</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>TestNewWFLOW92%2EWFlowRule92</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Account.Phone</field>
            <operation>equals</operation>
            <value>500</value>
        </criteriaItems>
        <description>from metadata</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>TestWFlow%2EWFlowRule</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Account.Phone</field>
            <operation>equals</operation>
            <value>500</value>
        </criteriaItems>
        <description>test data</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>TestWFlow%2Enull</fullName>
        <active>false</active>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Testwflow1%2EwFlowrule1</fullName>
        <actions>
            <name>Yupp</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Phone</field>
            <operation>equals</operation>
            <value>500</value>
        </criteriaItems>
        <description>from metadata</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>testwfrule</fullName>
        <actions>
            <name>updatefiled</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.AccountNumber</field>
            <operation>startsWith</operation>
            <value>98</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Yupp</fullName>
        <assignedToType>owner</assignedToType>
        <description>Task</description>
        <dueDateOffset>20</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
    </tasks>
    <tasks>
        <fullName>Yupp</fullName>
        <assignedToType>owner</assignedToType>
        <description>Task</description>
        <dueDateOffset>20</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
    </tasks>
    <tasks>
        <fullName>Yupp</fullName>
        <assignedToType>owner</assignedToType>
        <description>Task</description>
        <dueDateOffset>20</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
    </tasks>
    <tasks>
        <fullName>Yupp</fullName>
        <assignedToType>owner</assignedToType>
        <description>Task</description>
        <dueDateOffset>20</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
    </tasks>
    <tasks>
        <fullName>asd</fullName>
        <assignedTo>sourabh.shrivastava@zen4orce.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>asd</description>
        <dueDateOffset>2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
    </tasks>
    <tasks>
        <fullName>test</fullName>
        <assignedTo>sourabh.shrivastava@zen4orce.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>10</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Account.CreatedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
    </tasks>
    <tasks>
        <fullName>test task</fullName>
        <assignedToType>owner</assignedToType>
        <description>Task</description>
        <dueDateOffset>20</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
    </tasks>
</Workflow>
