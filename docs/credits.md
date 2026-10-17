# Credits

README のアイコンの出典とライセンス。

## リンクのアイコン（Prairie Card / X / LinkedIn）

- **HackerNoon Pixel Icon Library** — https://github.com/hackernoon/pixel-icon-library
  - ライセンス: アイコン（.svg / .png）は **CC BY 4.0**（https://creativecommons.org/licenses/by/4.0/）。出典の明記・ライセンスへのリンク・改変の表示が条件。リポジトリのアイコン以外のファイルは MIT
  - 使ったもの: `brands/x`, `brands/linkedin`, `regular/user`（Prairie Card。名刺・ID カードの絵がライブラリに無いため人物の絵）。48px の PNG を **改変せずそのまま** 使っている（`assets/icons/*-light.png` は for-light-mode、`*-dark.png` は for-dark-mode）
  - README のフッターに出典とこの文書へのリンクを置いている

## 技術のアイコン（Go / TypeScript / Google Cloud / Docker / Kubernetes / PostgreSQL / Terraform）

- **Simple Icons** — https://github.com/simple-icons/simple-icons
  - ライセンス: **CC0 1.0**（パブリックドメイン相当）。ただし各ロゴの商標・著作権は各社に帰属する（https://github.com/simple-icons/simple-icons/blob/develop/DISCLAIMER.md）
  - 公式ロゴの SVG を 22 ドット角に縮め、ブランド色・縁取り・縁のハイライトの 3 色に量子化して 24×24 ドットの PNG にした（改変物）。変換は `scripts/banner/techicons.py`
  - Terraform も Simple Icons に収録されている公式ロゴ（`terraform`）から同じ方式で作った。他の 6 個と出典・ライセンスは同じ
  - ロゴは各技術を指すためにだけ使い、各社の公認や提携を示すものではない

## カードの文字（assets/cards の SVG）

- **Noto Sans JP**（本文。現行のカード）— https://github.com/notofonts/noto-cjk（Google Fonts 配布）。Copyright 2014-2021 Adobe。**SIL Open Font License 1.1**（https://openfontlicense.org）。全文は `scripts/cards/fonts/NotoSansJP-OFL.txt`。予約フォント名 `Source` の宣言があるが、その名前は使っていない
- **DotGothic16**（旧版の見出し。現行のカードでは使っていない）— https://github.com/fontworks-fonts/DotGothic16。Copyright 2020 The DotGothic16 Project Authors。SIL Open Font License 1.1。全文は `scripts/cards/fonts/OFL.txt`
- どちらも SVG で使う文字だけにサブセットし、base64 の `@font-face` として SVG に埋め込んでいる（改変にあたるが OFL は許可）。SVG 内のコメントにも著作権とライセンスを書いてある
- カードの構成は JeffreyCA の spotify-recently-played-readme（https://github.com/JeffreyCA/spotify-recently-played-readme）の SVG を参考にした（寸法・配置・色の傾向を読み取っただけで、コードや画像は使っていない）
- 曲のアルバムアート・記事の OGP 画像は各権利者のもの。リンク先の公開情報から縮小して表示している

## 使っていないが検討したもの

見比べ用の候補シートは `assets/icons-candidates.png`（リポジトリには入れない）。
調査メモは `raw/2026-10-17-pixel-icon-sources.md`。

- skillicons.dev（MIT）の通常アイコン — ドット風ではないので不採用
- pixelarticons（MIT）— ブランドは Docker と LinkedIn などごく少数のみ。技術ロゴが揃わないので不採用
