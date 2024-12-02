# Resolução da Lista de Exercício 03

## 1. Condutor de sinais com fio de cobre e conectores BNC/RCA:
**Resposta**: c. Cabo Coaxial.

## 2. Campos do Quadro Ethernet
- **Preâmbulo**: Sincronização do transmissor e receptor.
- **Endereço**: Identifica o remetente e destinatário.
- **Tipo**: Define o protocolo da camada superior.
- **Dados**: Informações a serem transmitidas (46-1500 bytes).
- **CRC**: Verifica erros.

## 3. Influência da Camada de Enlace na Camada Física
- Define como o meio físico será usado para transmitir dados.
- Estabelece métodos para controle de acesso ao meio (e.g., MAC).
- Padroniza estruturas para garantir interoperabilidade.

## 4. Importância da Confirmação na Camada de Enlace
- Quadros são menores que pacotes, reduzindo o tempo de retransmissão.
- Permite uma recuperação de erros eficiente antes que cheguem à camada superior.

## 5. Algoritmo de Janelas Deslizantes
**Repetição Seletiva**:
- O transmissor e receptor mantêm janelas maiores que 1.
- Retransmite apenas os quadros com erro, otimizando o tráfego.
- ACKs e NAKs ajudam a gerenciar as confirmações.

## 6. Verdadeiro ou Falso
- (V) O tamanho do quadro é definido pelo hardware.
- (V) Flags delimitam quadros, como o padrão 01111110.
- (F) Violação de meio físico usa 10V para início e -10V para fim.
- (V) Inserção de bits insere/remover 0s após 5 1s consecutivos.

## 7. Caracterização de Satélites
- **Baixa órbita**: Menor atraso, usados para comunicação IoT.
- **Média órbita**: Suporte a GPS.
- **Geoestacionário**: Cobertura global, maior atraso.
