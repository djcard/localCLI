component {
    property name="projects" inject="projects@localci";

    /**
     * Undocumented function
     *
     * @projectCode.optionsUDF projectOptions
     */
    function run(required string projectCode){
        var currentFolder=getCWD();
        var projectData = projects.projects(projectCode);
        print.line("I should open #projectCode#");
        command("cd #projectData.vars.rootFolder#").run();
        command("!code .").run();
        
        command("cd #currentFolder#");
    }

    function projectOptions (){
        return projects.projects().keyArray();
    }
}