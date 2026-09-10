from pathlib import Path

base = Path(".")

def page(title, subtitle, sections, viva):
    sec = ""
    for heading, content in sections:
        sec += f"""
<section>
<h2>{heading}</h2>
<div class="box">{content}</div>
</section>
"""
    qs = ""
    for i, (q, a, b, c, d, correct) in enumerate(viva, 1):
        opts = [a,b,c,d]
        qs += f"""
<div class="q">
<p><b>{i}. {q}</b></p>
"""
        for j, opt in enumerate(opts):
            letter = chr(65+j)
            qs += f'<button onclick="check(this,{str(letter==correct).lower()})">{letter}. {opt}</button>'
        qs += '<p class="result"></p></div>'

    return f"""<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>{title}</title>
<style>
body{{margin:0;background:#0f172a;color:#e2e8f0;font-family:Arial;padding:18px;line-height:1.6}}
.container{{max-width:800px;margin:auto}}
h1{{color:#38bdf8;margin-bottom:5px}}
h2{{color:#7dd3fc;margin-bottom:8px}}
.subtitle{{color:#94a3b8}}
section{{background:#111827;border:1px solid #334155;border-radius:14px;padding:16px;margin:15px 0}}
.box{{color:#e2e8f0}}
.back{{display:inline-block;background:#1e293b;color:white;padding:10px 15px;border-radius:9px;text-decoration:none;margin-bottom:15px}}
.q{{background:#172033;border:1px solid #334155;padding:12px;border-radius:12px;margin:12px 0}}
button{{display:block;width:100%;text-align:left;background:#1e293b;color:#e2e8f0;border:1px solid #475569;padding:10px;margin:7px 0;border-radius:8px}}
button:hover{{background:#334155}}
.result{{font-weight:bold}}
</style>
<script>
function check(btn,ok){{
 let r=btn.parentElement.querySelector('.result');
 if(ok){{r.textContent='✓ Correct';r.style.color='#4ade80';}}
 else{{r.textContent='✗ Try again';r.style.color='#fb7185';}}
}}
</script>
</head>
<body>
<div class="container">
<a class="back" href="practical-lab.html">← Practical Lab</a>
<h1>{title}</h1>
<p class="subtitle">{subtitle}</p>
{sec}
<section>
<h2>🎓 Viva / Quick Check</h2>
{qs}
</section>
</div>
</body>
</html>"""

pages = {}

# Pharmaceutics Lab
pages["pharmaceutics-lab.html"] = page(
"💊 Pharmaceutics Lab",
"Practical experiments related to dosage forms and pharmaceutical preparations.",
[
("Aim","To understand basic practical techniques used in preparation and evaluation of pharmaceutical dosage forms."),
("Requirements","Beakers, measuring cylinder, balance, spatula, glass rod, mortar and pestle, suitable ingredients, distilled water and laboratory PPE."),
("Principle","Pharmaceutics practical work applies physical and chemical principles to prepare medicines in suitable dosage forms with appropriate quality."),
("Procedure","1. Read the experiment and laboratory SOP.<br>2. Arrange apparatus and ingredients.<br>3. Measure materials accurately.<br>4. Follow the prescribed preparation method.<br>5. Observe physical characteristics and record results."),
("Observation","Record appearance, colour, odour, clarity, volume, consistency or other parameters required by the specific experiment."),
("Result","The preparation or evaluation is completed according to the prescribed laboratory procedure."),
("Precautions","Wear PPE, label all preparations, use clean apparatus, measure accurately, avoid contamination, and follow the instructor's SOP.")
],
[
("What is pharmaceutics?","Study of dosage-form design","Study of astronomy","Study of geography","Study of history","A"),
("Why is accurate measurement important?","For reproducible preparation","Only for decoration","To change the label","To increase colour","A"),
("Which apparatus can measure liquid volume?","Measuring cylinder","Mortar only","Spatula only","Balance pan only","A"),
("What should be followed during practical work?","Laboratory SOP","Random procedure","Unknown online recipe","No instructions","A")
])

# Pharmaceutical Chemistry Lab
pages["pharmaceutical-chemistry-lab.html"] = page(
"⚗️ Pharmaceutical Chemistry Lab",
"Basic practical work involving pharmaceutical substances and chemical tests.",
[
("Aim","To understand basic laboratory techniques used for identification and examination of pharmaceutical substances."),
("Requirements","Test tubes, test-tube holder, beakers, measuring cylinder, droppers, glass rod, appropriate reagents and PPE."),
("Principle","Pharmaceutical chemistry uses chemical and physical principles to identify, characterize and evaluate substances used in medicines."),
("Procedure","1. Read the experiment carefully.<br>2. Arrange clean apparatus.<br>3. Take the required sample as instructed.<br>4. Add reagents according to the laboratory manual.<br>5. Observe the specified change and record it."),
("Observation","Record colour change, precipitate, odour, solubility or other observations only when required by the approved practical procedure."),
("Result","The sample is examined according to the prescribed test and the observation is recorded."),
("Precautions","Use PPE, handle reagents carefully, never taste chemicals, avoid direct inhalation, label samples, and follow instructor supervision.")
],
[
("What is a major purpose of pharmaceutical chemistry?","Study and identification of drug substances","Study of planets","Study of weather","Study of languages","A"),
("What should be used when handling laboratory chemicals?","Appropriate PPE","Bare hands only","Food utensils","No protection","A"),
("What should be recorded during a chemical test?","Relevant observations","Unrelated stories","Personal guesses","Nothing","A"),
("Where should chemical procedures come from?","Approved laboratory manual/SOP","Random instructions","Guesswork","Social media comments","A")
])

# Pharmacology Lab
pages["pharmacology-lab.html"] = page(
"💉 Pharmacology Lab",
"Practical learning about drug actions, dose-response concepts and safe experimental principles.",
[
("Aim","To understand basic pharmacological practical concepts such as drug action, dose-response relationships and observation of effects."),
("Requirements","Laboratory record, approved practical manual, appropriate instruments or models, calculator when required, and PPE."),
("Principle","Pharmacology studies how drugs interact with biological systems and how drug effects relate to factors such as dose and concentration."),
("Procedure","1. Read the approved practical protocol.<br>2. Understand the drug, model and expected observations.<br>3. Follow the prescribed experimental steps under supervision.<br>4. Record observations accurately.<br>5. Interpret the result according to the practical manual."),
("Observation","Record measurable or observable effects, timing, dose-related information and other parameters specified by the practical protocol."),
("Result","The pharmacological observation is recorded and interpreted according to the approved practical procedure."),
("Precautions","Perform experiments only under authorized supervision, follow institutional SOPs, handle medicines safely, and never perform human or animal experiments independently.")
],
[
("What does pharmacology study?","Drugs and their effects on biological systems","Only plants","Only rocks","Only machines","A"),
("What can a dose-response relationship describe?","Relationship between dose and effect","Colour of a tablet package","Room temperature only","Tablet brand logo","A"),
("How should pharmacology practicals be performed?","Under approved supervision","Independently on people","Without instructions","Without safety precautions","A"),
("What should be recorded?","Relevant experimental observations","Unrelated information","Guesses only","Nothing","A")
])

for filename, content in pages.items():
    (base / filename).write_text(content, encoding="utf-8")

# Update Practical Lab page with the new sections
p = base / "practical-lab.html"
text = p.read_text(encoding="utf-8")

new_links = """
<section>
<h2>💊 Pharmaceutics Lab</h2>
<a href="pharmaceutics-lab.html" style="display:block;background:#1e293b;color:#fff;padding:15px;margin:10px 0;border-radius:10px;text-decoration:none;border:1px solid #334155">Dosage Forms & Preparations →</a>
</section>

<section>
<h2>⚗️ Pharmaceutical Chemistry Lab</h2>
<a href="pharmaceutical-chemistry-lab.html" style="display:block;background:#1e293b;color:#fff;padding:15px;margin:10px 0;border-radius:10px;text-decoration:none;border:1px solid #334155">Chemical Tests & Identification →</a>
</section>

<section>
<h2>💉 Pharmacology Lab</h2>
<a href="pharmacology-lab.html" style="display:block;background:#1e293b;color:#fff;padding:15px;margin:10px 0;border-radius:10px;text-decoration:none;border:1px solid #334155">Drug Action Practical →</a>
</section>
"""

if "pharmaceutics-lab.html" not in text:
    text = text.replace("</main>", new_links + "\n</main>")

p.write_text(text, encoding="utf-8")

# Also add Practical Lab card to Pharm D page if missing
p2 = base / "pharmd.html"
t2 = p2.read_text(encoding="utf-8")

if "practical-lab.html" not in t2:
    card = '<a href="practical-lab.html" style="display:block;background:#1e293b;color:#fff;padding:15px;margin:10px 0;border-radius:10px;text-decoration:none;border:1px solid #334155">🧪 Practical Lab →</a>'
    t2 = t2.replace("</main>", card + "\n</main>")
    p2.write_text(t2, encoding="utf-8")

print("DONE")
print("Created:")
for f in pages:
    print(" -", f)
print("Updated practical-lab.html")
print("Updated pharmd.html if needed")
