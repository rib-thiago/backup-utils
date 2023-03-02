# Diagrama de Sequencia

Neste diagrama, o usuário inicia manualmente o backup, o BackupUtility obtém a lista de arquivos e diretórios selecionados com a ajuda do FileManager, comprime os arquivos com o CompressionTool, cria o arquivo de backup com o ArchiveTool e envia uma notificação por e-mail com o NotificationSystem. O BackupUtility exibe um relatório de status do backup para o usuário após a conclusão.

```mermaid
sequenceDiagram
    participant User
    participant BackupUtility
    participant FileManager
    participant CompressionTool
    participant ArchiveTool
    participant NotificationSystem

    User->>+BackupUtility: Inicia o backup manualmente
    BackupUtility->>+FileManager: Obtém os arquivos e diretórios selecionados
    FileManager->>-BackupUtility: Retorna a lista de arquivos e diretórios
    BackupUtility->>+CompressionTool: Comprime os arquivos selecionados
    CompressionTool->>-BackupUtility: Retorna o arquivo compactado
    BackupUtility->>+ArchiveTool: Cria arquivo de backup
    ArchiveTool->>-BackupUtility: Retorna o arquivo de backup
    BackupUtility->>+NotificationSystem: Envia notificação por e-mail
    NotificationSystem-->>-BackupUtility: Confirmação do envio da notificação
    BackupUtility-->>-User: Exibe relatório de status do backup
```

![seq](../saida.png)