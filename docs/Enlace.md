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
