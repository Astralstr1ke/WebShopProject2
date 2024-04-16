page 50113 Newproject
{
    PageType = StandardDialog;
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(TimeEst; myInt )
                {
                    ApplicationArea = All;
                    
                }
            }
        }
    }
    
    var
        myInt: Integer;
    procedure CreateProject()
    var
    pro : Record "Project";
    begin
        pro.TimeEst:=myInt;
        pro.Insert(true);
    end;
}