# =================================================
# Script 1: Solubility Check - Interactive Version
# =================================================

# This script calculates whether a given mass of a compound
# will fully dissolve in a certain volume of solvent.

# ----------------------------------------
# STEP 1: Ask the user for input
# ----------------------------------------
drug_name <- readline(prompt = "Enter the name of the compound: ")
solubility <- as.numeric(readline(prompt = "Enter solubility (mg/mL): "))
volume <- as.numeric(readline(prompt = "Enter volume of solvent (mL): "))
mass_added <- as.numeric(readline(prompt = "Enter mass of compound added (mg): "))

# ----------------------------------------
# STEP 2: Calculate maximum dissolvable mass
# ----------------------------------------
max_dissolved <- solubility * volume

# ----------------------------------------
# STEP 3: Check if the mass added will fully dissolve
# ----------------------------------------
if (mass_added <= max_dissolved) {
  cat("All of the", drug_name, "will dissolve!\n")
} else {
  cat("Some of the", drug_name, "will remain undissolved.\n")
  cat("Maximum mass that can dissolve is:", max_dissolved, "mg\n")
}