# Local CI

Local CI is a tool to help organize and manage projects locally. With multiple projects, even with version control and other tools, it can take discipline and focus not to have multiple copies of the same folder, remember which React project goes with which API project and so on.

Local CI provides a way to manage some of the simple tasks such as switching folders from project to project, starting and stopping servers and having a central location to automate steps in a simple way using the same syntax and commands you use in CommandBox.

## Configuring use

To make this as simple as possible, it's recommended that you clone this repo rather than install the module.

1. Choose a folder which is easily accessible
2. Clone the repo at https://github.com/djcard/localCLI.git into this folder.
3. Open CommandBox and navigate to the folder which the cloned project in it.
4. Type `package link`. This will tell CommandBox to treat that folder as a module even if it isn't in the "normal" spot. 
5. Open models/projects.cfc in a code editor. In the projects() method, add the following JSON value. The rootFolder value is an absolute path to the folder which this project in it. 
6. var projs={ 
        "localci" :{
            "vars":{
                    "rootFolder":"path/to/project",
            },
        }
    }
7. Return to CommandBox and type `r` and enter to reload CommandBox with the new data we just changed. If CommandBox has a problem loading the module, make sure that the JSON you created is correct and reload it again.
8. At the CommandBox prompt type `localCI cd localci` and you should be taken to the root folder.
9. If you are using VSCode, type `localCI open localci`  and VS Code will open to that project. Note: That command works from anywhere, not just the root folder of the project.
10. Add more projects as you see fit.


### Other keys

#### scripts

The scripts node can house routing automations to make things easier. One in particular is the scripts node and the publish node.

```CommandBox cfml
        "myModule" :{
            "vars":{
                    "rootFolder":"path/to/project",
            },
            "scripts":{
                "publish":[
                    "cd path/to/project",
                    "bump --patch",
                    "publish"
                ]
            }
        }
```

The scripts node can have any number of scripts which can be run with `localci script projectCode scriptName`. Specifically publish can be run with `localci publish projectCode`. Tab completion when calling the module should present a list of project names. 
