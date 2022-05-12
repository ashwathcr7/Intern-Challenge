import numpy as np
import pandas as pd 
import os
for dirname, _, filenames in os.walk('/kaggle/input'):
    for filename in filenames:
        print(os.path.join(dirname, filename))

#Question 1


shoes = pd.read_csv('/kaggle/input/shopify-data-science-internship-challenge/Shopify.csv')


#1a)

shoes['order_amount'].describe()

#1c)

shoes['order_amount'].median()