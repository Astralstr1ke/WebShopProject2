page 50111 NewConsultantDialog
{
    PageType = StandardDialog;
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; Name)
                {
                    ToolTip ='Enter Name of the new Consultant';
                    ApplicationArea = All;
                    
                }
                
            }
        }
    }
    
    var
        Name: Text;
    procedure CreateConsultant()
    var
    con : Record ConsultantsTable;
    begin
        if Name = '' then
        Message('Please Enter a name')
        Else
        con.Name:=Name;
        con.Insert(true);
    end;
}