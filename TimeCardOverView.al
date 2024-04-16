page 50106 TimeCardOverview
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Project;
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(ProjectID ;Rec.ProjectID )
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
            repeater(TimeCard)
            {
                part("TimeCardConsultant";"TimeCardConsultant") 
                {
                    SubPageLink ="ProjectID" = field("ProjectID");
                    Editable = false;
                }

            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            
            action(AssignConsultant)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                dialog : Page "AssingConsultant";
                begin
                    dialog.setProjectID(proID);
                    if dialog.RunModal() = Action::OK then
                    dialog.assingment();
                end;
            }
            action(SetupNotification)
            {
                ApplicationArea = All;
                trigger OnAction()
                var
                date : DateTime;
                begin
                    date := CurrentDateTime();
                    //TaskScheduler.CreateTask(50130,50132,true,'',date+60*1000) //email
                    TaskScheduler.CreateTask(50132,50132,true,'',date+60*1000)

                end;
            }
            action(Endjob)
            {
                ApplicationArea = All;
                trigger OnAction()
                var
                endmail: Codeunit "SendEmail";
                arcPro : Record AcrvhivedProjects;
                begin
                    //endmail.sendMail('Test'); // Is wrong?
                    arcPro.EstTime:= Rec.TimeEst;
                    arcPro.ActualTime:= Rec.TimeUsedFlow;
                    arcPro.ProjectID:=Rec.ProjectID;
                    Rec.Delete();

                end;
            }
        }
    }
    
    var
        proID: Integer;

    trigger OnOpenPage()
    begin
       proID := Rec.ProjectID 
    end;
    procedure deleteTimeCards(projectid: Integer)
        var
        timeCard : Record TimeCard;
        begin
            timeCard.SetRange("ProjectID", projectid);
            timeCard.DeleteAll();
        end;
    
}