param(
  [switch]$Check
)
$ErrorActionPreference = "Stop"

# Candidate directories (typstyle accepts directories or files)
$paths = @()
foreach ($p in @("src", "tests", "specs")) {
  if (Test-Path $p) { $paths += $p }
}

if ($paths.Count -eq 0) {
  Write-Host "No candidate directories found (src/tests/specs). Nothing to format."
  exit 0
}

# Resolve typstyle if available
$typstyle = Get-Command typstyle -ErrorAction SilentlyContinue
if ($null -eq $typstyle) {
  Write-Warning "typstyle not installed. Install with: cargo install typstyle"
  exit 0
}

if ($Check) {
  Write-Host "Running typstyle --check on: $($paths -join ', ')"
  & $typstyle.Source --check @paths
}
else {
  Write-Host "Running typstyle --inplace on: $($paths -join ', ')"
  & $typstyle.Source --inplace @paths
}
