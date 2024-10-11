component {
    property name="projects" inject="projects@localci";
    
    /**
     * Undocumented function
     *
     * @projectCode.optionsUDF projectOptions
     */
    function run(required string projectCode, required string scriptName){
        var projectData = projects.projects(projectCode);
        var currentFolder = getcwd();

        if(projectData.keyExists("scripts") && projectData.scripts.keyExists(scriptName)){
            projectData.scripts[scriptName].each((item)=>{
                command(item).run();
            })
        } else {
            print.line("There is not script named #scriptName# in the #projectCode# project");
        }
        command("cd #currentFolder#").run();
    }

    function projectOptions (){
        return projects.projects().keyArray();
    }
}