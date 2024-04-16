page 50114 ConsultantList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ConsultantsTable;
    CardPageId =50101;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    
                }
                field(EmployeeID; Rec.EmployeeID)
                {
                    ApplicationArea = All;
                    
                }
                field(ProjectID; Rec.ProjectID)
                {
                    ApplicationArea = All;
                    
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            
        }
    }
    
    var
        myInt: Integer;
}