# DevFrontend Video Compressor

Compressão inteligente de vídeos para Windows utilizando FFmpeg com interface interativa. Reduza o tamanho dos seus vídeos em até 80% mantendo excelente qualidade para WhatsApp, Instagram, YouTube, armazenamento e backup.

---

## Visão Geral

O DevFrontend Video Compressor foi criado para simplificar a compressão de vídeos em ambientes Windows.

A ferramenta utiliza o poder do FFmpeg para processar arquivos de vídeo com alta eficiência, permitindo reduzir significativamente o tamanho dos arquivos sem comprometer a qualidade visual.

Ideal para criadores de conteúdo, profissionais de marketing, desenvolvedores, editores de vídeo, empresas e usuários que precisam economizar espaço em disco ou compartilhar vídeos com mais facilidade.

---

## Principais Benefícios

- Redução de até 80% no tamanho dos vídeos
- Compressão utilizando H.264 e H.265 (HEVC)
- Compatível com Windows 10 e Windows 11
- Interface simples através de Batch Script
- Processamento rápido e automatizado
- Processamento individual ou em lote
- Ideal para armazenamento e backup
- Compatível com WhatsApp, Instagram, TikTok e YouTube
- Não requer conhecimentos avançados

---

## Casos de Uso

### Redes Sociais

- Instagram Reels
- Instagram Feed
- Stories
- TikTok
- Facebook
- LinkedIn

### Mensageiros

- WhatsApp
- Telegram
- Discord

### Armazenamento

- SSD
- HD
- NAS
- OneDrive
- Google Drive
- Dropbox

### Ambientes Corporativos

- Compartilhamento de arquivos
- Backup de vídeos
- Arquivamento digital
- Documentação audiovisual

---

## Comparativo

| Original | Compactado |
|-----------|-----------|
| 500 MB | 120 MB |
| 1 GB | 250 MB |
| 2 GB | 450 MB |
| 5 GB | 1,2 GB |

Os resultados podem variar conforme resolução, bitrate, codec original e conteúdo do vídeo.

---

## Requisitos

### Sistema Operacional

- Windows 10
- Windows 11

### Dependências

FFmpeg

Instalação:

```cmd
winget install Gyan.FFmpeg
```

Verificação:

```cmd
ffmpeg -version
```

---

## Instalação

Clone o repositório:

```bash
git clone https://github.com/SEU-USUARIO/devfrontend-video-compressor.git
```

Acesse a pasta:

```bash
cd devfrontend-video-compressor
```

Execute:

```cmd
DevFrontend-Video-Compressor.bat
```

---

## Como Utilizar

### Passo 1

Instale o FFmpeg:

```cmd
winget install Gyan.FFmpeg
```

### Passo 2

Execute:

```cmd
DevFrontend-Video-Compressor.bat
```

### Passo 3

Escolha um dos modos disponíveis:

```text
[1] Alta Qualidade

[2] Balanceado

[3] Alta Compressão

[4] WhatsApp

[5] Instagram

[6] Processar em Lote
```

### Passo 4

Arraste o vídeo para a janela do Prompt de Comando.

### Passo 5

Pressione ENTER.

### Passo 6

Aguarde o processamento.

### Passo 7

O vídeo compactado será salvo automaticamente na mesma pasta do arquivo original.

---

## Modos de Compressão

### Alta Qualidade

Indicado para:

- YouTube
- Arquivamento
- Conteúdo profissional

Prioriza qualidade visual.

---

### Balanceado

Indicado para:

- Uso geral
- Compartilhamento
- Armazenamento

Equilíbrio entre qualidade e tamanho.

---

### Alta Compressão

Indicado para:

- Economia máxima de espaço
- Compartilhamento rápido
- Uploads limitados

Prioriza tamanho reduzido.

---

### WhatsApp

Perfil otimizado para compartilhamento via WhatsApp.

---

### Instagram

Perfil otimizado para Reels, Stories e Feed.

---

### Processamento em Lote

Compacta automaticamente todos os arquivos de vídeo encontrados na pasta.

Ideal para grandes volumes de conteúdo.

---

## Tecnologias Utilizadas

- Windows Batch Script
- FFmpeg
- H.264
- H.265 (HEVC)
- CMD

---

## Estrutura do Projeto

```text
devfrontend-video-compressor/
│
├── DevFrontend-Video-Compressor.bat
├── README.md
├── LICENSE
│
└── assets/
    ├── capa.png
    ├── carousel-01.png
    ├── carousel-02.png
    ├── carousel-03.png
    ├── carousel-04.png
    ├── carousel-05.png
    ├── carousel-06.png
    ├── carousel-07.png
    ├── carousel-08.png
    └── carousel-09.png
```

---

## Roadmap

### Versão Atual

- Compressão H.264
- Compressão H.265
- Processamento em lote
- Perfis pré-configurados
- Compatibilidade com Windows

### Próximas Versões

- Interface gráfica moderna
- Compressão por GPU NVIDIA
- Compressão por GPU AMD
- Compressão por Intel Quick Sync
- Relatórios de processamento
- Histórico de compressões
- Perfis personalizados
- Atualizações automáticas
- Integração com armazenamento em nuvem
- Licenciamento por assinatura

---

## Licenciamento

Este software é propriedade da DevFrontend.

Todos os direitos reservados.

A utilização, distribuição, modificação, comercialização ou redistribuição deste software sem autorização expressa do autor é proibida.

---

## Versão Comercial

Uma versão profissional está em desenvolvimento com recursos avançados para usuários e empresas que necessitam de maior produtividade e automação.

Recursos planejados:

- Interface gráfica premium
- Compressão acelerada por GPU
- Processamento avançado em lote
- Estatísticas detalhadas
- Gerenciamento de perfis
- Atualizações automáticas
- Suporte prioritário
- Recursos exclusivos para assinantes

---

## Suporte

Em breve serão disponibilizados canais oficiais de suporte e documentação.

---

## Desenvolvido por

DevFrontend

Software Engineer

Transformando ideias em soluções tecnológicas.

---

© DevFrontend. Todos os direitos reservados.