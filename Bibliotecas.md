# Cronograma

- [ ] __Estruturação do Projeto__
- [ ] __Configuração do Ambiente__
- [ ] __Criação do Arquivo de Configuração__
- [ ] __Criação do Script de Backup__
- [ ] __Testes__
- [ ] __Documentação__
- [ ] __Integração com o Cron__

___

- __Estruturação do Projeto__: Crie um diretório para o projeto e inicie um novo repositório git. Defina uma estrutura de diretórios básica para o projeto, incluindo pastas para código fonte, arquivos de configuração, documentação, testes e outros arquivos necessários.
- __Configuração do Ambiente__:Instale o Node.js e o gerenciador de pacotes npm, caso ainda não tenha instalado em seu sistema. Em seguida, instale as bibliotecas que você escolheu para utilizar no seu projeto.
- __Criação do Arquivo de Configuração__:  Crie um arquivo de configuração utilizando a sintaxe YAML ou JSON, como preferir. Defina quais diretórios e arquivos devem ser incluídos ou ignorados no backup, quais algoritmos de compressão utilizar e outras opções necessárias para o funcionamento do seu utilitário 
- __Criação do Script de Backup__:  Utilize o Commander para processar os argumentos de linha de comando e carregar as configurações do arquivo de configuração. Implemente a lógica de backup utilizando a biblioteca JSZip para compactar os arquivos e diretórios definidos no arquivo de configuração.
- __Testes__: Escreva testes para verificar se o seu utilitário está funcionando corretamente. Utilize bibliotecas como o Mocha ou Jest para executar os testes automaticamente.  
- __Documentação__:  Documente o seu utilitário, explicando como instalá-lo, configurá-lo e utilizá-lo. Utilize uma ferramenta como o JSDoc para gerar documentação a partir do seu código fonte.
- __Integração com o Cron__: Integração com o Cron: Configure o utilitário para ser executado automaticamente utilizando o Cron. Verifique se o backup está sendo realizado conforme o esperado e faça ajustes se necessário.

---

## Comapração `Yargs` vs `Commander`

Yargs e Commander são duas bibliotecas populares para lidar com argumentos de linha de comando em Node.js. Aqui estão algumas das vantagens e desvantagens de cada uma delas:

### Yargs

__Prós__:

- Yargs é fácil de usar e tem uma sintaxe intuitiva.
- Suporta aliases de opções e comandos, tornando a interface de linha de comando mais flexível.
- Tem uma ampla gama de recursos, incluindo suporte para argumentos posicionais, subcomandos e opções com valores padrão.
- Tem uma documentação clara e abrangente.

__Contras:__

- Yargs pode ter uma curva de aprendizado mais íngreme do que outras bibliotecas de argumentos de linha de comando.
- Nem sempre é fácil de personalizar ou estender, dependendo da necessidade do projeto.

### Commander:

__Prós__:

- Commander tem uma sintaxe clara e concisa.
- É fácil de personalizar e estender para atender às necessidades específicas do projeto.
- Possui uma ampla gama de recursos, incluindo suporte para argumentos posicionais, subcomandos e opções com valores padrão.
- Tem uma documentação clara e abrangente.

__Contras__:

- Commander não suporta aliases de opções, o que pode tornar a interface de linha de comando menos flexível.
- Pode ser menos intuitivo para usuários iniciantes em Node.js.

---

## Comapração `Winston` vs `Bunyan`

Winston e Bunyan são duas bibliotecas de logging para Node.js amplamente utilizadas. Ambas são robustas e fornecem recursos úteis para lidar com logs em aplicativos Node.js. Abaixo está uma lista de prós e contras de cada uma para ajudá-lo a decidir qual é a melhor escolha para o seu projeto:

[Winston]:

__Prós__:

- Suporta vários tipos de transportes (console, arquivos, banco de dados, etc.).
- Fácil de usar e configurar.
- Suporte a cores para a saída do console.
- Integra-se bem com outras bibliotecas e frameworks, como Express e Koa.
-Possui uma comunidade ativa e grande documentação.

__Contras__:

- A configuração pode ser confusa e requer algum conhecimento prévio.
- As APIs mudam frequentemente, o que pode tornar a atualização de versões complicada.

[Bunyan]

__Prós__:

- Fácil de configurar e usar.
- Tem uma API simples e bem documentada.
- Possui suporte a registro de eventos.
- Fornece logging JSON estruturado.
- Escalabilidade, pois é possível enviar logs para múltiplos destinos (console, arquivos, banco de dados, etc.).

__Contras__:

Não suporta cores para a saída do console.
Não possui muitas opções de personalização.

---


## Alternativas ao `JSZip`

Existem várias bibliotecas em JavaScript para compressão de arquivos além do JSZip. Algumas opções incluem:

- `zlib.js`: Biblioteca nativa do Node.js para compressão e descompressão de arquivos no formato gzip e deflate.

- `pako`: Biblioteca JavaScript de compressão e descompressão rápida e eficiente no formato gzip, zlib e deflate.

- `archiver`: Biblioteca Node.js para criação de arquivos compactados em vários formatos, incluindo zip, tar e gzip.

- `adm-zip`: Biblioteca Node.js para manipulação de arquivos zip, incluindo extração e compressão.

`yazl`: Biblioteca Node.js para criação de arquivos zip com suporte a progressão e streaming.

> Cada biblioteca tem suas próprias vantagens e desvantagens. Por exemplo, o zlib.js é nativo do Node.js, o que significa que você não precisa instalar nenhuma dependência adicional. O pako é conhecido por sua velocidade e eficiência de compressão. O archiver suporta vários formatos de arquivo e é bem documentado. O adm-zip é fácil de usar e bem testado. O yazl tem suporte a progressão e streaming, tornando-o uma boa escolha para trabalhar com grandes arquivos.

---

### Mais bibliotecas a serem consideradas:

Além do Commander e do JSZip, algumas bibliotecas que você pode considerar para o seu projeto de utilitário de backup em JavaScript são:

[Inquirer.js] - para criar interfaces de linha de comando interativas e coletar informações do usuário de forma amigável.

[Moment.js] - para manipulação de datas e horários, especialmente útil se você precisar registrar a data e hora em que cada backup foi realizado.

[Winston] ou [Bunyan] - para logging e registro de eventos importantes em seu utilitário de backup.

[Chalk] - para adicionar cores e estilos à saída do seu utilitário de backup, ajudando a melhorar a experiência do usuário.

[Node-notifier] - para enviar notificações ao usuário, como um alerta visual quando um backup é concluído com sucesso.

[ProgressBar.js] - para adicionar barras de progresso ao seu utilitário, permitindo que o usuário acompanhe o progresso do backup.

[Nodemailer] - para enviar e-mails com relatórios de backup ou notificações de erros.

[Node-schedule] - para agendar backups em intervalos regulares ou em horários específicos.

[js-yaml]: uma biblioteca que permite carregar e analisar documentos YAML, bem como gerar saída YAML a partir de objetos JavaScript e converter entre YAML e JSON.

[jszip]: para compressão e descompressão de arquivos e suporta vários formatos de arquivo, incluindo ZIP, TAR e GZIP, e oferece recursos avançados, como criptografia de arquivos e divisão de arquivos grandes em várias partes.


[commander]: para lidar com argumentos de linha de comando em Node.js. 

---

## arquitetura do utilitário

_princípio de separação de responsabilidades_, onde cada componente do programa é responsável por uma tarefa específica.

Por exemplo, você pode dividir o programa em três componentes principais: a interface do usuário (CLI), o processamento dos arquivos e a criação do arquivo de backup.

A interface do usuário seria responsável por lidar com as entradas do usuário e gerar as saídas na linha de comando. Isso pode ser implementado com o Commander e o Inquirer.js.

O processamento dos arquivos seria responsável por encontrar e compactar os arquivos especificados no arquivo de configuração. Isso pode ser implementado com o JSZip e o Node.js File System (fs).

Por fim, a criação do arquivo de backup seria responsável por salvar o arquivo compactado em um diretório especificado pelo usuário. Isso pode ser implementado com o fs e o Moment.js para gerar o nome do arquivo de backup.

Essa arquitetura pode ser implementada de forma modular e escalável, permitindo que você adicione ou remova componentes conforme necessário.

--- 
 ## Documentação dos Requisitos e da Arquitetura Escolhida

 > Além dos requisitos funcionais e não funcionais, é importante documentar a arquitetura do seu sistema. Alguns artefatos que você pode produzir nesta etapa incluem:

- __Diagrama de classes__: Este diagrama mostra as classes do seu sistema e seus relacionamentos. Ele ajuda a entender a estrutura do código e como as diferentes partes do sistema se comunicam.

- __Diagrama de sequência__: Este diagrama mostra a interação entre os objetos do sistema em uma determinada sequência de eventos. Ele ajuda a entender como o sistema responde a diferentes entradas e a identificar possíveis problemas de desempenho.

- __Diagrama de atividades__: Este diagrama mostra o fluxo de atividades dentro do sistema. Ele ajuda a entender como as diferentes atividades são realizadas e como as informações são passadas entre elas.

- __Diagrama de componentes__: Este diagrama mostra os componentes do sistema e suas interações. Ele ajuda a entender como as diferentes partes do sistema se integram e como elas podem ser substituídas ou atualizadas.

- __Diagrama de Caso de Uso__: Descreve os principais atores e as funcionalidades que o sistema deve fornecer.

---

## Conteúdo de um arquivo de levantamento de requisitos:


1. Introdução: Visão geral do documento e propósito do software.

1. Visão geral do sistema: Descrição geral do sistema e seus componentes principais.

1. Requisitos funcionais: Descrição dos recursos e funcionalidades que o sistema deve ter para atender aos requisitos do usuário.

1. Requisitos não funcionais: Descrição dos atributos do sistema, como usabilidade, desempenho, confiabilidade e segurança.

1. Requisitos de interface: Descrição das interfaces de usuário e do sistema, incluindo interfaces de hardware e software.

1. Requisitos de desempenho: Descrição dos requisitos de desempenho, como tempos de resposta e limites de carga.

2. Requisitos de segurança: Descrição dos requisitos de segurança, como autenticação, autorização e criptografia.

2. Requisitos de teste: Descrição dos requisitos de teste, incluindo casos de teste e procedimentos de teste.

1. Requisitos de documentação: Descrição dos requisitos de documentação, como manuais do usuário, guias de instalação e documentação técnica.

2. Requisitos de suporte: Descrição dos requisitos de suporte, como treinamento, manutenção e suporte técnico.

---

## Comando `npm` para instalar dependências

```bash
npm i jzip js-yaml inquirer chalk moment bunyan
```

---


[Inquirer.js]:<https://www.npmjs.com/package/inquirer> 
[Moment.js]:<https://www.npmjs.com/package/moment>
[Winston]:<https://www.npmjs.com/package/winston>
[Bunyan]:<https://www.npmjs.com/package/bunyan>
[Node-notifier]:<https://www.npmjs.com/package/node-notifier>
[ProgressBar.js]:<https://www.npmjs.com/package/progressbar.js>
[Nodemailer]:<https://www.npmjs.com/package/nodemailer>
[Node-schedule]:<https://www.npmjs.com/package/node-schedule>
[Chalk]:<https://www.npmjs.com/package/chalk>
[js-yaml]:<https://www.npmjs.com/package/js-yaml>
[jszip]:<https://www.npmjs.com/package/jszip>
[commander]:<https://www.npmjs.com/package/commander#variadic-option>










