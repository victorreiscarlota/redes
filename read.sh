CAMINHO_DOCS="./docs/"
CAMINHO_README="./README.md"

ARQUIVOS=("Enlace.md" "Fisica.md" "Lista.md")
TITULOS=("Enlace" "Física" "Lista")

HEAD="# Resumos para aulas de redes

## Repositório feito para estudos da matéria referente à prova 3 de Redes de Computadores e para a resolução dos exercícios da lista 3.

![GIF de redes](https://media.tenor.com/8plhmX7JP9YAAAAC/study.gif)

### Resumos prova 3

"

SUMARIO="### Sumário

1. [Resumo de Enlace](#enlace)
2. [Resumo de camada Física](#física)
3. [Resolução dos exercícios da lista 3](#lista)

"

echo "$HEAD" >"$CAMINHO_README"

echo "$SUMARIO" >>"$CAMINHO_README"

for i in "${!ARQUIVOS[@]}"; do
    TITULO="${TITULOS[$i]}"
    ARQUIVO="${ARQUIVOS[$i]}"

    echo -e "\n## $TITULO\n" >>"$CAMINHO_README"

    if [[ -f "$CAMINHO_DOCS$ARQUIVO" ]]; then
        cat "$CAMINHO_DOCS$ARQUIVO" >>"$CAMINHO_README"
        echo "" >>"$CAMINHO_README"
    else
        echo "**Erro:** Arquivo '$CAMINHO_DOCS$ARQUIVO' não encontrado!" >>"$CAMINHO_README"
        echo "" >>"$CAMINHO_README"
    fi
done

echo "README.md gerado com sucesso!"
