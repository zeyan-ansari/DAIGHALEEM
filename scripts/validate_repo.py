#!/usr/bin/env python3
"""Dependency-free structural checks for the DAIG orchestration repository."""
from pathlib import Path
import json
import re
import sys

ROOT = Path(__file__).resolve().parents[1]
errors = []

for path in ROOT.rglob("*.json"):
    try:
        json.loads(path.read_text(encoding="utf-8"))
    except Exception as exc:
        errors.append(f"invalid JSON {path.relative_to(ROOT)}: {exc}")

for path in ROOT.rglob("*.md"):
    text = path.read_text(encoding="utf-8")
    for target in re.findall(r"\[[^]]+\]\(([^)#]+)", text):
        if "://" in target or target.startswith("mailto:"):
            continue
        if not (path.parent / target).resolve().exists():
            errors.append(f"broken link {path.relative_to(ROOT)} -> {target}")

allowed = {"UNANSWERED", "PARTIAL", "ANSWERED", "DEFERRED"}
decision_text = (ROOT / "REQUIRED_DECISIONS.txt").read_text(encoding="utf-8")
for value in re.findall(r"^Status:\s*(\S+)", decision_text, re.MULTILINE):
    if value not in allowed:
        errors.append(f"invalid decision status: {value}")

for phase in sorted((ROOT / "implementation-phase").glob("phase-*")):
    status = phase / "STATUS.md"
    if not status.exists():
        errors.append(f"missing status file: {phase.name}")
        continue
    listed = set(re.findall(r"T\d{2}", status.read_text(encoding="utf-8")))
    actual = {p.name[:3] for p in phase.glob("T??-*.md")}
    if listed != actual:
        errors.append(f"task/status mismatch {phase.name}: listed={sorted(listed)} actual={sorted(actual)}")

if errors:
    print("Repository validation failed:")
    print("\n".join(f"- {error}" for error in errors))
    sys.exit(1)
print("Repository validation passed")
