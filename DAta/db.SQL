
-- DATA Table --

-- En SQL on va respecter les conventions suivantes : snake case, minuscule, singulier
-- début de la transaction qui permet d'annuler le code executé en cas d'erreur au lieu que ça passe à la suite sans arrêter l'execution du fichier

BEGIN;

-- Supprime les tables si elles existent déjà, comme ça on est sûr de partir sur de bonnes bases
-- On rajoute CASCADE pour ne pas avoir de probleme de références cassées 
DROP TABLE IF EXISTS "users" CASCADE;

CREATE TABLE IF NOT EXISTS "users" (
    -- serial PRIMARY KEY pour in id unique
    "id" SERIAL PRIMARY KEY,
    "name" text NOT NULL,
    "email" text NOT NULL UNIQUE,
    "phonenumber" text NOT NULL UNIQUE,
    "password" varchar NOT NULL
);

-- DataBase --

INSERT INTO "users" (  
    "id",
    "name",
    "email",
    "phonenumber",
    "password"
) VALUES

    (1, 'cide', 'regis.blec@gmail.com', '06 22 16 25 24', 'cide');

-- fin de la transaction
COMMIT;