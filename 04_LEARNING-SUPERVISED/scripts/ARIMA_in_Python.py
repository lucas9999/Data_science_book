# ARIMA in PYTHON

import pandas as pd
import numpy as np
from plotnine import *


# PRZYGOTOWANIE DANYCH

# import danych
data = pd.read_csv('https://raw.githubusercontent.com/jbrownlee/Datasets/master/shampoo.csv')

# konwersja na daty pierwszej kolumny
data['Month'] = list(map(lambda x : pd.datetime.strptime('190'+x , '%Y-%m'), data['Month'] ) ) 


# wykres szeregu
(ggplot(data=data) + geom_line(aes(x = 'Month', y = 'Sales'))) 





# DEKOMPOZYCJA ADDYTYWNA

from statsmodels.tsa.seasonal import seasonal_decompose
from matplotlib import pyplot

result = seasonal_decompose(np.asarray(data['Sales']), model='additive', freq=7)
result.plot()
pyplot.show()
print(result.trend)
print(result.seasonal)
print(result.resid)
print(result.observed)



# dDEKOMPOZYCJA MULTIPLIKATYWNA

result = seasonal_decompose(np.asarray(data['Sales']), model='multipicative', freq=8)
result.plot()
pyplot.show()
print(result.trend)
print(result.seasonal)
print(result.resid)
print(result.observed)



# dekompozycja PCA


# dekompozycja Furiera


# dekompozycja Falkowa



# Wykres opoznien


# Wykres ACF


# Dopadowanie trendu

































