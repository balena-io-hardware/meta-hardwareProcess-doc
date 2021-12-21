Procedure GenerateOutputFiles();
Var
    ProjectFilePath   : String;
    WS            : IWorkspace;
    Prj           : IProject;
    Document      : IServerDocument;
Begin
    // Set the Project file path
    ProjectFilePath := 'C:\Users\anujd\balena\balenaFin-RPi-HAT\source\SideBoard\SideBoard.PrjPcb';

    // Reset all parameters
    ResetParameters;

    // Open the project
    AddStringParameter('ObjectKind','Project');
    AddStringParameter('FileName', ProjectFilePath);
    RunProcess('WorkspaceManager:OpenObject');
    ResetParameters;

    // Requirement: OutJob file name is Build.OutJob and is exists within the project
    Document := Client.OpenDocument('OUTPUTJOB', ExtractFilePath(ProjectFilePath) + 'Job_SideBoard.OutJob');
    If Document <> Nil Then
    Begin
        WS := GetWorkspace;
        If WS <> Nil Then
        Begin
            Prj := WS.DM_FocusedProject;
            If Prj <> Nil Then
            Begin
                // Compile the project
                Prj.DM_Compile;
                Client.ShowDocument(Document);

                // Run Output Job
                AddStringParameter('ObjectKind', 'OutputBatch');
                AddStringParameter('Action', 'Run');
                RunProcess('WorkSpaceManager:GenerateReport');
            End;
        End;
    End;

    // Close all objects
    AddStringParameter('ObjectKind','All');
    RunProcess('WorkspaceManager:CloseObject');
    ResetParameters;

    // Close Altium Designer
    TerminateWithExitCode(0);
End;



