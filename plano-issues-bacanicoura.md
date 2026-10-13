# Plano de issues — Site BacaniCoura

Repositório pessoal (não usar a organização systeme-dev-br). Três milestones e labels por área.


## Milestone: Fase 1 — Site + Agente de IA
*Entrega completa: site (~10 páginas), agente de IA de anamnese, agendamento, SEO local e conformidade (LGPD/CFM).*

### [F1] Reunião de briefing com a clínica
*Labels: gestão*

## Tarefas
- [ ] Agendar e realizar o briefing
- [ ] Levantar lista de serviços, diferenciais e público prioritário
- [ ] Definir quem é o médico responsável pela revisão do roteiro do agente
- [ ] Definir o responsável da clínica pelas aprovações (resposta em até 3 dias úteis)

### [F1] Coletar dados e materiais da clínica
*Labels: gestão*

## Tarefas
- [ ] Dados da equipe: foto, formação, CRM e RQE de cada profissional
- [ ] Fotos e vídeos da estrutura (ou contratação de fotógrafo à parte, por conta da clínica)
- [ ] Acesso à ferramenta de agenda da clínica
- [ ] Acesso ao Google Meu Negócio

### [F1] Design: identidade visual das páginas
*Labels: design*

## Tarefas
- [ ] Definir identidade visual (cores, tipografia, componentes)
- [ ] Layout versão celular e computador
- [ ] Tema claro e escuro
- [ ] Enviar para aprovação da clínica (aprovação 1)
- [ ] Até 2 rodadas de ajustes no design

### [F1] Página Home
*Labels: páginas*

## Tarefas
- [ ] Posicionamento da clínica
- [ ] Perfis de paciente
- [ ] Equipe
- [ ] Chamada (CTA) para o pré-atendimento com o agente

### [F1] 4 páginas de perfil de paciente
*Labels: páginas*

## Tarefas
- [ ] Atleta profissional
- [ ] Amador de alto rendimento
- [ ] Executivo e longevidade
- [ ] Reabilitação e lesões

### [F1] Página de avaliações e serviços
*Labels: páginas*

## Tarefas
- [ ] Cada exame explicado: o que é, para que serve e como se preparar

### [F1] Página da equipe
*Labels: páginas*

## Tarefas
- [ ] Foto, formação, CRM e RQE de cada profissional

### [F1] Página Para equipes e assessorias
*Labels: páginas*

## Tarefas
- [ ] Atendimento a clubes, assessorias de corrida e empresas

> Esta página fica de fora na opção enxuta (pode ser acrescentada depois).

### [F1] Estrutura de blog (conteúdo)
*Labels: páginas*

## Tarefas
- [ ] Estrutura para artigos e vídeos da equipe
- [ ] Obs.: a redação dos artigos e a produção de vídeos não estão incluídas

### [F1] Página de contato e localização
*Labels: páginas*

## Tarefas
- [ ] Contato, mapa e localização em Anápolis

### [F1] Agente de IA: roteiro de anamnese revisado pelo médico
*Labels: agente-ia, gestão*

## Tarefas
- [ ] Montar a primeira versão do roteiro (perguntas e ordem da conversa)
- [ ] Revisão e aprovação do médico responsável (aprovação 2)
- [ ] Registrar as perguntas e regras aprovadas

### [F1] Agente de IA: conversa guiada de anamnese
*Labels: agente-ia*

## Tarefas
- [ ] Prompt e fluxo da conversa a qualquer hora
- [ ] Interface de chat no site
- [ ] Integração com a API da Anthropic
- [ ] Tratamento de erros e mensagens de indisponibilidade
- [ ] Deixar claro ao paciente que ele conversa com uma IA

### [F1] Agente de IA: triagem de sinais de alerta cardiovasculares
*Labels: agente-ia*

## Tarefas
- [ ] Definir com o médico os sinais de alerta
- [ ] Destacar os sinais na ficha entregue ao médico
- [ ] Orientação ao paciente em caso de alerta

### [F1] Ficha de pré-consulta e envio para a recepção
*Labels: agente-ia*

## Tarefas
- [ ] Ficha organizada para o médico, com sinais de alerta destacados
- [ ] Envio da ficha para a recepção por e-mail ou WhatsApp
- [ ] Testes de ponta a ponta

### [F1] Banco de dados da pré-consulta
*Labels: banco-de-dados, agente-ia, lgpd-cfm*

## Tarefas
- [ ] Definir onde armazenar (ex.: Cloudflare D1, já que o site roda em Worker) e a modelagem: paciente, conversa, ficha, alertas, consentimento
- [ ] Armazenar as respostas da pré-consulta e a ficha gerada
- [ ] Criptografia em trânsito e em repouso
- [ ] Controle de acesso: só a clínica acessa os dados
- [ ] Política de retenção e exclusão (LGPD)
- [ ] Registrar o consentimento do paciente junto com a ficha
- [ ] Backup e recuperação
- [ ] Dados de saúde são dados pessoais sensíveis: revisar com atenção às regras da LGPD

> Esse item não aparece de forma explícita na proposta (está implícito no agente de IA e na hospedagem). Vale conferir se o custo de armazenamento cabe na mensalidade.

### [F1] Agendamento online integrado
*Labels: agendamento*

## Tarefas
- [ ] Integrar com a ferramenta de agenda da clínica
- [ ] WhatsApp como apoio ao agendamento
- [ ] Testes de marcação, remarcação e cancelamento

> Na opção enxuta o agendamento fica só pelo WhatsApp (integração pode ser acrescentada depois).

### [F1] SEO local e Google Meu Negócio
*Labels: seo*

## Tarefas
- [ ] Configurar/otimizar o Google Meu Negócio
- [ ] Otimizar para buscas como “medicina esportiva Anápolis”
- [ ] Títulos, descrições e dados estruturados das páginas
- [ ] Sitemap e indexação

### [F1] LGPD: política de privacidade e termo de consentimento
*Labels: lgpd-cfm*

## Tarefas
- [ ] Política de privacidade
- [ ] Termo de consentimento para a pré-consulta com IA
- [ ] Aviso de cookies, se houver
- [ ] Revisão do tratamento dos dados de saúde

### [F1] Conformidade CFM: resoluções 2.336/2023 e 2.454/2026
*Labels: lgpd-cfm*

## Tarefas
- [ ] Revisar os textos do site conforme a Res. CFM 2.336/2023 (publicidade médica)
- [ ] Revisar o uso do agente conforme a Res. CFM 2.454/2026 (IA)

### [F1] Hospedagem, HTTPS e domínio
*Labels: infra*

## Tarefas
- [ ] Hospedagem com certificado de segurança (HTTPS)
- [ ] Domínio registrado em nome da clínica e pago por ela (cerca de R$ 40/ano)
- [ ] Configurar DNS
- [ ] Ambiente de produção e rotina de deploy

### [F1] Controle de uso da IA (limite de 300 pré-atendimentos/mês)
*Labels: agente-ia, infra*

## Tarefas
- [ ] Contar pré-atendimentos por mês
- [ ] Alerta ao se aproximar do limite de 300
- [ ] Monitorar o custo de uso da API

### [F1] Testes e ajustes finais
*Labels: gestão*

## Tarefas
- [ ] Testes em celular e computador
- [ ] Até 2 rodadas de ajustes na versão final antes do lançamento
- [ ] Aprovação final da clínica

### [F1] Lançamento (site no ar)
*Labels: gestão*

## Tarefas
- [ ] Publicar o site
- [ ] Marca o início da mensalidade
- [ ] Meta: cerca de 6 semanas após a aprovação da proposta

### [F1] Mensalidade: manutenção, suporte e relatório
*Labels: mensalidade*

## Tarefas
- [ ] Manutenção técnica e atualizações de segurança
- [ ] Até 2 horas por mês de ajustes: textos, fotos, equipe, serviços e perguntas do agente
- [ ] Suporte por WhatsApp em dias úteis
- [ ] Relatório mensal simples: acessos e pré-atendimentos realizados

> Tarefa recorrente, a partir do mês do lançamento.

### [F1] Registro: itens fora do escopo da Fase 1
*Labels: fora-do-escopo*

## Tarefas
- [ ] Área do paciente com login (vai para a Fase 2)
- [ ] Integração com prontuário (vai para a Fase 2)
- [ ] Agente no WhatsApp (vai para a Fase 3)
- [ ] Produção de fotos e vídeos (por conta da clínica)
- [ ] Redação de artigos para o blog (por conta da clínica)

> Issue só de registro, para não perder de vista o que ficou de fora.


## Milestone: Fase 2 — Relacionamento
*Área do paciente, integração da ficha com o sistema da clínica e lembretes.*

### [F2] Área do paciente (login, resultados e plano)
*Labels: fase-2, páginas, banco-de-dados*

## Tarefas
- [ ] Cadastro e login seguro do paciente
- [ ] Tela de resultados de exames
- [ ] Tela com o plano do paciente
- [ ] Banco de dados e controle de acesso reforçados (dados sensíveis)
- [ ] Consentimento e LGPD para a área logada

### [F2] Integração da ficha de pré-consulta com o sistema da clínica
*Labels: fase-2, agente-ia*

## Tarefas
- [ ] Levantar qual sistema/prontuário a clínica usa e se há API
- [ ] Enviar a ficha de pré-consulta direto para o sistema
- [ ] Tratamento de falhas e reenvio

### [F2] Lembretes de reavaliação
*Labels: fase-2*

## Tarefas
- [ ] Regras de quando lembrar cada paciente
- [ ] Envio por e-mail e/ou WhatsApp
- [ ] Opção de o paciente não receber lembretes

### [F2] Lembretes pré-prova
*Labels: fase-2*

## Tarefas
- [ ] Lembretes antes de provas/competições dos atletas
- [ ] Orientações de preparo para o paciente


## Milestone: Fase 3 — Inteligência
*Painel de origem dos pacientes, programas de acompanhamento e agente no WhatsApp.*

### [F3] Painel de origem dos pacientes
*Labels: fase-3*

## Tarefas
- [ ] Registrar de onde vem cada paciente (busca, indicação, redes etc.)
- [ ] Painel com visão por período
- [ ] Cuidados de LGPD nos dados coletados

### [F3] Programas de acompanhamento por período
*Labels: fase-3*

## Tarefas
- [ ] Definir os programas (ex.: trimestral, semestral) com a clínica
- [ ] Acompanhamento e lembretes por período
- [ ] Visão do progresso do paciente

### [F3] Agente de pré-atendimento no WhatsApp
*Labels: fase-3, agente-ia*

## Tarefas
- [ ] Levar a anamnese com IA para o WhatsApp
- [ ] Reaproveitar o roteiro aprovado e o banco de dados da pré-consulta
- [ ] Consentimento e conformidade (LGPD e CFM) no canal WhatsApp
