/// <summary>
/// Page TimeCardConsultant (ID 50103).
/// </summary>
page 50103 TimeCardConsultant
{
    PageType = ListPart;
    SourceTable = TimeCard;
    
     

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(EmployeeNR; Rec.EmployeeNR)
                {
                    ApplicationArea = All;
                    Editable = false;
                    Visible = roleShowEmployeeID;
                    
                }
                
                field(ProjectID; Rec.ProjectID)
                {
                    ApplicationArea = All;
                    Editable = false;
                    
                }
                field(TimeSpent; Rec.TimeSpent)
                {
                    ApplicationArea = All;
                    Editable = false;
                    
                }
                

            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
   var
        roleShowEmployeeID : Boolean;

    trigger OnOpenPage()
    var
    UserPermission: Codeunit "User Permissions";
    begin
        /* Should work? The codeunit is empty in explorer maybe broken instalation
        if UserPermission.HasUserPermissionSetAssinged(UserSecurityId(),CompanyName,'2a89f298-7ffd-44a5-a7ce-e08dac98abce') = true then
        roleShowEmployeeID := true
        else
        roleShowEmployeeID := false;
        */
        roleShowEmployeeID := true;
    end;
 
   

}