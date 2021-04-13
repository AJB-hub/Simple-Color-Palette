#!/usr/bin/env python
# coding: utf-8

# In[75]:


import numpy as np
import matplotlib.pyplot as plt
import pandas as pd


# In[76]:


slices = []
pie_colors = []

for subdiv in np.arange(0,1,0.05):
    color = (1-subdiv,subdiv,0)
    pie_colors.append(color)
    slices.append(1)
for subdiv in np.arange(0,1,0.05):
    color = (0,1-subdiv,subdiv)
    pie_colors.append(color)
    slices.append(1)
for subdiv in np.arange(0,1,0.05):
    color = (subdiv,0,1-subdiv)
    pie_colors.append(color)
    slices.append(1)


# In[77]:



plt.pie(slices,colors=pie_colors)
plt.savefig('./ColorWheel.svg')
plt.show()

