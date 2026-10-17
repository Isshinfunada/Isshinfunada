# バナーの時間帯切り替え

`assets/banner.gif`（README が参照する画像）を、GitHub Actions が **1 時間ごとに JST の時刻で選んで置き換える**。
自宅サーバーには依存しない。

| JST | バナー |
|---|---|
| 06:00–17:00 | `assets/banner/day.gif`（昼の海・中波） |
| 17:00–20:00 | `assets/banner/evening.gif`（夕焼けの荒波と雨） |
| 20:00–06:00 | `assets/banner/night.gif`（月と星） |

## 仕組み
- `.github/workflows/banner.yml` が毎時 7 分に走り、`scripts/pick-banner.sh` を呼ぶ。`workflow_dispatch` で手動実行もできる
- `pick-banner.sh` は JST の時刻から選んだ GIF と今の `assets/banner.gif` をバイト比較し、**同じなら何もしない**。違うときだけコピーして commit する
- 変化があったときだけ `git push`（`permissions: contents: write`）。切り替えは 1 日 3 回なので commit も 1 日 3 回
- 手元テスト: `BANNER_HOUR=18 bash scripts/pick-banner.sh`（JST の時刻として扱う）

## 反映が遅れる（camo キャッシュ）
README の画像は GitHub の画像プロキシ（camo）経由で配信され、**差し替えてから反映まで数分〜十数分かかる**ことがある。
また cron は混雑で数分〜遅れて始まることがある。そのため境目（17:00・20:00・06:00）ちょうどには切り替わらず、少し遅れて変わる。

## 注意
- 公開リポジトリでは 60 日間リポジトリの動きがないと定期実行が自動で止まる。このワークフロー自身が 1 日 3 回 commit するので通常は止まらない想定だが、止まったら Actions タブで再有効化する
- commit が 1 日 3 回ぶん履歴に並ぶ。気になるなら commit せず Releases やブランチへ置く方式に変える
