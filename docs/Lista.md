# Resolução da Lista de Exercício 03

## 1. Condutor de sinais com fio de cobre e conectores BNC/RCA

**Resposta**: c. Cabo Coaxial.

## 2. Campos do Quadro Ethernet

1. **Preamble (Préâmbulo)**:
   - **Tamanho**: 7 bytes (56 bits).
   - **Descrição**: Sequência alternada de 1s e 0s.
   - **Função**: Sincronizar o transmissor e o receptor, preparando-os para a recepção do quadro.

2. **SFD (Start Frame Delimiter)**:
   - **Tamanho**: 1 byte.
   - **Descrição**: Valor fixo `10101011`.
   - **Função**: Indica o início do quadro e marca o final do préâmbulo.

3. **Destination Address (Endereço de Destino)**:
   - **Tamanho**: 6 bytes.
   - **Descrição**: Endereço MAC do dispositivo de destino.
   - **Função**: Identifica para onde o quadro deve ser enviado.

4. **Source Address (Endereço de Origem)**:
   - **Tamanho**: 6 bytes.
   - **Descrição**: Endereço MAC do dispositivo que enviou o quadro.
   - **Função**: Identifica a origem da transmissão.

5. **Length/Type (Comprimento ou Tipo)**:
   - **Tamanho**: 2 bytes.
   - **Descrição**: Indica o tamanho dos dados (se menor que 1500) ou o tipo de protocolo na camada superior (ex.: IPv4 ou IPv6).

6. **Data and Padding (Dados e Preenchimento)**:
   - **Tamanho**: 46 a 1500 bytes.
   - **Descrição**: Contém a carga útil do quadro.
   - **Função**: Se os dados forem menores que 46 bytes, é usado preenchimento (padding) para alcançar o tamanho mínimo.

7. **CRC (Cyclic Redundancy Check)**:
   - **Tamanho**: 4 bytes.
   - **Descrição**: Código de verificação gerado pelo transmissor.
   - **Função**: Detecta erros no quadro durante a transmissão.

## 3. Influência da Camada de Enlace na Camada Física

A camada de enlace influencia diretamente as definições e padrões da camada física ao estabelecer regras e mecanismos que garantem a utilização eficiente e confiável do meio físico de comunicação. Enquanto a camada física trata da transmissão dos bits no meio (cabos, fibra óptica, ondas de rádio, etc.), a camada de enlace organiza esses bits em unidades estruturadas chamadas quadros, além de lidar com a detecção e correção de erros causados por ruídos ou interferências no meio físico.

Além disso, a camada de enlace define protocolos que dependem das características da camada física, como o controle de acesso ao meio (exemplo: CSMA/CD em redes Ethernet), adaptação às taxas de transmissão e compatibilidade com diferentes tipos de meios (cabo coaxial, par trançado, fibra óptica, etc.). Assim, a camada de enlace garante que as diferenças nos padrões e nas limitações da camada física não comprometam a comunicação confiável entre dispositivos na rede.

## 4. Importância da Confirmação na Camada de Enlace

A confirmação de quadros na camada de enlace é crucial porque essa camada opera diretamente na transmissão confiável de quadros entre dispositivos conectados fisicamente, garantindo a integridade dos dados no enlace de comunicação. Como os quadros encapsulam pacotes das camadas superiores, um erro ou perda de um quadro pode comprometer o pacote inteiro. Se a confirmação fosse tratada apenas nas camadas superiores, como na camada de transporte, haveria um aumento significativo na latência e no consumo de recursos, já que erros seriam detectados apenas após a transmissão de múltiplos quadros e reenvios de pacotes inteiros seriam necessários. Tratar a confirmação na camada de enlace permite detectar e corrigir erros no nível mais próximo ao meio físico, minimizando o impacto no desempenho geral e assegurando que os pacotes sejam entregues corretamente às camadas superiores.

## 5. Algoritmo de Janelas Deslizantes

O Go-Back-N (GBN) é um protocolo de janelas deslizantes utilizado na camada de enlace para controle de fluxo e erros, garantindo que os quadros sejam entregues corretamente. Nesse protocolo, o transmissor mantém uma janela de envio com tamanho 𝑁, que limita o número de quadros que podem ser enviados sem confirmação do receptor (ACK). Os quadros são enviados sequencialmente, e, caso o transmissor não receba um ACK dentro de um tempo limite, ele retransmite todos os quadros a partir daquele que não foi confirmado, mesmo que outros tenham sido enviados corretamente. O receptor, por sua vez, apenas aceita quadros na sequência esperada e descarta os fora de ordem. Esse mecanismo simplifica o controle de erros, mas pode resultar em maior retransmissão quando ocorrem falhas.

## 6. Verdadeiro ou Falso

- (V) O tamanho do quadro é definido pelo hardware.
- (V) Flags delimitam quadros, como o padrão 01111110.
- (F) Violação de meio físico usa 10V para início e -10V para fim.
- (V) Inserção de bits insere/remover 0s após 5 1s consecutivos.

## 7. Caracterização de Satélites

a. Satélite de Baixa Órbita
Satélites de baixa órbita operam entre 160 km e 2.000 km acima da superfície da Terra. Eles possuem órbitas rápidas, completando uma volta ao redor do planeta em cerca de 90 a 120 minutos. Esses satélites têm menor latência de comunicação devido à sua proximidade com a Terra, tornando-os ideais para serviços como internet via satélite de alta velocidade (exemplo: Starlink). No entanto, seu alcance de cobertura é limitado, o que exige constelações de satélites para cobertura global.

b. Satélite de Média Órbita
Satélites de média órbita estão localizados entre 2.000 km e 35.786 km de altitude. Eles oferecem um equilíbrio entre cobertura e latência, sendo comumente usados em sistemas de navegação, como o GPS, GLONASS e Galileo. Esses satélites têm períodos orbitais maiores que os de baixa órbita, cobrindo áreas mais amplas com menos unidades em comparação a uma constelação LEO, mas ainda possuem latência moderada em comparação aos geoestacionários.

c. Satélite Geoestacionário
Satélites geoestacionários operam a uma altitude fixa de 35.786 km acima do equador. Eles têm um período orbital igual ao de rotação da Terra, permitindo que permaneçam estacionários em relação a um ponto fixo no solo. Isso os torna ideais para comunicação contínua, como transmissão de televisão, telefonia e internet em áreas remotas. Contudo, a distância maior resulta em latências mais altas (aproximadamente 600 ms) e maior custo de construção e lançamento devido às exigências técnicas. A cobertura de um único satélite GEO pode abranger um terço do planeta.
