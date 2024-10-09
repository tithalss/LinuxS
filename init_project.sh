# INICIALIZA UM NOVO PROJETO

if [ "$#" -ne 1 ]; then
  echo "Uso: $0 <nomeDoProjeto>"
  exit 1
fi

NOME_DO_PROJETO=$1

mkdir -p "$NOME_DO_PROJETO"

cd "$NOME_DO_PROJETO" || exit

echo "projeto $NOME_DO_PROJETO inicializado..." > README.md

git init
git add README.md
git commit -m "first commit - repositório configurado"
