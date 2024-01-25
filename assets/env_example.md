NOTE: You cannot run this project without following steps, please be attention! 

1- create new folder inside <root>/assets calling it env. 
2- The final folder path must be <root>/assets/env/
3- inside the env folder create `env_base.env`
env_base.env => content is
// {
ENV = DEV  => replace dev with the desired branch e.g [DEV,PROD,BETA]
// }
4- create a corresponding file for each branch with this naming
env_beta.env,env_dev.env,env_prod.env
5- the content of each file will be
// {
ENVIROMENT_NAME = #####  => where #### must match the desired branch ,see point  3 
ex: ENVIROMENT_NAME = BETA
BASE_URL = $$$$ => where $$$$ must be app base url
ex: BASE_URL = https://example/api
GMP = @@@@ => where @@@@ must be Google map api key
// }
6- final folder structure will be
/env
-----env_base.env
-----env_beta.env
-----env_prod.env
-----env_dev.env 


