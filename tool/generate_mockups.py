#!/usr/bin/env python3
"""
Generate clean, studio-grade Google Play Store mockups (1024x1536) for all target countries.
Outputs directly into country-named folders: germany, japan, spain, lithuania, india, romania, thailand.
Uses 4x supersampled typography, authentic smartphone frames, and smooth radial lighting backgrounds.
"""

import os
import math
from PIL import Image, ImageDraw, ImageFont, ImageFilter

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
RAW_DIR = os.path.join(BASE_DIR, 'store_assets', 'raw')
OUT_DIR_BASE = os.path.join(BASE_DIR, 'store_assets', 'play_store')

W, H = 1024, 1536

# System font paths
LATIN_FONT = '/System/Library/Fonts/HelveticaNeue.ttc'
JAPANESE_FONT = '/System/Library/Fonts/Hiragino Sans GB.ttc'
HINDI_FONT = '/System/Library/Fonts/Kohinoor.ttc'
THAI_FONT = '/System/Library/Fonts/Supplemental/Thonburi.ttc'

COUNTRIES = {
    'germany': {
        'font_path': LATIN_FONT,
        'font_index': 1,
        'screens': {
            '01': {
                'pill': '100% OFFLINE • KEINE WERBUNG',
                'lines': ['Erinnere dich, wann du', 'zuletzt etwas getan hast'],
                'size': 58,
            },
            '02': {
                'pill': 'GENAUER ZEITVERLAUF',
                'lines': ['Sieh genau, wie lange', 'es her ist'],
                'size': 60,
            },
            '03': {
                'pill': 'INDIVIDUELLES DESIGN',
                'lines': ['Hell und Dunkel —', 'ganz wie du willst'],
                'size': 58,
            },
            '04': {
                'pill': 'SCHNELLER EINTRAG',
                'title': 'Mit einem Fingertipp erledigt',
                'size': 56,
            }
        }
    },
    'japan': {
        'font_path': JAPANESE_FONT,
        'font_index': 2,
        'raw_dir': 'ja',
        'screens': {
            '01': {
                'pill': '完全オフライン • 広告なし',
                'lines': ['「前回いつやった？」を', 'ひと目で確認'],
                'size': 54,
            },
            '02': {
                'pill': '正確な経過時間',
                'lines': ['経過時間を', 'ひと目で把握'],
                'size': 58,
            },
            '03': {
                'pill': '選べるテーマ',
                'lines': ['ライトとダーク —', '好みのテーマで'],
                'size': 54,
            },
            '04': {
                'pill': 'クイック記録',
                'title': 'ワンタップでかんたん記録',
                'size': 52,
            }
        }
    },
    'spain': {
        'font_path': LATIN_FONT,
        'font_index': 1,
        'screens': {
            '01': {
                'pill': '100% SIN CONEXIÓN • SIN ANUNCIOS',
                'lines': ['Recuerda cuándo hiciste', 'cualquier cosa'],
                'size': 58,
            },
            '02': {
                'pill': 'TIEMPO TRANSCURRIDO',
                'lines': ['Mira exactamente cuánto', 'tiempo pasó'],
                'size': 58,
            },
            '03': {
                'pill': 'DISEÑO PERSONALIZADO',
                'lines': ['Modo claro y oscuro —', 'a tu manera'],
                'size': 56,
            },
            '04': {
                'pill': 'REGISTRO RÁPIDO',
                'title': 'Registra con un solo toque',
                'size': 54,
            }
        }
    },
    'lithuania': {
        'font_path': LATIN_FONT,
        'font_index': 1,
        'raw_dir': 'lt',
        'screens': {
            '01': {
                'pill': '100% NEPRISIJUNGUS • BE REKLAMŲ',
                'lines': ['Prisiminkite, kada ką nors', 'darėte paskutinį kartą'],
                'size': 54,
            },
            '02': {
                'pill': 'TIKSLI LAIKO STATISTIKA',
                'lines': ['Tiksliai matykite, kiek', 'laiko praėjo'],
                'size': 56,
            },
            '03': {
                'pill': 'TINKINAMA TEMA',
                'lines': ['Šviesi ir tamsi tema —', 'kaip jums patogiau'],
                'size': 56,
            },
            '04': {
                'pill': 'GREITAS ĮRAŠAS',
                'title': 'Užregistruokite vienu palietimu',
                'size': 50,
            }
        }
    },
    'india': {
        'font_path': HINDI_FONT,
        'font_index': 3,
        'screens': {
            '01': {
                'pill': '100% ऑफ़लाइन • कोई विज्ञापन नहीं',
                'lines': ['पिछली बार कब किया था', 'आसानी से याद रखें'],
                'size': 54,
            },
            '02': {
                'pill': 'सटीक समय ट्रैक करें',
                'lines': ['बीता हुआ समय', 'तुरंत देखें'],
                'size': 58,
            },
            '03': {
                'pill': 'कस्टम थीम',
                'lines': ['लाइट और डार्क थीम —', 'आपकी पसंद'],
                'size': 54,
            },
            '04': {
                'pill': 'त्वरित लॉग',
                'title': 'एक टैप में त्वरित लॉग',
                'size': 52,
            }
        }
    },
    'romania': {
        'font_path': LATIN_FONT,
        'font_index': 1,
        'screens': {
            '01': {
                'pill': '100% OFFLINE • FĂRĂ RECLAME',
                'lines': ['Amintește-ți când ai făcut', 'ultima dată o sarcină'],
                'size': 54,
            },
            '02': {
                'pill': 'TIMP EXACT TRECUT',
                'lines': ['Vezi exact cât timp', 'a trecut'],
                'size': 58,
            },
            '03': {
                'pill': 'TEME PERSONALIZATE',
                'lines': ['Teme Light & Dark —', 'în stilul tău'],
                'size': 56,
            },
            '04': {
                'pill': 'ÎNREGISTRARE RAPIDĂ',
                'title': 'Înregistrează printr-o atingere',
                'size': 50,
            }
        }
    },
    'thailand': {
        'font_path': THAI_FONT,
        'font_index': 1,
        'screens': {
            '01': {
                'pill': 'ออฟไลน์ 100% • ไม่มีโฆษณา',
                'lines': ['บันทึกว่าทำล่าสุด', 'เมื่อไหร่ได้ง่ายๆ'],
                'size': 52,
            },
            '02': {
                'pill': 'ติดตามเวลาที่แม่นยำ',
                'lines': ['ดูระยะเวลาที่ผ่านมา', 'ได้ทันที'],
                'size': 56,
            },
            '03': {
                'pill': 'ธีมที่ปรับแต่งได้',
                'lines': ['ธีมสว่างและมืด —', 'ในแบบที่คุณชอบ'],
                'size': 52,
            },
            '04': {
                'pill': 'บันทึกรวดเร็ว',
                'title': 'แตะบันทึกได้ทันทีในคลิกเดียว',
                'size': 48,
            }
        }
    },
    'netherlands': {
        'font_path': LATIN_FONT,
        'font_index': 1,
        'screens': {
            '01': {
                'pill': '100% OFFLINE • GEEN RECLAME',
                'lines': ['Onthoud wanneer je iets', 'voor het laatst hebt gedaan'],
                'size': 56,
            },
            '02': {
                'pill': 'EXACTE VERSTREKEN TIJD',
                'lines': ['Zie precies hoelang', 'het geleden is'],
                'size': 58,
            },
            '03': {
                'pill': 'AANPASBAAR DESIGN',
                'lines': ['Licht en donker —', 'precies zoals jij wilt'],
                'size': 56,
            },
            '04': {
                'pill': 'SNELLE INVOER',
                'title': 'Vastleggen met één tik',
                'size': 54,
            }
        }
    },
    'france': {
        'font_path': LATIN_FONT,
        'font_index': 1,
        'screens': {
            '01': {
                'pill': '100% HORS LIGNE • SANS PUB',
                'lines': ["Rappelez-vous quand vous", "l'avez fait pour la dernière fois"],
                'size': 50,
            },
            '02': {
                'pill': 'SUIVI PRÉCIS DU TEMPS',
                'lines': ['Voyez exactement combien', "de temps s'est écoulé"],
                'size': 54,
            },
            '03': {
                'pill': 'THÈMES PERSONNALISÉS',
                'lines': ['Mode clair ou sombre —', 'selon vos envies'],
                'size': 56,
            },
            '04': {
                'pill': 'ENREGISTREMENT RAPIDE',
                'title': 'Enregistrez en un seul geste',
                'size': 52,
            }
        }
    }
}

def create_rich_background(w, h, center_rgb=(24, 96, 230), mid_rgb=(8, 34, 92), edge_rgb=(3, 9, 24)):
    """Creates smooth radial lighting background."""
    bw, bh = w // 2, h // 2
    small = Image.new('RGB', (bw, bh))
    bcx, bcy = bw / 2.0, bh * 0.58
    b_max = math.sqrt(w**2 + h**2) * 0.62 / 2.0
    
    pixels = small.load()
    for y in range(bh):
        for x in range(bw):
            dx = (x - bcx) * 1.15
            dy = y - bcy
            dist = math.sqrt(dx*dx + dy*dy)
            t = min(1.0, dist / b_max)
            t = (1.0 - math.cos(t * math.pi)) / 2.0
            if t < 0.40:
                st = t / 0.40
                r = int(center_rgb[0] * (1 - st) + mid_rgb[0] * st)
                g = int(center_rgb[1] * (1 - st) + mid_rgb[1] * st)
                b = int(center_rgb[2] * (1 - st) + mid_rgb[2] * st)
            else:
                st = (t - 0.40) / 0.60
                r = int(mid_rgb[0] * (1 - st) + edge_rgb[0] * st)
                g = int(mid_rgb[1] * (1 - st) + edge_rgb[1] * st)
                b = int(mid_rgb[2] * (1 - st) + edge_rgb[2] * st)
            pixels[x, y] = (r, g, b)
            
    return small.resize((w, h), Image.Resampling.BICUBIC)

def build_phone_device(raw_img, target_w=580):
    """Wraps screenshot in metallic frame with curved corners and shadow."""
    rw, rh = raw_img.size
    target_h = int(rh * (target_w / float(rw)))
    screen = raw_img.resize((target_w, target_h), Image.Resampling.LANCZOS)
    
    corner_r = int(44 * (target_w / 580.0))
    mask = Image.new('L', (target_w, target_h), 0)
    draw_mask = ImageDraw.Draw(mask)
    draw_mask.rounded_rectangle((0, 0, target_w, target_h), corner_r, fill=255)
    
    bezel = int(12 * (target_w / 580.0))
    dev_w = target_w + bezel * 2
    dev_h = target_h + bezel * 2
    dev_r = corner_r + bezel
    
    device = Image.new('RGBA', (dev_w, dev_h), (0, 0, 0, 0))
    draw_dev = ImageDraw.Draw(device)
    draw_dev.rounded_rectangle((0, 0, dev_w, dev_h), dev_r, fill=(26, 30, 40, 255), outline=(70, 85, 110, 255), width=2)
    draw_dev.rounded_rectangle((bezel - 2, bezel - 2, dev_w - bezel + 2, dev_h - bezel + 2), corner_r + 2, outline=(12, 15, 22, 255), width=2)
    device.paste(screen, (bezel, bezel), mask)
    
    sh_margin = int(90 * (target_w / 580.0))
    sh_w = dev_w + sh_margin * 2
    sh_h = dev_h + sh_margin * 2
    shadow = Image.new('RGBA', (sh_w, sh_h), (0, 0, 0, 0))
    draw_sh = ImageDraw.Draw(shadow)
    draw_sh.rounded_rectangle(
        (sh_margin, sh_margin + 20, sh_margin + dev_w, sh_margin + dev_h + 20),
        dev_r,
        fill=(0, 4, 16, 210)
    )
    shadow = shadow.filter(ImageFilter.GaussianBlur(int(36 * (target_w / 580.0))))
    shadow.paste(device, (sh_margin, sh_margin), device)
    
    return shadow, dev_w, dev_h, sh_margin

def render_header(canvas, pill_text, title_lines, font_path, font_index=1, title_size=58):
    """Draws 4x supersampled pill tag and title headline onto canvas."""
    scale = 4
    header_h = 360
    h_4x = Image.new('RGBA', (W * scale, header_h * scale), (0, 0, 0, 0))
    draw_h = ImageDraw.Draw(h_4x)
    
    font_bold = ImageFont.truetype(font_path, int(title_size * scale), index=font_index)
    font_tag = ImageFont.truetype(font_path, 23 * scale, index=font_index)
    
    # 1. Pill tag
    tag_bbox = font_tag.getbbox(pill_text)
    tag_w = tag_bbox[2] - tag_bbox[0]
    tag_h = tag_bbox[3] - tag_bbox[1]
    
    pad_x = 26 * scale
    pad_y = 11 * scale
    pill_w = tag_w + pad_x * 2
    pill_h = tag_h + pad_y * 2
    pill_x = (W * scale - pill_w) // 2
    pill_y = 75 * scale
    
    draw_h.rounded_rectangle(
        (pill_x, pill_y, pill_x + pill_w, pill_y + pill_h),
        pill_h // 2,
        fill=(15, 35, 75, 180),
        outline=(60, 110, 210, 140),
        width=2 * scale
    )
    draw_h.text((pill_x + pad_x, pill_y + pad_y - 2 * scale), pill_text, font=font_tag, fill=(100, 180, 255, 255))
    
    # 2. Main title
    line_spacing = 16 * scale
    title_bboxes = [font_bold.getbbox(l) for l in title_lines]
    line_heights = [b[3] - b[1] for b in title_bboxes]
    
    title_start_y = pill_y + pill_h + 28 * scale
    curr_y = title_start_y
    for i, line in enumerate(title_lines):
        lw = title_bboxes[i][2] - title_bboxes[i][0]
        lx = (W * scale - lw) // 2
        draw_h.text((lx, curr_y + 3 * scale), line, font=font_bold, fill=(0, 2, 8, 190))
        draw_h.text((lx, curr_y), line, font=font_bold, fill=(255, 255, 255, 255))
        curr_y += line_heights[i] + line_spacing
        
    header_1x = h_4x.resize((W, header_h), Image.Resampling.LANCZOS)
    canvas.paste(header_1x, (0, 0), header_1x)

def render_phone_04(country_key, config, out_dir, raw_dir=RAW_DIR):
    """Generates Phone 04 using the authentic realistic device chassis."""
    s4 = config['screens']['04']
    raw_sub = config.get('raw_dir')

    if raw_sub:
        raw_home_path = os.path.join(raw_dir, '01_home.png')
        raw1 = Image.open(raw_home_path).convert('RGBA')
        bg4 = create_rich_background(W, H)
        sh4, dw4, dh4, m4 = build_phone_device(raw1, target_w=580)
        dev_x = (W - dw4) // 2
        dev_y = 260
        bg4.paste(sh4, (dev_x - m4, dev_y - m4), sh4)

        # Draw glowing ripple over top card's + button
        cx, cy = 932.5, 776.5
        scale_f = 580.0 / raw1.width
        bx = dev_x + 12 + int(cx * scale_f)
        by = dev_y + 12 + int(cy * scale_f)

        glow = Image.new('RGBA', (W, H), (0, 0, 0, 0))
        d_glow = ImageDraw.Draw(glow)
        d_glow.ellipse((bx - 52, by - 52, bx + 52, by + 52), fill=(58, 134, 255, 160))
        glow = glow.filter(ImageFilter.GaussianBlur(12))

        d_halo = ImageDraw.Draw(glow)
        d_halo.ellipse((bx - 36, by - 36, bx + 36, by + 36), outline=(255, 255, 255, 230), width=3)
        bg4.paste(glow, (0, 0), glow)

        # Render 4x supersampled header
        scale = 4
        header_h = 240
        h_4x = Image.new('RGBA', (W * scale, header_h * scale), (0, 0, 0, 0))
        draw_h = ImageDraw.Draw(h_4x)

        f_bold = ImageFont.truetype(config['font_path'], int(s4['size'] * scale), index=config['font_index'])
        f_tag = ImageFont.truetype(config['font_path'], 23 * scale, index=config['font_index'])

        pill_text = s4['pill']
        title_text = s4['title']

        tag_bbox = f_tag.getbbox(pill_text)
        tag_w = tag_bbox[2] - tag_bbox[0]
        tag_h = tag_bbox[3] - tag_bbox[1]
        pad_x = 26 * scale
        pad_y = 11 * scale
        pill_w = tag_w + pad_x * 2
        pill_h = tag_h + pad_y * 2
        pill_x = (W * scale - pill_w) // 2
        pill_y = 48 * scale

        draw_h.rounded_rectangle(
            (pill_x, pill_y, pill_x + pill_w, pill_y + pill_h),
            pill_h // 2,
            fill=(15, 35, 75, 180),
            outline=(60, 110, 210, 140),
            width=2 * scale
        )
        draw_h.text((pill_x + pad_x, pill_y + pad_y - 2 * scale), pill_text, font=f_tag, fill=(100, 180, 255, 255))

        t_bbox = f_bold.getbbox(title_text)
        t_w = t_bbox[2] - t_bbox[0]
        t_x = (W * scale - t_w) // 2
        t_y = pill_y + pill_h + 24 * scale

        draw_h.text((t_x, t_y + 3 * scale), title_text, font=f_bold, fill=(0, 2, 8, 200))
        draw_h.text((t_x, t_y), title_text, font=f_bold, fill=(255, 255, 255, 255))

        header_1x = h_4x.resize((W, header_h), Image.Resampling.LANCZOS)
        bg4.paste(header_1x, (0, 0), header_1x)

        out_path = os.path.join(out_dir, 'phone_04_quick_log.png')
        bg4.save(out_path, 'PNG', optimize=True)
        print(f"  ✓ phone_04_quick_log.png")
        return

    en_p4_path = os.path.join(OUT_DIR_BASE, 'english', 'phone_04_quick_log.png')
    if not os.path.exists(en_p4_path):
        en_p4_path = os.path.join(OUT_DIR_BASE, 'phone_04_quick_log.png')
    base_p4 = Image.open(en_p4_path).convert('RGB')
    
    # Vertically interpolate background columns between y=65 and y=205
    clean_p4 = base_p4.copy()
    p4_pixels = clean_p4.load()
    y1, y2 = 65, 205
    for y in range(y1, y2 + 1):
        t = (y - y1) / float(y2 - y1)
        for x in range(W):
            c1 = base_p4.getpixel((x, y1))
            c2 = base_p4.getpixel((x, y2))
            r = int(c1[0] * (1 - t) + c2[0] * t)
            g = int(c1[1] * (1 - t) + c2[1] * t)
            b = int(c1[2] * (1 - t) + c2[2] * t)
            p4_pixels[x, y] = (r, g, b)
            
    # Render 4x supersampled header
    scale = 4
    header_h = 240
    h_4x = Image.new('RGBA', (W * scale, header_h * scale), (0, 0, 0, 0))
    draw_h = ImageDraw.Draw(h_4x)
    
    f_bold = ImageFont.truetype(config['font_path'], int(s4['size'] * scale), index=config['font_index'])
    f_tag = ImageFont.truetype(config['font_path'], 23 * scale, index=config['font_index'])
    
    pill_text = s4['pill']
    title_text = s4['title']
    
    # Pill
    tag_bbox = f_tag.getbbox(pill_text)
    tag_w = tag_bbox[2] - tag_bbox[0]
    tag_h = tag_bbox[3] - tag_bbox[1]
    pad_x = 26 * scale
    pad_y = 11 * scale
    pill_w = tag_w + pad_x * 2
    pill_h = tag_h + pad_y * 2
    pill_x = (W * scale - pill_w) // 2
    pill_y = 48 * scale
    
    draw_h.rounded_rectangle(
        (pill_x, pill_y, pill_x + pill_w, pill_y + pill_h),
        pill_h // 2,
        fill=(15, 35, 75, 180),
        outline=(60, 110, 210, 140),
        width=2 * scale
    )
    draw_h.text((pill_x + pad_x, pill_y + pad_y - 2 * scale), pill_text, font=f_tag, fill=(100, 180, 255, 255))
    
    # Title
    t_bbox = f_bold.getbbox(title_text)
    t_w = t_bbox[2] - t_bbox[0]
    t_x = (W * scale - t_w) // 2
    t_y = pill_y + pill_h + 24 * scale
    
    draw_h.text((t_x, t_y + 3 * scale), title_text, font=f_bold, fill=(0, 2, 8, 200))
    draw_h.text((t_x, t_y), title_text, font=f_bold, fill=(255, 255, 255, 255))
    
    header_1x = h_4x.resize((W, header_h), Image.Resampling.LANCZOS)
    final_p4 = clean_p4.convert('RGBA')
    final_p4.paste(header_1x, (0, 0), header_1x)
    
    out_path = os.path.join(out_dir, 'phone_04_quick_log.png')
    final_p4.convert('RGB').save(out_path, 'PNG', optimize=True)
    print(f"  ✓ phone_04_quick_log.png")

def generate_country(country_name):
    config = COUNTRIES[country_name]
    country_dir = os.path.join(OUT_DIR_BASE, country_name)
    os.makedirs(country_dir, exist_ok=True)
    
    raw_sub = config.get('raw_dir')
    country_raw_dir = os.path.join(RAW_DIR, raw_sub) if raw_sub else RAW_DIR
    
    print(f"\nGenerating {country_name.upper()} mockups in {country_dir}...")
    
    # 01 Home
    s1 = config['screens']['01']
    bg1 = create_rich_background(W, H)
    raw1 = Image.open(os.path.join(country_raw_dir, '01_home.png')).convert('RGBA')
    sh1, dw1, dh1, m1 = build_phone_device(raw1, target_w=580)
    bg1.paste(sh1, ((W - dw1) // 2 - m1, 370 - m1), sh1)
    render_header(bg1, s1['pill'], s1['lines'], config['font_path'], config['font_index'], s1['size'])
    bg1.save(os.path.join(country_dir, 'phone_01_home.png'), 'PNG', optimize=True)
    print("  ✓ phone_01_home.png")
    
    # 02 Detail
    s2 = config['screens']['02']
    bg2 = create_rich_background(W, H)
    raw2 = Image.open(os.path.join(country_raw_dir, '02_detail.png')).convert('RGBA')
    sh2, dw2, dh2, m2 = build_phone_device(raw2, target_w=580)
    bg2.paste(sh2, ((W - dw2) // 2 - m2, 370 - m2), sh2)
    render_header(bg2, s2['pill'], s2['lines'], config['font_path'], config['font_index'], s2['size'])
    bg2.save(os.path.join(country_dir, 'phone_02_detail.png'), 'PNG', optimize=True)
    print("  ✓ phone_02_detail.png")
    
    # 03 Themes
    s3 = config['screens']['03']
    bg3 = create_rich_background(W, H)
    raw_l = Image.open(os.path.join(country_raw_dir, '01_home_light.png')).convert('RGBA')
    raw_d = Image.open(os.path.join(country_raw_dir, '01_home_dark.png')).convert('RGBA')
    sh_l, dw_l, dh_l, m_l = build_phone_device(raw_l, target_w=460)
    sh_d, dw_d, dh_d, m_d = build_phone_device(raw_d, target_w=460)
    bg3.paste(sh_l, (int(W * 0.04) - m_l, 400 - m_l), sh_l)
    bg3.paste(sh_d, (int(W * 0.44) - m_d, 425 - m_d), sh_d)
    render_header(bg3, s3['pill'], s3['lines'], config['font_path'], config['font_index'], s3['size'])
    bg3.save(os.path.join(country_dir, 'phone_03_themes.png'), 'PNG', optimize=True)
    print("  ✓ phone_03_themes.png")
    
    # 04 Quick Log
    render_phone_04(country_name, config, country_dir, country_raw_dir)
def main():
    for country in COUNTRIES:
        generate_country(country)
    print("\nAll country mockups up to date!")

if __name__ == '__main__':
    main()
