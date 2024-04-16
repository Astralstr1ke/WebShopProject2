page 50112 AssingConsultant
{
    PageType = StandardDialog;
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(employeeID;employeeID)
                {
                    trigger OnValidate()
                    var
                    validInt: Boolean;
                    ValidName: Boolean;
                    begin

                        if employeeID <1then
                        validInt := false;
                        if name ='' then
                        ValidName:= false;

                        if validInt and ValidName = false then
                        Message('please enter an id or a name');
                    end;
                }
                field(name;name)
                {
                    trigger OnValidate()
                    var
                    validInt: Boolean;
                    ValidName: Boolean;
                    begin

                        if employeeID <1then
                        validInt := false;
                        if name ='' then
                        ValidName:= false;

                        if validInt and ValidName = false then
                        Message('please enter an id or a name');
                    end;
                }
            }
        }
    }
    
    
    var
        myInt: Integer;
        name:Text;
        employeeID: Integer;
        projectID: Integer;

    procedure setProjectID(id: Integer)
    begin
        projectID := id;
    end;
    procedure assingment()
    var
    con : Record ConsultantsTable;
    begin
        if name =''then
        myInt:=1
        else
        con.Name:= name;

        if employeeID >0 then
        con.EmployeeID:=employeeID
        else
        con.Find('=');
        con.ProjectID := projectID;
        con.Modify(true);
    end;
}