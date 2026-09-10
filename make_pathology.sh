#!/data/data/com.termux/files/usr/bin/bash

make_page () {
file="$1"
title="$2"
subtitle="$3"
notes="$4"
revision="$5"
questions="$6"

cat > "$file" <<HTML
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>$title</title>
<style>
body{margin:0;background:#0f172a;color:#e2e8f0;font-family:Arial,sans-serif;padding:18px}
.box{max-width:750px;margin:auto}
h1{font-size:28px;margin-bottom:5px}
.sub{color:#94a3b8;margin-bottom:20px}
.card{background:#1e293b;padding:18px;border-radius:14px;margin:14px 0;border:1px solid #334155}
h2{color:#38bdf8}
li{margin:10px 0;line-height:1.5}
.q{background:#172033;padding:15px;border-radius:12px;margin:12px 0}
button{width:100%;padding:12px;margin:6px 0;background:#334155;color:white;border:0;border-radius:9px;text-align:left;font-size:15px}
button:hover{background:#475569}
.correct{background:#166534!important}
.wrong{background:#991b1b!important}
.score{font-size:22px;font-weight:bold;color:#38bdf8;margin-top:20px}
a{color:#38bdf8}
</style>
</head>
<body>
<div class="box">
<a href="pathology.html">← Back to Pathology</a>
<h1>$title</h1>
<div class="sub">$subtitle</div>

<div class="card">
<h2>📖 Easy Notes</h2>
$notes
</div>

<div class="card">
<h2>⚡ Quick Revision</h2>
$revision
</div>

<div class="card">
<h2>📝 15 MCQs</h2>
<div id="quiz">$questions</div>
<button onclick="checkQuiz()" style="text-align:center;background:#0284c7">Check Score</button>
<div id="score" class="score"></div>
</div>
</div>

<script>
function checkQuiz(){
let qs=document.querySelectorAll('.q');
let score=0;
qs.forEach(q=>{
let selected=q.querySelector('input:checked');
let ans=q.dataset.answer;
q.querySelectorAll('button').forEach(b=>b.classList.remove('correct','wrong'));
if(selected){
let b=selected.parentElement;
if(selected.value===ans){score++;b.classList.add('correct')}
else{
b.classList.add('wrong');
let correct=q.querySelector('input[value="'+ans+'"]').parentElement;
correct.classList.add('correct');
}
}
});
document.getElementById('score').innerHTML="🎯 Your Score: "+score+" / 15";
}
</script>
</body>
</html>
HTML
}

make_page "cell-injury.html" "Cell Injury" "Pathology • Chapter 01" \
'<p><b>Cell injury</b> occurs when a cell is exposed to stress or harmful conditions that are beyond its ability to adapt.</p>
<ul>
<li><b>Causes:</b> hypoxia, physical agents, chemicals, infections, immune reactions and nutritional imbalance.</li>
<li><b>Reversible injury:</b> the cell can recover if the harmful cause is removed.</li>
<li><b>Irreversible injury:</b> severe damage can lead to cell death.</li>
<li><b>Hypoxia:</b> reduced oxygen availability to tissues.</li>
<li><b>Necrosis:</b> uncontrolled cell death associated with tissue injury.</li>
<li><b>Apoptosis:</b> programmed cell death that helps remove unwanted cells.</li>
</ul>' \
'<ul><li>Cell stress → adaptation or injury</li><li>Reversible injury → recovery possible</li><li>Severe irreversible injury → cell death</li><li>Apoptosis = programmed cell death</li><li>Necrosis = pathologic cell death</li></ul>' \
'<div class="q" data-answer="b"><b>1. Cell injury occurs when:</b><br><label><button><input type="radio" name="q1" value="a"> a) Cell always grows</button></label><label><button><input type="radio" name="q1" value="b"> b) Stress exceeds adaptive capacity</button></label><label><button><input type="radio" name="q1" value="c"> c) Cell divides normally</button></label><label><button><input type="radio" name="q1" value="d"> d) DNA is always copied</button></label></div>
<div class="q" data-answer="a"><b>2. Reversible cell injury means:</b><br><label><button><input type="radio" name="q2" value="a"> a) Cell can recover</button></label><label><button><input type="radio" name="q2" value="b"> b) Cell must die</button></label><label><button><input type="radio" name="q2" value="c"> c) Cancer occurs</button></label><label><button><input type="radio" name="q2" value="d"> d) Infection always occurs</button></label></div>
<div class="q" data-answer="c"><b>3. Hypoxia means reduced:</b><br><label><button><input type="radio" name="q3" value="a"> a) Glucose</button></label><label><button><input type="radio" name="q3" value="b"> b) Protein</button></label><label><button><input type="radio" name="q3" value="c"> c) Oxygen</button></label><label><button><input type="radio" name="q3" value="d"> d) Calcium only</button></label></div>
<div class="q" data-answer="d"><b>4. Apoptosis is:</b><br><label><button><input type="radio" name="q4" value="a"> a) Infection</button></label><label><button><input type="radio" name="q4" value="b"> b) Inflammation</button></label><label><button><input type="radio" name="q4" value="c"> c) Edema</button></label><label><button><input type="radio" name="q4" value="d"> d) Programmed cell death</button></label></div>
<div class="q" data-answer="a"><b>5. Necrosis is generally:</b><br><label><button><input type="radio" name="q5" value="a"> a) Pathologic cell death</button></label><label><button><input type="radio" name="q5" value="b"> b) Normal growth</button></label><label><button><input type="radio" name="q5" value="c"> c) Cell division</button></label><label><button><input type="radio" name="q5" value="d"> d) Protein synthesis</button></label></div>
<div class="q" data-answer="b"><b>6. Which can cause cell injury?</b><br><label><button><input type="radio" name="q6" value="a"> a) Normal breathing</button></label><label><button><input type="radio" name="q6" value="b"> b) Toxic chemicals</button></label><label><button><input type="radio" name="q6" value="c"> c) Normal hydration</button></label><label><button><input type="radio" name="q6" value="d"> d) Normal temperature</button></label></div>
<div class="q" data-answer="c"><b>7. Severe irreversible injury may cause:</b><br><label><button><input type="radio" name="q7" value="a"> a) Normal growth</button></label><label><button><input type="radio" name="q7" value="b"> b) Adaptation only</button></label><label><button><input type="radio" name="q7" value="c"> c) Cell death</button></label><label><button><input type="radio" name="q7" value="d"> d) Normal division</button></label></div>
<div class="q" data-answer="d"><b>8. Apoptosis is important for:</b><br><label><button><input type="radio" name="q8" value="a"> a) Increasing toxins</button></label><label><button><input type="radio" name="q8" value="b"> b) Causing infection</button></label><label><button><input type="radio" name="q8" value="c"> c) Producing bacteria</button></label><label><button><input type="radio" name="q8" value="d"> d) Removing unwanted cells</button></label></div>
<div class="q" data-answer="a"><b>9. A major cause of injury is:</b><br><label><button><input type="radio" name="q9" value="a"> a) Lack of oxygen</button></label><label><button><input type="radio" name="q9" value="b"> b) Normal sleep</button></label><label><button><input type="radio" name="q9" value="c"> c) Normal digestion</button></label><label><button><input type="radio" name="q9" value="d"> d) Normal circulation</button></label></div>
<div class="q" data-answer="c"><b>10. Reversible injury is usually:</b><br><label><button><input type="radio" name="q10" value="a"> a) Permanent</button></label><label><button><input type="radio" name="q10" value="b"> b) Always fatal</button></label><label><button><input type="radio" name="q10" value="c"> c) Recoverable</button></label><label><button><input type="radio" name="q10" value="d"> d) Cancer</button></label></div>
<div class="q" data-answer="b"><b>11. Physical agents can:</b><br><label><button><input type="radio" name="q11" value="a"> a) Prevent all injury</button></label><label><button><input type="radio" name="q11" value="b"> b) Cause cell injury</button></label><label><button><input type="radio" name="q11" value="c"> c) Always cause apoptosis</button></label><label><button><input type="radio" name="q11" value="d"> d) Always cause cancer</button></label></div>
<div class="q" data-answer="d"><b>12. Which is a type of cell death?</b><br><label><button><input type="radio" name="q12" value="a"> a) Diffusion</button></label><label><button><input type="radio" name="q12" value="b"> b) Filtration</button></label><label><button><input type="radio" name="q12" value="c"> c) Absorption</button></label><label><button><input type="radio" name="q12" value="d"> d) Necrosis</button></label></div>
<div class="q" data-answer="a"><b>13. Cell injury can result from:</b><br><label><button><input type="radio" name="q13" value="a"> a) Infections</button></label><label><button><input type="radio" name="q13" value="b"> b) Normal breathing</button></label><label><button><input type="radio" name="q13" value="c"> c) Normal hydration</button></label><label><button><input type="radio" name="q13" value="d"> d) Normal sleep</button></label></div>
<div class="q" data-answer="c"><b>14. The best outcome after reversible injury is:</b><br><label><button><input type="radio" name="q14" value="a"> a) Cell death</button></label><label><button><input type="radio" name="q14" value="b"> b) Cancer</button></label><label><button><input type="radio" name="q14" value="c"> c) Recovery</button></label><label><button><input type="radio" name="q14" value="d"> d) Infection</button></label></div>
<div class="q" data-answer="b"><b>15. Programmed cell death is called:</b><br><label><button><input type="radio" name="q15" value="a"> a) Necrosis</button></label><label><button><input type="radio" name="q15" value="b"> b) Apoptosis</button></label><label><button><input type="radio" name="q15" value="c"> c) Hypoxia</button></label><label><button><input type="radio" name="q15" value="d"> d) Edema</button></label></div>'

make_page "inflammation.html" "Inflammation" "Pathology • Chapter 02" \
'<p><b>Inflammation</b> is a protective response of living tissue to injury or infection.</p>
<ul>
<li><b>Acute inflammation:</b> usually rapid and short-term.</li>
<li><b>Chronic inflammation:</b> longer-lasting response.</li>
<li>Common signs include redness, heat, swelling, pain and loss of function.</li>
<li>Important cells include neutrophils in many acute responses and macrophages in chronic inflammation.</li>
<li>Inflammation helps remove harmful stimuli and begins tissue repair.</li>
</ul>' \
'<ul><li>Inflammation = protective response</li><li>Acute = rapid/short duration</li><li>Chronic = prolonged</li><li>Redness + heat + swelling + pain are classic signs</li><li>Inflammation can support repair</li></ul>' \
'<div class="q" data-answer="a"><b>1. Inflammation is mainly a:</b><br><label><button><input type="radio" name="q1" value="a"> a) Protective response</button></label><label><button><input type="radio" name="q1" value="b"> b) Digestive process</button></label><label><button><input type="radio" name="q1" value="c"> c) Genetic code</button></label><label><button><input type="radio" name="q1" value="d"> d) Hormone</button></label></div>
<div class="q" data-answer="b"><b>2. Acute inflammation is usually:</b><br><label><button><input type="radio" name="q2" value="a"> a) Very prolonged</button></label><label><button><input type="radio" name="q2" value="b"> b) Rapid and short-term</button></label><label><button><input type="radio" name="q2" value="c"> c) Always painless</button></label><label><button><input type="radio" name="q2" value="d"> d) A genetic disease</button></label></div>
<div class="q" data-answer="c"><b>3. Which is a classic sign of inflammation?</b><br><label><button><input type="radio" name="q3" value="a"> a) Blindness</button></label><label><button><input type="radio" name="q3" value="b"> b) Hair growth</button></label><label><button><input type="radio" name="q3" value="c"> c) Swelling</button></label><label><button><input type="radio" name="q3" value="d"> d) Hearing improvement</button></label></div>
<div class="q" data-answer="d"><b>4. Chronic inflammation is:</b><br><label><button><input type="radio" name="q4" value="a"> a) Always immediate</button></label><label><button><input type="radio" name="q4" value="b"> b) Always harmless</button></label><label><button><input type="radio" name="q4" value="c"> c) Only one minute</button></label><label><button><input type="radio" name="q4" value="d"> d) Long-lasting</button></label></div>
<div class="q" data-answer="a"><b>5. Neutrophils are important in many:</b><br><label><button><input type="radio" name="q5" value="a"> a) Acute inflammatory responses</button></label><label><button><input type="radio" name="q5" value="b"> b) Bone formations only</button></label><label><button><input type="radio" name="q5" value="c"> c) Hormone formations only</button></label><label><button><input type="radio" name="q5" value="d"> d) Genetic mutations only</button></label></div>
<div class="q" data-answer="c"><b>6. Macrophages are commonly associated with:</b><br><label><button><input type="radio" name="q6" value="a"> a) Digestion only</button></label><label><button><input type="radio" name="q6" value="b"> b) Bone growth only</button></label><label><button><input type="radio" name="q6" value="c"> c) Chronic inflammation</button></label><label><button><input type="radio" name="q6" value="d"> d) Vision</button></label></div>
<div class="q" data-answer="b"><b>7. Redness is called:</b><br><label><button><input type="radio" name="q7" value="a"> a) Pain</button></label><label><button><input type="radio" name="q7" value="b"> b) Redness</button></label><label><button><input type="radio" name="q7" value="c"> c) Swelling</button></label><label><button><input type="radio" name="q7" value="d"> d) Fever only</button></label></div>
<div class="q" data-answer="d"><b>8. Inflammation may help begin:</b><br><label><button><input type="radio" name="q8" value="a"> a) Hair loss</button></label><label><button><input type="radio" name="q8" value="b"> b) Genetic coding</button></label><label><button><input type="radio" name="q8" value="c"> c) Digestion</button></label><label><button><input type="radio" name="q8" value="d"> d) Tissue repair</button></label></div>
<div class="q" data-answer="a"><b>9. Pain can be a sign of:</b><br><label><button><input type="radio" name="q9" value="a"> a) Inflammation</button></label><label><button><input type="radio" name="q9" value="b"> b) Normal vision</button></label><label><button><input type="radio" name="q9" value="c"> c) Normal hearing</button></label><label><button><input type="radio" name="q9" value="d"> d) Normal digestion</button></label></div>
<div class="q" data-answer="c"><b>10. Heat can occur during:</b><br><label><button><input type="radio" name="q10" value="a"> a) Normal sleep</button></label><label><button><input type="radio" name="q10" value="b"> b) DNA replication</button></label><label><button><input type="radio" name="q10" value="c"> c) Inflammation</button></label><label><button><input type="radio" name="q10" value="d"> d) Protein folding only</button></label></div>
<div class="q" data-answer="b"><b>11. Which is NOT a classic sign?</b><br><label><button><input type="radio" name="q11" value="a"> a) Swelling</button></label><label><button><input type="radio" name="q11" value="b"> b) Improved vision</button></label><label><button><input type="radio" name="q11" value="c"> c) Pain</button></label><label><button><input type="radio" name="q11" value="d"> d) Redness</button></label></div>
<div class="q" data-answer="a"><b>12. Acute inflammation generally starts:</b><br><label><button><input type="radio" name="q12" value="a"> a) Rapidly</button></label><label><button><input type="radio" name="q12" value="b"> b) After many years only</button></label><label><button><input type="radio" name="q12" value="c"> c) Never</button></label><label><button><input type="radio" name="q12" value="d"> d) Only during sleep</button></label></div>
<div class="q" data-answer="d"><b>13. A purpose of inflammation is to:</b><br><label><button><input type="radio" name="q13" value="a"> a) Stop all circulation</button></label><label><button><input type="radio" name="q13" value="b"> b) Stop immunity</button></label><label><button><input type="radio" name="q13" value="c"> c) Destroy every cell</button></label><label><button><input type="radio" name="q13" value="d"> d) Help remove harmful stimuli</button></label></div>
<div class="q" data-answer="c"><b>14. Chronic means:</b><br><label><button><input type="radio" name="q14" value="a"> a) Sudden</button></label><label><button><input type="radio" name="q14" value="b"> b) One second</button></label><label><button><input type="radio" name="q14" value="c"> c) Prolonged</button></label><label><button><input type="radio" name="q14" value="d"> d) Normal</button></label></div>
<div class="q" data-answer="b"><b>15. Swelling is also called:</b><br><label><button><input type="radio" name="q15" value="a"> a) Fever</button></label><label><button><input type="radio" name="q15" value="b"> b) Edema</button></label><label><button><input type="radio" name="q15" value="c"> c) Hypoxia</button></label><label><button><input type="radio" name="q15" value="d"> d) Apoptosis</button></label></div>'

make_page "hematology-basics.html" "Hematology Basics" "Pathology • Chapter 03" \
'<p><b>Hematology</b> is the study of blood and blood-forming tissues.</p>
<ul>
<li><b>RBCs:</b> carry oxygen mainly through hemoglobin.</li>
<li><b>WBCs:</b> participate in body defense and immunity.</li>
<li><b>Platelets:</b> help in blood clotting.</li>
<li><b>Hemoglobin:</b> oxygen-carrying protein in red blood cells.</li>
<li><b>Plasma:</b> liquid part of blood containing water, proteins and other substances.</li>
<li><b>Anemia:</b> a condition involving reduced oxygen-carrying capacity of blood, commonly associated with reduced hemoglobin or RBC mass.</li>
</ul>' \
'<ul><li>RBC = oxygen transport</li><li>WBC = defense</li><li>Platelets = clotting</li><li>Hemoglobin = oxygen-carrying protein</li><li>Plasma = liquid part of blood</li></ul>' \
'<div class="q" data-answer="a"><b>1. Hematology studies:</b><br><label><button><input type="radio" name="q1" value="a"> a) Blood and blood-forming tissues</button></label><label><button><input type="radio" name="q1" value="b"> b) Bones only</button></label><label><button><input type="radio" name="q1" value="c"> c) Skin only</button></label><label><button><input type="radio" name="q1" value="d"> d) Hair only</button></label></div>
<div class="q" data-answer="b"><b>2. RBCs mainly transport:</b><br><label><button><input type="radio" name="q2" value="a"> a) Bacteria</button></label><label><button><input type="radio" name="q2" value="b"> b) Oxygen</button></label><label><button><input type="radio" name="q2" value="c"> c) Platelets</button></label><label><button><input type="radio" name="q2" value="d"> d) Antibodies only</button></label></div>
<div class="q" data-answer="c"><b>3. WBCs are important for:</b><br><label><button><input type="radio" name="q3" value="a"> a) Oxygen transport</button></label><label><button><input type="radio" name="q3" value="b"> b) Clotting only</button></label><label><button><input type="radio" name="q3" value="c"> c) Body defense</button></label><label><button><input type="radio" name="q3" value="d"> d) Digestion</button></label></div>
<div class="q" data-answer="d"><b>4. Platelets help with:</b><br><label><button><input type="radio" name="q4" value="a"> a) Oxygen transport</button></label><label><button><input type="radio" name="q4" value="b"> b) Vision</button></label><label><button><input type="radio" name="q4" value="c"> c) Hearing</button></label><label><button><input type="radio" name="q4" value="d"> d) Blood clotting</button></label></div>
<div class="q" data-answer="a"><b>5. Hemoglobin is found mainly in:</b><br><label><button><input type="radio" name="q5" value="a"> a) RBCs</button></label><label><button><input type="radio" name="q5" value="b"> b) Platelets</button></label><label><button><input type="radio" name="q5" value="c"> c) Plasma only</button></label><label><button><input type="radio" name="q5" value="d"> d) Bone only</button></label></div>
<div class="q" data-answer="c"><b>6. Plasma is the:</b><br><label><button><input type="radio" name="q6" value="a"> a) Solid part of bone</button></label><label><button><input type="radio" name="q6" value="b"> b) Oxygen molecule</button></label><label><button><input type="radio" name="q6" value="c"> c) Liquid part of blood</button></label><label><button><input type="radio" name="q6" value="d"> d) White blood cell</button></label></div>
<div class="q" data-answer="b"><b>7. Anemia commonly involves reduced:</b><br><label><button><input type="radio" name="q7" value="a"> a) Vision</button></label><label><button><input type="radio" name="q7" value="b"> b) Oxygen-carrying capacity</button></label><label><button><input type="radio" name="q7" value="c"> c) Hearing</button></label><label><button><input type="radio" name="q7" value="d"> d) Skin color only</button></label></div>
<div class="q" data-answer="d"><b>8. Which blood component helps clotting?</b><br><label><button><input type="radio" name="q8" value="a"> a) RBC</button></label><label><button><input type="radio" name="q8" value="b"> b) Plasma water</button></label><label><button><input type="radio" name="q8" value="c"> c) Hemoglobin</button></label><label><button><input type="radio" name="q8" value="d"> d) Platelets</button></label></div>
<div class="q" data-answer="a"><b>9. Which cell type is associated with immunity?</b><br><label><button><input type="radio" name="q9" value="a"> a) WBC</button></label><label><button><input type="radio" name="q9" value="b"> b) RBC</button></label><label><button><input type="radio" name="q9" value="c"> c) Platelet</button></label><label><button><input type="radio" name="q9" value="d"> d) Osteocyte</button></label></div>
<div class="q" data-answer="c"><b>10. Oxygen binds mainly to:</b><br><label><button><input type="radio" name="q10" value="a"> a) Platelets</button></label><label><button><input type="radio" name="q10" value="b"> b) Plasma water</button></label><label><button><input type="radio" name="q10" value="c"> c) Hemoglobin</button></label><label><button><input type="radio" name="q10" value="d"> d) WBC nucleus</button></label></div>
<div class="q" data-answer="b"><b>11. Which is a blood component?</b><br><label><button><input type="radio" name="q11" value="a"> a) Neuron</button></label><label><button><input type="radio" name="q11" value="b"> b) RBC</button></label><label><button><input type="radio" name="q11" value="c"> c) Alveolus</button></label><label><button><input type="radio" name="q11" value="d"> d) Nephron</button></label></div>
<div class="q" data-answer="d"><b>12. Plasma contains:</b><br><label><button><input type="radio" name="q12" value="a"> a) Only oxygen</button></label><label><button><input type="radio" name="q12" value="b"> b) Only RBCs</button></label><label><button><input type="radio" name="q12" value="c"> c) Only platelets</button></label><label><button><input type="radio" name="q12" value="d"> d) Water, proteins and other substances</button></label></div>
<div class="q" data-answer="a"><b>13. RBC stands for:</b><br><label><button><input type="radio" name="q13" value="a"> a) Red Blood Cell</button></label><label><button><input type="radio" name="q13" value="b"> b) Rapid Blood Clot</button></label><label><button><input type="radio" name="q13" value="c"> c) Red Bone Cell</button></label><label><button><input type="radio" name="q13" value="d"> d) Reactive Blood Cell</button></label></div>
<div class="q" data-answer="c"><b>14. WBC stands for:</b><br><label><button><input type="radio" name="q14" value="a"> a) White Bone Cell</button></label><label><button><input type="radio" name="q14" value="b"> b) Water Blood Cell</button></label><label><button><input type="radio" name="q14" value="c"> c) White Blood Cell</button></label><label><button><input type="radio" name="q14" value="d"> d) Whole Blood Count</button></label></div>
<div class="q" data-answer="b"><b>15. Platelets are also called:</b><br><label><button><input type="radio" name="q15" value="a"> a) Erythrocytes</button></label><label><button><input type="radio" name="q15" value="b"> b) Thrombocytes</button></label><label><button><input type="radio" name="q15" value="c"> c) Leukocytes</button></label><label><button><input type="radio" name="q15" value="d"> d) Neurons</button></label></div>'

make_page "neoplasia.html" "Neoplasia" "Pathology • Chapter 04" \
'<p><b>Neoplasia</b> means abnormal, uncontrolled cell proliferation.</p>
<ul>
<li><b>Neoplasm:</b> an abnormal mass of tissue resulting from excessive and uncoordinated cell growth.</li>
<li><b>Benign:</b> generally localized and does not invade or metastasize like malignant tumors.</li>
<li><b>Malignant:</b> cancerous growth capable of invasion and metastasis.</li>
<li><b>Metastasis:</b> spread of malignant cells to distant sites.</li>
<li><b>Tumor:</b> commonly used term for a mass caused by abnormal cell growth.</li>
<li>Understanding neoplasia helps pharmacists recognize basic cancer terminology and mechanisms.</li>
</ul>' \
'<ul><li>Neoplasia = abnormal uncontrolled proliferation</li><li>Benign = usually localized</li><li>Malignant = cancerous</li><li>Invasion = growth into surrounding tissue</li><li>Metastasis = spread to distant sites</li></ul>' \
'<div class="q" data-answer="b"><b>1. Neoplasia means:</b><br><label><button><input type="radio" name="q1" value="a"> a) Normal cell growth</button></label><label><button><input type="radio" name="q1" value="b"> b) Abnormal uncontrolled cell proliferation</button></label><label><button><input type="radio" name="q1" value="c"> c) Normal healing</button></label><label><button><input type="radio" name="q1" value="d"> d) Blood clotting</button></label></div>
<div class="q" data-answer="a"><b>2. Malignant tumors are:</b><br><label><button><input type="radio" name="q2" value="a"> a) Cancerous</button></label><label><button><input type="radio" name="q2" value="b"> b) Always harmless</button></label><label><button><input type="radio" name="q2" value="c"> c) Normal</button></label><label><button><input type="radio" name="q2" value="d"> d) Infectious bacteria</button></label></div>
<div class="q" data-answer="c"><b>3. Metastasis means:</b><br><label><button><input type="radio" name="q3" value="a"> a) Cell division only</button></label><label><button><input type="radio" name="q3" value="b"> b) Normal repair</button></label><label><button><input type="radio" name="q3" value="c"> c) Spread to distant sites</button></label><label><button><input type="radio" name="q3" value="d"> d) Blood clotting</button></label></div>
<div class="q" data-answer="d"><b>4. Benign tumors are generally:</b><br><label><button><input type="radio" name="q4" value="a"> a) Always metastatic</button></label><label><button><input type="radio" name="q4" value="b"> b) Always infectious</button></label><label><button><input type="radio" name="q4" value="c"> c) Always malignant</button></label><label><button><input type="radio" name="q4" value="d"> d) Localized</button></label></div>
<div class="q" data-answer="b"><b>5. A neoplasm results from:</b><br><label><button><input type="radio" name="q5" value="a"> a) Normal sleep</button></label><label><button><input type="radio" name="q5" value="b"> b) Abnormal cell proliferation</button></label><label><button><input type="radio" name="q5" value="c"> c) Normal breathing</button></label><label><button><input type="radio" name="q5" value="d"> d) Blood filtration</button></label></div>
<div class="q" data-answer="a"><b>6. Cancerous growth is generally called:</b><br><label><button><input type="radio" name="q6" value="a"> a) Malignant</button></label><label><button><input type="radio" name="q6" value="b"> b) Benign</button></label><label><button><input type="radio" name="q6" value="c"> c) Normal</button></label><label><button><input type="radio" name="q6" value="d"> d) Physiologic</button></label></div>
<div class="q" data-answer="c"><b>7. Invasion means:</b><br><label><button><input type="radio" name="q7" value="a"> a) Normal cell death</button></label><label><button><input type="radio" name="q7" value="b"> b) Blood clotting</button></label><label><button><input type="radio" name="q7" value="c"> c) Growth into surrounding tissue</button></label><label><button><input type="radio" name="q7" value="d"> d) Oxygen transport</button></label></div>
<div class="q" data-answer="d"><b>8. Metastasis is characteristic of:</b><br><label><button><input type="radio" name="q8" value="a"> a) Normal cells</button></label><label><button><input type="radio" name="q8" value="b"> b) Platelets</button></label><label><button><input type="radio" name="q8" value="c"> c) RBCs</button></label><label><button><input type="radio" name="q8" value="d"> d) Malignant tumors</button></label></div>
<div class="q" data-answer="a"><b>9. A tumor is commonly:</b><br><label><button><input type="radio" name="q9" value="a"> a) A mass from abnormal cell growth</button></label><label><button><input type="radio" name="q9" value="b"> b) A blood cell</button></label><label><button><input type="radio" name="q9" value="c"> c) A hormone</button></label><label><button><input type="radio" name="q9" value="d"> d) An enzyme</button></label></div>
<div class="q" data-answer="b"><b>10. Which term means spread of cancer?</b><br><label><button><input type="radio" name="q10" value="a"> a) Diffusion</button></label><label><button><input type="radio" name="q10" value="b"> b) Metastasis</button></label><label><button><input type="radio" name="q10" value="c"> c) Filtration</button></label><label><button><input type="radio" name="q10" value="d"> d) Osmosis</button></label></div>
<div class="q" data-answer="c"><b>11. Benign means generally:</b><br><label><button><input type="radio" name="q11" value="a"> a) Cancerous and metastatic</button></label><label><button><input type="radio" name="q11" value="b"> b) Infectious</button></label><label><button><input type="radio" name="q11" value="c"> c) Non-metastatic/localized</button></label><label><button><input type="radio" name="q11" value="d"> d) Always fatal</button></label></div>
<div class="q" data-answer="d"><b>12. Malignant cells can:</b><br><label><button><input type="radio" name="q12" value="a"> a) Only stay normal</button></label><label><button><input type="radio" name="q12" value="b"> b) Never divide</button></label><label><button><input type="radio" name="q12" value="c"> c) Always repair tissue</button></label><label><button><input type="radio" name="q12" value="d"> d) Invade surrounding tissue</button></label></div>
<div class="q" data-answer="a"><b>13. Neoplasia involves abnormal:</b><br><label><button><input type="radio" name="q13" value="a"> a) Cell proliferation</button></label><label><button><input type="radio" name="q13" value="b"> b) Breathing</button></label><label><button><input type="radio" name="q13" value="c"> c) Digestion only</button></label><label><button><input type="radio" name="q13" value="d"> d) Hearing</button></label></div>
<div class="q" data-answer="c"><b>14. Which is associated with cancer spread?</b><br><label><button><input type="radio" name="q14" value="a"> a) Apoptosis</button></label><label><button><input type="radio" name="q14" value="b"> b) Hemostasis</button></label><label><button><input type="radio" name="q14" value="c"> c) Metastasis</button></label><label><button><input type="radio" name="q14" value="d"> d) Osmosis</button></label></div>
<div class="q" data-answer="b"><b>15. The basic difference is that malignant tumors can:</b><br><label><button><input type="radio" name="q15" value="a"> a) Never grow</button></label><label><button><input type="radio" name="q15" value="b"> b) Invade and metastasize</button></label><label><button><input type="radio" name="q15" value="c"> c) Always disappear</button></label><label><button><input type="radio" name="q15" value="d"> d) Only produce RBCs</button></label></div>'

cat > pathology.html <<'HTML'
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Pathology</title>
<style>
body{margin:0;background:#0f172a;color:#e2e8f0;font-family:Arial,sans-serif;padding:18px}
.box{max-width:750px;margin:auto}
h1{font-size:30px}
.sub{color:#94a3b8;margin-bottom:22px}
.card{display:block;text-decoration:none;color:white;background:#1e293b;padding:18px;margin:12px 0;border-radius:14px;border:1px solid #334155}
.card:hover{background:#263449}
.icon{font-size:25px}
small{display:block;color:#94a3b8;margin-top:7px}
a.back{color:#38bdf8}
</style>
</head>
<body>
<div class="box">
<a class="back" href="pharmd.html">← Back to Pharm D</a>
<h1>🧬 Pathology</h1>
<div class="sub">Easy Notes • Quick Revision • 15 MCQs per chapter</div>

<a class="card" href="cell-injury.html"><span class="icon">🧫</span><br><b>Cell Injury</b><small>Reversible & irreversible injury, apoptosis, necrosis</small></a>

<a class="card" href="inflammation.html"><span class="icon">🔥</span><br><b>Inflammation</b><small>Acute, chronic, signs and inflammatory response</small></a>

<a class="card" href="hematology-basics.html"><span class="icon">🩸</span><br><b>Hematology Basics</b><small>RBCs, WBCs, platelets, hemoglobin and plasma</small></a>

<a class="card" href="neoplasia.html"><span class="icon">🎗️</span><br><b>Neoplasia</b><small>Benign, malignant, invasion and metastasis</small></a>

</div>
</body>
</html>
HTML

echo "Pathology section created successfully!"
ls -lh pathology.html cell-injury.html inflammation.html hematology-basics.html neoplasia.html
