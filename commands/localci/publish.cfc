component {
    property name="projects" inject="projects@localci";
    
    /**
     * Undocumented function
     *
     * @projectCode.optionsUDF projectOptions
     */
    function run(required string projectCode){
        var projectData = projects.projects(projectCode);
        
        var currentFolder = getcwd();

        if(projectData.keyExists("scripts") && projectData.scripts.keyExists("publish")){

            projectData.scripts.publish.each((item)=>{
                command(item).run();
            })
        } else {
            print.line("There is a no publish script in the #projectCode# project");
        }
        command("cd #currentFolder#").run();
    }

    function projectOptions (){
        return projects.projects().keyArray();
    }
}