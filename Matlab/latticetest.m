clc;
clear all
So =50; 
K = 49; 
r = 0.05; 
T = 9/12;
dt=.75/5;
sigma = 0.3; 

[StockPrice, OptionPrice] = binpriceE(So, K, r, T,dt,sigma,0)

latticeModified(StockPrice,OptionPrice)