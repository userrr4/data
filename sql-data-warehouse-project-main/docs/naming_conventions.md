# 

Ce document présente les conventions de nommage utilisées pour les schémas, tables, vues, colonnes et autres objets dans l'entrepôt de données.

## **Table des Matières**

1. [Principes Généraux](#principes-généraux)
2. [Conventions de Nommage des Tables](#conventions-de-nommage-des-tables)
   - [Règles Bronze](#règles-bronze)
   - [Règles Silver](#règles-silver)
   - [Règles Gold](#règles-gold)
3. [Conventions de Nommage des Colonnes](#conventions-de-nommage-des-colonnes)
   - [Clés de Substitution](#clés-de-substitution)
   - [Colonnes Techniques](#colonnes-techniques)
4. [Procédures Stockées](#procédures-stockées)
---

## **Principes Généraux**

- **Conventions de Nommage** : Utiliser le snake_case, avec des lettres minuscules et des underscores (`_`) pour séparer les mots.
- **Langue** : Utiliser l'anglais pour tous les noms.
- **Éviter les Mots Réservés** : Ne pas utiliser de mots réservés SQL comme noms d'objets.

## **Conventions de Nommage des Tables**

### **Règles Bronze**
- Tous les noms doivent commencer par le nom du système source, et les noms des tables doivent correspondre à leurs noms d'origine sans renommage.
- **`<systèmesource>_<entité>`**  
  - `<systèmesource>` : Nom du système source (par exemple, `crm`, `erp`).  
  - `<entité>` : Nom exact de la table du système source.  
  - Exemple : `crm_customer_info` → Informations client du système CRM.

### **Règles Silver**
- Tous les noms doivent commencer par le nom du système source, et les noms des tables doivent correspondre à leurs noms d'origine sans renommage.
- **`<systèmesource>_<entité>`**  
  - `<systèmesource>` : Nom du système source (par exemple, `crm`, `erp`).  
  - `<entité>` : Nom exact de la table du système source.  
  - Exemple : `crm_customer_info` → Informations client du système CRM.

### **Règles Gold**
- Tous les noms doivent utiliser des noms significatifs, alignés sur le métier pour les tables, commençant par le préfixe de catégorie.
- **`<catégorie>_<entité>`**  
  - `<catégorie>` : Décrit le rôle de la table, comme `dim` (dimension) ou `fact` (table de faits).  
  - `<entité>` : Nom descriptif de la table, aligné sur le domaine métier (par exemple, `customers`, `products`, `sales`).  
  - Exemples :
    - `dim_customers` → Table de dimension pour les données clients.  
    - `fact_sales` → Table de faits contenant les transactions de vente.  

#### **Glossaire des Modèles de Catégorie**

| Modèle      | Signification                      | Exemple(s)                              |
|-------------|------------------------------------|-----------------------------------------|
| `dim_`      | Table de dimension                | `dim_customer`, `dim_product`           |
| `fact_`     | Table de faits                    | `fact_sales`                            |
| `report_`   | Table de rapport                  | `report_customers`, `report_sales_monthly`   |

## **Conventions de Nommage des Colonnes**

### **Clés de Substitution**  
- Toutes les clés primaires des tables de dimension doivent utiliser le suffixe `_key`.
- **`<nom_table>_key`**  
  - `<nom_table>` : Fait référence au nom de la table ou de l'entité à laquelle la clé appartient.  
  - `_key` : Un suffixe indiquant que cette colonne est une clé de substitution.  
  - Exemple : `customer_key` → Clé de substitution dans la table `dim_customers`.
  
### **Colonnes Techniques**
- Toutes les colonnes techniques doivent commencer par le préfixe `dwh_`, suivi d'un nom descriptif indiquant l'objectif de la colonne.
- **`dwh_<nom_colonne>`**  
  - `dwh` : Préfixe exclusivement pour les métadonnées générées par le système.  
  - `<nom_colonne>` : Nom descriptif indiquant l'objectif de la colonne.  
  - Exemple : `dwh_load_date` → Colonne générée par le système utilisée pour stocker la date à laquelle l'enregistrement a été chargé.
 
## **Procédures Stockées**

- Toutes les procédures stockées utilisées pour le chargement de données doivent suivre le modèle de nommage :
- **`load_<couche>`**.
  
  - `<couche>` : Représente la couche en cours de chargement, comme `bronze`, `silver`, ou `gold`.
  - Exemple : 
    - `load_bronze` → Procédure stockée pour charger des données dans la couche Bronze.
    - `load_silver` → Procédure stockée pour charger des données dans la couche Silver.
