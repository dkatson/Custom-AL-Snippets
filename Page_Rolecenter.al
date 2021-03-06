page 50108 "AppName Role Center"
{
    PageType = RoleCenter;
    Caption = 'AppName';

    layout
    {
        area(RoleCenter)
        {
            part(Headline; "Headline RC AppName")
            {
                ApplicationArea = Basic, Suite;
            }
            part(Activities; "AppName Activities")
            {
                ApplicationArea = Basic, Suite;
            }
            part("Help And Chart Wrapper"; "Help And Chart Wrapper")
            {
                ApplicationArea = Basic, Suite;
            }
            part("Report Inbox Part"; "Report Inbox Part")
            {
                ApplicationArea = Basic, Suite;
            }
            part("Power BI Report Spinner Part"; "Power BI Report Spinner Part")
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }

    actions
    {
        area(Creation)
        {
            action("AppName Document")
            {
                RunPageMode = Create;
                Caption = 'AppName Document';
                ToolTip = 'Add some tooltip here';
                Image = New;
                RunObject = page "Sales Quote";
                ApplicationArea = Basic, Suite;
            }
        }
        area(Processing)
        {
            group(New)
            {
                action("AppName Master Data")
                {
                    RunPageMode = Create;
                    Caption = 'AppName Master Data';
                    ToolTip = 'Register new master data';
                    RunObject = page "Customer Card";
                    Image = DataEntry;
                    ApplicationArea = Basic, Suite;
                }
            }
            group("AppName Some Processing Group")
            {
                action("AppName Some Process")
                {
                    Caption = 'AppName Some Process';
                    ToolTip = 'Some process description';
                    Image = Process;
                    RunObject = Codeunit "Update Currency Exchange Rates";
                    ApplicationArea = Basic, Suite;
                }
            }
            group("AppName Reports")
            {
                action("AppName Some Report")
                {
                    Caption = 'AppName Some Report';
                    ToolTip = 'Some report description';
                    Image = Report;
                    RunObject = report "Customer - Sales List";
                    ApplicationArea = Basic, Suite;
                }
            }
        }
        area(Reporting)
        {
            action("AppName Some Report In Report Area")
            {
                Caption = 'AppName Some Report';
                ToolTip = 'Some report description';
                Image = Report;
                RunObject = report "Customer - Top 10 List";
                Promoted = true;
                PromotedCategory = Report;
                PromotedIsBig = true;
                ApplicationArea = Basic, Suite;
            }

        }
        area(Embedding)
        {
            action("AppName Master Data List")
            {
                RunObject = page "Customer List";
                ApplicationArea = Basic, Suite;
            }

        }
        area(Sections)
        {
            group(Setup)
            {
                Caption = 'Setup';
                ToolTip = 'Overview and change system and application settings, and manage extensions and services';
                Image = Setup;

                action("AppName Setup")
                {
                    ToolTip = 'Setup AppName';
                    RunObject = Page "Sales & Receivables Setup";
                    ApplicationArea = Basic, Suite;

                }

                action("Assisted Setup")
                {
                    ToolTip = 'Set up core functionality such as sales tax, sending documents as email, and approval workflow by running through a few pages that guide you through the information.';
                    RunObject = Page "Assisted Setup";
                    ApplicationArea = Basic, Suite;
                }
                action("Manual Setup")
                {
                    ToolTip = 'Define your company policies for business departments and for general activities by filling setup windows manually.';
                    RunObject = Page "Business Setup";
                    ApplicationArea = Basic, Suite;
                }
                action("Service Connections")
                {
                    ToolTip = 'Enable and configure external services, such as exchange rate updates, Microsoft Social Engagement, and electronic bank integration.';
                    RunObject = Page "Service Connections";
                    ApplicationArea = Basic, Suite;
                }
            }
        }
    }

}