import json
import yaml


with open("cloud-config.yml") as f:
    data = yaml.safe_load(f)

out = { "cloud-init": data }

with open("cloud-config.json", "w") as f:
    json.dump(out, f, indent=2)
