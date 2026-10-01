#!/usr/bin/env python3
"""
Generate a studio-grade Google Play Store Feature Graphic (1024x500).
Showcases full Light and Dark mode devices side-by-side with brand typography.
Uses 4x supersampling, authentic metallic smartphone frames, and radial studio lighting.
"""

import os
import math
from PIL import Image, ImageDraw, ImageFont, ImageFilter

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
RAW_DIR = os.path.join(BASE_DIR, 'store_assets', 'raw')
OUT_DIR = os.path.join(BASE_DIR, 'store_assets', 'play_store')
EN_OUT_DIR = os.path.join(OUT_DIR, 'english')

W, H = 1024, 500
LATIN_FONT = '/System/Library/Fonts/HelveticaNeue.ttc'
JAPANESE_FONT = '/System/Library/Fonts/Hiragino Sans GB.ttc'
HINDI_FONT = '/System/Library/Fonts/Kohinoor.ttc'
THAI_FONT = '/System/Library/Fonts/Supplemental/Thonburi.ttc'

LOCALIZATIONS = {
    'en-US': {
        'font_path': LATIN_FONT,
        'font_index': 0,
        'tagline': ["Remember when you", "last did anything."],
        'pills': [("100% OFFLINE", (40, 160, 255)), ("NO ADS", (50, 205, 120)), ("CATEGORIES", (255, 185, 60))],
    },
    'de-DE': {
        'font_path': LATIN_FONT,
        'font_index': 0,
        'tagline': ["Erinnere dich, wann du", "zuletzt etwas getan hast."],
        'pills': [("100% OFFLINE", (40, 160, 255)), ("KEINE WERBUNG", (50, 205, 120)), ("KATEGORIEN", (255, 185, 60))],
    },
    'es-419': {
        'font_path': LATIN_FONT,
        'font_index': 0,
        'tagline': ["Recuerda cuándo hiciste", "cualquier cosa."],
        'pills': [("SIN CONEXIÓN", (40, 160, 255)), ("SIN ANUNCIOS", (50, 205, 120)), ("CATEGORÍAS", (255, 185, 60))],
    },
    'fr-FR': {
        'font_path': LATIN_FONT,
        'font_index': 0,
        'tagline': ["Rappelez-vous quand", "vous l'avez fait."],
        'pills': [("100% HORS LIGNE", (40, 160, 255)), ("SANS PUB", (50, 205, 120)), ("CATÉGORIES", (255, 185, 60))],
    },
    'ja-JP': {
        'font_path': JAPANESE_FONT,
        'font_index': 2,
        'tagline': ["「前回いつやった？」を", "ひと目で確認。"],
        'pills': [("完全オフライン", (40, 160, 255)), ("広告なし", (50, 205, 120)), ("カテゴリ", (255, 185, 60))],
    },
    'hi-IN': {
        'font_path': HINDI_FONT,
        'font_index': 0,
        'tagline': ["याद रखें कि आपने आखिरी बार", "कब क्या किया था।"],
        'pills': [("100% ऑफ़लाइन", (40, 160, 255)), ("कोई विज्ञापन नहीं", (50, 205, 120)), ("श्रेणियां", (255, 185, 60))],
    },
    'lt': {
        'font_path': LATIN_FONT,
        'font_index': 0,
        'tagline': ["Prisiminkite, kada", "ką nors darėte."],
        'pills': [("100% NEPRISIJUNGUS", (40, 160, 255)), ("BE REKLAMŲ", (50, 205, 120)), ("KATEGORIJOS", (255, 185, 60))],
    },
    'nl-NL': {
        'font_path': LATIN_FONT,
        'font_index': 0,
        'tagline': ["Onthoud wanneer je", "iets voor het laatst deed."],
        'pills': [("100% OFFLINE", (40, 160, 255)), ("GEEN ADVERTENTIES", (50, 205, 120)), ("CATEGORIEËN", (255, 185, 60))],
    },
    'ro': {
        'font_path': LATIN_FONT,
        'font_index': 0,
        'tagline': ["Amintește-ți când", "ai făcut ceva ultima dată."],
        'pills': [("100% OFFLINE", (40, 160, 255)), ("FĂRĂ RECLAME", (50, 205, 120)), ("CATEGORII", (255, 185, 60))],
    },
    'th': {
        'font_path': THAI_FONT,
        'font_index': 0,
        'tagline': ["จำได้เสมอว่าคุณทำสิ่งนั้น", "ครั้งสุดท้ายเมื่อไร"],
        'pills': [("ออฟไลน์ 100%", (40, 160, 255)), ("ไม่มีโฆษณา", (50, 205, 120)), ("หมวดหมู่", (255, 185, 60))],
    },
}

def create_feature_background(w, h):
    """Creates a smooth radial gradient with electric deep navy lighting."""
    bw, bh = w // 2, h // 2
    small = Image.new('RGB', (bw, bh))
    
    # Glow center positioned slightly right towards the phones
    bcx = bw * 0.65
    bcy = bh * 0.50
    b_max = math.sqrt(w**2 + h**2) * 0.55 / 2.0
    
    center_rgb = (28, 92, 220)
    mid_rgb = (10, 32, 85)
    edge_rgb = (3, 8, 22)
    
    pixels = small.load()
    for y in range(bh):
        for x in range(bw):
            dx = (x - bcx) * 1.10
            dy = y - bcy
            dist = math.sqrt(dx*dx + dy*dy)
            t = min(1.0, dist / b_max)
            t = (1.0 - math.cos(t * math.pi)) / 2.0
            if t < 0.45:
                st = t / 0.45
                r = int(center_rgb[0] * (1 - st) + mid_rgb[0] * st)
                g = int(center_rgb[1] * (1 - st) + mid_rgb[1] * st)
                b = int(center_rgb[2] * (1 - st) + mid_rgb[2] * st)
            else:
                st = (t - 0.45) / 0.55
                r = int(mid_rgb[0] * (1 - st) + edge_rgb[0] * st)
                g = int(mid_rgb[1] * (1 - st) + edge_rgb[1] * st)
                b = int(mid_rgb[2] * (1 - st) + edge_rgb[2] * st)
            pixels[x, y] = (r, g, b)
            
    return small.resize((w, h), Image.Resampling.BICUBIC)

def build_tilted_phone(raw_img, target_h=412, angle=-5):
    """Wraps full phone in razor-sharp metallic chassis using 4x supersampling and crisp drop shadow."""
    s = 4
    h_4x = target_h * s
    rw, rh = raw_img.size
    w_4x = int(rw * (h_4x / float(rh)))
    
    screen_4x = raw_img.resize((w_4x, h_4x), Image.Resampling.LANCZOS)
    
    corner_r = int(24 * (target_h / 430.0) * s)
    bezel = int(7 * (target_h / 430.0) * s)
    dev_w = w_4x + bezel * 2
    dev_h = h_4x + bezel * 2
    dev_r = corner_r + bezel
    
    # Mask screen corners
    mask = Image.new('L', (w_4x, h_4x), 0)
    draw_mask = ImageDraw.Draw(mask)
    draw_mask.rounded_rectangle((0, 0, w_4x, h_4x), corner_r, fill=255)
    
    # Outer device chassis at 4x
    device = Image.new('RGBA', (dev_w, dev_h), (0, 0, 0, 0))
    draw_dev = ImageDraw.Draw(device)
    
    # Outer rim: crisp titanium bevel
    draw_dev.rounded_rectangle(
        (0, 0, dev_w, dev_h),
        dev_r,
        fill=(18, 22, 30, 255),
        outline=(110, 135, 175, 255),
        width=2 * s
    )
    # Inner border next to screen
    draw_dev.rounded_rectangle(
        (bezel - 2 * s, bezel - 2 * s, dev_w - bezel + 2 * s, dev_h - bezel + 2 * s),
        corner_r + 2 * s,
        outline=(10, 14, 22, 255),
        width=1 * s
    )
    device.paste(screen_4x, (bezel, bezel), mask)
    
    # Camera dot
    cam_x = dev_w // 2
    cam_y = bezel + int(corner_r * 0.45)
    cam_r = 3 * s
    draw_dev.ellipse((cam_x - cam_r, cam_y - cam_r, cam_x + cam_r, cam_y + cam_r), fill=(10, 12, 16, 255))
    
    # Rotate at 4x
    rot_dev = device.rotate(angle, resample=Image.Resampling.BICUBIC, expand=True)
    
    # Downscale with Lanczos for razor-sharp edges and pristine subpixel anti-aliasing
    final_w = int(rot_dev.width / s)
    final_h = int(rot_dev.height / s)
    rot_dev_1x = rot_dev.resize((final_w, final_h), Image.Resampling.LANCZOS)
    
    # Directional drop shadow at 1x (no blur bleed on top/left edges)
    sh_margin = 40
    sh_w = final_w + sh_margin * 2
    sh_h = final_h + sh_margin * 2
    
    alpha_1x = rot_dev_1x.split()[3]
    sh_layer = Image.new('RGBA', (sh_w, sh_h), (0, 0, 0, 0))
    sh_mask = Image.new('L', (sh_w, sh_h), 0)
    sh_mask.paste(alpha_1x, (sh_margin + 6, sh_margin + 14))
    
    sh_color = Image.new('RGBA', (sh_w, sh_h), (0, 2, 10, 180))
    sh_layer.paste(sh_color, (0, 0), sh_mask)
    sh_layer = sh_layer.filter(ImageFilter.GaussianBlur(14))
    
    # Composite sharp device directly on top
    sh_layer.paste(rot_dev_1x, (sh_margin, sh_margin), rot_dev_1x)
    return sh_layer, final_w, final_h, sh_margin

def render_left_brand_panel(canvas, loc):
    """Draws 4x supersampled brand identity, title, tagline, and trust pills for a given locale."""
    scale = 4
    panel_w = 520
    panel_h = H
    
    img_4x = Image.new('RGBA', (panel_w * scale, panel_h * scale), (0, 0, 0, 0))
    draw = ImageDraw.Draw(img_4x)
    
    font_path = loc.get('font_path', LATIN_FONT)
    font_idx = loc.get('font_index', 0)
    
    f_brand_bold = ImageFont.truetype(LATIN_FONT, 46 * scale, index=1)
    f_tagline = ImageFont.truetype(font_path, 20 * scale, index=font_idx)
    f_pill = ImageFont.truetype(font_path, 12 * scale, index=font_idx)
    
    start_x = 44 * scale
    curr_y = 65 * scale
    
    # 1. App Icon
    icon_path = os.path.join(BASE_DIR, 'android', 'app', 'src', 'main', 'res', 'mipmap-xxxhdpi', 'ic_launcher.png')
    if os.path.exists(icon_path):
        icon = Image.open(icon_path).convert('RGBA')
        icon_size = 72 * scale
        icon_resized = icon.resize((icon_size, icon_size), Image.Resampling.LANCZOS)
        
        # Soft glow under icon
        icon_glow = Image.new('RGBA', (icon_size + 40 * scale, icon_size + 40 * scale), (0, 0, 0, 0))
        d_ig = ImageDraw.Draw(icon_glow)
        d_ig.ellipse((10 * scale, 10 * scale, icon_size + 30 * scale, icon_size + 30 * scale), fill=(58, 134, 255, 90))
        icon_glow = icon_glow.filter(ImageFilter.GaussianBlur(14 * scale))
        img_4x.paste(icon_glow, (start_x - 20 * scale, curr_y - 20 * scale), icon_glow)
        
        img_4x.paste(icon_resized, (start_x, curr_y), icon_resized)
        curr_y += icon_size + 24 * scale
    else:
        curr_y += 30 * scale
        
    # 2. Brand Name: "Remember" in White, "Last" in Brand Blue (#3A86FF)
    rem_text = "Remember"
    last_text = "Last"
    
    rem_bbox = f_brand_bold.getbbox(rem_text)
    rem_w = rem_bbox[2] - rem_bbox[0]
    
    # Drop shadow
    draw.text((start_x, curr_y + 3 * scale), rem_text, font=f_brand_bold, fill=(0, 2, 8, 160))
    draw.text((start_x + rem_w, curr_y + 3 * scale), last_text, font=f_brand_bold, fill=(0, 2, 8, 160))
    
    # Foreground text
    draw.text((start_x, curr_y), rem_text, font=f_brand_bold, fill=(255, 255, 255, 255))
    draw.text((start_x + rem_w, curr_y), last_text, font=f_brand_bold, fill=(58, 134, 255, 255))
    
    curr_y += (rem_bbox[3] - rem_bbox[1]) + 16 * scale
    
    # 3. Tagline headline
    tagline_lines = loc.get('tagline', ["Remember when you", "last did anything."])
    for line in tagline_lines:
        draw.text((start_x, curr_y + 2 * scale), line, font=f_tagline, fill=(0, 2, 8, 140))
        draw.text((start_x, curr_y), line, font=f_tagline, fill=(225, 235, 248, 255))
        curr_y += 28 * scale
        
    curr_y += 20 * scale
    
    # 4. Feature Badges / Trust Pills
    pills = loc.get('pills', [
        ("100% OFFLINE", (40, 160, 255)),
        ("NO ADS", (50, 205, 120)),
        ("CATEGORIES", (255, 185, 60)),
    ])
    
    px = start_x
    for label, text_color in pills:
        pb = f_pill.getbbox(label)
        pw = pb[2] - pb[0]
        ph = pb[3] - pb[1]
        
        pad_h = 16 * scale
        pad_v = 7 * scale
        total_pw = pw + pad_h * 2
        total_ph = ph + pad_v * 2
        
        draw.rounded_rectangle(
            (px, curr_y, px + total_pw, curr_y + total_ph),
            total_ph // 2,
            fill=(12, 28, 62, 190),
            outline=(50, 95, 180, 140),
            width=2 * scale
        )
        draw.text((px + pad_h, curr_y + pad_v - 1 * scale), label, font=f_pill, fill=text_color)
        px += total_pw + 12 * scale
        
    # Scale down 4x with Lanczos for razor-sharp rendering
    panel_1x = img_4x.resize((panel_w, panel_h), Image.Resampling.LANCZOS)
    canvas.paste(panel_1x, (0, 0), panel_1x)

def main():
    print("Generating redesigned 1024x500 Feature Graphic across all locales...")
    
    # Load raw device screenshots from en-US
    light_raw_path = os.path.join(RAW_DIR, 'en-US', '01_home_light_en-US.png')
    dark_raw_path = os.path.join(RAW_DIR, 'en-US', '01_home_dark_en-US.png')
    
    raw_light = Image.open(light_raw_path).convert('RGBA')
    raw_dark = Image.open(dark_raw_path).convert('RGBA')
    
    # Build tilted full devices (-5 deg angle) once and reuse across all locales!
    print("Building 4x supersampled tilted phones chassis...")
    target_phone_h = 412
    sh_dark, dw_d, dh_d, m_d = build_tilted_phone(raw_dark, target_h=target_phone_h, angle=-5)
    sh_light, dw_l, dh_l, m_l = build_tilted_phone(raw_light, target_h=target_phone_h, angle=-5)
    
    # Pre-render the background + phones base canvas
    base_canvas = create_feature_background(W, H)
    dark_x = 745
    dark_y = (H - dh_d) // 2 + 4
    base_canvas.paste(sh_dark, (dark_x - m_d, dark_y - m_d), sh_dark)
    
    light_x = 540
    light_y = (H - dh_l) // 2 - 4
    base_canvas.paste(sh_light, (light_x - m_l, light_y - m_l), sh_light)
    
    # Generate for all 10 locales
    os.makedirs(OUT_DIR, exist_ok=True)
    
    for locale, loc in LOCALIZATIONS.items():
        canvas = base_canvas.copy()
        render_left_brand_panel(canvas, loc)
        
        locale_dir = os.path.join(OUT_DIR, locale)
        os.makedirs(locale_dir, exist_ok=True)
        out_file = os.path.join(locale_dir, f'feature_graphic_{locale}.png')
        canvas.save(out_file, 'PNG', optimize=True)
        print(f"✓ Saved {out_file}")

if __name__ == '__main__':
    main()
