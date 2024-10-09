# MINI PIPELINE Continuous Integration (CI)

if [ "$#" -ne 2 ]; then
  echo "Uso: $0 <periodicidade (e.g., '*/5 * * * *')> <pathDoProjeto>"
  exit 1
fi

PERIODICIDADE=$1
PATH=$2

LOG_FILE="$HOME/aczg_tests.log"
ALERT_CMD="notify-send"

# Define a Cron Job
( /usr/bin/crontab -l 2>/dev/null; echo "$PERIODICIDADE DISPLAY=:0 cd $PATH && ./gradlew test > $LOG_FILE && $ALERT_CMD 'Testes executados com sucesso!'" ) | /usr/bin/crontab -
