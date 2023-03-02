# Diagrama de Caso de Uso

__Cenário de caso de uso principal__:
O usuário deseja fazer um backup completo de todos os seus arquivos e diretórios importantes em um determinado local com nível de compressão máximo e com um período de retenção de 30 dias.

__Tigger Event__:  o usuário iniciando manualmente o backup.

__Caso de Sucesso__: 

- O usuário abre o utilitário de linha de comando para backups.
- O utilitário exibe a interface de configuração fácil de usar que permite ao usuário definir os diretórios e arquivos a serem incluídos no backup, a periodicidade do backup, o nível de compressão, o período de retenção e outras opções relevantes.
- O usuário seleciona os arquivos e diretórios importantes que deseja fazer backup.
- O usuário define a periodicidade do backup para uma vez por semana.
- O usuário define o nome e o local do arquivo de backup.
- O usuário define o nível de compressão do arquivo de backup para o máximo.
- O usuário define o período de retenção para 30 dias.
- O usuário inicia o backup.
- O utilitário de linha de comando faz o backup completo dos arquivos e diretórios selecionados em um arquivo de backup com o nome e local definidos pelo usuário.
- O utilitário exibe um relatório de status do backup com informações como a data e hora da conclusão, o tamanho do arquivo de backup e o status geral do backup.
- O utilitário envia uma notificação por e-mail para o usuário com informações relevantes sobre o backup, como a data e hora da conclusão, o tamanho do arquivo de backup e o status geral do backup.
- O usuário visualiza o log do backup para verificar se há algum problema.

__Casos de possíveis erros__:

- O usuário seleciona um arquivo ou diretório que não existe, o utilitário de linha de comando exibe uma mensagem de erro indicando que o arquivo ou diretório não existe.
- O usuário define um período de retenção inválido, o utilitário de linha de comando exibe uma mensagem de erro indicando que o período de retenção é inválido.
- O usuário não tem permissão para acessar um arquivo ou diretório, o utilitário de linha de comando exibe uma mensagem de erro indicando que o usuário não tem permissão para acessar o arquivo ou diretório.
- O utilitário de linha de comando encontra um erro durante o backup, o utilitário exibe uma mensagem de erro indicando o erro encontrado e interrompe o backup.
- O utilitário de linha de comando não consegue enviar uma notificação por e-mail, o utilitário exibe uma mensagem de erro indicando que a notificação por e-mail falhou.
- O usuário encontra problemas para visualizar o log do backup, o utilitário exibe uma mensagem de erro indicando que houve um problema ao acessar o arquivo de log.






```mermaid
flowchart TD;
  %% Trigger event
  TRIGGER([O usuário solicita o login no sistema])-->S1;
  style TRIGGER fill:#ccf

%% Successful flow
S1-->S2([O utilitário exibe a interface de configuração fácil de usar]);
S2-->S3([O usuário seleciona os arquivos e diretórios importantes que deseja fazer backup]);
S3-->S4([O usuário define a periodicidade do backup para uma vez por semana]);
S4-->S5([O usuário define o nome e o local do arquivo de backup]);
S5-->S6([O usuário define o nível de compressão do arquivo de backup para o máximo]);
S6-->S7([O usuário define o período de retenção para 30 dias]);
S7-->S8([O usuário inicia o backup]);
S8-->S9([O utilitário de linha de comando faz o backup completo dos arquivos e diretórios selecionados em um arquivo de backup com o nome e local definidos pelo usuário]);
S9-->S10([O utilitário exibe um relatório de status do backup com informações como a data e hora da conclusão, o tamanho do arquivo de backup e o status geral do backup]);
S10-->S11([O utilitário envia uma notificação por e-mail para o usuário com informações relevantes sobre o backup, como a data e hora da conclusão, o tamanho do arquivo de backup e o status geral do backup]);
S11-->S12([O usuário visualiza o log do backup para verificar se há algum problema]);

%% Error flow
subgraph Caso de possíveis erros
ERR1([O usuário seleciona um arquivo ou diretório que não existe]);
ERR2([O usuário define um período de retenção inválido]);
ERR3([O usuário não tem permissão para acessar um arquivo ou diretório]);
ERR4([O utilitário de linha de comando encontra um erro durante o backup]);
ERR5([O utilitário de linha de comando não consegue enviar uma notificação por e-mail]);
ERR6([O usuário encontra problemas para visualizar o log do backup]);

S3-- Erro -->ERR1;
S7-- Erro -->ERR2;
S9-- Erro -->ERR3;
S9-- Erro -->ERR4;
S11-- Erro -->ERR5;
S12-- Erro -->ERR6;
end

%% Error handling
ERR1-- Mensagem de erro -->S2;
ERR2-- Mensagem de erro -->S7;
ERR3-- Mensagem de erro -->S10;
ERR4-- Mensagem de erro -->S10;
ERR5-- Mensagem de erro -->S11;
ERR6-- Mensagem de erro -->S12;

%% Styling
style TRIGGER fill:#ccf;
style S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12 stroke:#333,stroke-width:2px,fill:#fff;
style ERR1,ERR2,ERR3,ERR4,ERR5,ERR6 stroke:#f00,stroke-width:2px,fill:#fff,stroke-dasharray: 5, 5;
```

![flow2](../flow2.png)