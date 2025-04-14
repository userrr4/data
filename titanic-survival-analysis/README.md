# 🚢 Titanic Survival Analysis 

## 🎯 Objectif

Ce projet vise à analyser les données des passagers du Titanic afin de comprendre comment la classe sociale (Pclass) et l’âge ont influencé les chances de survie. L’objectif est d’identifier les groupes les plus vulnérables et d’en tirer des recommandations pour améliorer la conception des navires modernes.

## 📊 Données utilisées

Le jeu de données contient des informations sur les passagers, notamment :
- Classe du billet (`Pclass`)
- Âge (`Age`)
- Sexe (`Sex`)
- Taux de survie (`Survived`)
- Port d’embarquement (`Embarked`)
- Tarifs, numéro de cabine, nombre de proches à bord, etc.

## 📈 Visualisations

Un tableau de bord interactif a été réalisé avec **Tableau Public** afin d’explorer :
- Le taux de survie par classe
- La répartition des âges
- Le taux de survie par catégorie d’âge (enfants, adultes, seniors)
- Les différences entre le pourcentage total de survivants et le taux de survie relatif à chaque classe

🔗 **Dashboard en ligne** :  
👉 [Voir sur Tableau Public](https://public.tableau.com/views/TitanicI_TableauDashboard/Dashboard1)

## 📒 Notebook Jupyter

Vous pouvez consulter l’analyse complète dans un notebook Google Colab ici :  
👉 [Ouvrir dans Google Colab](https://colab.research.google.com/drive/14Hr9zdefDftAEpt9O3PxNxFUcpVApApB?usp=sharing)

## 🛠️ Outils & technologies

- Python (Pandas, SQLite)
- SQL pour l’exploration des données
- Tableau Public pour les visualisations
- Jupyter Notebook (Google Colab)

## 📌 Résultats clés

- Les passagers de **1ʳᵉ classe** avaient **3× plus de chances de survie** que ceux de **3ᵉ classe**.
- Les **enfants de 2ᵉ classe** ont tous survécu (**100 %**), tandis que ceux de 3ᵉ classe ont eu un taux de survie de **40 %**.
- Aucun **senior** n’a survécu en 2ᵉ et 3ᵉ classes. Un seul a survécu en 1ʳᵉ classe.
