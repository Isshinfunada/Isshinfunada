#!/usr/bin/env bash
# JST の時刻でバナーを選び、assets/banner.gif に置き換える。変化があれば commit する（push は呼び出し側）。
#   06:00–17:00 → day / 17:00–20:00 → evening / 20:00–06:00 → night
# テスト用: BANNER_HOUR=18 bash scripts/pick-banner.sh （JST の時として扱う）
set -euo pipefail
cd "$(dirname "$0")/.."

hour="${BANNER_HOUR:-$(TZ=Asia/Tokyo date +%H)}"
hour=$((10#$hour))
if   (( hour >= 6  && hour < 17 )); then name=day
elif (( hour >= 17 && hour < 20 )); then name=evening
else                                     name=night
fi

src="assets/banner/${name}.gif"
[ -f "$src" ] || { echo "missing: $src" >&2; exit 1; }

if cmp -s "$src" assets/banner.gif 2>/dev/null; then
  echo "no change (${name}, JST ${hour}h)"
  exit 0
fi

cp "$src" assets/banner.gif
git add assets/banner.gif
git -c user.name="github-actions[bot]" \
    -c user.email="41898282+github-actions[bot]@users.noreply.github.com" \
    commit -m "banner: ${name} (JST ${hour}h)"
echo "switched to ${name} (JST ${hour}h)"
