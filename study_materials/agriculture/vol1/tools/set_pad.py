import json
import sys
from pathlib import Path

OUT = Path(__file__).resolve().parent.parent
PAD = float(sys.argv[1]) if len(sys.argv) > 1 else 10.0

data = {}
path = OUT / "_fit.json"
if path.exists():
    data = json.loads(path.read_text())
for ch in range(1, 9):
    data[f"drill_ch{ch:02d}"] = PAD
path.write_text(json.dumps(data, indent=2) + "\n")
print(data)
