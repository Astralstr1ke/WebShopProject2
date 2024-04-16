/// <summary>
/// Table TimeCard (ID 50101).
/// </summary>
table 50101 TimeCard
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(10;TimeID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement=true;
            
        }
        field(20;EmployeeNR; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = ConsultantsTable;
        }
        field(30;ProjectID; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Project;
            
        }
        field(40;TimeSpent; Integer)
        {
            DataClassification = ToBeClassified;
            
        }
    }
    
    keys
    {
        key(Primary; TimeID)
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}