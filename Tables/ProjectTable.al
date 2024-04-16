/// <summary>
/// Table Project (ID 50102).
/// </summary>
table 50102 Project
{
    DrillDownPageId = "ProjectPage";
    LookupPageId = "ProjectPage";
    DataClassification = ToBeClassified;
    
    fields
    {
        field(10;ProjectID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement=true;
        }
        field(20;TimeEst; Integer)
        {
            DataClassification = ToBeClassified;
            
        }
        field(30;TimeUsedFlow; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Timecard".TimeSpent WHERE ("ProjectID" = field("ProjectID")));
            
        }
        field(40;TimeRemain; Integer)
        {
           DataClassification = ToBeClassified;
             
        }
    }
    
    keys
    {
        key(Primary; ProjectID)
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
        fieldgroup(dropdown;ProjectID)
        {}
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        Rec.TimeRemain:= Rec.TimeEst;
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