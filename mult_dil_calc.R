# -----------------------------------------------------
# Multiple Dilution Calculator
# -----------------------------------------------------
# This script calculates the volume of stock solution (V1)
# needed for several dilutions using C1 * V1 = C2 * V2.
# It also checks whether each dilution uses more than 80%
# of the available stock and labels it as "High usage" or "Safe".
# -----------------------------------------------------


# --- 1. Stock information ---

# Stock concentration (C1, mg/mL)
stock_conc <- 5

# Total volume of stock available (mL)
stock_available <- 80


# --- 2. Final solution requirements (vectors!) ---

# Desired final concentrations (C2, mg/mL)
final_conc <- c(2, 1.5, 3)

# Final volumes to prepare (V2, mL)
final_vols <- c(50, 100, 75)


# --- 3. Calculate volumes of stock needed (V1) ---

V_stock_needed <- (final_conc * final_vols) / stock_conc


# --- 4. Check % stock used by each dilution ---

stock_fraction <- V_stock_needed / stock_available

usage_label <- ifelse(stock_fraction > 0.8,
                      "High usage",
                      "Safe")


# --- 5. Print results clearly ---

cat("Dilution results:\n")
cat("-----------------------------\n\n")

for (i in seq_along(V_stock_needed)) {
  cat("Sample", i, ":\n")
  cat("  C2 =", final_conc[i], "mg/mL\n")
  cat("  V2 =", final_vols[i], "mL\n")
  cat("  Stock needed =", round(V_stock_needed[i], 2), "mL\n")
  cat("  Usage =", usage_label[i], "\n\n")
}