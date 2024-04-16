page 50110 TimeCardDialog
{
    PageType = StandardDialog;
    
    
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(TimeStart;StartTime)
                {

                }
                field(TimeEnd;EndTime)
                {
                    
                }
            }
        }
    }
    var
        StartTime: Time;
        EndTime:Time;
        proj :Record Project;
        time: Record TimeCard;
        EmployeeID: Integer; 
        ProjectID: Integer;

    procedure SetEmployeeProjectID(Employee: Integer; Project: Integer)
    begin
        EmployeeID := Employee;
        ProjectID := Project;
    end;
    procedure InsertTimeCard()
    var
    int: Integer;
    begin

    if EndTime > StartTime then
    int := EndTime-StartTime;
    int:= int/1000;
    int:= int/60;

    Message(Format(int));
                        

    time.EmployeeNR := EmployeeID;
    time.ProjectID := ProjectID;
    time.TimeSpent:=int;
    time.Insert(true);

    proj.ProjectID := ProjectID; // This is dumb, but i cant do it the table it self so this must do
    if proj.Find('=') then
    proj.TimeRemain := proj.TimeRemain-int;
    proj.Modify(true);
    end;

}