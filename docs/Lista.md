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

O Go-Back-N (GBN) é um protocolo de janelas deslizantes utilizado na camada de enlace para controle de fluxo e erros, garantindo que os quadros sejam entregues corretamente. Nesse protocolo, o transmissor mantém uma janela de envio com tamanho 𝑁, que limita o número de quadros que podem ser enviados sem confirmação do receptor (ACK). Os quadros são enviados sequencialmente, e, caso o transmissor não receba um ACK dentro de um tempo limite, ele retransmite todos os quadros a partir daquele que não foi confirmado, mesmo que outros tenham sido enviados corretamente. O receptor, por sua vez, apenas aceita quadros na sequência esperada e descarta os fora de ordem. Esse mecanismo simplifica o controle de erros, mas pode resultar em maior retransmissão quando ocorrem falhas.

## 6. Verdadeiro ou Falso
- (V) O tamanho do quadro é definido pelo hardware.
- (V) Flags delimitam quadros, como o padrão 01111110.
- (F) Violação de meio físico usa 10V para início e -10V para fim.
- (V) Inserção de bits insere/remover 0s após 5 1s consecutivos.

## 7. Caracterização de Satélites
- **Baixa órbita**: Menor atraso, usados para comunicação IoT.
- **Média órbita**: Suporte a GPS.
- **Geoestacionário**: Cobertura global, maior atraso.
