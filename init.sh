# RAMIFICA EM UMA NOVA BRANCH COM NOME PADRONIZADO

if [ "$#" -ne 1 ]; then
  echo "Uso: $0 <nomeEntrega>"
  exit 1
fi

NOME_ENTREGA=$1

git status

git checkout -b feat-$NOME_ENTREGA

git branch -a
