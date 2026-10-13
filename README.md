# Site BacaniCoura

Site institucional da BacaniCoura, clínica de alta performance em Anápolis (GO), com um agente de IA de pré-atendimento (anamnese) e agendamento online integrado.

## Sobre o projeto

O site atende quatro públicos principais — atletas profissionais, amadores de alto rendimento, executivos e pacientes em reabilitação — e começa o atendimento antes mesmo da consulta, através de um agente de IA que conversa com o paciente, faz a anamnese e entrega ao médico uma ficha organizada, com sinais de alerta destacados.

## Status

Em desenvolvimento — Fase 1 (ver [Issues](../../issues) e [Milestones](../../milestones)).

O projeto está dividido em 3 fases:

- **Fase 1 — Site + Agente de IA:** site completo (~10 páginas), agente de IA de anamnese, banco de dados da pré-consulta, agendamento online, SEO local e conformidade (LGPD/CFM).
- **Fase 2 — Relacionamento:** área do paciente (resultados e plano), integração da ficha com o sistema da clínica, lembretes de reavaliação e pré-prova.
- **Fase 3 — Inteligência:** painel de origem dos pacientes, programas de acompanhamento por período, agente de pré-atendimento também no WhatsApp.

## Escopo da Fase 1

### Páginas
- Home
- 4 páginas de perfil de paciente (atleta profissional, amador de alto rendimento, executivo e longevidade, reabilitação e lesões)
- Avaliações e serviços
- Equipe
- Para equipes e assessorias
- Conteúdo (estrutura de blog)
- Contato e localização

### Funcionalidades
- Agente de IA de anamnese, com triagem de sinais de alerta cardiovasculares e envio da ficha para a recepção
- Banco de dados da pré-consulta (dados de saúde — tratamento sensível conforme LGPD)
- Agendamento online integrado à ferramenta de agenda da clínica, com WhatsApp como apoio
- Versão para celular e computador, com tema claro e escuro
- SEO local (Google Meu Negócio e buscas como "medicina esportiva Anápolis")
- Conformidade: LGPD e resoluções CFM 2.336/2023 (publicidade) e 2.454/2026 (IA)

### Fora do escopo desta fase
Área do paciente com login, integração com prontuário, agente no WhatsApp, produção de fotos e vídeos, redação de artigos do blog.

## Stack

- Hospedagem: Cloudflare Workers
- Agente de IA: API da Anthropic (Claude)
- Domínio: registrado em nome da clínica

## Links

- Contrato de prestação de serviços: [`contratos/contrato-prestacao-servicos-bacani-coura.md`](./contratos/contrato-prestacao-servicos-bacani-coura.md)
- Proposta comercial: [`contratos/Proposta_Comercial_BacaniCoura_R1400.pdf`](./contratos/Proposta_Comercial_BacaniCoura_R1400.pdf)
- Plano de issues: [`plano-issues-bacanicoura.md`](./plano-issues-bacanicoura.md)
