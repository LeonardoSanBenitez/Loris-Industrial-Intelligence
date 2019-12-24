# Generalization Stacker model
# Version: 0.1
# Last modification: 2019/12/23
# Author: Leonardo Benitez
# About the library
#   * Just to regression models (now)
#   * The models should be pre trained
#   * Accept any estimator with predict and fit (to L1) methods
#   * X and y should be numpy arrays
# TODOs
#   * make that instalable by pip (via editable file or github)
#   * Expand to classification

import pandas as pd
import numpy as np
class Stacker:
    def __init__ (self, L0_models, L1_model, propagate_input=False):
        self.L0_models = L0_models
        self.L1_model = L1_model
        self.propagate_input = propagate_input
    
    def fit(self, X, y):
        self.L0_dataset = []
        for model in self.L0_models:
            y_hat = model[1].predict(X)
            y_hat = y_hat.reshape(len(y_hat))
            self.L0_dataset.append (y_hat)
        self.L0_dataset = np.array(self.L0_dataset).transpose()
        if self.propagate_input: self.L0_dataset = np.hstack((self.L0_dataset, X))
        self.L1_model.fit (self.L0_dataset, y)
        
    def predict(self, X):
        L0_output = []
        for model in self.L0_models:
            y_hat = model[1].predict(X)
            y_hat = y_hat.reshape(len(y_hat))
            L0_output.append(y_hat)
        L0_output = np.array(L0_output).transpose()
        if self.propagate_input: L0_output = np.hstack((L0_output, X))
        return self.L1_model.predict(L0_output)
    
    def get_L0_dataset(self):
        # To add a header, use: np.concatenate((np.array(["y_" + name for name, model in estimators]), X_train.columns), axis=0)
        return self.L0_dataset
    
    def get_L1_model (self):
        return self.L1_model
    
    def predict_all (self, X):
        y_hats = []
        for model in self.L0_models:
            y_hat = model[1].predict(X)
            y_hat = y_hat.reshape(len(y_hat))
            y_hats.append(y_hat)  
        L0_output = np.array(y_hats).transpose()
        if self.propagate_input: L0_output = np.hstack((L0_output, X))
        y_hat = self.L1_model.predict(L0_output)
        y_hats.append(y_hat)  
        return np.array(y_hats)
