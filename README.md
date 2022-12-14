# Aramco_stock_analysis-Forecasting

An issue might occur when trying to view the jupyter notebook , check this link to view the notebook(https://nbviewer.org/github/AbdulRasheed6/Aramco_stock_analysis-Forecasting/blob/main/Aramco_stock_price_prediction.ipynb)




## Table of Content
  * [Dashboard](#dashboard)
  * [Overview](#overview)
  * [Research questions](#research-questions)
  * [Installation](#installation)
  * [Prediction](#prediction)
  * [Future scope of project](#future-scope)


## Dashboard

![Dashboard](https://user-images.githubusercontent.com/59423092/187164383-cf0a47f9-a8aa-4784-a82b-4177a3793b7e.png)



## Overview
The financial market has been plunged into several losses as a result of  unforseen political and social disruptions (like the  Russian invasion and the Pandenmic). Long and medium term buisness goals have been disrupted,  and to be able to mitigate the effect of these socio-political disruptions, short term plans that takes into account these disruptions needs to be created. In our analysis we would take a close look at Saudi Aramco stock and the effects of oil prices (OPEC basket) and the Russia-Ukraine crisis on the stock.
The process carried out during this project can simply be tagged as ETL (extract, transform and load)

[<img target="_blank" src="https://www.altexsoft.com/media/2021/03/the-etl-workflow.png" width=400>](https://www.altexsoft.com/blog/etl-vs-elt/)




## Research questions
Research Questions
The aim of our study is to answer the below research questions:
> 1. Do the prices of oil in the OPEC basket have an effect on the Adj Close price

> 1b. Is there any effect of the Ukraine_crisis on the Adj Close price


> 1c.  Do the Volume of shares have a relationship with Adj Close price


> Research Questions (2)
> 2a. Is the the Adj Close price data stationary

> 2b. If there is a relationship between OPEC_price and Adj Close , then  prove it with a  statistical test    

> 2c. Is there any relationship between OPEC_price and Ukraine_crisis.





## Installation
The Code is written in Python. If you don't have Python installed you can find it [here](https://www.python.org/downloads/). If you are using a lower version of Python you can upgrade using the pip package, ensuring you have the latest version of pip. To install the required packages and libraries, run this command in the project directory after [cloning](https://www.howtogeek.com/451360/how-to-clone-a-github-repository/) the repository:
```bash
pip install -r requirements.txt
```



## Technologies Used

![](https://forthebadge.com/images/badges/made-with-python.svg)[<img target="_blank" src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Postgresql_elephant.svg/121px-Postgresql_elephant.svg.png" width=170>](https://en.wikipedia.org/wiki/PostgreSQL/)[<img target="_blank" src="https://1000logos.net/wp-content/uploads/2022/08/Microsoft-Power-BI-Logo.png" width=150>](https://1000logos.net/microsoft-power-bi-logo/)
 [<img target="_blank" src="https://scikit-learn.org/stable/_static/scikit-learn-logo-small.png" width=200>](https://scikit-learn.org/stable/) [<img target="_blank" src="https://avatars.githubusercontent.com/u/16359713?v=4" width=200>](https://github.com/tensorflow-jenkins/) 


## Prediction
Bearing in mind that the current stock price (Adj Close) of Aramco will not be be available for prediction, you are  tasked to build a machine learning  model that predicts the current price,  taking into account the prices of oil in the OPEC basket and some other external factors. 

![Screenshot (13)](https://user-images.githubusercontent.com/59423092/187312989-a98702c3-37f4-44c1-9813-7b5e17d9b12d.png)



## Future Scope

* Leverage on Natural Language Processing (NLP) and  Word Embedding  to build a more flexible model.
* Gather more data , so as the algorithm can create more scenarios.
* Create a web  app
* Front-End 
