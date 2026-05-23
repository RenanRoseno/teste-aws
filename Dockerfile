# 1. Imagem base oficial e estável
FROM ubuntu:22.04

# 2. Evita prompts interativos durante instalação de pacotes
ENV DEBIAN_FRONTEND=noninteractive

# 3. Instala ferramentas básicas úteis para dev/teste
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        wget \
        git \
        python3 \
        vim \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 4. Diretório de trabalho padrão
WORKDIR /workspace

# 5. Mantém o container ativo sem rodar nenhum app específico
CMD ["tail", "-f", "/dev/null"]
