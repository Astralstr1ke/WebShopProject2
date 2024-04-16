table 50143 AcrvhivedProjects
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(10;ArchiveID; Integer)
        {
            DataClassification = ToBeClassified;
            
        }
        field(20;ProjectID; Integer)
        {
            DataClassification = ToBeClassified;
            
        }
         field(30;EstTime; Integer)
        {
            DataClassification = ToBeClassified;
            
        }
         field(40;ActualTime; Integer)
        {
            DataClassification = ToBeClassified;
            
        }
    }
    
    keys
    {
        key(Key1; ArchiveID)
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