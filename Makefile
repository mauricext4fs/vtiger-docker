help:  ## Show this help message.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
configure-stable: ## Pull stable release and untar
	@-sudo rmdir vtigercrm
	docker run -t --rm -v${PWD}:/vtigercrmtmp alpine sh -c 'cd /vtigercrmtmp && wget "https://downloads.sourceforge.net/project/vtigercrm/vtiger%20CRM%207.1.0/Core%20Product/vtigercrm7.1.0.tar.gz?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fvtigercrm%2Ffiles%2Fvtiger%2520CRM%25207.1.0%2FCore%2520Product%2Fvtigercrm7.1.0.tar.gz%2Fdownload&ts=1555754790" -O vtigercrm.tgz && tar -zxvof vtigercrm.tgz'
	sudo chmod 777 -fR vtigercrm
	touch .configured.lock
configure-latest: ## Use the current dir for vtiger path
	@-sudo rm -fR vtigercrm
	ln -s . vtigercrm
	touch .configured.lock
clean: down ## Remove current vtigercrm installation
	@-rm .configured.lock
	-@sudo rm -fR vtigercrm
	-@sudo rm -fR varlibmysql
up: is-configured ## Run vtiger
	docker-compose up
down: ## Down Vtiger
	docker-compose down
ps: is-configured ## PS vtiger
	docker-compose ps
sh-prod: ## Connect to the prod host with SSH
	ssh vtiger@vtiger.prod
####### Down from here are sub-commands that aren't useful to call manually
is-configured: ## Check if vtigercrm is already configured
	@if [ ! -f $(PWD)/.configured.lock ];\
        then\
                echo " ";\
                echo " ";\
                echo "You are trying to run command that required a configured repo ";\
                echo "Please make configure-stable or configure-latest for vtigercrm developer  first!!";\
                echo " ";\
                exit 1;\
        fi


