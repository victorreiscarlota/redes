CAMINHO_DOCS="./docs/"
CAMINHO_README="./README.md"

ARQUIVOS=("Enlace.md" "Fisica.md" "Lista.md")
TITULOS=("Enlace" "Física" "Lista")

HEAD="# Resumos para aulas de redes

![GIF de redes](https://media.tenor.com/8plhmX7JP9YAAAAC/study.gif)

## Resumos prova 3

"

echo "$HEAD" >$CAMINHO_README

for i in "${!ARQUIVOS[@]}"; do
    TITULO="${TITULOS[$i]}"
    ARQUIVO="${ARQUIVOS[$i]}"

    echo "## $TITULO" >>$CAMINHO_README

    cat "$CAMINHO_DOCS$ARQUIVO" >>$CAMINHO_README
    echo "" >>$CAMINHO_README
done

echo "README.md gerado com sucesso!"
