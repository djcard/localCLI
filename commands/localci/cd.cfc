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
        command("cd #projectData.vars.rootFolder#").run();
    }

    function projectOptions (){
        return projects.projects().keyArray();
    }
}