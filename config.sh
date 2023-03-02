#!/bin/bash

# Criando a estrutura de diretórios
mkdir backup-cli
cd backup-cli
mkdir bin lib config docs test
cd lib
touch backup-controller.js backup.js file.js
cd ../config
touch config.js logger.js
cd ../docs
mkdir api cli
cd api
touch index.html
cd ../cli
touch help.txt
cd ../../test
touch backup-controller.test.js backup.test.js file.test.js
cd ..

# Criando arquivos LICENSE e README.md
touch LICENSE README.md

# Inicializando o npm e criando o arquivo package.json
npm init -y

# Criando o arquivo .gitignore e adicionando entradas
touch .gitignore
echo "node_modules" >> .gitignore
echo "*.log" >> .gitignore

# Exibindo a árvore de diretórios
echo "backup-cli/"
echo "├── bin/"
echo "│   └── backup.js"
echo "├── lib/"
echo "│   ├── backup-controller.js"
echo "│   ├── backup.js"
echo "│   └── file.js"
echo "├── config/"
echo "│   ├── config.js"
echo "│   └── logger.js"
echo "├── docs/"
echo "│   ├── api/"
echo "│   │   └── index.html"
echo "│   └── cli/"
echo "│       └── help.txt"
echo "├── test/"
echo "│   ├── backup-controller.test.js"
echo "│   ├── backup.test.js"
echo "│   └── file.test.js"
echo "├── LICENSE"
echo "├── README.md"
echo "├── package.json"
echo "└── .gitignore"
