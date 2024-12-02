# Resumos para aulas de redes

![GIF de redes](https://media.tenor.com/8plhmX7JP9YAAAAC/study.gif)

## Resumos prova 3


## Enlace
# Camada de Enlace

## Questões de Projeto
- **Serviços de rede**: Definem os níveis de confiabilidade e entrega garantida.
- **Quadros**: Dividem os dados em unidades menores, otimizando a transmissão.
- **Controle de erros**: Detecção e correção de erros no nível de enlace.
- **Controle de fluxo**: Evita sobrecarregar o receptor.

## Serviços da Camada de Enlace
1. **Sem confirmação**:
   - Não verifica erros.
   - Utilizado em canais confiáveis, como LANs.
2. **Com confirmação**:
   - Confirma o recebimento de cada quadro.
   - Ideal para canais com erros moderados, como Wi-Fi.
3. **Orientado à conexão**:
   - Estabelece uma conexão antes da transmissão.
   - Garante entrega ordenada e sem duplicações.

## Técnicas de Enquadramento
- **Contagem de bytes**: Marca os limites do quadro pelo número de bytes.
- **Inserção de bytes/bits**: Usa padrões ou flags para delimitar quadros.
- **Violação do meio físico**: Sinais especiais indicam início e fim.

## Controle de Erros
- **Detecção de erros**:
  - **Paridade**, **Checksums**, **CRC**.
  - Retransmissão necessária em caso de erro.
- **Correção de erros**:
  - **Código de Hamming**, **Códigos convolucionais**.
  - Permite corrigir sem retransmissão.

## Protocolos de Enlace
- **Stop-and-Wait**: Simples, mas limitado em eficiência.
- **Go-Back-N**: Retransmite do ponto do erro.
- **Repetição Seletiva**: Retransmite apenas os quadros com erro.

## Exemplos
- **PPP** e **HDLC** são protocolos amplamente utilizados.

## Ethernet

## Subcamada MAC
- Controla o acesso ao meio físico.
- Baseada no sistema ALOHA, implementado como Ethernet.

## Estrutura do Quadro Ethernet
- **Preâmbulo**: Sincronização.
- **Endereço**: Identifica o destinatário.
- **Tipo**: Especifica o protocolo de camada superior.
- **Dados**: Entre 46 e 1500 bytes.
- **CRC**: Verifica erros.

## Evolução da Ethernet
1. **Fast Ethernet (802.3u)**:
   - Velocidade de 100 Mbps.
   - Topologias modernas como estrela.
2. **Gigabit Ethernet (802.3z)**:
   - Full duplex a 1 Gbps.
   - Suporte a fibra ótica.
3. **10 Gigabit Ethernet**:
   - Para redes de alta velocidade.
   - Suporte a cabos avançados.

## Benefícios
- Confiável, baixo custo e fácil manutenção.
- Base para LANs modernas.

## Física
# Camada Física

## Conceitos Fundamentais
- **Largura de banda**: Capacidade máxima do meio.
- **Taxa de transmissão**: Bits por segundo transmitidos.
- **Banda larga**: Transmissão de múltiplos sinais simultaneamente.

## Meios de Transmissão
1. **Cabo Coaxial**:
   - Estrutura concêntrica.
   - Usado em curtas e médias distâncias.
2. **Par Trançado**:
   - Fios trançados para reduzir interferências.
   - Categoria 5e, 6, 7 são mais comuns.
3. **Fibra Óptica**:
   - Alta capacidade e imunidade a interferências.
   - Usada em longas distâncias.

## Transmissão Sem Fio
- **Espectro Eletromagnético**:
  - Comunicações via rádio, luz e satélites.
- **Satélites**:
  - **Geoestacionários**: Cobertura global com alto atraso.
  - **Órbita média**: Usados para GPS.
  - **Órbita baixa**: Menor atraso, ideal para IoT.

## Exemplos de Aplicação
- Redes de alta velocidade, transmissão em larga escala.

## Lista
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

