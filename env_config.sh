# Configuração de ambiente

sudo cp project_init.sh /usr/local/bin/
sudo cp aczginit.sh /usr/local/bin/
sudo cp aczgfinish.sh /usr/local/bin/
sudo cp ci_pipeline.sh /usr/local/bin/
sudo cp log_pipeline.sh /usr/local/bin

touch ~/.bash_aliases

echo 'alias aczginitproj="bash /usr/local/bin/init_project.sh"' >> ~/.bash_aliases
echo 'alias aczginit="bash /usr/local/bin/init.sh"' >> ~/.bash_aliases
echo 'alias aczgfinish="bash /usr/local/bin/finish.sh"' >> ~/.bash_aliases
echo 'alias aczgpipeline="bash /usr/local/bin/pipeline.sh"' >> ~/.bash_aliases
echo "alias aczglog='cat \$HOME/aczg_tests.log'" >> ~/.bash_aliases # Rastreia o log e exibe no terminal

source ~/.bash_aliases

echo "Ambiente configurado."
