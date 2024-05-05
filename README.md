<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=5751D4&height=180&section=header&text=5°+Semestre+de+Banco+de+Dados&animation=fadeIn&fontAlignY=35&fontSize=30&fontColor=FFFFFF"/>

<div align="center">

![Equipe de desenvolvimento](https://github.com/B1nary-Devs/Tecsus/assets/102266928/07b39874-26ec-473c-92e8-5911c18c51d7)

| Função :gear:| Integrantes :bust_in_silhouette: | Linkedin | GitHub 
| ---   | ---  | ---  | ---    |
| Product Owner |  Larissa Souza| <a href="https://www.linkedin.com/in/larissatsouza/" target="_blank"><img src="https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white" target="_blank"></a> | <a href="https://github.com/larissasouz" target="_blank"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"></a>  |
| Scrum Master  |  Júlio César | <a href="https://www.linkedin.com/in/juliocesar2811/" target="_blank"><img src="https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white" target="_blank"></a> | <a href="https://github.com/juliocesar1316" target="_blank"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"></a> |
| Desenvolvedor| Guilherme Alves| <a href="https://www.linkedin.com/in/guilhermealvesnas/" target="_blank"><img src="https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white" target="_blank"></a> | <a href="https://github.com/GuiAlvesdev" target="_blank"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"></a>  |
| Desenvolvedor| Marcelo Silva| <a href="https://www.linkedin.com/in/marcelo-silva7" target="_blank"><img src="https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white" target="_blank"></a> | <a href="https://github.com/marcelosilva7" target="_blank"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"></a>  |
| Desenvolvedor |  Wallace Honorato| <a href="https://www.linkedin.com/in/wallace-honorato-b15a3b1a2/" target="_blank"><img src="https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white" target="_blank"></a> | <a href="https://github.com/WallaceHS20" target="_blank"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"></a>  |

-----

![CONTEXTO](https://github.com/B1nary-Devs/Tecsus/assets/102266928/ec479e7b-5587-44d1-b7ff-fa9aeecaf3e4)

<div align="justify">
  
A TecSUS realiza a coleta e processamento de contas de energia, água e gás para diversas empresas dos setores do atacado e varejo. Cada conta coletada precisa ter todos os seus campos digitados e salvos em banco de dados para eventuais consultas e análises técnicas/financeiras que podem trazer ao cliente oportunidades de redução de custos e alteração de contratos.
Cada unidade do cliente pode possuir vários contratos (água, energia ou gás), cada contrato pode possuir uma ou mais contas (faturas de água, energia ou gás) por mês. Todos esses contratos estão ligados a uma concessionária de abastecimento. A Tecsus possuem uma base de dados de unidades, contratos, contas e concessionárias desestruturada em arquivo texto, a empresa tem interesse em aplicar técnicas de ETL e utilizar ferramentas de visualização de dados do mercado

</div>

-----

![DESAFIO](https://github.com/B1nary-Devs/Tecsus/assets/102266928/153da98a-6c9e-42cb-9662-11bc4dd22d88)

<div align="justify">

O desafio consiste em realizar uma análise abrangente e eficiente dos dados provenientes das faturas de energia, água e gás. Isso envolve lidar com uma grande quantidade de informações complexas e variadas, desde os valores de consumo até os detalhes contratuais e os padrões de utilização ao longo do tempo.
A exibição desses dados também é parte essencial do desafio, pois é preciso apresentar as informações de forma clara, intuitiva e relevante para os usuários finais. Isso implica criar visualizações que permitam uma compreensão rápida e aprofundada dos padrões de consumo, tendências ao longo do tempo e comparações entre diferentes períodos, contratos e tipos de serviços (energia, água e gás).
Portanto, o desafio abrange desde a coleta e processamento dos dados até a apresentação visual e análise interpretativa, visando fornecer insights valiosos para a tomada de decisões estratégicas e operacionais.

</div>

-----

![REQUISITOS FUNCIONAIS](https://github.com/B1nary-Devs/Tecsus/assets/102266928/d414cc02-a71f-4eb3-b949-4a14fece3bb2)

<div align="justify">
   
<b> RN1: </b> Extrair, Transformar e Carregar os dados de Contratos de Água
   
<b> RN2: </b> Extrair, Transformar e Carregar os dados de Contas de Água
   
<b> RN3: </b> Extrair, Transformar e Carregar os dados de Contratos de Energia
   
<b> RN4: </b>  Extrair, Transformar e Carregar os dados de Contas de Energia

<b> RN5: </b> Extrair, Transformar e Carregar os dados de Contratos de Gás
   
<b> RN6: </b>  Extrair, Transformar e Carregar os dados de Contas de Gás
   
<b> RN7: </b>  Relatório de consumo total de Água mensal
  
<b> RN8: </b> Relatório de consumo total de Água anual
   
<b> RN9: </b>  Relatório de consumo total de Água média

<b> RN10: </b>  Relatório de consumo total de Energia mensal

<b> RN11: </b>  Relatório de consumo total de Energia anual

<b> RN12: </b> Relatório de consumo total de Energia média

<b> RN13: </b>  Relatório de consumo total de Gás mensal

<b> RN14: </b> Relatório de consumo total de Gás anual

<b> RN15: </b> Relatório de consumo total de Gás média

<b> RN16: </b>  Geração de alertas de consumo de Água acima da média (acima da média dos últimos 3 meses)

<b> RN17: </b> Geração de alertas de consumo de Energia acima da média (acima da média dos últimos 3 meses)

<b> RN18: </b> Geração de alertas de consumo de Gás acima da média (acima da média dos últimos 3 meses)

</div>

![REQUISITOS NÃO FUNCIONAIS](https://github.com/B1nary-Devs/Tecsus/assets/102266928/77d15268-097c-40d9-8eb5-5221ff5e53da)

<div align="justify">

Desenvolver e aplicar uma esteira de DevOps de acordo com a solução proposta

</div>


-----

![SOLUÇÃO](https://github.com/B1nary-Devs/Tecsus/assets/102266928/c27e0237-aaff-49df-84eb-263f5dde7d04)

<div align="justify">

A solução proposta para lidar com os desafios na análise e exibição de dados de faturas de energia, água e gás inclui a implementação de processos de tratativa nos dados dos arquivos de contrato e contas, garantindo a integridade e consistência das informações. Além disso, será desenvolvido um dashboard intuitivo e interativo, permitindo aos administradores realizar métricas e acompanhamentos detalhados das contas e contratos, com filtros específicos para análises precisas. Também será possível gerar relatórios detalhados de consumo total em diferentes períodos, auxiliando na identificação de padrões e tomada de decisões estratégicas. A solução também oferecerá alertas automáticos de consumo acima da média para detectar possíveis anomalias e oportunidades de otimização.

</div>

-----

![CRONOGRAMA](https://github.com/B1nary-Devs/Tecsus/assets/102266928/79168ecd-f690-4a63-ba5e-8f61e8c2e55f)

### 1º Sprint - 25/03 a 14/04 :white_check_mark:
### 2º Sprint - 15/04 a 05/05
### 3º Sprint - 06/05 a 25/05
### 4º Sprint - 27/05 a 16/06
### Feira de soluções - 27/06


------

![BACKLOG DO PRODUTO](https://github.com/B1nary-Devs/Tecsus/assets/102266928/957c45f3-8994-453c-980d-e38bbc5c4d33)

<div align="justify">

<details>

<summary> Visualizar Backlog do Produto </summary>

![backlog do Produto](https://github.com/B1nary-Devs/Tecsus/assets/102266928/f3c3fa4e-ca5e-4e6c-9c5d-fd1ad88b863e)



</details>

</div>

-----

![SPRINT 1](https://github.com/B1nary-Devs/Tecsus/assets/102266928/8fca4d17-1e69-486e-ad1f-fbce9a3176b2)

<div align="justify">

<details>

<summary> Visualizar Backlog da 1º Sprint </summary>

![Backlog da 1 Sprint](https://github.com/B1nary-Devs/Tecsus/assets/102266928/fb3c106a-644e-48d0-a9a9-bfe27734d62e)

</details>


## CRITÉRIOS DE ACEITAÇÃO 

<div align="justify">

<details>

<summary> Visualizar Critérios de Aceitação </summary>

<div align="center">

<img src="https://github.com/B1nary-Devs/Tecsus/assets/102266928/c94638cd-d947-4ddd-bb75-6cf9443c5dfb" width="800" height="500" >

</div>

</details>

</div>


## BURNDOWN

<div align="justify">

<details>

<summary> Visualizar Burndown</summary>

<div align="center">

![Burndown](https://github.com/B1nary-Devs/Tecsus/assets/102266928/d72d457f-1faa-459e-b79e-c491dd4753fa)

</details>

</div>


------

<div align="center">

![SPRINT 2](https://github.com/B1nary-Devs/Tecsus/assets/102266928/c69c93b1-1646-46a9-9291-2ab3b03adbc8)

<div align="justify">

<details>

<summary> Visualizar Backlog da 2º Sprint</summary>

<div align="center">

![Backlog da 2 Sprint](https://github.com/B1nary-Devs/Tecsus/assets/102266928/5a32eb94-e4ef-4970-92d4-8afdda16e149)

</details>

</div>

</div>

## CRITÉRIOS DE ACEITAÇÃO 

<div align="justify">

<details>

<summary> Visualizar Critérios de Aceitação </summary>

<div align="center">

<img src="https://github.com/B1nary-Devs/Tecsus/assets/102266928/141c8430-7b59-4f29-80b6-2d2fdf6e2aca" width="800" height="500">

</div>

</details>

</div>

----
<div align="center">

![Prototipo](https://github.com/B1nary-Devs/Tecsus/assets/102266928/8393ce95-1d60-4211-b4fb-4b21e36951df)

</div>

<div align="justify">

<details>

<summary> Dashboard água/esgoto </summary>

<div align="center">

![Dashboard água/esgoto](https://github.com/B1nary-Devs/Tecsus/assets/102266928/5cd05c92-733b-44af-8177-b2c8f2c9b37e)

</div>

</details>

<details>

<summary> Dashboard energia </summary>

<div align="center">

![Dashboard energia](https://github.com/B1nary-Devs/Tecsus/assets/102266928/0f2f357e-5f72-4788-a5c8-df1af7739c8a)

</details>

</div>

----
<div align="center">


![Tecnologias utilizadas](https://github.com/B1nary-Devs/Tecsus/assets/102266928/48f1ec7c-b457-4892-8171-dff7602e9275)






