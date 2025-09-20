#!/usr/bin/env bash
set -euo pipefail

CHECK=0
if [[ "${1:-}" == "-c" || "${1:-}" == "--check" ]]; then
  CHECK=1
fi

# Candidate directories; typstyle accepts directories directly
paths=("src" "tests" "specs")
use_paths=()
for p in "${paths[@]}"; do
  [[ -d "$p" ]] && use_paths+=("$p")
done

if ! command -v typstyle >/dev/null 2>&1; then
  echo "typstyle not installed. Install with: cargo install typstyle" >&2
  exit 0
fi

if [[ ${#use_paths[@]} -eq 0 ]]; then
  echo "No candidate directories found (src/tests/specs). Nothing to format."
  exit 0
fi

if [[ $CHECK -eq 1 ]]; then
  echo "Running typstyle --check on: ${use_paths[*]}"
  typstyle --check "${use_paths[@]}"
else
  echo "Running typstyle --inplace on: ${use_paths[*]}"
  typstyle --inplace "${use_paths[@]}"
fi
