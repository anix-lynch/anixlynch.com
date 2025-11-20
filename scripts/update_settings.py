import json
import os
from typing import Any

# Absolute path to the settings file (outside the current workspace)
SETTINGS_PATH = "/Users/anixlynch/antigravity guide/.vscode/settings.json"


def _set_nested(d: dict, keys: list, value: Any) -> None:
    """Recursively set a value in a nested dict given a list of keys."""
    for key in keys[:-1]:
        if key not in d or not isinstance(d[key], dict):
            d[key] = {}
        d = d[key]
    d[keys[-1]] = value


def update_settings(key: str, value: Any, file_path: str = SETTINGS_PATH) -> None:
    """Update a JSON settings file.

    Args:
        key: Dot‑separated key path, e.g. "editor.tabSize".
        value: The value to set for the given key.
        file_path: Absolute path to the JSON file. Defaults to the Antigravity
            global settings location.
    """
    # Ensure the directory exists
    os.makedirs(os.path.dirname(file_path), exist_ok=True)

    # Load existing data if the file exists, otherwise start with an empty dict
    if os.path.isfile(file_path):
        with open(file_path, "r", encoding="utf-8") as f:
            try:
                data = json.load(f)
            except json.JSONDecodeError:
                data = {}
    else:
        data = {}

    # Set the nested key
    keys = key.split(".")
    _set_nested(data, keys, value)

    # Write back to the file with pretty formatting
    with open(file_path, "w", encoding="utf-8") as f:
        json.dump(data, f, indent=2, ensure_ascii=False)
        f.write("\n")

    print(f"Updated {file_path}: set {key} = {value!r}")


def merge_settings(json_data: dict, file_path: str = SETTINGS_PATH) -> None:
    """Merge a JSON object into the settings file.

    Args:
        json_data: Dictionary to merge into the settings.
        file_path: Absolute path to the JSON file. Defaults to the Antigravity
            global settings location.
    """
    # Ensure the directory exists
    os.makedirs(os.path.dirname(file_path), exist_ok=True)

    # Load existing data if the file exists, otherwise start with an empty dict
    if os.path.isfile(file_path):
        with open(file_path, "r", encoding="utf-8") as f:
            try:
                data = json.load(f)
            except json.JSONDecodeError:
                data = {}
    else:
        data = {}

    # Deep merge the new data
    def deep_merge(base: dict, update: dict) -> dict:
        for key, value in update.items():
            if key in base and isinstance(base[key], dict) and isinstance(value, dict):
                deep_merge(base[key], value)
            else:
                base[key] = value
        return base

    deep_merge(data, json_data)

    # Write back to the file with pretty formatting
    with open(file_path, "w", encoding="utf-8") as f:
        json.dump(data, f, indent=2, ensure_ascii=False)
        f.write("\n")

    print(f"Merged settings into {file_path}")
