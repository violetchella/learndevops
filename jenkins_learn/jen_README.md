https://8085-port-arkr2kq6v4wop3b5.labs.kodekloud.com/
user-name: admin
password : Adm!n321
port: 8085

## Terms
- Jobs: Define specific tasks such as compileing code, running test, or deployment to an environment.

- Builds: Each execution of a job, with jenkins maintaining a history of troubleshooting.

- freestyle Project: defauly project type , offering flexible job defintions.

- Pipeline: chain jobs together to automate tasks from development to deployment.

- Stages: group related jobs into phases like Build, Test, Deploy for clarity.

- Nodes: Machines where Jenkins executes jobs , with a single controller or multiple agents. Jenkins slave.

- Plugings: Extend Jenkins functionality , integration with various tools and technologies.


### Pros:
- open source and free
- Highly customizable
- scriptable for advanced users using Groovy
- Pipelinecode as code.
- mature and feature rich like build execution, parallel testing, artifact management, troubleshooting.
- scaled horizontally  by adding nodes to increased workloads.

### Cons:
- complex 
- Maintanance
- performance  decreace with scaling
- security 
- hositng issues.


## Continous Integration and Continous deployment:

- code--> branch --> Feature branch {commit --> pull req--> review --> CI (unit testing --> dependency scan --> Build Arifact--> Code Scanning)--> Approve | merge }--> deployment --> production.

- connect vb
- in vscode terminal type 
    $ ssh violet@192.168.178.111
- open in browser 192.168.178.111:8080
- jenkins opened.
