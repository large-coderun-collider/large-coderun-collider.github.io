#!/usr/bin/env bash
set -euo pipefail

SNIPPET="<!-- Cloudflare Web Analytics --><script defer src='https://static.cloudflareinsights.com/beacon.min.js' data-cf-beacon='{\"token\": \"9ea68f33c8074c29a95c76af14a29f26\"}'></script><!-- End Cloudflare Web Analytics -->"

while IFS= read -r -d '' f; do
  if grep -q "static.cloudflareinsights.com/beacon.min.js" "$f"; then
    echo "skip: $f"
    continue
  fi
  if ! grep -qi "</body>" "$f"; then
    echo "WARN: no </body> in $f"
    continue
  fi
  # macOS 
  sed -i '' "s#</body>#$SNIPPET\n</body>#I" "$f"
  echo "patched: $f"
done < <(find . -name "index.html" -type f -print0)

