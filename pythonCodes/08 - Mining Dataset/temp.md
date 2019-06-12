## **Algoritmo**

* **Pré processamento**
  * Normalização min-max
  * Observando que muitas das features não possuiam relação com o *air flow*, pesou-se cada coluna pela sua correlação (pearson correlation) com a coluna Flotation Column 01 Air Flow, diminuindo o ruído no resultado final
  * Desconsiderou-se a feature *date*, pois estamos interessados em analisar o ponto instantâneo de operação
* **Algoritmo de clustering**
  * Optou-se pelo algoritmo K means, pela simplicidade e facilidade de implementação
  * Utilizou-se o *elbow method* para identificar o numero ideal de clusters: 2

![1558034681541](Images - Relatório/1558034681541.png)

## **Resultados**

* Plotando algumas variáveis, separadas pelos clusters:

![1558034331587](Images - Relatório/1558034331587.png)

![1558034340963](Images - Relatório/1558034340963.png)

![1558036613746](Images - Relatório/1558036613746.png)

* **Distribution plot for *Flotation Column 01 Air Flow***

  * Cluster 1
    * count: 493578
    * mean: 298.8
    * std: 7.6 
  * Cluster 2
    * count: 243875
    * mean: 242.3
    * std: 19.9

  ![1558104898063](Images - temp/1558104898063.png)

* **Distribuition plot for *Flotation Column 07 Air Flow***

  * Cluster 1
    * count: 493578
    * mean: 303.8
    * std: 20.1 
  * Cluster 2
    * count: 243875
    * mean: 264.3
    * std: 24.9

  ![1558104962939](Images - temp/1558104962939.png)































