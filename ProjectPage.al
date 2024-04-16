/// <summary>
/// Page ProjectPage (ID 50105).
/// </summary>
page 50105 ProjectPage
{
    PageType = List;
    ApplicationArea = All;
    CardPageId = 50106;
    UsageCategory = Administration;
    SourceTable = Project;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(ProjectID; Rec.ProjectID)
                {
                    ApplicationArea = All;
                    
                }

                field(TimeEst; Rec.TimeEst)
                {
                    ApplicationArea = All;

                }
                field(TimeUsedFlow; Rec.TimeUsedFlow)
                {
                    ApplicationArea = All;

                }

                field(TimeRemain; Rec.TimeRemain)
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
            action(NewConsultant)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                dialog : Page "NewConsultantDialog";
                begin
                    if dialog.RunModal() = Action::OK then
                    dialog.CreateConsultant();
                end;
            }
            action(NewProject)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                dialog : Page "NewProject";
                begin
                    if dialog.RunModal() = Action::OK then
                    dialog.CreateProject();
                end;
            }
            action(Consultants)
            {
                ApplicationArea = All;
                //RunPageOnRec = true;

                trigger OnAction()
                begin
                    Page.Run(50114)
                end;
            }
        }
    }

    var
        myInt: Integer;
}