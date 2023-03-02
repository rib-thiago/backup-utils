# Especificação de Requisitos de Software

# 1. Introdução

O utilitário de Backup é um software de linha de comando projetado para permitir que os usuários façam backups de seus diretórios e arquivos importantes de forma fácil e eficiente. O objetivo deste documento é definir os requisitos funcionais e não funcionais para o desenvolvimento deste software. O utilitário deve ser confiável e eficiente, com backups incrementais, fácil de usar e entender, com mensagens claras e informativas para o usuário.

---

## Requisitos Funcionais

### RF01 - Interface do Usuário

RF01.1 - O utilitário deve permitir ao usuário selecionar diretórios e arquivos para backup.
RF01.2 - O utilitário deve permitir ao usuário definir a periodicidade do backup.
RF01.3 - O utilitário deve ser capaz de fazer backups completos e incrementais. 
RF01.4 - O utilitário deve permitir ao usuário definir o nome e o local do arquivo de backup. 
RF01.5 - O utilitário deve permitir ao usuário definir o nível de compressão do arquivo de backup. 
RF01.6 - O utilitário deve permitir ao usuário visualizar um relatório de status do backup.
RF01.7 - O utilitário deve permitir que o usuário especifique um período de retenção para os backups, excluindo backups antigos.

### RF02 - Processamento de Dados

RF02.1 - O utilitário deve ser capaz de lidar com grandes quantidades de dados, sem comprometer a eficiência e confiabilidade. 

### RF03 - Notificações

RF03.1 - O utilitário deve ser capaz de enviar notificações por e-mail para o usuário após a conclusão do backup. _(F6)_

## Requisitos Não-Funcionais

### RNF01 - Segurança

RNF01.1 - O utilitário deve ser seguro e proteger os dados do usuário com criptografia de dados em repouso e em trânsito. _(NF2)_

### RNF02 - Interface do Usuário

RNF02.1 - O utilitário deve ser fácil de entender e usar, com mensagens claras e informativas para o usuário. _(NF3)_

### RNF03 - Documentação

RNF03.1 - O utilitário deve ser bem documentado, com guias de instalação, configuração e uso. _(NF4)_

### RNF04 - Processamento de Dados

RNF04.1 - O utilitário deve ser compatível com sistemas operacionais Windows, Mac e Linux. _(NF5)_

### RNF05 - Interface do Sistema

RNF05.1 - O utilitário deve ser fácil de instalar e executar, sem a necessidade de configurações avançadas. _(NF6)_

### RNF06 - Logs

RNF06.1 - O utilitário deve permitir que o usuário visualize logs do backup. _(F7)_

## Requisitos de interface

RI01F - Interface de linha de comando: 
    O utilitário deve ser acessível por meio de uma interface de linha de comando simples e intuitiva, com comandos fáceis de lembrar e usar. É importante que a sintaxe dos comandos seja clara e bem documentada, para que o usuário possa entender como usar o utilitário corretamente.

RI02F - Interface de configuração: 
    O utilitário deve oferecer uma interface de configuração fácil de usar, que permita ao usuário definir os diretórios e arquivos a serem incluídos no backup, a periodicidade do backup, o nível de compressão, o período de retenção e outras opções relevantes. Essa interface deve ser acessível por meio de um comando específico na linha de comando ou por meio de um arquivo de configuração.

RI03F - Interface de visualização: 
    O utilitário deve permitir ao usuário visualizar um relatório de status do backup, que mostre informações sobre o progresso do backup, o tamanho do arquivo de backup, o tempo restante estimado e outros dados relevantes. Essa interface pode ser exibida na linha de comando ou por meio de um arquivo de log.

RI04F - Interface de notificação: 
    O utilitário deve ser capaz de enviar notificações por e-mail para o usuário após a conclusão do backup. Essas notificações devem conter informações relevantes sobre o backup, como a data e hora da conclusão, o tamanho do arquivo de backup e o status geral do backup. O formato das notificações e as opções de configuração devem ser especificadas claramente na documentação do utilitário.

## Requisitos de Desempenho

RD01F - O backup deve ser concluído em um tempo razoável, de acordo com a quantidade de dados selecionados.
RD02F - O utilitário deve ser capaz de lidar com grandes quantidades de dados sem comprometer a eficiência e confiabilidade.
RD03F - O tempo de resposta da interface do usuário deve ser rápido o suficiente para permitir uma interação fluida.
RD04F - O tempo de espera para envio de notificações por e-mail após a conclusão do backup deve ser mínimo.
RD05F - O tempo de espera para a visualização do relatório de status do backup deve ser mínimo.

## Requisitos de Segurança

RS01F - O utilitário deve permitir autenticação segura de usuários;
RS02F - O utilitário deve permitir a configuração de perfis de usuário com níveis de acesso diferenciados;
RS03F - O utilitário deve permitir o gerenciamento de senhas para garantir a segurança do backup;
RS04F - O utilitário deve criptografar dados em repouso e em trânsito para garantir a segurança dos dados do usuário;
RS05F - O utilitário deve permitir a configuração de políticas de segurança para garantir a segurança do backup;
RS06NF - O utilitário deve ser submetido a testes de segurança antes do lançamento;
RS07NF - O utilitário deve seguir as melhores práticas de segurança para garantir a segurança dos dados do usuário.

---

## REquisitos de Testes

RT01F - O utilitário deve ser testado para garantir que os arquivos selecionados para backup sejam corretamente incluídos no Arquivo de backup. 
RT02F - O utilitário deve ser testado para garantir que a periodicidade do backup esteja funcionando corretamente. 
RT03F - O utilitário deve ser testado para garantir que backups completos e incrementais estejam funcionando corretamente. 
RT04F - O utilitário deve ser testado para garantir que o nome e o local do arquivo de backup estejam sendo definidos corretamente. 
RT05F - O utilitário deve ser testado para garantir que o nível de compressão do arquivo de backup esteja funcionando corretamente. 
RT06F - O utilitário deve ser testado para garantir que as notificações por e-mail estejam funcionando corretamente.
RT07F - O utilitário deve ser testado para garantir que o período de retenção para os backups esteja sendo definido corretamente. 
RT08NF - O utilitário deve ser testado para garantir que a criptografia de dados em repouso e em trânsito esteja funcionando corretamente. 
RT09NF - O utilitário deve ser testado para garantir que a autenticação e autorização estejam funcionando corretamente. 
RT10NF - O utilitário deve ser testado para garantir que o desempenho esteja dentro dos limites especificados. 
RT11NF - O utilitário deve ser testado para garantir que as interfaces de usuário e do sistema estejam funcionando corretamente. 
RT12NF - O utilitário deve ser testado para garantir que o utilitário seja capaz de lidar com grandes quantidades de dados sem comprometer a eficiência e confiabilidade.


## Requisitos de Docuemntação:

RD01F - O utilitário deve ter um manual do usuário que explique como usar todas as funcionalidades do software.
RD02F - O utilitário deve ter um guia de instalação que descreva como instalar e configurar o software em diferentes sistemas operacionais.
RD03F - O utilitário deve ter documentação técnica que forneça informações detalhadas sobre a arquitetura e o funcionamento interno do software.
RD04F - O utilitário deve ter um conjunto completo de documentação que esteja disponível online e offline.
RD05NF - A documentação deve estar atualizada e refletir a versão mais recente do software.
RD06NF - A documentação deve ser escrita em um formato fácil de ler e entender, com exemplos práticos e ilustrações, se necessário.
RD07NF - A documentação deve estar disponível em vários idiomas, de acordo com as necessidades dos usuários.
