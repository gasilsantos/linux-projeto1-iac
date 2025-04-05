# linux-projeto1-iac
Repositorio para os arquivos de script do primeiro projeto do curso de linux
# Script de Criação de Estrutura de Diretórios e Usuários no Linux

Este script automatiza a criação de diretórios, grupos e usuários, além de configurar as permissões corretas no sistema Linux. Ele é ideal para ambientes corporativos com divisão por setores como ADM, VENDA e SEGURANÇA.

## 🔧 O que o script faz

- Cria os diretórios: `/publico`, `/adm`, `/ven`, `/sec`
- Cria os grupos de usuários: `GRP_ADM`, `GRP_VEN`, `GRP_SEC`
- Cria os usuários e os associa aos respectivos grupos
- Define uma senha padrão para todos os usuários: `Senha123`
- Configura permissões dos diretórios para garantir o acesso apropriado

## 📁 Estrutura criada

```bash
/publico  -> Acesso total para todos (chmod 777)
/adm      -> Acesso restrito ao grupo GRP_ADM (chmod 770)
/ven      -> Acesso restrito ao grupo GRP_VEN (chmod 770)
/sec      -> Acesso restrito ao grupo GRP_SEC (chmod 770)
