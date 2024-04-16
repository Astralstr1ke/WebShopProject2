/// <summary>
/// Page Consultant (ID 50101).
/// </summary>
page 50101 Consultant
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ConsultantsTable;
    layout
    {
        area(Content)
        {

            group(Consultant)
            {
                field(Name; Rec.Name)
                {
                    Editable = False;
                }
                field(ProjectID; Rec.ProjectID)
                {
                    Editable = False;
                }
                field(EmployeeID; Rec.EmployeeID)
                {
                    Editable = True;
                    /*
                    trigger OnValidate()
                    var
                        con: Record ConsultantsTable;
                    begin
                        con.Reset();
                        con.EmployeeID := EmployeeID ;
                        if con.find('=') then
                        Message('worked');
                        page.Run(50101,con);
                        Message(Format(Rec.EmployeeID));
                    end;
                    */
                }

            }
            group(Time)
            {
                part("TimeCardConsultant"; "TimeCardConsultant")
                {
                    SubPageLink = "EmployeeNR" = field("EmployeeID");
                    Editable = true;
                }
            }

        }


    }


    actions
    {
        area(Processing)
        {
            action(Time_Stamp)
            {
                Caption = 'ClockHours';
                ApplicationArea = All;
                RunPageOnRec = true;
                Image = "8ball";


                trigger OnAction()
                var
                    TimeCard: Page "TimeCardDialog";
                begin
                    TimeCard.SetEmployeeProjectID(Rec.EmployeeID, Rec.ProjectID);
                    if TimeCard.RunModal() = Action::OK then
                        TimeCard.InsertTimeCard();
                end;
            }
        }
    }
    var
    //EmployeeID: Integer;


    trigger OnOpenPage()
    var
        //consul: Record ConsultantsTable;
    begin
        //EmployeeID:= Rec.EmployeeID;
        /*
        consul.Reset();
        if consul.FindFirst() then
            Page.Run(50101, consul);
        Message('WOorked');
        */
    end;
}