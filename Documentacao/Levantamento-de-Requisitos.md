# Especificação de Requisitos de Software

# 1. Introdução

O utilitário de Backup é um software de linha de comando projetado para permitir que os usuários façam backups de seus diretórios e arquivos importantes de forma fácil e eficiente. O objetivo deste documento é definir os requisitos funcionais e não funcionais para o desenvolvimento deste software. O utilitário deve ser confiável e eficiente, com backups incrementais, fácil de usar e entender, com mensagens claras e informativas para o usuário.

---

## Requisitos Funcionais

### RF01 - Interface do Usuário

__RF01.1__ - O utilitário deve permitir ao usuário selecionar diretórios e arquivos para backup.
  
__RF01.2__ - O utilitário deve permitir ao usuário definir a periodicidade do backup.
  
__RF01.3__ - O utilitário deve ser capaz de fazer backups completos e incrementais.
  
__RF01.4__ - O utilitário deve permitir ao usuário definir o nome e o local do arquivo de backup.
  
__RF01.5__ - O utilitário deve permitir ao usuário definir o nível de compressão do arquivo de backup.
  
__RF01.6__ - O utilitário deve permitir ao usuário visualizar um relatório de status do backup.
  
__RF01.7__ - O utilitário deve permitir que o usuário especifique um período de retenção para os backups, excluindo backups antigos.
  
### RF02 - Processamento de Dados
  
__RF02.1__ - O utilitário deve ser capaz de lidar com grandes quantidades de dados, sem comprometer a eficiência e confiabilidade.
  
### RF03 - Notificações
  
__RF03.1__ - O utilitário deve ser capaz de enviar notificações por e-mail para o usuário após a conclusão do backup.
  
## Requisitos Não-Funcionais
  
### RNF01 - Segurança
  
__RNF01.1__ - O utilitário deve ser seguro e proteger os dados do usuário com criptografia de dados em repouso e em trânsito.
  
### RNF02 - Interface do Usuário
  
__RNF02.1__ - O utilitário deve ser fácil de entender e usar, com mensagens claras e informativas para o usuário.
  
### RNF03 - Documentação
  
__RNF03.1__ - O utilitário deve ser bem documentado, com guias de instalação, configuração e uso.
  
### RNF04 - Processamento de Dados
  
__RNF04.1__ - O utilitário deve ser compatível com sistemas operacionais Windows, Mac e Linux.
  
### RNF05 - Interface do Sistema
  
__RNF05.1__ - O utilitário deve ser fácil de instalar e executar, sem a necessidade de configurações avançadas.
  
### RNF06 - Logs

__RNF06.1__ - O utilitário deve permitir que o usuário visualize logs do backup.
  
## Requisitos de interface
  
### RI01 - Interface de linha de comando:
  
__RI01.1F__ - O utilitário deve ser acessível por meio de uma interface de linha de comando simples e intuitiva, com comandos fáceis de lembrar e usar.
  
__RI01.1NF__- A sintaxe dos comandos deve ser clara e bem documentada, para que o usuário possa entender como usar o utilitário corretamente.
  
## RI02 - Interface de configuração:
  
__RI02.1F__ - O utilitário deve oferecer uma interface de configuração fácil de usar, que permita ao usuário definir os diretórios e arquivos a serem incluídos no backup, a periodicidade do backup, o nível de compressão, o período de retenção e outras opções relevantes.
  
__RI02.2F__ - Essa interface deve ser acessível por meio de um comando específico na linha de comando ou por meio de um arquivo de configuração.
  
## RI03 - Interface de visualização:
  
__RI03.1F__ - O utilitário deve permitir ao usuário visualizar um relatório de status do backup, que mostre informações sobre o progresso do backup, o tamanho do arquivo de backup, o tempo restante estimado e outros dados relevantes.
  
__RI03.2NF__ - Essa interface pode ser exibida na linha de comando ou por meio de um arquivo de log.
  
## RI04 - Interface de notificação:
  
__RI04.1F__ - O utilitário deve ser capaz de enviar notificações por e-mail para o usuário após a conclusão do backup.
  
__RI04.1NF__ - Essas notificações devem conter informações relevantes sobre o backup, como a data e hora da conclusão, o tamanho do arquivo de backup e o status geral do backup.
  
__RI04.2NF__ - O formato das notificações e as opções de configuração devem ser especificadas claramente na documentação do utilitário.
  
## Requisitos de Desempenho
  
__RD01F__ - O backup deve ser concluído em um tempo razoável, de acordo com a quantidade de dados selecionados.
  
__RD02F__ - O utilitário deve ser capaz de lidar com grandes quantidades de dados sem comprometer a eficiência e confiabilidade.
  
__RD03F__ - O tempo de resposta da interface do usuário deve ser rápido o suficiente para permitir uma interação fluida.
  
__RD04F__ - O tempo de espera para envio de notificações por e-mail após a conclusão do backup deve ser mínimo.
  
__RD05F__ - O tempo de espera para a visualização do relatório de status do backup deve ser mínimo.
  
## Requisitos de Segurança
  
__RS01F__ - O utilitário deve permitir autenticação segura de usuários;
  
__RS02F__ - O utilitário deve permitir a configuração de perfis de usuário com níveis de acesso diferenciados;
  
__RS03F__ - O utilitário deve permitir o gerenciamento de senhas para garantir a segurança do backup;
  
__RS04F__ - O utilitário deve criptografar dados em repouso e em trânsito para garantir a segurança dos dados do usuário;
  
__RS05F__ - O utilitário deve permitir a configuração de políticas de segurança para garantir a segurança do backup;
  
__RS06NF__ - O utilitário deve ser submetido a testes de segurança antes do lançamento;
  
__RS07NF__ - O utilitário deve seguir as melhores práticas de segurança para garantir a segurança dos dados do usuário.
  
## REquisitos de Testes
  
__RT01F__ - O utilitário deve ser testado para garantir que os arquivos selecionados para backup sejam corretamente incluídos no Arquivo de backup.
  
__RT02F__ - O utilitário deve ser testado para garantir que a periodicidade do backup esteja funcionando corretamente.
  
__RT03F__ - O utilitário deve ser testado para garantir que backups completos e incrementais estejam funcionando corretamente.
  
__RT04F__ - O utilitário deve ser testado para garantir que o nome e o local do arquivo de backup estejam sendo definidos corretamente.
  
__RT05F__ - O utilitário deve ser testado para garantir que o nível de compressão do arquivo de backup esteja funcionando corretamente.
  
__RT06F__ - O utilitário deve ser testado para garantir que as notificações por e-mail estejam funcionando corretamente.
  
__RT07F__ - O utilitário deve ser testado para garantir que o período de retenção para os backups esteja sendo definido corretamente.
  
__RT08N__F - O utilitário deve ser testado para garantir que a criptografia de dados em repouso e em trânsito esteja funcionando corretamente.
  
__RT09NF__ - O utilitário deve ser testado para garantir que a autenticação e autorização estejam funcionando corretamente.
  
__RT10NF__ - O utilitário deve ser testado para garantir que o desempenho esteja dentro dos limites especificados.
  
__RT11NF__ - O utilitário deve ser testado para garantir que as interfaces de usuário e do sistema estejam funcionando corretamente.
  
__RT12NF__ - O utilitário deve ser testado para garantir que o utilitário seja capaz de lidar com grandes quantidades de dados sem comprometer a eficiência e confiabilidade.
  
## Requisitos de Docuemntação:
  
__RD01F__ - O utilitário deve ter um manual do usuário que explique como usar todas as funcionalidades do software.
  
__RD02F__ - O utilitário deve ter um guia de instalação que descreva como instalar e configurar o software em diferentes sistemas operacionais.
  
__RD03F__ - O utilitário deve ter documentação técnica que forneça informações detalhadas sobre a arquitetura e o funcionamento interno do software.
  
__RD04F__ - O utilitário deve ter um conjunto completo de documentação que esteja disponível online e offline.
  
__RD05NF__ - A documentação deve estar atualizada e refletir a versão mais recente do software.
  
__RD06NF__ - A documentação deve ser escrita em um formato fácil de ler e entender, com exemplos práticos e ilustrações, se necessário.
  
__RD07NF__ - A documentação deve estar disponível em vários idiomas, de acordo com as necessidades dos usuários.



