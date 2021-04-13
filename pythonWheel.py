#!/usr/bin/env python
# coding: utf-8

# In[75]:


import numpy as np
import matplotlib.pyplot as plt
import pandas as pd


# In[100]:


slices = []
pie_colors = []
n=.5
for subdiv in np.arange(0,1,n):
    color = (1,subdiv,0)
    pie_colors.append(color)
    slices.append(1)
for subdiv in np.arange(0,1,n):
    color = (1-subdiv,1,0)
    pie_colors.append(color)
    slices.append(1)
for subdiv in np.arange(0,1,n):
    color = (0,1,subdiv)
    pie_colors.append(color)
    slices.append(1)
for subdiv in np.arange(0,1,n):
    color = (0,1-subdiv,1)
    pie_colors.append(color)
    slices.append(1)
for subdiv in np.arange(0,1,n):
    color = (subdiv,0,1)
    pie_colors.append(color)
    slices.append(1)
for subdiv in np.arange(0,1,n):
    color = (1,0,1-subdiv)
    pie_colors.append(color)
    slices.append(1)


# In[109]:



plt.pie(slices,colors=pie_colors,radius=1.5)
plt.pie([1],colors="w",radius=1)
plt.savefig('./ColorWheel.svg')
plt.show()


# In[ ]:




