# Cria labels, milestones e issues do projeto BacaniCoura no repositório pessoal.
# Requisitos: GitHub CLI (gh) instalado e autenticado (gh auth login).
# Uso: abra o PowerShell nesta pasta (ou em qualquer lugar) e rode: .\criar-issues.ps1

$ErrorActionPreference = "Stop"
$REPO = "messiasneto74/site-bacanicoura"

Write-Host "== Labels =="
gh label create "gestão" --color "0E8A16" --repo "$REPO" --force
gh label create "design" --color "D93F0B" --repo "$REPO" --force
gh label create "páginas" --color "1D76DB" --repo "$REPO" --force
gh label create "agente-ia" --color "5319E7" --repo "$REPO" --force
gh label create "banco-de-dados" --color "B60205" --repo "$REPO" --force
gh label create "agendamento" --color "FBCA04" --repo "$REPO" --force
gh label create "seo" --color "0075CA" --repo "$REPO" --force
gh label create "lgpd-cfm" --color "E99695" --repo "$REPO" --force
gh label create "infra" --color "6F7C8A" --repo "$REPO" --force
gh label create "mensalidade" --color "C2E0C6" --repo "$REPO" --force
gh label create "fora-do-escopo" --color "BFBFBF" --repo "$REPO" --force
gh label create "fase-2" --color "A2EEEF" --repo "$REPO" --force
gh label create "fase-3" --color "D4C5F9" --repo "$REPO" --force

Write-Host "== Milestones =="
gh api "repos/$REPO/milestones" -f title="Fase 1 — Site + Agente de IA" -f description="Entrega completa: site (~10 páginas), agente de IA de anamnese, agendamento, SEO local e conformidade (LGPD/CFM)." | Out-Null
gh api "repos/$REPO/milestones" -f title="Fase 2 — Relacionamento" -f description="Área do paciente, integração da ficha com o sistema da clínica e lembretes." | Out-Null
gh api "repos/$REPO/milestones" -f title="Fase 3 — Inteligência" -f description="Painel de origem dos pacientes, programas de acompanhamento e agente no WhatsApp." | Out-Null

Write-Host "== Issues =="
$body = @'
## Tarefas
- [ ] Agendar e realizar o briefing
- [ ] Levantar lista de serviços, diferenciais e público prioritário
- [ ] Definir quem é o médico responsável pela revisão do roteiro do agente
- [ ] Definir o responsável da clínica pelas aprovações (resposta em até 3 dias úteis)
'@
gh issue create --repo "$REPO" --title "[F1] Reunião de briefing com a clínica" --label "gestão" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Dados da equipe: foto, formação, CRM e RQE de cada profissional
- [ ] Fotos e vídeos da estrutura (ou contratação de fotógrafo à parte, por conta da clínica)
- [ ] Acesso à ferramenta de agenda da clínica
- [ ] Acesso ao Google Meu Negócio
'@
gh issue create --repo "$REPO" --title "[F1] Coletar dados e materiais da clínica" --label "gestão" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Definir identidade visual (cores, tipografia, componentes)
- [ ] Layout versão celular e computador
- [ ] Tema claro e escuro
- [ ] Enviar para aprovação da clínica (aprovação 1)
- [ ] Até 2 rodadas de ajustes no design
'@
gh issue create --repo "$REPO" --title "[F1] Design: identidade visual das páginas" --label "design" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Posicionamento da clínica
- [ ] Perfis de paciente
- [ ] Equipe
- [ ] Chamada (CTA) para o pré-atendimento com o agente
'@
gh issue create --repo "$REPO" --title "[F1] Página Home" --label "páginas" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Atleta profissional
- [ ] Amador de alto rendimento
- [ ] Executivo e longevidade
- [ ] Reabilitação e lesões
'@
gh issue create --repo "$REPO" --title "[F1] 4 páginas de perfil de paciente" --label "páginas" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Cada exame explicado: o que é, para que serve e como se preparar
'@
gh issue create --repo "$REPO" --title "[F1] Página de avaliações e serviços" --label "páginas" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Foto, formação, CRM e RQE de cada profissional
'@
gh issue create --repo "$REPO" --title "[F1] Página da equipe" --label "páginas" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Atendimento a clubes, assessorias de corrida e empresas

> Esta página fica de fora na opção enxuta (pode ser acrescentada depois).
'@
gh issue create --repo "$REPO" --title "[F1] Página Para equipes e assessorias" --label "páginas" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Estrutura para artigos e vídeos da equipe
- [ ] Obs.: a redação dos artigos e a produção de vídeos não estão incluídas
'@
gh issue create --repo "$REPO" --title "[F1] Estrutura de blog (conteúdo)" --label "páginas" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Contato, mapa e localização em Anápolis
'@
gh issue create --repo "$REPO" --title "[F1] Página de contato e localização" --label "páginas" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Montar a primeira versão do roteiro (perguntas e ordem da conversa)
- [ ] Revisão e aprovação do médico responsável (aprovação 2)
- [ ] Registrar as perguntas e regras aprovadas
'@
gh issue create --repo "$REPO" --title "[F1] Agente de IA: roteiro de anamnese revisado pelo médico" --label "agente-ia,gestão" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Prompt e fluxo da conversa a qualquer hora
- [ ] Interface de chat no site
- [ ] Integração com a API da Anthropic
- [ ] Tratamento de erros e mensagens de indisponibilidade
- [ ] Deixar claro ao paciente que ele conversa com uma IA
'@
gh issue create --repo "$REPO" --title "[F1] Agente de IA: conversa guiada de anamnese" --label "agente-ia" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Definir com o médico os sinais de alerta
- [ ] Destacar os sinais na ficha entregue ao médico
- [ ] Orientação ao paciente em caso de alerta
'@
gh issue create --repo "$REPO" --title "[F1] Agente de IA: triagem de sinais de alerta cardiovasculares" --label "agente-ia" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Ficha organizada para o médico, com sinais de alerta destacados
- [ ] Envio da ficha para a recepção por e-mail ou WhatsApp
- [ ] Testes de ponta a ponta
'@
gh issue create --repo "$REPO" --title "[F1] Ficha de pré-consulta e envio para a recepção" --label "agente-ia" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
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
'@
gh issue create --repo "$REPO" --title "[F1] Banco de dados da pré-consulta" --label "banco-de-dados,agente-ia,lgpd-cfm" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Integrar com a ferramenta de agenda da clínica
- [ ] WhatsApp como apoio ao agendamento
- [ ] Testes de marcação, remarcação e cancelamento

> Na opção enxuta o agendamento fica só pelo WhatsApp (integração pode ser acrescentada depois).
'@
gh issue create --repo "$REPO" --title "[F1] Agendamento online integrado" --label "agendamento" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Configurar/otimizar o Google Meu Negócio
- [ ] Otimizar para buscas como “medicina esportiva Anápolis”
- [ ] Títulos, descrições e dados estruturados das páginas
- [ ] Sitemap e indexação
'@
gh issue create --repo "$REPO" --title "[F1] SEO local e Google Meu Negócio" --label "seo" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Política de privacidade
- [ ] Termo de consentimento para a pré-consulta com IA
- [ ] Aviso de cookies, se houver
- [ ] Revisão do tratamento dos dados de saúde
'@
gh issue create --repo "$REPO" --title "[F1] LGPD: política de privacidade e termo de consentimento" --label "lgpd-cfm" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Revisar os textos do site conforme a Res. CFM 2.336/2023 (publicidade médica)
- [ ] Revisar o uso do agente conforme a Res. CFM 2.454/2026 (IA)
'@
gh issue create --repo "$REPO" --title "[F1] Conformidade CFM: resoluções 2.336/2023 e 2.454/2026" --label "lgpd-cfm" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Hospedagem com certificado de segurança (HTTPS)
- [ ] Domínio registrado em nome da clínica e pago por ela (cerca de R$ 40/ano)
- [ ] Configurar DNS
- [ ] Ambiente de produção e rotina de deploy
'@
gh issue create --repo "$REPO" --title "[F1] Hospedagem, HTTPS e domínio" --label "infra" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Contar pré-atendimentos por mês
- [ ] Alerta ao se aproximar do limite de 300
- [ ] Monitorar o custo de uso da API
'@
gh issue create --repo "$REPO" --title "[F1] Controle de uso da IA (limite de 300 pré-atendimentos/mês)" --label "agente-ia,infra" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Testes em celular e computador
- [ ] Até 2 rodadas de ajustes na versão final antes do lançamento
- [ ] Aprovação final da clínica
'@
gh issue create --repo "$REPO" --title "[F1] Testes e ajustes finais" --label "gestão" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Publicar o site
- [ ] Marca o início da mensalidade
- [ ] Meta: cerca de 6 semanas após a aprovação da proposta
'@
gh issue create --repo "$REPO" --title "[F1] Lançamento (site no ar)" --label "gestão" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Manutenção técnica e atualizações de segurança
- [ ] Até 2 horas por mês de ajustes: textos, fotos, equipe, serviços e perguntas do agente
- [ ] Suporte por WhatsApp em dias úteis
- [ ] Relatório mensal simples: acessos e pré-atendimentos realizados

> Tarefa recorrente, a partir do mês do lançamento.
'@
gh issue create --repo "$REPO" --title "[F1] Mensalidade: manutenção, suporte e relatório" --label "mensalidade" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Área do paciente com login (vai para a Fase 2)
- [ ] Integração com prontuário (vai para a Fase 2)
- [ ] Agente no WhatsApp (vai para a Fase 3)
- [ ] Produção de fotos e vídeos (por conta da clínica)
- [ ] Redação de artigos para o blog (por conta da clínica)

> Issue só de registro, para não perder de vista o que ficou de fora.
'@
gh issue create --repo "$REPO" --title "[F1] Registro: itens fora do escopo da Fase 1" --label "fora-do-escopo" --milestone "Fase 1 — Site + Agente de IA" --body "$body"

$body = @'
## Tarefas
- [ ] Cadastro e login seguro do paciente
- [ ] Tela de resultados de exames
- [ ] Tela com o plano do paciente
- [ ] Banco de dados e controle de acesso reforçados (dados sensíveis)
- [ ] Consentimento e LGPD para a área logada
'@
gh issue create --repo "$REPO" --title "[F2] Área do paciente (login, resultados e plano)" --label "fase-2,páginas,banco-de-dados" --milestone "Fase 2 — Relacionamento" --body "$body"

$body = @'
## Tarefas
- [ ] Levantar qual sistema/prontuário a clínica usa e se há API
- [ ] Enviar a ficha de pré-consulta direto para o sistema
- [ ] Tratamento de falhas e reenvio
'@
gh issue create --repo "$REPO" --title "[F2] Integração da ficha de pré-consulta com o sistema da clínica" --label "fase-2,agente-ia" --milestone "Fase 2 — Relacionamento" --body "$body"

$body = @'
## Tarefas
- [ ] Regras de quando lembrar cada paciente
- [ ] Envio por e-mail e/ou WhatsApp
- [ ] Opção de o paciente não receber lembretes
'@
gh issue create --repo "$REPO" --title "[F2] Lembretes de reavaliação" --label "fase-2" --milestone "Fase 2 — Relacionamento" --body "$body"

$body = @'
## Tarefas
- [ ] Lembretes antes de provas/competições dos atletas
- [ ] Orientações de preparo para o paciente
'@
gh issue create --repo "$REPO" --title "[F2] Lembretes pré-prova" --label "fase-2" --milestone "Fase 2 — Relacionamento" --body "$body"

$body = @'
## Tarefas
- [ ] Registrar de onde vem cada paciente (busca, indicação, redes etc.)
- [ ] Painel com visão por período
- [ ] Cuidados de LGPD nos dados coletados
'@
gh issue create --repo "$REPO" --title "[F3] Painel de origem dos pacientes" --label "fase-3" --milestone "Fase 3 — Inteligência" --body "$body"

$body = @'
## Tarefas
- [ ] Definir os programas (ex.: trimestral, semestral) com a clínica
- [ ] Acompanhamento e lembretes por período
- [ ] Visão do progresso do paciente
'@
gh issue create --repo "$REPO" --title "[F3] Programas de acompanhamento por período" --label "fase-3" --milestone "Fase 3 — Inteligência" --body "$body"

$body = @'
## Tarefas
- [ ] Levar a anamnese com IA para o WhatsApp
- [ ] Reaproveitar o roteiro aprovado e o banco de dados da pré-consulta
- [ ] Consentimento e conformidade (LGPD e CFM) no canal WhatsApp
'@
gh issue create --repo "$REPO" --title "[F3] Agente de pré-atendimento no WhatsApp" --label "fase-3,agente-ia" --milestone "Fase 3 — Inteligência" --body "$body"

Write-Host "Pronto: concluido."
