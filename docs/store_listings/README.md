# RememberLast — Google Play Store Listings

This folder contains localized store listings ready to copy-paste directly into **Google Play Console** (`Grow > Store presence > Main store listing > Manage languages`).

## Overview of Translations

| Language | Locale Code | File Link | Title (≤ 30) | Short Desc (≤ 80) | Full Desc (≤ 4000) |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **English (Default)** | `en-US` | [store_listing_english.md](file:///Users/usman/Development/Projects/Others/remember_last/docs/store_listings/store_listing_english.md) | 30 chars | 79 chars | 2,703 chars |
| **German (Deutsch)** | `de-DE` | [store_listing_german.md](file:///Users/usman/Development/Projects/Others/remember_last/docs/store_listings/store_listing_german.md) | 30 chars | 75 chars | 2,776 chars |
| **Spanish (Español)** | `es-419` / `es-ES` | [store_listing_spanish.md](file:///Users/usman/Development/Projects/Others/remember_last/docs/store_listings/store_listing_spanish.md) | 26 chars | 73 chars | 2,684 chars |
| **Hindi (हिन्दी)** | `hi-IN` | [store_listing_hindi.md](file:///Users/usman/Development/Projects/Others/remember_last/docs/store_listings/store_listing_hindi.md) | 24 chars | 72 chars | 2,641 chars |
| **Romanian (Română)** | `ro` | [store_listing_romanian.md](file:///Users/usman/Development/Projects/Others/remember_last/docs/store_listings/store_listing_romanian.md) | 26 chars | 76 chars | 2,748 chars |
| **Thai (ภาษาไทย)** | `th` | [store_listing_thai.md](file:///Users/usman/Development/Projects/Others/remember_last/docs/store_listings/store_listing_thai.md) | 29 chars | 61 chars | 2,425 chars |
| **Lithuanian (Lietuvių)** | `lt` | [store_listing_lithuanian.md](file:///Users/usman/Development/Projects/Others/remember_last/docs/store_listings/store_listing_lithuanian.md) | 29 chars | 77 chars | 2,750 chars |
| **Dutch (Nederlands)** | `nl-NL` | [store_listing_dutch.md](file:///Users/usman/Development/Projects/Others/remember_last/docs/store_listings/store_listing_dutch.md) | 27 chars | 76 chars | 2,680 chars |
| **French (Français)** | `fr-FR` | [store_listing_french.md](file:///Users/usman/Development/Projects/Others/remember_last/docs/store_listings/store_listing_french.md) | 27 chars | 74 chars | 2,720 chars |
| **Japanese (日本語)** | `ja-JP` | [store_listing_japanese.md](file:///Users/usman/Development/Projects/Others/remember_last/docs/store_listings/store_listing_japanese.md) | 23 chars | 43 chars | 1,448 chars |

---

## Instructions for Google Play Console

1. Go to **Google Play Console** ➔ **RememberLast**.
2. Navigate to **Grow** ➔ **Store presence** ➔ **Main store listing**.
3. In the language dropdown at the top, click **Manage languages**.
4. Select the languages you want to enable (German, Spanish, Lithuanian, Dutch, French, Hindi, Romanian, Thai, Japanese) and click **Save**.
5. Switch to each language from the dropdown:
   - Copy the **App name**, **Short description**, and **Full description** from the corresponding file above.
   - In the **Phone screenshots** section, upload the 5 corresponding localized mockups (`phone_01_...` to `phone_05_...`) from `store_assets/play_store/<locale_code>/`.
   - In the **Feature graphic** section, upload `feature_graphic_<locale_code>.png` from `store_assets/play_store/<locale_code>/`.
6. Click **Save** at the bottom right.

---

## Localized Assets & Feature Graphics (Play Store)

Pre-rendered high-resolution mockups (1024×1536) and studio-grade feature graphics (1024×500) with localized headlines, 4x supersampled typography, and authentic device frames are organized in locale-coded folders under `store_assets/play_store/`:

- 🇺🇸 **English (`en-US`)**: `store_assets/play_store/en-US/`
- 🇩🇪 **German (`de-DE`)**: `store_assets/play_store/de-DE/`
- 🇪🇸 **Spanish (`es-419`)**: `store_assets/play_store/es-419/`
- 🇫🇷 **French (`fr-FR`)**: `store_assets/play_store/fr-FR/`
- 🇮🇳 **Hindi (`hi-IN`)**: `store_assets/play_store/hi-IN/`
- 🇯🇵 **Japanese (`ja-JP`)**: `store_assets/play_store/ja-JP/`
- 🇱🇹 **Lithuanian (`lt`)**: `store_assets/play_store/lt/`
- 🇳🇱 **Dutch (`nl-NL`)**: `store_assets/play_store/nl-NL/`
- 🇷🇴 **Romanian (`ro`)**: `store_assets/play_store/ro/`
- 🇹🇭 **Thai (`th`)**: `store_assets/play_store/th/`

Each folder contains:
1. `feature_graphic_<locale>.png` (1024×500)
2. `phone_01_home_<locale>.png` (1024×1536)
3. `phone_02_detail_<locale>.png` (1024×1536)
4. `phone_03_themes_<locale>.png` (1024×1536)
5. `phone_04_quick_log_<locale>.png` (1024×1536)
6. `phone_05_categories_<locale>.png` (1024×1536)

To re-generate all store assets at any time:
```bash
python3 tool/generate_mockups.py
python3 tool/generate_feature_graphic.py
```

