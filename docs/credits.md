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

## 使っていないが検討したもの

見比べ用の候補シートは `assets/icons-candidates.png`（リポジトリには入れない）。
調査メモは `raw/2026-10-17-pixel-icon-sources.md`。

- skillicons.dev（MIT）の通常アイコン — ドット風ではないので不採用
- pixelarticons（MIT）— ブランドは Docker と LinkedIn などごく少数のみ。技術ロゴが揃わないので不採用
