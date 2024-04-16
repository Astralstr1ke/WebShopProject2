codeunit 50130 SendEmail
{
    procedure sendMail(message: Text)
    var
        SmtpMailSetup: Record "SMTP Mail Setup";
        Mail: Codeunit "SMTP Mail";
        Recipients: List of [Text];
        Subject: Text;
        Body: Text;

    begin
        if not SmtpMailSetup.Get() then
            exit;
        Recipients.Add('ExampleEmail@Example.com');
        Subject := 'Test';
        Body := message;
        Mail.CreateMessage('Business Central', SmtpMailSetup."User ID", Recipients, Subject, Body, true);
        if not Mail.Send() then
            Message(Mail.GetLastSendMailErrorText());
    end;

    trigger OnRun()
    begin
    end;
}

codeunit 50132 FailSkip
{
    trigger OnRun()
    begin
        Message('Task');
    end;
    
    var
        myInt: Integer;
}


