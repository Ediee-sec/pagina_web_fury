#!/bin/zsh

echo "Ligar ou Desligar: "
read -r option 

option="${option:l}"

if [ "$option" = "ligar" ]; then
    # Inicia o processo app_page_guild.py em segundo plano usando nohup
    nohup python /home/ubuntu/codes/python/pagina_web_fury/app_page_guild.py &
    echo "Processo app_page_guild.py iniciado."
elif [ "$option" = "desligar" ]; then
    # Busca o PID do processo app_page_guild.py em execução
    pid=$(ps aux | grep 'app_page_guild.py' | grep -v 'grep' | awk '{print $2}')
    
    # Verifica se o PID foi encontrado
    if [ -n "$option" ]; then
        # Encerra o processo com o PID encontrado
        kill $pid
        echo "Processo app_page_guild.py com PID $pid encerrado com sucesso."
    else
        echo "Nenhum processo app_page_guild.py em execução."
    fi
else
    echo "Uso: $0 [ligar|desligar]"
fi