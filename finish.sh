# MESCLA AS ALTERAÇÕES E DELETA A BRANCH

if [ "$#" -ne 1 ]; then
  echo "Uso: $0 <nomeEntrega>"
  exit 1
fi

NOME_ENTREGA=$1

git checkout master

git merge feat-$NOME_ENTREGA

git branch -d feat-$NOME_ENTREGA

git push origin --delete feat-$NOME_ENTREGA
