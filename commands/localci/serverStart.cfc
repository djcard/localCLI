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
        if(projectData.vars.keyExists("serverName")){
            command("server restart #projectData.vars.serverName#").run();
        } else {
            print.line("The server name isn't set for the #projectCode# project.");
        }
    }

    function projectOptions (){
        return projects.projects().keyArray();
    }
}