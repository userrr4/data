/*
=============================================================
Création de la Base de Données et des Schémas
=============================================================
Objectif du Script:
    Ce script crée une nouvelle base de données nommée 'DataWarehouse' après avoir vérifié si elle existe déjà.
    Si la base de données existe, elle est supprimée et recréée. De plus, le script configure trois schémas
    dans la base de données: 'bronze', 'silver', et 'gold'.
	
AVERTISSEMENT:
    L'exécution de ce script supprimera l'ensemble de la base de données 'DataWarehouse' si elle existe.
    Toutes les données de la base de données seront définitivement supprimées. Procédez avec prudence
    et assurez-vous d'avoir des sauvegardes appropriées avant d'exécuter ce script.
*/

USE master;
GO

-- Supprimer et recréer la base de données 'DataWarehouse'
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Créer la base de données 'DataWarehouse'
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Créer les Schémas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
