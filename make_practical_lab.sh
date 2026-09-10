#!/data/data/com.termux/files/usr/bin/bash

make_lab(){
cat > "$1" <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>$2 | StudyHub</title>
<style>
*{box-sizing:border-box}
body{margin:0;background:#0f172a;color:#e5e7eb;font-family:Arial,sans-serif}
header{background:#111827;padding:22px 18px;border-bottom:1px solid #334155}
h1{margin:0 0 6px;font-size:25px}.sub{color:#94a3b8;font-size:14px}
main{max-width:720px;margin:auto;padding:18px}
.back{color:#93c5fd;text-decoration:none}
.box{background:#1e293b;border:1px solid #334155;border-radius:14px;padding:18px;margin:15px 0}
h2{font-size:19px;margin-top:0}
li{margin:9px 0;line-height:1.5}
.viva{background:#111827;border:1px solid #334155;border-radius:10px;padding:13px;margin:9px 0}
.note{color:#fbbf24}
</style>
</head>
<body>
<header>
<h1>🧪 $2</h1>
<div class="sub">Pharm D Practical Lab</div>
</header>
<main>
<a class="back" href="practical-lab.html">← Back to Practical Lab</a>

<div class="box"><h2>🎯 Aim</h2>$3</div>
<div class="box"><h2>🧰 Requirements</h2>$4</div>
<div class="box"><h2>📖 Principle</h2>$5</div>
<div class="box"><h2>⚙️ Procedure</h2>$6</div>
<div class="box"><h2>👀 Observation</h2>$7</div>
<div class="box"><h2>✅ Result</h2>$8</div>
<div class="box"><h2>⚠️ Precautions</h2>$9</div>
<div class="box"><h2>🎤 Viva Questions</h2>$10</div>

<div class="box">
<p class="note">⚠️ Practical work should be performed only under your laboratory instructor's supervision and according to your college SOP.</p>
</div>
</main>
</body>
</html>
EOF
}

make_lab pH-practical.html "pH Measurement" \
'<p>To determine the pH of a given solution.</p>' \
'<ul><li>pH meter or suitable pH indicator</li><li>Sample solution</li><li>Beakers</li><li>Distilled water</li></ul>' \
'<p>pH indicates the acidity or basicity of an aqueous solution. A pH meter measures the electrical response related to hydrogen-ion activity.</p>' \
'<ol><li>Prepare the sample according to the laboratory instructions.</li><li>Calibrate the pH meter when required.</li><li>Rinse the electrode appropriately.</li><li>Place the electrode in the sample.</li><li>Allow the reading to stabilize and record it.</li></ol>' \
'<p>Record the observed pH value in the laboratory record.</p>' \
'<p>The pH of the given sample was determined and recorded.</p>' \
'<ul><li>Handle the electrode carefully.</li><li>Rinse it between samples.</li><li>Follow the instrument SOP.</li><li>Do not contaminate the sample.</li></ul>' \
'<div class="viva"><b>Q:</b> What does pH indicate?<br><b>A:</b> Acidity or basicity of a solution.</div><div class="viva"><b>Q:</b> Why is calibration important?<br><b>A:</b> To obtain reliable measurements.</div>'

make_lab solubility-practical.html "Solubility Practical" \
'<p>To study the solubility of a substance in a selected solvent.</p>' \
'<ul><li>Sample substance</li><li>Selected solvent</li><li>Test tubes or beakers</li><li>Balance</li><li>Measuring equipment</li></ul>' \
'<p>Solubility is the amount of a substance that can dissolve in a specified amount of solvent under defined conditions.</p>' \
'<ol><li>Measure the required solvent.</li><li>Add the sample gradually.</li><li>Mix according to the practical instructions.</li><li>Observe whether undissolved material remains.</li><li>Record the observation.</li></ol>' \
'<p>Record the amount dissolved and experimental conditions.</p>' \
'<p>The solubility behavior of the given sample was observed and recorded.</p>' \
'<ul><li>Use clean apparatus.</li><li>Measure quantities carefully.</li><li>Keep temperature conditions consistent when required.</li><li>Follow instructor instructions.</li></ul>' \
'<div class="viva"><b>Q:</b> What is solubility?<br><b>A:</b> The amount of a substance that dissolves under specified conditions.</div><div class="viva"><b>Q:</b> Can temperature affect solubility?<br><b>A:</b> Yes, depending on the substance and solvent.</div>'

make_lab buffer-practical.html "Buffer Preparation" \
'<p>To prepare a buffer solution of a specified composition under laboratory instructions.</p>' \
'<ul><li>Appropriate buffer components</li><li>Volumetric glassware</li><li>Distilled water</li><li>Balance or measuring equipment</li><li>pH meter when required</li></ul>' \
'<p>A buffer solution resists large changes in pH when small amounts of acid or base are added.</p>' \
'<ol><li>Measure the required components.</li><li>Dissolve them as instructed.</li><li>Transfer to appropriate volumetric glassware.</li><li>Make up to the required volume.</li><li>Check pH when instructed.</li></ol>' \
'<p>Record composition, final volume and measured pH when applicable.</p>' \
'<p>The required buffer solution was prepared according to the assigned composition.</p>' \
'<ul><li>Use accurate measurements.</li><li>Use clean glassware.</li><li>Do not alter the assigned composition.</li><li>Follow laboratory SOP.</li></ul>' \
'<div class="viva"><b>Q:</b> What is a buffer?<br><b>A:</b> A solution that resists large pH changes.</div><div class="viva"><b>Q:</b> Why is pH checked?<br><b>A:</b> To verify the prepared solution meets the required pH.</div>'

make_lab viscosity-practical.html "Viscosity Measurement" \
'<p>To determine or compare the viscosity of a liquid using the assigned laboratory method.</p>' \
'<ul><li>Viscometer</li><li>Test liquid</li><li>Thermometer when required</li><li>Timing device</li></ul>' \
'<p>Viscosity describes a liquid's resistance to flow.</p>' \
'<ol><li>Prepare the instrument according to its SOP.</li><li>Place the sample as instructed.</li><li>Maintain the required temperature.</li><li>Take the required measurement.</li><li>Record the result.</li></ol>' \
'<p>Record the measured value with its appropriate unit.</p>' \
'<p>The viscosity of the assigned sample was determined.</p>' \
'<ul><li>Keep temperature controlled.</li><li>Use clean apparatus.</li><li>Follow the instrument instructions.</li><li>Record units correctly.</li></ul>' \
'<div class="viva"><b>Q:</b> What is viscosity?<br><b>A:</b> Resistance of a fluid to flow.</div><div class="viva"><b>Q:</b> Does temperature affect liquid viscosity?<br><b>A:</b> Yes, temperature can affect viscosity.</div>'

make_lab surface-tension.html "Surface Tension Practical" \
'<p>To study or determine the surface tension of a liquid using the assigned laboratory method.</p>' \
'<ul><li>Assigned apparatus</li><li>Test liquid</li><li>Clean glassware</li><li>Measuring equipment</li></ul>' \
'<p>Surface tension arises from cohesive forces at a liquid surface.</p>' \
'<ol><li>Clean the apparatus.</li><li>Prepare the sample.</li><li>Set up the apparatus according to the SOP.</li><li>Perform the measurement.</li><li>Record the observation.</li></ol>' \
'<p>Record the measured value and experimental conditions.</p>' \
'<p>The surface-tension behavior or value of the sample was determined.</p>' \
'<ul><li>Keep apparatus clean.</li><li>Avoid contamination.</li><li>Handle glassware carefully.</li><li>Follow the assigned method.</li></ul>' \
'<div class="viva"><b>Q:</b> What causes surface tension?<br><b>A:</b> Cohesive forces between liquid molecules.</div><div class="viva"><b>Q:</b> Where does surface tension act?<br><b>A:</b> At the surface of a liquid.</div>'

make_lab crude-drug-identification.html "Crude Drug Identification" \
'<p>To identify an assigned crude drug using its observable characteristics and laboratory tests.</p>' \
'<ul><li>Assigned crude drug sample</li><li>Magnifying equipment when required</li><li>Glassware</li><li>Reagents specified by the laboratory</li></ul>' \
'<p>Crude drugs can be evaluated using physical, microscopic and chemical characteristics.</p>' \
'<ol><li>Observe the sample.</li><li>Record organoleptic characteristics.</li><li>Perform the assigned identification test.</li><li>Compare observations with the accepted description.</li><li>Record the result.</li></ol>' \
'<p>Record color, odor, texture, microscopic features or test reaction as applicable.</p>' \
'<p>The assigned crude drug was identified based on the observed characteristics.</p>' \
'<ul><li>Use an authenticated sample.</li><li>Label samples correctly.</li><li>Use reagents carefully.</li><li>Follow laboratory safety rules.</li></ul>' \
'<div class="viva"><b>Q:</b> What is a crude drug?<br><b>A:</b> A natural material used as a medicinal substance with limited processing.</div><div class="viva"><b>Q:</b> What are organoleptic characters?<br><b>A:</b> Observable features such as color, odor, taste and texture.</div>'

make_lab powder-microscopy.html "Powder Microscopy" \
'<p>To examine the microscopic characteristics of a powdered crude drug.</p>' \
'<ul><li>Microscope</li><li>Glass slide</li><li>Cover slip</li><li>Powdered sample</li><li>Mounting medium as instructed</li></ul>' \
'<p>Microscopy can reveal characteristic cellular structures and diagnostic features of powdered plant material.</p>' \
'<ol><li>Place a small amount of sample on a slide.</li><li>Add the required mounting medium.</li><li>Apply the cover slip carefully.</li><li>Examine under suitable magnification.</li><li>Record diagnostic features.</li></ol>' \
'<p>Record observed microscopic structures.</p>' \
'<p>The powdered sample was examined microscopically and characteristic features were recorded.</p>' \
'<ul><li>Keep lenses clean.</li><li>Avoid excess sample.</li><li>Handle slides carefully.</li><li>Start with low magnification.</li></ul>' \
'<div class="viva"><b>Q:</b> Why is microscopy useful?<br><b>A:</b> It helps reveal diagnostic microscopic features.</div><div class="viva"><b>Q:</b> What instrument is used?<br><b>A:</b> A microscope.</div>'

make_lab aseptic-technique.html "Aseptic Technique" \
'<p>To understand and practice basic aseptic techniques used to reduce contamination during microbiology practical work.</p>' \
'<ul><li>Clean work area</li><li>Appropriate laboratory PPE</li><li>Sterile materials as assigned</li><li>Disinfectant according to laboratory SOP</li></ul>' \
'<p>Aseptic technique uses controlled practices to reduce unwanted contamination of materials, samples and work areas.</p>' \
'<ol><li>Clean and prepare the work area.</li><li>Use appropriate PPE.</li><li>Handle sterile materials carefully.</li><li>Minimize unnecessary exposure.</li><li>Dispose of materials according to laboratory SOP.</li></ol>' \
'<p>Record whether the assigned aseptic steps were followed successfully.</p>' \
'<p>The aseptic procedure was performed according to the laboratory instructions.</p>' \
'<ul><li>Follow instructor supervision.</li><li>Keep work surfaces clean.</li><li>Do not touch sterile surfaces unnecessarily.</li><li>Dispose of waste correctly.</li></ul>' \
'<div class="viva"><b>Q:</b> What is aseptic technique?<br><b>A:</b> A set of practices used to reduce contamination.</div><div class="viva"><b>Q:</b> Why is it important?<br><b>A:</b> To protect samples and reduce unwanted contamination.</div>'

make_lab staining-practical.html "Staining Practical" \
'<p>To prepare and observe a stained microbiological specimen using the staining method assigned by the instructor.</p>' \
'<ul><li>Microscope</li><li>Clean slides</li><li>Microbial specimen</li><li>Assigned stains</li><li>Other laboratory materials</li></ul>' \
'<p>Staining increases contrast and can help reveal cellular morphology and selected characteristics.</p>' \
'<ol><li>Prepare the smear according to the laboratory SOP.</li><li>Fix the specimen as instructed.</li><li>Apply the assigned staining procedure.</li><li>Examine microscopically.</li><li>Record observations.</li></ol>' \
'<p>Record cell shape, arrangement and staining characteristics as observed.</p>' \
'<p>The stained specimen was examined and the observed characteristics were recorded.</p>' \
'<ul><li>Use clean slides.</li><li>Follow stain handling instructions.</li><li>Use PPE.</li><li>Dispose of materials safely.</li></ul>' \
'<div class="viva"><b>Q:</b> Why are specimens stained?<br><b>A:</b> To increase contrast for microscopic observation.</div><div class="viva"><b>Q:</b> What instrument is used for observation?<br><b>A:</b> A microscope.</div>'

cat > practical-lab.html <<'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Practical Lab | StudyHub</title>
<style>
body{margin:0;background:#0f172a;color:#e5e7eb;font-family:Arial,sans-serif}
header{background:#111827;padding:24px 18px;border-bottom:1px solid #334155}
h1{margin:0 0 6px}.sub{color:#94a3b8}
main{max-width:700px;margin:auto;padding:18px}
.back{color:#93c5fd;text-decoration:none}
.section{color:#60a5fa;font-size:14px;margin:22px 0 8px}
.card{display:block;background:#1e293b;color:#fff;text-decoration:none;padding:17px;margin:10px 0;border-radius:13px;border:1px solid #334155}
.title{font-size:17px;font-weight:bold}.desc{color:#94a3b8;font-size:13px;margin-top:5px}
</style>
</head>
<body>
<header><h1>🧪 Practical Lab</h1><div class="sub">Pharm D Practical Record & Viva</div></header>
<main>
<a class="back" href="pharmd.html">← Back to Pharm D</a>

<div class="section">💊 PHYSICAL PHARMACY LAB</div>
<a class="card" href="pH-practical.html"><div class="title">📏 pH Measurement</div><div class="desc">Aim • Principle • Procedure • Viva</div></a>
<a class="card" href="solubility-practical.html"><div class="title">🧪 Solubility</div><div class="desc">Solubility study and observations</div></a>
<a class="card" href="buffer-practical.html"><div class="title">⚗️ Buffer Preparation</div><div class="desc">Buffer principle and preparation</div></a>
<a class="card" href="viscosity-practical.html"><div class="title">💧 Viscosity</div><div class="desc">Viscosity measurement</div></a>
<a class="card" href="surface-tension.html"><div class="title">💦 Surface Tension</div><div class="desc">Surface tension practical</div></a>

<div class="section">🌿 PHARMACOGNOSY LAB</div>
<a class="card" href="crude-drug-identification.html"><div class="title">🌱 Crude Drug Identification</div><div class="desc">Identification and diagnostic features</div></a>
<a class="card" href="powder-microscopy.html"><div class="title">🔬 Powder Microscopy</div><div class="desc">Microscopic examination of crude drugs</div></a>

<div class="section">🦠 MICROBIOLOGY LAB</div>
<a class="card" href="aseptic-technique.html"><div class="title">🧤 Aseptic Technique</div><div class="desc">Basic contamination-control practices</div></a>
<a class="card" href="staining-practical.html"><div class="title">🔬 Staining Practical</div><div class="desc">Preparation and microscopic observation</div></a>

<div class="section">📌 MORE LABS</div>
<div class="card"><div class="title">💊 Pharmaceutics Lab</div><div class="desc">Can be added with your college practical syllabus.</div></div>
<div class="card"><div class="title">🧪 Pharmaceutical Chemistry Lab</div><div class="desc">Can be added with your college practical syllabus.</div></div>
<div class="card"><div class="title">💉 Pharmacology Lab</div><div class="desc">Can be added with your college practical syllabus.</div></div>

</main>
</body>
</html>
EOF

python3 - <<'PY'
from pathlib import Path
p=Path("pharmd.html")
s=p.read_text()
if "practical-lab.html" not in s:
    card='''<a href="practical-lab.html" style="display:block;background:#1e293b;color:#fff;padding:16px;margin:10px 0;border-radius:12px;text-decoration:none;border:1px solid #334155"><b>🧪 Practical Lab</b><br><small style="color:#94a3b8">Aim • Requirements • Principle • Procedure • Viva</small></a>
'''
    if "</main>" in s:
        s=s.replace("</main>",card+"</main>",1)
    else:
        s += card
    p.write_text(s)
    print("✅ Practical Lab connected to Pharm D!")
else:
    print("✅ Practical Lab already connected!")
PY

echo "======================================"
echo "✅ PRACTICAL LAB ADDED"
echo "======================================"
echo "Main page: practical-lab.html"
echo "Practical pages created:"
ls -1 pH-practical.html solubility-practical.html buffer-practical.html viscosity-practical.html surface-tension.html crude-drug-identification.html powder-microscopy.html aseptic-technique.html staining-practical.html
