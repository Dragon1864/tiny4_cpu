# =========================
# Clock Definition
# =========================
create_clock -name clk -period 10 [get_ports clk]

# =========================
# Input Delays
# =========================
set_input_delay -clock clk 0 [all_inputs]

# =========================
# Output Delays
# =========================
set_output_delay -clock clk 0 [all_outputs]

# =========================
# Reset (asynchronous)
# =========================
set_false_path -from [get_ports rst_n]

# =========================
# Optional: Ignore enable signal timing
# =========================
set_false_path -from [get_ports ena]
