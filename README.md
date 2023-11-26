# AuBonDeal

# Règles de Gestion pour la Base de Données du site  e commerce AuBonDeal

## Table `users`:
- **Clé primaire (PRIMARY KEY):** `user_uuid` est une clé primaire unique pour identifier chaque utilisateur de manière unique.
- **Contrainte d'unicité (UNIQUE):** La contrainte d'unicité sur `username` garantit que chaque nom d'utilisateur est unique.
- **Contrainte NOT NULL:** Aucune des colonnes ne peut contenir de valeurs NULL.

