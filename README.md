# W3 Project - Building mySQL Data-base 

![portada](https://i0.wp.com/itsoftware.com.co/content/wp-content/uploads/2018/03/que-es-y-para-que-sirve-mysql-1.jpg)


The goal of this project is to build your own database from several csv files. For this project, you will start with 6 `csv` files. You will need to download it, import it, use your data wrangling skills to clean it up, have a first look at the data to figure out out to structure it, prepare it to be loaded in a sql database and finally build it. Some graphs to better understand the data will surely be useful!!

## TO DO's

1. Explore the data and write down what you have found
   - you can use: `df.describe()`, `df["column"]`, etc.
1. Clean the data (you can get rid of columns that doesn't give information)
1. Build your databse
1. Write at least 10 queries including: join, groupby, orderby, where, subqueries….that you think will be useful to get interesting insights from the data.**(SELECT* FROM TABLE_NAME doesn't count...)** 
+ Bonus: Get creative!!! Create totally new tables or enrich the csv files with new data (found on the internet or even made up) that makes your database more valuable.


## Suggested Ways to Get Started

- Examine the data and try to understand what the fields mean before building the database.
- Break the project down into different steps - use the topics covered in the lessons to form a check list, add anything else you can think of that may be wrong with your data set, and then work through the check list.
- Use the tools in your tool kit - your knowledge of Python, data structures, Pandas, and data wrangling.
  Work through the lessons in class & ask questions when you need to! Think about adding relevant code to your project each night, instead of, you know... procrastinating.
- Commit early, commit often, don’t be afraid of doing something incorrectly because you can always roll back to a previous version.
- Consult documentation and resources provided to better understand the tools you are using and how to accomplish what you want.

## How to deliver the project

1. Create a new repo with the name `sql-data-base-building` on your github account.
   - Create a `README.md` file on repo root with project documentation. Make sure to include as much useful information as possible. Someone that finds the README.md should be able to fully get a gist of the project without browsing your files.
   - Include a `.gitignore`
   - At least 1 jupyter notebook is required
   - Include the necessary code files to create and feed the database.
   - Including your functions in a `src.py` is mandatory.
   
2. Open an `Issue` on this repo and paste your own repo's link.

## Links & Resources


- <https://numpy.org/doc/1.18/>
- <https://pandas.pydata.org/>
- https://docs.python.org/3/library/functions.html
- https://matplotlib.org/
- https://seaborn.pydata.org/
- https://pandas.pydata.org/docs/
- https://towardsdatascience.com/beware-of-storytelling-with-data-1710fea554b0?gi=537e0c10d89e




## The first stage of the project - cleaning up unnecessary data
import pandas as pd
import numpy as np
import warnings
warnings.filterwarnings('ignore')
from urllib.request import urlopen
pd.set_option('display.max_columns', None)


df_actor=pd.read_csv('/Users/vasiliiutkin/Desktop/ironhack/sql-data-base-building/data/actor.csv')
df_category=pd.read_csv('/Users/vasiliiutkin/Desktop/ironhack/sql-data-base-building/data/category.csv')
df_film=pd.read_csv('/Users/vasiliiutkin/Desktop/ironhack/sql-data-base-building/data/film.csv')
df_inventory=pd.read_csv('/Users/vasiliiutkin/Desktop/ironhack/sql-data-base-building/data/inventory.csv')
df_language=pd.read_csv('/Users/vasiliiutkin/Desktop/ironhack/sql-data-base-building/data/language.csv')
df_old_HDD=pd.read_csv('/Users/vasiliiutkin/Desktop/ironhack/sql-data-base-building/data/old_HDD.csv')
df_rental=pd.read_csv('/Users/vasiliiutkin/Desktop/ironhack/sql-data-base-building/data/rental.csv')


df_actor.head()
df_actor.drop(['last_update'], axis=1)

df_category
df_category.drop(['last_update'], axis=1)

df_film
df_film.drop(['original_language_id','language_id', 'last_update','release_year'], axis=1)

df_inventory
df_inventory.drop(['last_update'], axis=1)

df_language
df_language.drop(['last_update'], axis=1)

df_old_HDD
df_old_HDD.drop(['release_year'], axis=1)

df_rental
df_language.drop(['last_update'], axis=1)

















