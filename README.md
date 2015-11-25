

Foi enviado o link do repositório no GitHub: https://github.com/Fahantin/GoBus

# Detalhes da aplicação
Versão: 1.0
Servidor de Deployment: Heroku gobus.herokuapp.com
Controle de versão: GIT (Github)
Repositório de Versionamento: https://github.com/Fahantin/GoBus
Tecnologia Backend: Ruby on Rails
Banco de dados: Postgres
Tecnologia Frontend: CSS3 Bootstrap

# PROBLEMAS/LIMITAÇÕES CONHECIDAS

xx

# Nota de Liberação 1.0

Entrega 1: Prazo: 29/10

* Criação de página inicial em HTML;
* API Marker do GoogleMaps disponibilizada na página principal;
* Captação de latitude e longitude através de um Ponto no Mapa;
* Gerar Polyline através de um array de Pontos;
* Front-end utilizando template Dashboard do bootstraps.

# Nota de Liberação 1.1

Entrega 2: Prazo: 05/11

* Criada a aplicação Rails;
* Configuração de gems para MySQL;
* Criação dos Scaffolds de Linhas, Ônibus e Usuários;
* Adaptação do Front-End em HTML para as Views do Rails.

> Devido a alteração em relação ao servidor que seria utilizado (Amazon se tornou Heroku), foram encontradas dificuldades (devido ao uso do Windows) para disponibilizar a aplicação on-line até a data prevista, além da alteração da base de dados de MySQLpara PostgreSQL, a versão on-line só foi disponibilizada no dia 10/11.

# Nota de Liberação 1.2

Entrega 3: Prazo: 12/11

Foi atualizado o conteúdo no repositório do GitHub: https://github.com/Fahantin/GoBus
Foi enviado o link da aplicação no Heroku: https://gobus.herokuapp.com

* Criação dos Scaffolds de Pontos, Rotas e Ruas;
* Configuração de Gems para PostgreSQL;
* Migração de MySQL para PostgreSQL;
* Alteração do escopo em relação ao servidor (Amazon para Heroku);
* Bugs de CSS corrigidos;

# Nota de Liberação 1.3

Entrega 4: Prazo: 23/11

Foi atualizado o conteúdo no repositório do GitHub: https://github.com/Fahantin/GoBus
Foi atualizada a aplicação no Heroku: https://gobus.herokuapp.com

* API Marker do GoogleMaps disponibilizada na página de Pontos;
* API Directions Service do GoogleMaps disponibilizada na página de Rotas;
* Alteração do escopo em relação as ferramentas de Log e Deploy;
* Configuração da ferramenta de Deploy Heroku Toolbelt;
* Implantação do New Relic;
* Implantação do sistema de log Sumo Logic (Add-on Heroku);
* Comunicação entre os modelos de chave estrangeira (Pendente);
* Visualização de uma linha e suas rotas (ida e volta), com os devidos pontos (Pendente);


# Auto-Deploy Heroku Toolbelt

O Heroku oferece sua própria ferramenta para deploy, o Toolbelt (https://toolbelt.heroku.com/windows). Em nosso caso foi utilizada a versão paraWindows, onde, após instalada em nossa máquina foi possível através do Console (Windows CMD) fazer uso da ferramenta.

É uma ferramenta simples que proporciona ao usuário realizar o deploy de forma automática, porém existe alguns pré-requisitos para o funcionamento dessa ferramenta, os quais veremos a seguir:

1. O primeiro requisito é ter uma conta cadastrada no Heroku App: https://signup.heroku.com/signup/dc

2. O segundo requisito é fazer o uso de algum repositório online para projetos, em nosso caso o GitHub: http://github.com/join

3. Também será necessário que tenha o Git instalado em seu computador: https://git-scm.com/download/win

Após realizadas todas as configurações no Git e GitHub em relação ao SSH da sua máquina, criação do repositório e clonagem do repositório para seu computador, você irá criar um novo servidor rails dentro da pasta que foi clonada. Para conseguir subir sua aplicação para o Heroku é necessário que o repositório online sempre esteja atualizado pelo Git.

Depois de realizado todo esse processo poderemos enfim realizar o deploy de nossa aplicação, em um primeiro momento deveremos seguir alguns passos através do Console:

1. Estar dentro da pasta da aplicação;
2. Digitar o comando “heroku login”, após isso você deverá inserir seu e-mail e senha que cadastrou anteriormente no Heroku;
3. Depois você deverá criar um aplicativo Heroku através do comando “heroku create nomedoapp”;
4. Após a criação da aplicação Heroku é necessário somente um comando para realizar o deploy “git push heroku master”;
5. Para verificar e testar sua aplicação online, é só digitar o comando “heroku open”.

Muito simples, não? Todas as vezes que você realizar alguma alteração em seu projeto você deverá dar o commit e o git push origin master através do Git, para atualizar seu repositório online, após isso é só realizar o passo 4, digitar no console “git push heroku master” e pronto, sua aplicação estará atualizada e rodando via Heroku.

# New Relic – Monitoramento de Perfomance

O New Relic é uma ferramenta SaaS que permite monitorar aplicações em Ruby, Java, .Net e PHP. Possuí licença gratuita e paga.

Seu funcionamento é bem simples, existe um agente que coleta os dados de desempenho e envia assincronamente para o servidor da New Relic, assim, tem uma espécie de raio-x da aplicação com informações da CPU, memória, tempo de resposta, throughtput, número de requisições, erros, transações, uso do banco de dados, etc. 

A interface web do New Relic apresenta tudo isso com um monte de gráficos e opções para configurar alertas entre outras coisas.

Para começar a usar o New Relic em Ruby, basta adicionar a Gem “newrelic_rpm” no arquivo Gemfile da aplicação. Em seguida é necessário um cadastro no sitehttp://br.newrelic.com/, para baixar o arquivo newrelic.yml onde contém sua license key e algumas configurações da app. O arquivo deve ficar na pasta /config de sua app.

Feito os passos anteriores, sua aplicação estará sendo monitorada em minutos.

# Sistema de Log - Sumo Logic

O Heroku oferece diversos add-ons (gratuitos e/ou pagos) para facilitar a tarefa dos desenvolvedores, dentre eles podemos destacar o Sumo Logic, um serviço gratuito para monitoramento de registros (logs) da sua aplicação Heroku, que oferece gráficos e painéis que mostram as informações da sua aplicação em tempo real.

O Sumo Logic pode ser instalado facilmente tanto via Console quanto pelo site do Heroku, em nosso caso instalamos via site. Para isso você deve seguir as etapas a seguir:

1. Realizar o login em sua conta Heroku através de um browser;
2. Depois de redirecionado para o Dashboard, você pode acessar o link: 
https://elements.heroku.com/addons para consultar os add-ons disponíveis para sua aplicação;
3. Na categoria Logging existem alguns add-nos, em nosso caso vamos selecionar o Sumo Logic (Versão Beta);
4. Após redirecionado para a página do Sumo Logic, basta procurar pelo botão “Install Sumo Logic”, clica-lo, e selecionar a qual aplicação você deseja aplicá-lo;
5. Você será redirecionado novamente ao seu Dashboard, e deverá clicar no botão “Provision” para que o Sumo Logic seja instalado em sua aplicação.Depois de realizadas as etapas, o Sumo Logic estará disponível em sua aplicação:
