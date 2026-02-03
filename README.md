# 🏢 Infraestrutura de Rede e Serviços - Condomínio de Laboratórios CCAA/UFS

![Status](https://img.shields.io/badge/Status-Em_Produção_na_AWS-success?style=for-the-badge)
![Docker](https://img.shields.io/badge/Container-Docker-blue?style=for-the-badge&logo=docker)
![Server](https://img.shields.io/badge/Server-Nginx_Alpine-green?style=for-the-badge&logo=nginx)

**Projeto:** Implantação de Infraestrutura de Rede e Portal Web para Condomínio de Laboratórios Multiusuários.  
**Instituição:** Universidade Federal de Sergipe (UFS) - Centro de Ciências Agrárias Aplicadas.  
**Disciplina:** Laboratório de Redes de Computadores.

---

## 🏆 I - Mérito Técnico-Científico

Esta seção apresenta a validação prática da proposta no ambiente de nuvem (**AWS Academy**) e descreve a arquitetura técnica de cada laboratório integrante do condomínio.

### 🌐 Validação do Site (Deploy AWS)

O portal unificado do condomínio encontra-se implantado e acessível publicamente através de uma instância EC2, utilizando orquestração de containers Docker.

> **🔗 ACESSO AO PORTAL (LINK AWS):** > 👉 **[http://ec2-52-7-32-98.compute-1.amazonaws.com/](http://ec2-52-7-32-98.compute-1.amazonaws.com/)**

### 🔬 Descrição Técnica dos Laboratórios Integrados

Abaixo, detalha-se a função de cada laboratório na topologia de rede proposta e seu papel no ecossistema digital do condomínio.

| Grupo / Laboratório | Papel na Rede | Descrição Técnica da Solução |
| :--- | :--- | :--- |
| **CTP** <br>*(Líder/Host)* | **Web Server & Gateway** | **Nó Central.** Hospeda o container Docker (Nginx Alpine) atuando como Gateway de Aplicação. Centraliza o tráfego HTTP/HTTPS e distribui a interface visual para os visitantes. |
| **GEAGRI** <br>*(Eng. Agrícola)* | **IoT & Monitoramento** | **Cliente da VLAN 30 (IoT).** Laboratório responsável pela telemetria. No portal, integra-se via painéis de visualização de dados de sensores (umidade/temperatura) das estufas. |
| **ECOS** <br>*(Ecossistemas)* | **Big Data Storage** | **Cliente de Armazenamento.** Demanda alta largura de banda (Gigabit) para tráfego de imagens de satélite e mapas. Utiliza a rede para backup massivo no servidor central. |
| **GENAPLANT** <br>*(Genética)* | **Database Client** | **Segurança de Dados.** Requer persistência crítica e confidencialidade (Patentes). Conecta-se via **VLAN 20 (Pesquisa)**, isolada da rede de visitantes, garantindo integridade dos dados genéticos. |
| **GRAF** <br>*(Agroflorestal)* | **Extensão (Public)** | **Acesso Externo.** Focado na divulgação científica para comunidades rurais. Utiliza a infraestrutura para disponibilizar relatórios técnicos acessíveis via internet pública e móvel. |

---

## 📋 II - Detalhes da Infraestrutura

O projeto moderniza a infraestrutura tecnológica do CCAA/UFS, migrando de servidores físicos isolados para uma arquitetura de **Condomínio Digital**, garantindo segurança, economia e escalabilidade.

### 🛠️ Arquitetura Lógica e Stack Tecnológica
A solução foi desenhada priorizando tecnologias Open Source e alta disponibilidade:

* **Hospedeiro (Cloud):** Instância AWS EC2 (Ubuntu Server 24.04 LTS).
* **Containerização:** Docker Engine (Isolamento de serviços e portabilidade).
* **Servidor Web:** Nginx Alpine (Imagem leve de <10MB, otimizada para performance).
* **Segurança de Rede:**
    * **VLANs (IEEE 802.1Q):** Segmentação de tráfego (VLAN 30 IoT | VLAN 20 Pesquisa | VLAN 40 Visitantes).
    * **Firewall (Security Groups):** Regras de entrada restritas às portas 80, 443 e 22.

---

## 🚀 Como Validar (Roteiro de Teste)

Para a avaliação do projeto na turma do AWS, siga os passos abaixo:

1.  **Acesso ao Portal:**
    * Clique no link [http://ec2-52-7-32-98.compute-1.amazonaws.com/](http://ec2-52-7-32-98.compute-1.amazonaws.com/).
    * O navegador carregará a *Landing Page* unificada do Condomínio.
2.  **Verificação de Navegação (Overlay):**
    * Clique em qualquer "Card" dos grupos de pesquisa (ex: GEAGRI, CTP).
    * Observe que a área clicável cobre todo o cartão (UX otimizada), redirecionando para a seção específica ou site externo do grupo.
3.  **Verificação de Infraestrutura (Via Terminal/SSH):**
    * Ao acessar a instância via SSH, execute `sudo docker ps` para confirmar que o container `site-condominio` está ativo e mapeando a porta `0.0.0.0:80->80/tcp`.
