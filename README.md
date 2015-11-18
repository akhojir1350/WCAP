#WCAP
  WCAP(Web-based Cognitive Assessment Package) is an application for giving online cognitive assessment tasks such as [Stroop](https://en.wikipedia.org/wiki/Stroop_effect), [Go/No-go](https://en.wikipedia.org/wiki/Go/no_go), [BART](http://www.cognitiveatlas.org/task/balloon_analogue_risk_task_%28bart%29), [Delayed Discounting](http://www.cognitiveatlas.org/task/balloon_analogue_risk_task_%28bart%29).
  
  This application is developed by Maryam Younesi and Ali Nosrati, students of [Universitiy of Tehran](http://ut.ac.ir), under        supervision of [Dr Hamed Ekhtiari](http://iricss.org/en/Pages/People/Hamed_Ekhtiari.aspx) (Director of [Neurocognitive Lab](http://incas.tums.ac.ir/find.php?item=1.220.127.fa), [Iranian National Center for Addiction Studies](http://incas.tums.ac.ir/index.php?slc_lang=en&sid=1)) . We will be pleased if you use this application and contribute to improve it. :)
  
  Users have two global level of access admin and default users. Admin can manage all system and entities.
  
  Clinics and Studies have a supervisor and some examiners.
  
  Admin of the system have ability to:
  
    Create and manage clinics and choose a supervisor for clinic.
    Add users to the list of examiners of a clinic.
    Create and manage studies.
    Specify details for each of cognitive tests in a study.
  
  Supervisor of a clinic have ability to:
  
    Add users to the list of examiners of her clinic.
    
    
  Supervisor of a study have ability to:   
  
    Specify details for each of cognitive tests in a study.
    
  Admin/Supervisor/Examiner have ability to:
  
    Register a patient in system and assign her to some of related clinics.
    Define abusing profile, treatment history, and basic demographic for each of related patients.
    

##Ruby and Rails Versions 
  Ruby:
  V2.1
  Rails:
  V4.1.7
##System Dependencies
###Development:
  Requrement: 
    [SQLite](https://www.sqlite.org/),
    [Rails Erd](http://rails-erd.rubyforge.org),
    [Annotate](https://github.com/ctran/annotate_models)
    
###Production:
  Requrement:
    [Postgresql](http://www.postgresql.org/)
    
###Documentation:
  Model:
    [Model Created using Rails Erd](doc/erd.pdf)
    
  Documentation:
    [HTML documentation](doc/app/index.html)
    
###Deployment instructions:
  Preferred Host:
    Ubuntu:
    
  MinimumRequirements:
  
    Ram => 1024MB
    CPU => 1 core minimum 2.4 GHz
  
  I used [this link](https://gorails.com/deploy/ubuntu/12.04) for deployment.  
  (You may have some problem with [Devise](https://github.com/plataformatec/devise#I18n) and [Capistrano](https://github.com/capistrano/capistrano)if you don't use this gems):
  
    gem 'capistrano', '~> 3.2.1'
    gem 'capistrano-secrets-yml', '~> 1.0.0'
    gem 'capistrano-bundler', '~> 1.1.2'
    gem 'capistrano-rails', '~> 1.1.1'
    gem 'capistrano-rvm', github: "capistrano/rvm" ## If are using rvm

    
