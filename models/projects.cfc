component {
    function projects( string key="" ){
        var projs={ 
            "boxlangfeatureaudit" :{
                "vars":{
                    "rootFolder": "C:\sites\published\CommandBoxModules\commandbox-boxlangfeatureaudit"
                }
            },
            "boxLangDocs" :{
                "vars" :{
                    "rootFolder" : "C:\sites\DocRepo\boxlang-docs"
                }
            },
            "boxtoksAPI" :{
                "vars" : {
                    "rootFolder" :"C:\sites\published\boxTok\boxTokSite",
                    "serverName" :"boxTokSite",
                    "url":"http://boxtokmanagement.local/"
                },
                "scripts":{
                    
                }
            },
            "boxtoks_react": {
                "vars":{
                    "rootFolder":"C:\sites\published\boxTok\boxtok_react"
                }
            },
            "cbChecklists_react": {
                "vars":{
                    "rootFolder":"C:\sites\published\checklist\react_checklist"
                },
                "scripts":{
                    "publish":[
                        "echo 'Building and deploying cbChecklist React",
                        "cd C:\sites\published\checklist\react_checklist",
                        "!yarn build",
                        "rm C:\sites\published\checklist\checklist\cbchecklist\views\index\static --recurse",
                        "mkdir C:\sites\published\checklist\checklist\cbchecklist\views\index\static\",
                        "mkdir C:\sites\published\checklist\checklist\cbchecklist\views\index\static\js",
                        "cp C:\sites\published\checklist\react_checklist\cbChecklist\views\index\static\js\*.* C:\sites\published\checklist\checklist\cbchecklist\views\index\static\js",
                        "echo 'React build complete' "
                    ]
                }
            },
            "cbChecklists_api": {
                "vars":{
                    "rootFolder":"C:\sites\published\checklist\checklist\cbchecklist"
                },
                "scripts":{
                    "publish":[
                        "echo 'Building and deploying cbChecklist API Module",
                        "cd C:\sites\published\checklist\checklist\cbchecklist",
                        "bump --patch",
                        "publish",
                        "echo 'Done!'"
                    ]
                }
            },
            "cbDashboard": {
                "vars":{
                    "rootFolder":"C:\sites\published\cbDashboard\cbDashboard"
                },
                "scripts":{
                    "publish":[
                        "echo 'Building and deploying cbDashboard",
                        "cd C:\sites\published\cbDashboard\cbDashboard",
                        "bump --patch",
                        "publish"
                    ]
                }
            },
            "compTesting": {
                "vars":{
                    "rootFolder":"C:\sites\testsites\comprehensive",
                    "serverName":"comprehensive"
                }
            },
            "compDevelopment": {
                "vars":{
                    "rootFolder":"C:\sites\testsites\compdevelopment",
                    "serverName":"compdevelopment"
                }
            },
            "conductor":{
                "vars":{
                    "rootFolder":"C:\sites\published\contentConductor"
                }
            },
            "cneAPI" : {
                "vars" : {
                    "rootFolder": "C:\sites\cne\CNEDFDemo\api\reassemble2023_08_25"
                }
            },
            "myCEBinder" :{
                "vars" :{
                    "rootFolder" : "C:\sites\cne\CNEDFDemo\cne_app\testCNEFront"
                }
            },
            "cneApplication" :{
                "vars" :{
                    "rootFolder" :"C:\sites\published\CNE\CNEAssessment\cne_application"
                }
            },
            "cneDashboard" :{
                "vars":{
                    "rootFolder" : "C:\sites\published\CNE\masterCodeBaseApp"
                }
            },
            "cneReviewer" :{
                "vars" :{
                    "rootFolder" :"C:\sites\published\CNE\CNEAssessment\cne_reviewer"
                }
            },
            "cne_assessment" :{
                "vars":{
                    "rootFolder" : "C:\sites\published\CNE\api\cne_assessment\cne_assessment"
                },
                "scripts":{
                    "publish":[
                        "echo 'Buiding cne_assessment'",
                        "cd C:\sites\published\CNE\api\cne_assessment\cne_assessment",
                        "bump --patch",
                        "publish"
                    ]
                }
            },
            "cneCredentialCheck" :{
                "vars" :{
                    "rootFolder" :"C:\sites\published\CNE\cne_credentialCheck\cne_credentialCheck"
                }
            },
            
            "cne_credentials" :{
                "vars":{
                    "rootFolder" : "C:\sites\published\CNE\api\cne_credentials\cne_credentials"
                },
                "scripts":{
                    "publish":[
                        "echo 'Buiding cne_credentials'",
                        "cd C:\sites\published\CNE\api\cne_credentials\cne_credentials",
                        "bump --patch",
                        "publish"
                    ]
                }
            },
            "cneCrossRef" :{
                "vars" :{
                    "rootFolder" :"C:\sites\published\CNE\api\cne_crossref\cne_crossref"
                }
            },
            "cne_organizations" :{
                "vars" :{
                    "rootFolder" :"C:\sites\published\CNE\api\cne_organizations\cne_organizations"
                }
            },
            "cneWix" :{
                "vars" :{
                    "rootFolder" :"C:\sites\published\CNE\api\cne_wix\cne_wix"
                }
            },
            "ecosystemTesting" :{
                "vars" :{
                    "rootFolder": "C:\sites\published\ecosystemTesting\ecosystem"
                }
            },
            "finance_api" :{
                "vars" :{
                    "rootFolder": "C:\sites\published\finance\finance_api_coldbox\kimFinance"
                }
            },
            "finance_react" :{
                "vars" :{
                    "rootFolder": "C:\sites\published\finance\reactApp\finance"
                }
            },

            "letterDrop" :{
                "vars":{
                    "rootFolder":"C:\sites\published\CommandBoxModules\commandbox-letterdrop\commandbox-letterdrop"
                }
            },
            "localci" :{
                "vars":{
                    "rootFolder":"C:\sites\published\CommandBoxModules\dclocalCI",
                },
            },
            "kim_base_react" :{
                "vars":{
                    "rootFolder" :{

                    }
                }
            },
            "npcc" :{
                "vars" :{
                    "rootFolder" : "C:\sites\published\CNE\api\npcc\npcc"
                },
                "scripts":{
                    "publish":[
                        "echo 'Buiding npcc'",
                        "cd C:\sites\published\CNE\api\npcc\npcc",
                        "bump --patch",
                        "publish"
                    ]
                }
            },
            "schemaCompare" : {
                "vars" :{
                    "rootFolder" : "C:\sites\published\CommandBoxModules\schemaCompare\schemaCompare"
                },
                "scripts":{
                    "publish" : [
                        "cd C:\sites\published\CommandBoxModules\schemaCompare\schemaCompare",
                        "bump --patch",
                        "publish"
                    ]
                }
            },
            "s3Sign" :{
                "vars":{
                    "rootFolder":"C:\sites\published\s3Sign\s3sign"
                }
            },
            "siteModel_api_unified":{
                "vars":{
                    "rootFolder": "C:\sites\published\siteModeller\siteModel_unified\sitemodel"
                },
                "scripts":{
                    "publish":[
                        "cd C:\sites\published\siteModeller\siteModel_unified\sitemodel",
                        "bump --patch",
                        "publish"
                    ]
                }
            },
            "sitemodel_introspection_coldbox" : {
                "vars":{
                    "rootFolder": "C:\sites\published\siteModeller\introspection_coldbox\introspection_coldbox"
                },
                "scripts":{
                    "publish":[
                        "cd C:\sites\published\siteModeller\introspection_coldbox\introspection_coldbox",
                        "bump --patch",
                        "publish"
                    ]
                }
            }
            ,
            "siteModel_react_unified":{
                "vars": {
                    "rootFolder": "C:\sites\published\siteModeller\react_siteModel_unified"
                },
                "scripts":{
                    "publish":[
                        "echo 'Buiding siteModel_react_unified'",
                        "cd C:\sites\published\siteModeller\react_siteModel_unified",
                        "!yarn build",
                        "echo 'copying to main sitemodeller_unified project'",
                        "rm C:\sites\published\siteModeller\siteModel_unified\sitemodel\views\index\static --recurse --force",
                        "mkdir C:\sites\published\siteModeller\siteModel_unified\sitemodel\views\index\static",
                        "mkdir C:\sites\published\siteModeller\siteModel_unified\sitemodel\views\index\static\js",
                        "cp C:\sites\published\siteModeller\react_siteModel_unified\build\static\js\*.* C:\sites\published\siteModeller\siteModel_unified\sitemodel\views\index\static\js",
                        "echo 'published siteModel_react_unified'"
                    ]
                }
            },
            "siteModel_react_testbox" :{
                "vars":{
                    "rootFolder":"C:\sites\published\siteModeller\react_testbox"
                }
            },
            "sitemodel_reactIntrospection":{
                "vars":{
                    "rootFolder":"C:\sites\published\siteModeller\react_introspection",
                },
                
                "scripts": { 
                    "publish" : [
                        "echo 'Buiding project'",
                        "cd C:\sites\published\siteModeller\react_introspection",
                        "!yarn build",
                        "echo 'copying to main introspection project'",
                        "rm C:\sites\published\siteModeller\introspection\sitemodel_introspection\views\index\static --recurse --force",
                        "mkdir C:\sites\published\siteModeller\introspection\sitemodel_introspection\views\index\static",
                        "cp C:\sites\published\siteModeller\react_introspection\siteModel_introspection\views\index\static\*.* C:\sites\published\siteModeller\introspection\sitemodel_introspection\views\index\static",
                        "echo 'publishing sitemode_introspection project'",
                        "cd C:\sites\published\siteModeller\introspection\sitemodel_introspection",
                        "bump --patch",
                        "publish"
                    ]
                }
            },
            "veritiAPI" :{
                "vars" :{
                    "rootFolder" : "C:\sites\Ortus\Veriti\api",
                    "serverName" : "api"
                }
            },
            "veritiConsole" :{
                "vars" :{
                    "rootFolder": "C:\sites\Ortus\Veriti\console"
                }
            },
            "veritiCCV1" :{
                "vars" :{
                    "rootFolder" :"C:\sites\Ortus\Veriti\controlCenterV1"
                }
            },
            "veritiCCV2" :{
                "vars" : {
                    "rootFolder" : "C:\sites\Ortus\Veriti\controlCenterV2"
                }
            },
            "veritiCBQ" : {
                "vars" :{
                    "rootFolder" :"C:\sites\Ortus\Veriti\CBQWorker"
                }
            },

            "veritiDashboard" :{
                "vars" :{
                    "rootFolder":"C:\sites\experiments\installFTDIDashboard",
                    "serverName":"installFTDIDashboard"
                }
            },
            "veritiIntegration" :{
                "vars":{
                    "rootFolder": "C:\sites\Ortus\Veriti\integration"
                }
            },
            "veritiReporting" :{
                "vars" : {
                    "rootFolder" :"C:\sites\Ortus\Veriti\reportServer"
                }
            },
            "veritiTools" :{
                "vars":{
                    "rootFolder": "C:\sites\published\Veriti\veriti_commandbox_tools"
                }
            },
            "veritiManagementCenter":{
                "vars":{
                    "rootFolder":"C:\sites\Ortus\Veriti\FTManagementCenter"
                }
            },
            "wixModule" :{
                "vars":{
                    "rootFolder":"C:\sites\published\wix\wix"
                },
                "scripts" :{
                    "publish":[
                        "echo 'Wix'",
                        "cd C:\sites\published\wix\wix",
                        "bump --patch",
                        "publish"
                    ]
                }
            }
        }

        return projs.keyExists(key) ? projs[key] : projs;
    }
}

