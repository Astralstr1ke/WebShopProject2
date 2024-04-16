/// <summary>
/// Table ConsultantsTable (ID 50149).
/// </summary>
table 50149 ConsultantsTable
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(10;EmployeeID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement=true;
            //ToolTip = 'ID Corresponding to the Consultant ';
            
        }
        field(20;Name; Text[2048])
        {
            DataClassification = ToBeClassified;
            //ToolTip = 'the name of the Consultant ';
        }
        field(30;ProjectID; Integer)
        {
            DataClassification = ToBeClassified;
            //ToolTip = 'ID Corresponding to the Project currently assigned';
            TableRelation = Project;
        }
        
    }
    
    keys
    {
        key(PrimaryKey; EmployeeID)
        {
            Clustered = true;
        }
        key(ProjectID; ProjectID)
        {
        }
    }
    
    

    fieldgroups
    {
        // Add changes to field groups here
        fieldgroup(dropdown;EmployeeID,Name)
        {}
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