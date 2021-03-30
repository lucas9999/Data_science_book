# ARIMA in PYTHON







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



# DDEKOMPOZYCJA MULTIPLIKATYWNA

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

































