# バナーの時間帯切り替え

`assets/banner.gif`（README が参照する画像）の切り替えは、自宅サーバーの更新係（`ongoing/kaizen` の `profile-publisher`）が担当する。
**毎時 20 分と 06:02/17:02/20:02 JST** に、JST の時刻に応じたバナーへ切り替える。

| JST | バナー |
|---|---|
| 06:00–17:00 | `assets/banner/day.gif`（昼の海・中波） |
| 17:00–20:00 | `assets/banner/evening.gif`（夕焼けの荒波と雨） |
| 20:00–06:00 | `assets/banner/night.gif`（月と星） |

## GitHub Actions は廃止

GitHub の schedule 実行は不定期で、6〜8 時間空いて夕方の時間帯が抜けることがあるため、更新係へ切り替える。
`.github/workflows/banner.yml` と `scripts/pick-banner.sh` は廃止する。

## 反映が遅れる（camo キャッシュ）

README の画像は GitHub の画像プロキシ（camo）経由で配信され、差し替えてから反映まで数分〜十数分かかることがある。
時間帯の境目（06:00・17:00・20:00）の切り替え処理は、それぞれ 2 分後に行う。
