"""Entry point to training/validating/testing for a user given experiment
name."""
import allenact.main
from x_server import startx

if __name__ == "__main__":
    startx()
    allenact.main.main()
