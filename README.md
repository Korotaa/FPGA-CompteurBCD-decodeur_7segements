

**TP : Circuits  Reprogrammables  &  Conception  des Circuits  Intégrés Numériques En  VHDL**

1ère ANNÉE GSEIII 


Objectif : L’horloge d’entrée du FPGA est une horloge de 28 MHz ou bien de 50 MHz. On désire compter de 000 à 999 au rythme d’une incrémentation toutes les « N » millisecondes, N étant paramétrable à l’instanciation par un paramètre « generic » : N. Le compteur doit repasser à 000 lorsque l’on se trouve à 999. 

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.004.jpeg)

A. Spécification décodeur 7-segment 

1) Programmer un décodeur 7-segment. 

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.005.png)

2) Faire la description du module. Simuler le bloc en Modelsim. 
- Src : SEVEN\_SEG.vhd 

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.006.jpeg)

- Test Bench  

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.007.png)

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.008.png)

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.009.png)

3) Analyse et Synthèse :  

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.011.png)

B. Spécification du compteur BCD 

1) Le compteur BCD en VHDL 

Codez un compteur BCD qui compte toutes les N\*1 ms de 000 à 999. 

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.012.png)

2) Faire la description du module. Simuler le bloc en Modelsim. 
- Src :  CMPT\_BCD.vhd 

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.013.png)

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.014.jpeg)

- Test Bench  

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.015.png)

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.016.jpeg)

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.017.png)


3) Analyse et Synthèse : 

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.019.jpeg)

C. Spécification du Diviseur de Fréquence  
$$
F(clk\_out) = {F(clk) \over N }
$$
$$
 =>T(clk\_out) = T(clk) * N 
 $$
![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.020.png)

1) Faire la description du module. Simuler le bloc en Modelsim. Src : DIV\_FREQ.vhd 

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.021.png)

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.022.jpeg)

- Test Bench 

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.023.png)

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.024.jpeg)

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.025.png)



3) Analyse et Synthèse : 

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.027.jpeg)

D. Spécification du Multiplexeur Temporel et de l’afficheur 

On alterne rapidement les trois valeurs en conjonction avec un vecteur de sélection qui active un afficheur à la fois. Grâce à la persistance retienne, on a l’impression d’un affichage simultané des trois chiffres. 

Le bloc Afficheur permet la gestion d’accès vers les afficheurs 7-segments de la carte DE2-70 board. 

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.028.png)

1. Multiplexeur Temporel 

a)  Faire la description du module. Simuler le bloc en Modelsim. 

- Src: MUX\_TEMP\_3\_TO\_1.vhd 

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.029.png)

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.030.jpeg)

- Test Bench 

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.031.jpeg)

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.032.jpeg)

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.033.png)



2. Afficheur  

a)  Faire la description du module. Simuler le bloc en Modelsim. 

- Src : AFFICHEUR.vhd 

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.035.png)

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.036.png)

- Test Bench 

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.037.png)

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.038.jpeg)

![](Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.039.png)


E. TOP  
1) Faire la description du module. Simuler le bloc en Modelsim. 
- Src : TOP\_MUX\_AF.vhd 

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.041.png)

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.042.jpeg)

- Test Bench 

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.043.jpeg)

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.044.jpeg)

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.045.png)


2) Analyse et Synthèse :  

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.047.png)

5. Top final 
- Src : TOP.vhd 

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.048.jpeg)

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.049.jpeg)

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.050.jpeg)

- Test Bench 

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.051.jpeg)

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.052.png)

![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.053.png)


- Analyse et Synthèse : 

**1. Première compilation**

![](./Quartus/Aspose.Words.18bec712-d544-4186-b812-39d7fd4f1ab3.002.png)


**2. Assignements des Pins**

![](./Quartus/Aspose.Words.18bec712-d544-4186-b812-39d7fd4f1ab3.003.png)



![](Readme.md/Aspose.Words.754d4f65-d59a-4246-b73b-d73fa15e860e.055.png)
