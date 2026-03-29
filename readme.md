# Serviços de Gerenciamento de Servidores

Este repositório contém informações sobre os serviços utilizados para o gerenciamento e operação de nossos servidores. Cada serviço é projetado para melhorar a eficiência, segurança e monitoramento de nossos sistemas.

## 🚀 Serviços Utilizados

### 1. **Gerenciamento de Requisições: [Nginx](https://www.nginx.com/)**

Utilizamos o **Nginx** para gerenciar as requisições HTTPS e garantir a distribuição eficiente de tráfego entre nossos servidores. O Nginx também é utilizado como um proxy reverso, ajudando a balancear a carga e otimizar a performance.

### 2. **Autenticação e Segurança SSL: [Certbot](https://certbot.eff.org/)**

O **Certbot** é usado para a criação e renovação automática de certificados SSL. Isso garante que todos os acessos aos nossos serviços hospedados sejam seguros, protegendo a comunicação entre nossos servidores e os usuários.

### 3. **Gerenciamento de DNS e DHCP: [Pi-hole](https://pi-hole.net/)**

O **Pi-hole** serve como um gerenciador de DNS e também opera como um servidor DHCP para controle de dispositivos na rede. Além disso, ele bloqueia domínios indesejados, melhorando a segurança e a performance da rede.

### 4. **Monitoramento de Consumo de APIs: [Grafana](https://grafana.com/)** & [Prometheus](https://prometheus.io/)

Utilizamos **Grafana** e **Prometheus** para monitoramento e verificação do consumo das APIs em operação em nossos servidores. Esses serviços nos fornecem uma visão detalhada do desempenho e do uso de nossos recursos, permitindo a análise de métricas em tempo real.

### 5. **Gerenciamento de Contêineres Docker: [Watchtower](https://github.com/containrrr/watchtower)**

Para o gerenciamento do Docker, utilizamos o **Watchtower**. Esse serviço monitora os contêineres em execução e verifica a disponibilidade de novas versões das imagens Docker, permitindo que possamos programar atualizações e manter nossos serviços sempre atualizados.

## 💡 Como Contribuir

Se você deseja sugerir melhorias, correções ou novos serviços para agregar, fique à vontade para abrir uma *issue* ou enviar um *pull request*. Estamos sempre dispostos a colaborar e melhorar nossos processos!

## 📞 Contato

Se você tiver dúvidas ou quiser saber mais, entre em contato comigo através do [email christian.nascimento.falcao@gmail.com ou Github christiannfalcao].
