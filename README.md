# Infraestrutura de Rede e Serviços - Condomínio de Laboratórios CCAA/UFS

**Projeto:** Implantação de Infraestrutura de Rede e Portal Web para Condomínio de Laboratórios Multiusuários.
**Edital/Disciplina:** Redes de Computadores / Projetos de TI.
**Status:** 🟢 Em Produção na AWS.

---

## 🏆 I - Mérito Técnico-Científico

Esta seção detalha a validação da proposta no ambiente de nuvem (AWS Academy) e a arquitetura técnica adotada para cada unidade do condomínio.

**🔗 Link para este Repositório (Proposta):** [INSIRA_AQUI_O_LINK_DO_SEU_GITHUB]

### 🌐 Validação do Site (Deploy AWS)
O portal unificado do condomínio foi implantado utilizando containers Docker em uma instância EC2. Abaixo, a relação de acesso e a função técnica de cada laboratório dentro da topologia proposta.

| Grupo / Laboratório | Descrição Técnica da Solução | IP de Acesso (AWS) |
| :--- | :--- | :--- |
| **CTP (Líder/Host)** | **Nó Central (Web Server).** Hospeda o container Docker (Nginx Alpine) na porta 80/443. Atua como Gateway de Aplicação para os demais grupos. | **[http://XX.XX.XX.XX](http://XX.XX.XX.XX)** <br> *(Substituir pelo IP Público da AWS)* |
| **GEAGRI** | **Cliente IoT/Monitoramento.** Laboratório integrado à VLAN 30 (IoT). No site, possui painel de visualização de dados de sensores (Engenharia Agrícola). | *Acessível via Portal Principal* |
| **ECOS** | **Cliente de Armazenamento.** Laboratório com demanda de Big Data (Imagens de Satélite). Integrado à rede Gigabit para transferência de arquivos pesados. | *Acessível via Portal Principal* |
| **GENAPLANT** | **Cliente de Banco de Dados.** Demanda acesso seguro e persistência de dados genéticos. Conectado via VLAN Segura (20) ao servidor central. | *Acessível via Portal Principal* |
| **GRAF** | **Extensão e Divulgação.** Focado em acesso externo (Visitantes). Utiliza a interface web para reportar atividades de campo no semiárido. | *Acessível via Portal Principal* |

> **Nota de Acesso AWS:** Certifique-se de que o *Security Group* da instância EC2 permite tráfego de entrada nas portas **80 (HTTP)** e **443 (HTTPS)** e **22 (SSH)**.

---

## 📋 II - Detalhes do Projeto

Este projeto visa modernizar e integrar a infraestrutura tecnológica de **05 Grupos de Pesquisa** da UFS. A solução centraliza o processamento, garante segurança (patentes/cultivares) e unifica a divulgação científica.

### 🛠️ Arquitetura e Tecnologias
A infraestrutura foi desenhada priorizando alta disponibilidade e baixo custo (Open Source).

* **Infraestrutura Lógica:**
    * **SO:** Ubuntu Server 24.04 LTS (Hospedeiro AWS).
    * **Containerização:** Docker (Isolamento de serviços).
    * **Servidor Web:** Nginx Alpine (Leve e Seguro).
    * **Segurança:** Certificado SSL Autoassinado (HTTPS) e VLANs (802.1Q).

* **Infraestrutura Física Simulada:**
    * **Topologia:** Estrela Estendida (Backbone Gigabit).
    * **Segmentação:** Redes separadas para IoT (VLAN 30), Pesquisa (VLAN 20) e Visitantes (VLAN 40).

---

## 🚀 Como Validar (Passo a Passo)

# Infraestrutura de Rede e Serviços - Condomínio de Laboratórios CCAA/UFS

**Projeto:** Implantação de Infraestrutura de Rede e Portal Web para Condomínio de Laboratórios Multiusuários.
**Edital/Disciplina:** Redes de Computadores / Projetos de TI.
**Status:** 🟢 Em Produção na AWS.

---

## 🏆 I - Mérito Técnico-Científico

Esta seção detalha a validação da proposta no ambiente de nuvem (AWS Academy) e a arquitetura técnica adotada para cada unidade do condomínio.

**🔗 Link para este Repositório (Proposta):** [INSIRA_AQUI_O_LINK_DO_SEU_GITHUB]

### 🌐 Validação do Site (Deploy AWS)
O portal unificado do condomínio foi implantado utilizando containers Docker em uma instância EC2. Abaixo, a relação de acesso e a função técnica de cada laboratório dentro da topologia proposta.

| Grupo / Laboratório | Descrição Técnica da Solução | IP de Acesso (AWS) |
| :--- | :--- | :--- |
| **CTP (Líder/Host)** | **Nó Central (Web Server).** Hospeda o container Docker (Nginx Alpine) na porta 80/443. Atua como Gateway de Aplicação para os demais grupos. | **[http://XX.XX.XX.XX](http://XX.XX.XX.XX)** <br> *(Substituir pelo IP Público da AWS)* |
| **GEAGRI** | **Cliente IoT/Monitoramento.** Laboratório integrado à VLAN 30 (IoT). No site, possui painel de visualização de dados de sensores (Engenharia Agrícola). | *Acessível via Portal Principal* |
| **ECOS** | **Cliente de Armazenamento.** Laboratório com demanda de Big Data (Imagens de Satélite). Integrado à rede Gigabit para transferência de arquivos pesados. | *Acessível via Portal Principal* |
| **GENAPLANT** | **Cliente de Banco de Dados.** Demanda acesso seguro e persistência de dados genéticos. Conectado via VLAN Segura (20) ao servidor central. | *Acessível via Portal Principal* |
| **GRAF** | **Extensão e Divulgação.** Focado em acesso externo (Visitantes). Utiliza a interface web para reportar atividades de campo no semiárido. | *Acessível via Portal Principal* |

> **Nota de Acesso AWS:** Certifique-se de que o *Security Group* da instância EC2 permite tráfego de entrada nas portas **80 (HTTP)** e **443 (HTTPS)** e **22 (SSH)**.

---

## 📋 II - Detalhes do Projeto

Este projeto visa modernizar e integrar a infraestrutura tecnológica de **05 Grupos de Pesquisa** da UFS. A solução centraliza o processamento, garante segurança (patentes/cultivares) e unifica a divulgação científica.

### 🛠️ Arquitetura e Tecnologias
A infraestrutura foi desenhada priorizando alta disponibilidade e baixo custo (Open Source).

* **Infraestrutura Lógica:**
    * **SO:** Ubuntu Server 24.04 LTS (Hospedeiro AWS).
    * **Containerização:** Docker (Isolamento de serviços).
    * **Servidor Web:** Nginx Alpine (Leve e Seguro).
    * **Segurança:** Certificado SSL Autoassinado (HTTPS) e VLANs (802.1Q).

* **Infraestrutura Física Simulada:**
    * **Topologia:** Estrela Estendida (Backbone Gigabit).
    * **Segmentação:** Redes separadas para IoT (VLAN 30), Pesquisa (VLAN 20) e Visitantes (VLAN 40).

---

## 🚀 Como Validar (Passo a Passo)

http://ec2-52-7-32-98.compute-1.amazonaws.com/
