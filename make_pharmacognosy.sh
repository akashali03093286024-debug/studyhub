#!/data/data/com.termux/files/usr/bin/bash

page(){
FILE="$1"
TITLE="$2"
SUB="$3"
NOTES="$4"
REV="$5"
QS="$6"

cat > "$FILE" <<HTML
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>$TITLE</title>
<style>
body{margin:0;background:#0f172a;color:#e2e8f0;font-family:Arial;padding:18px}
.box{max-width:750px;margin:auto}
h1{font-size:28px;margin-bottom:5px}
.sub{color:#94a3b8;margin-bottom:20px}
.card{background:#1e293b;padding:18px;border-radius:14px;margin:14px 0;border:1px solid #334155}
h2{color:#38bdf8}
li{margin:9px 0;line-height:1.5}
.q{background:#172033;padding:15px;border-radius:12px;margin:12px 0}
button{width:100%;padding:12px;margin:5px 0;background:#334155;color:white;border:0;border-radius:9px;text-align:left;font-size:15px}
.correct{background:#166534!important}
.wrong{background:#991b1b!important}
.score{font-size:22px;font-weight:bold;color:#38bdf8;margin-top:20px}
a{color:#38bdf8}
</style>
</head>
<body>
<div class="box">
<a href="pharmacognosy.html">← Back to Pharmacognosy</a>
<h1>$TITLE</h1>
<div class="sub">$SUB</div>

<div class="card"><h2>📖 Easy Notes</h2>$NOTES</div>
<div class="card"><h2>⚡ Quick Revision</h2>$REV</div>

<div class="card">
<h2>📝 15 MCQs</h2>
<div id="quiz">$QS</div>
<button onclick="checkQuiz()" style="text-align:center;background:#0284c7">Check Score</button>
<div id="score" class="score"></div>
</div>
</div>

<script>
function checkQuiz(){
let qs=document.querySelectorAll('.q');
let score=0;
qs.forEach(q=>{
let s=q.querySelector('input:checked');
q.querySelectorAll('button').forEach(b=>b.classList.remove('correct','wrong'));
if(s){
if(s.value===q.dataset.answer){
score++;
s.parentElement.classList.add('correct');
}else{
s.parentElement.classList.add('wrong');
q.querySelector('input[value="'+q.dataset.answer+'"]').parentElement.classList.add('correct');
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

page "pharmacognosy-intro.html" "Introduction to Pharmacognosy" "Pharmacognosy • Chapter 01" \
'<p><b>Pharmacognosy</b> is the study of crude drugs and medicinal substances obtained from natural sources.</p>
<ul>
<li>Natural sources include <b>plants, animals and minerals</b>.</li>
<li>Plants are an important source of medicinal compounds.</li>
<li>Pharmacognosy includes identification, cultivation, collection, processing, storage and evaluation of crude drugs.</li>
<li>A crude drug is a natural substance used medicinally in a relatively unrefined form.</li>
<li>It is important in pharmacy because many medicines and drug substances originate from natural products.</li>
</ul>' \
'<ul><li>Pharmacognosy = study of natural medicinal substances</li><li>Sources = plant, animal, mineral</li><li>Crude drug = relatively unrefined natural medicinal material</li><li>Identification + collection + storage are important</li></ul>' \
'<div class="q" data-answer="b"><b>1. Pharmacognosy mainly studies:</b><br><label><button><input type="radio" name="q1" value="a"> Synthetic polymers</button></label><label><button><input type="radio" name="q1" value="b"> Natural medicinal substances</button></label><label><button><input type="radio" name="q1" value="c"> Computer networks</button></label><label><button><input type="radio" name="q1" value="d"> Electrical circuits</button></label></div>
<div class="q" data-answer="a"><b>2. An important natural source of drugs is:</b><br><label><button><input type="radio" name="q2" value="a"> Plants</button></label><label><button><input type="radio" name="q2" value="b"> Plastic</button></label><label><button><input type="radio" name="q2" value="c"> Glass</button></label><label><button><input type="radio" name="q2" value="d"> Steel</button></label></div>
<div class="q" data-answer="c"><b>3. A crude drug is generally:</b><br><label><button><input type="radio" name="q3" value="a"> Fully synthetic</button></label><label><button><input type="radio" name="q3" value="b"> A laboratory instrument</button></label><label><button><input type="radio" name="q3" value="c"> A relatively unrefined natural medicinal material</button></label><label><button><input type="radio" name="q3" value="d"> A computer file</button></label></div>
<div class="q" data-answer="d"><b>4. Which is a natural source?</b><br><label><button><input type="radio" name="q4" value="a"> Plastic</button></label><label><button><input type="radio" name="q4" value="b"> Steel</button></label><label><button><input type="radio" name="q4" value="c"> Glass</button></label><label><button><input type="radio" name="q4" value="d"> Animal</button></label></div>
<div class="q" data-answer="b"><b>5. Pharmacognosy is important to:</b><br><label><button><input type="radio" name="q5" value="a"> Astronomy</button></label><label><button><input type="radio" name="q5" value="b"> Pharmacy</button></label><label><button><input type="radio" name="q5" value="c"> Civil engineering</button></label><label><button><input type="radio" name="q5" value="d"> Architecture</button></label></div>
<div class="q" data-answer="a"><b>6. Evaluation of crude drugs helps assess:</b><br><label><button><input type="radio" name="q6" value="a"> Their identity and quality</button></label><label><button><input type="radio" name="q6" value="b"> Internet speed</button></label><label><button><input type="radio" name="q6" value="c"> Battery life</button></label><label><button><input type="radio" name="q6" value="d"> Screen size</button></label></div>
<div class="q" data-answer="c"><b>7. Mineral sources are included in:</b><br><label><button><input type="radio" name="q7" value="a"> Computer science</button></label><label><button><input type="radio" name="q7" value="b"> Physics only</button></label><label><button><input type="radio" name="q7" value="c"> Natural drug sources</button></label><label><button><input type="radio" name="q7" value="d"> Programming</button></label></div>
<div class="q" data-answer="d"><b>8. One activity in pharmacognosy is:</b><br><label><button><input type="radio" name="q8" value="a"> Coding</button></label><label><button><input type="radio" name="q8" value="b"> Car repair</button></label><label><button><input type="radio" name="q8" value="c"> Circuit design</button></label><label><button><input type="radio" name="q8" value="d"> Identification of crude drugs</button></label></div>
<div class="q" data-answer="a"><b>9. Plants can provide:</b><br><label><button><input type="radio" name="q9" value="a"> Medicinal compounds</button></label><label><button><input type="radio" name="q9" value="b"> Computer processors</button></label><label><button><input type="radio" name="q9" value="c"> Batteries only</button></label><label><button><input type="radio" name="q9" value="d"> Plastic screens</button></label></div>
<div class="q" data-answer="c"><b>10. Storage of crude drugs is important for:</b><br><label><button><input type="radio" name="q10" value="a"> Increasing screen brightness</button></label><label><button><input type="radio" name="q10" value="b"> Programming</button></label><label><button><input type="radio" name="q10" value="c"> Maintaining quality</button></label><label><button><input type="radio" name="q10" value="d"> Charging phones</button></label></div>
<div class="q" data-answer="b"><b>11. Which is NOT a natural source?</b><br><label><button><input type="radio" name="q11" value="a"> Plant</button></label><label><button><input type="radio" name="q11" value="b"> Plastic</button></label><label><button><input type="radio" name="q11" value="c"> Animal</button></label><label><button><input type="radio" name="q11" value="d"> Mineral</button></label></div>
<div class="q" data-answer="d"><b>12. Collection is part of:</b><br><label><button><input type="radio" name="q12" value="a"> Computer programming</button></label><label><button><input type="radio" name="q12" value="b"> Electrical engineering</button></label><label><button><input type="radio" name="q12" value="c"> Automobile design</button></label><label><button><input type="radio" name="q12" value="d"> Crude drug handling</button></label></div>
<div class="q" data-answer="a"><b>13. Natural products are relevant to:</b><br><label><button><input type="radio" name="q13" value="a"> Drug discovery</button></label><label><button><input type="radio" name="q13" value="b"> Web hosting only</button></label><label><button><input type="radio" name="q13" value="c"> Car racing</button></label><label><button><input type="radio" name="q13" value="d"> Graphic design only</button></label></div>
<div class="q" data-answer="c"><b>14. Pharmacognosy deals with substances of:</b><br><label><button><input type="radio" name="q14" value="a"> Only synthetic origin</button></label><label><button><input type="radio" name="q14" value="b"> Only electronic origin</button></label><label><button><input type="radio" name="q14" value="c"> Natural origin</button></label><label><button><input type="radio" name="q14" value="d"> Only mechanical origin</button></label></div>
<div class="q" data-answer="b"><b>15. A key goal is proper:</b><br><label><button><input type="radio" name="q15" value="a"> Phone configuration</button></label><label><button><input type="radio" name="q15" value="b"> Identification and evaluation</button></label><label><button><input type="radio" name="q15" value="c"> Vehicle tuning</button></label><label><button><input type="radio" name="q15" value="d"> Network hacking</button></label></div>'

page "crude-drugs.html" "Crude Drugs" "Pharmacognosy • Chapter 02" \
'<p><b>Crude drugs</b> are medicinal substances obtained from natural sources and used in a relatively unrefined state.</p>
<ul>
<li>They may consist of whole plants, plant parts, animal materials or minerals.</li>
<li>Examples of plant parts include leaves, roots, bark, flowers, fruits and seeds.</li>
<li>Proper collection, drying and storage help preserve quality.</li>
<li>Adulteration means a crude drug has been substituted, mixed or altered so that its quality or identity is compromised.</li>
</ul>' \
'<ul><li>Crude drug = natural + relatively unrefined</li><li>Plant parts = leaf, root, bark, flower, fruit, seed</li><li>Drying and storage protect quality</li><li>Adulteration compromises identity or quality</li></ul>' \
'<div class="q" data-answer="a"><b>1. Crude drugs are usually:</b><br><label><button><input type="radio" name="q1" value="a"> Relatively unrefined natural materials</button></label><label><button><input type="radio" name="q1" value="b"> Fully synthetic chemicals</button></label><label><button><input type="radio" name="q1" value="c"> Electronic devices</button></label><label><button><input type="radio" name="q1" value="d"> Metals only</button></label></div>
<div class="q" data-answer="b"><b>2. Which is a plant part used as a crude drug?</b><br><label><button><input type="radio" name="q2" value="a"> Screen</button></label><label><button><input type="radio" name="q2" value="b"> Root</button></label><label><button><input type="radio" name="q2" value="c"> Battery</button></label><label><button><input type="radio" name="q2" value="d"> Wire</button></label></div>
<div class="q" data-answer="c"><b>3. Proper drying helps:</b><br><label><button><input type="radio" name="q3" value="a"> Damage every drug</button></label><label><button><input type="radio" name="q3" value="b"> Increase contamination</button></label><label><button><input type="radio" name="q3" value="c"> Preserve quality</button></label><label><button><input type="radio" name="q3" value="d"> Remove all active compounds</button></label></div>
<div class="q" data-answer="d"><b>4. Which can be a crude drug plant part?</b><br><label><button><input type="radio" name="q4" value="a"> Charger</button></label><label><button><input type="radio" name="q4" value="b"> Plastic</button></label><label><button><input type="radio" name="q4" value="c"> Glass</button></label><label><button><input type="radio" name="q4" value="d"> Leaf</button></label></div>
<div class="q" data-answer="a"><b>5. Adulteration can affect:</b><br><label><button><input type="radio" name="q5" value="a"> Quality and identity</button></label><label><button><input type="radio" name="q5" value="b"> Screen resolution</button></label><label><button><input type="radio" name="q5" value="c"> Internet speed</button></label><label><button><input type="radio" name="q5" value="d"> Battery capacity</button></label></div>
<div class="q" data-answer="c"><b>6. Which is a plant part?</b><br><label><button><input type="radio" name="q6" value="a"> Keyboard</button></label><label><button><input type="radio" name="q6" value="b"> Cable</button></label><label><button><input type="radio" name="q6" value="c"> Bark</button></label><label><button><input type="radio" name="q6" value="d"> Processor</button></label></div>
<div class="q" data-answer="b"><b>7. Storage is important to maintain:</b><br><label><button><input type="radio" name="q7" value="a"> Car speed</button></label><label><button><input type="radio" name="q7" value="b"> Drug quality</button></label><label><button><input type="radio" name="q7" value="c"> Screen size</button></label><label><button><input type="radio" name="q7" value="d"> Phone weight</button></label></div>
<div class="q" data-answer="d"><b>8. Which is NOT a plant part?</b><br><label><button><input type="radio" name="q8" value="a"> Seed</button></label><label><button><input type="radio" name="q8" value="b"> Flower</button></label><label><button><input type="radio" name="q8" value="c"> Fruit</button></label><label><button><input type="radio" name="q8" value="d"> Battery</button></label></div>
<div class="q" data-answer="a"><b>9. Adulteration means:</b><br><label><button><input type="radio" name="q9" value="a"> Substitution or alteration compromising quality or identity</button></label><label><button><input type="radio" name="q9" value="b"> Correct identification</button></label><label><button><input type="radio" name="q9" value="c"> Proper storage</button></label><label><button><input type="radio" name="q9" value="d"> Normal drying</button></label></div>
<div class="q" data-answer="c"><b>10. Which can be obtained from animals?</b><br><label><button><input type="radio" name="q10" value="a"> Computer code</button></label><label><button><input type="radio" name="q10" value="b"> Plastic cable</button></label><label><button><input type="radio" name="q10" value="c"> Natural medicinal material</button></label><label><button><input type="radio" name="q10" value="d"> Glass screen</button></label></div>
<div class="q" data-answer="b"><b>11. A root can be:</b><br><label><button><input type="radio" name="q11" value="a"> An electronic part</button></label><label><button><input type="radio" name="q11" value="b"> A plant crude drug part</button></label><label><button><input type="radio" name="q11" value="c"> A metal</button></label><label><button><input type="radio" name="q11" value="d"> A synthetic polymer</button></label></div>
<div class="q" data-answer="d"><b>12. Good storage helps prevent:</b><br><label><button><input type="radio" name="q12" value="a"> Learning</button></label><label><button><input type="radio" name="q12" value="b"> Identification</button></label><label><button><input type="radio" name="q12" value="c"> Proper handling</button></label><label><button><input type="radio" name="q12" value="d"> Quality deterioration</button></label></div>
<div class="q" data-answer="a"><b>13. Which is a seed?</b><br><label><button><input type="radio" name="q13" value="a"> A plant reproductive part</button></label><label><button><input type="radio" name="q13" value="b"> A metal wire</button></label><label><button><input type="radio" name="q13" value="c"> A battery</button></label><label><button><input type="radio" name="q13" value="d"> A computer chip</button></label></div>
<div class="q" data-answer="c"><b>14. Crude drug quality depends partly on:</b><br><label><button><input type="radio" name="q14" value="a"> Phone model</button></label><label><button><input type="radio" name="q14" value="b"> Screen brightness</button></label><label><button><input type="radio" name="q14" value="c"> Proper collection and storage</button></label><label><button><input type="radio" name="q14" value="d"> Internet package</button></label></div>
<div class="q" data-answer="b"><b>15. Which is a natural material?</b><br><label><button><input type="radio" name="q15" value="a"> Plastic screen</button></label><label><button><input type="radio" name="q15" value="b"> Medicinal plant material</button></label><label><button><input type="radio" name="q15" value="c"> Computer cable</button></label><label><button><input type="radio" name="q15" value="d"> Steel plate</button></label></div>'

page "classification-crude-drugs.html" "Classification of Crude Drugs" "Pharmacognosy • Chapter 03" \
'<p>Crude drugs can be classified using different systems.</p>
<ul>
<li><b>Alphabetical classification:</b> arranged according to names in alphabetical order.</li>
<li><b>Taxonomical classification:</b> based on botanical relationships.</li>
<li><b>Morphological classification:</b> based on plant parts or external form, such as leaves, roots, bark and seeds.</li>
<li><b>Chemical classification:</b> based on major chemical constituents, such as alkaloids, glycosides or volatile oils.</li>
<li><b>Pharmacological classification:</b> based on therapeutic or pharmacological action.</li>
</ul>' \
'<ul><li>Alphabetical = name</li><li>Taxonomical = botanical relationship</li><li>Morphological = form/plant part</li><li>Chemical = chemical constituents</li><li>Pharmacological = action/use</li></ul>' \
'<div class="q" data-answer="a"><b>1. Alphabetical classification is based on:</b><br><label><button><input type="radio" name="q1" value="a"> Names</button></label><label><button><input type="radio" name="q1" value="b"> Taste only</button></label><label><button><input type="radio" name="q1" value="c"> Color only</button></label><label><button><input type="radio" name="q1" value="d"> Price</button></label></div>
<div class="q" data-answer="b"><b>2. Taxonomical classification is based on:</b><br><label><button><input type="radio" name="q2" value="a"> Drug price</button></label><label><button><input type="radio" name="q2" value="b"> Botanical relationships</button></label><label><button><input type="radio" name="q2" value="c"> Tablet size</button></label><label><button><input type="radio" name="q2" value="d"> Packaging</button></label></div>
<div class="q" data-answer="c"><b>3. Morphological classification considers:</b><br><label><button><input type="radio" name="q3" value="a"> Internet speed</button></label><label><button><input type="radio" name="q3" value="b"> Brand names only</button></label><label><button><input type="radio" name="q3" value="c"> Plant parts and external form</button></label><label><button><input type="radio" name="q3" value="d"> Phone size</button></label></div>
<div class="q" data-answer="d"><b>4. Chemical classification is based on:</b><br><label><button><input type="radio" name="q4" value="a"> Color</button></label><label><button><input type="radio" name="q4" value="b"> Packaging</button></label><label><button><input type="radio" name="q4" value="c"> Shape only</button></label><label><button><input type="radio" name="q4" value="d"> Chemical constituents</button></label></div>
<div class="q" data-answer="a"><b>5. Pharmacological classification is based on:</b><br><label><button><input type="radio" name="q5" value="a"> Therapeutic or pharmacological action</button></label><label><button><input type="radio" name="q5" value="b"> Alphabet only</button></label><label><button><input type="radio" name="q5" value="c"> Plant height</button></label><label><button><input type="radio" name="q5" value="d"> Storage temperature only</button></label></div>
<div class="q" data-answer="c"><b>6. Leaves and roots relate to:</b><br><label><button><input type="radio" name="q6" value="a"> Chemical classification only</button></label><label><button><input type="radio" name="q6" value="b"> Alphabetical classification</button></label><label><button><input type="radio" name="q6" value="c"> Morphological classification</button></label><label><button><input type="radio" name="q6" value="d"> Computer classification</button></label></div>
<div class="q" data-answer="b"><b>7. Alkaloids can be used in:</b><br><label><button><input type="radio" name="q7" value="a"> Morphological classification only</button></label><label><button><input type="radio" name="q7" value="b"> Chemical classification</button></label><label><button><input type="radio" name="q7" value="c"> Alphabetical classification only</button></label><label><button><input type="radio" name="q7" value="d"> Taxonomical classification only</button></label></div>
<div class="q" data-answer="d"><b>8. Which classification uses botanical relationships?</b><br><label><button><input type="radio" name="q8" value="a"> Chemical</button></label><label><button><input type="radio" name="q8" value="b"> Pharmacological</button></label><label><button><input type="radio" name="q8" value="c"> Alphabetical</button></label><label><button><input type="radio" name="q8" value="d"> Taxonomical</button></label></div>
<div class="q" data-answer="a"><b>9. Which classification uses drug action?</b><br><label><button><input type="radio" name="q9" value="a"> Pharmacological</button></label><label><button><input type="radio" name="q9" value="b"> Morphological</button></label><label><button><input type="radio" name="q9" value="c"> Alphabetical</button></label><label><button><input type="radio" name="q9" value="d"> Taxonomical</button></label></div>
<div class="q" data-answer="c"><b>10. Glycosides are an example relevant to:</b><br><label><button><input type="radio" name="q10" value="a"> Alphabetical classification</button></label><label><button><input type="radio" name="q10" value="b"> Morphological classification</button></label><label><button><input type="radio" name="q10" value="c"> Chemical classification</button></label><label><button><input type="radio" name="q10" value="d"> Taxonomical classification</button></label></div>
<div class="q" data-answer="b"><b>11. Arrangement by drug names is:</b><br><label><button><input type="radio" name="q11" value="a"> Pharmacological</button></label><label><button><input type="radio" name="q11" value="b"> Alphabetical</button></label><label><button><input type="radio" name="q11" value="c"> Chemical</button></label><label><button><input type="radio" name="q11" value="d"> Morphological</button></label></div>
<div class="q" data-answer="d"><b>12. Bark, root and leaf are used in:</b><br><label><button><input type="radio" name="q12" value="a"> Chemical classification</button></label><label><button><input type="radio" name="q12" value="b"> Alphabetical classification</button></label><label><button><input type="radio" name="q12" value="c"> Pharmacological classification</button></label><label><button><input type="radio" name="q12" value="d"> Morphological classification</button></label></div>
<div class="q" data-answer="a"><b>13. Classification by constituents is:</b><br><label><button><input type="radio" name="q13" value="a"> Chemical</button></label><label><button><input type="radio" name="q13" value="b"> Alphabetical</button></label><label><button><input type="radio" name="q13" value="c"> Taxonomical</button></label><label><button><input type="radio" name="q13" value="d"> Morphological</button></label></div>
<div class="q" data-answer="c"><b>14. Classification systems help in:</b><br><label><button><input type="radio" name="q14" value="a"> Phone repair</button></label><label><button><input type="radio" name="q14" value="b"> Gaming</button></label><label><button><input type="radio" name="q14" value="c"> Organizing crude drugs</button></label><label><button><input type="radio" name="q14" value="d"> Video editing</button></label></div>
<div class="q" data-answer="b"><b>15. Which is NOT a classification system listed here?</b><br><label><button><input type="radio" name="q15" value="a"> Chemical</button></label><label><button><input type="radio" name="q15" value="b"> Electronic</button></label><label><button><input type="radio" name="q15" value="c"> Taxonomical</button></label><label><button><input type="radio" name="q15" value="d"> Morphological</button></label></div>'

page "alkaloids.html" "Alkaloids" "Pharmacognosy • Chapter 04" \
'<p><b>Alkaloids</b> are a large group of naturally occurring nitrogen-containing compounds, many of which have significant pharmacological activity.</p>
<ul>
<li>Many alkaloids are basic compounds because of nitrogen atoms.</li>
<li>Examples include <b>morphine, quinine, atropine and caffeine</b>.</li>
<li>Alkaloids can have diverse effects on the human body.</li>
<li>They are important natural products in pharmacognosy and drug discovery.</li>
</ul>' \
'<ul><li>Alkaloids = nitrogen-containing natural compounds</li><li>Many are basic</li><li>Examples: morphine, quinine, atropine, caffeine</li><li>Often pharmacologically active</li></ul>' \
'<div class="q" data-answer="b"><b>1. Alkaloids commonly contain:</b><br><label><button><input type="radio" name="q1" value="a"> Calcium</button></label><label><button><input type="radio" name="q1" value="b"> Nitrogen</button></label><label><button><input type="radio" name="q1" value="c"> Silicon only</button></label><label><button><input type="radio" name="q1" value="d"> Chlorine only</button></label></div>
<div class="q" data-answer="a"><b>2. Which is an alkaloid?</b><br><label><button><input type="radio" name="q2" value="a"> Morphine</button></label><label><button><input type="radio" name="q2" value="b"> Glucose</button></label><label><button><input type="radio" name="q2" value="c"> Water</button></label><label><button><input type="radio" name="q2" value="d"> Sodium chloride</button></label></div>
<div class="q" data-answer="c"><b>3. Many alkaloids are:</b><br><label><button><input type="radio" name="q3" value="a"> Strong acids</button></label><label><button><input type="radio" name="q3" value="b"> Proteins</button></label><label><button><input type="radio" name="q3" value="c"> Basic compounds</button></label><label><button><input type="radio" name="q3" value="d"> Lipids only</button></label></div>
<div class="q" data-answer="d"><b>4. Quinine is an example of:</b><br><label><button><input type="radio" name="q4" value="a"> Carbohydrate</button></label><label><button><input type="radio" name="q4" value="b"> Protein</button></label><label><button><input type="radio" name="q4" value="c"> Mineral</button></label><label><button><input type="radio" name="q4" value="d"> Alkaloid</button></label></div>
<div class="q" data-answer="b"><b>5. Alkaloids are important because many have:</b><br><label><button><input type="radio" name="q5" value="a"> No biological activity</button></label><label><button><input type="radio" name="q5" value="b"> Pharmacological activity</button></label><label><button><input type="radio" name="q5" value="c"> Only nutritional activity</button></label><label><button><input type="radio" name="q5" value="d"> Only structural activity</button></label></div>
<div class="q" data-answer="a"><b>6. Atropine is a:</b><br><label><button><input type="radio" name="q6" value="a"> Alkaloid</button></label><label><button><input type="radio" name="q6" value="b"> Carbohydrate</button></label><label><button><input type="radio" name="q6" value="c"> Vitamin</button></label><label><button><input type="radio" name="q6" value="d"> Lipid</button></label></div>
<div class="q" data-answer="c"><b>7. Caffeine is classified as:</b><br><label><button><input type="radio" name="q7" value="a"> Protein</button></label><label><button><input type="radio" name="q7" value="b"> Glycoside</button></label><label><button><input type="radio" name="q7" value="c"> Alkaloid</button></label><label><button><input type="radio" name="q7" value="d"> Mineral</button></label></div>
<div class="q" data-answer="d"><b>8. The nitrogen in alkaloids contributes to their:</b><br><label><button><input type="radio" name="q8" value="a"> Color only</button></label><label><button><input type="radio" name="q8" value="b"> Weight only</button></label><label><button><input type="radio" name="q8" value="c"> Taste only</button></label><label><button><input type="radio" name="q8" value="d"> Basic character in many cases</button></label></div>
<div class="q" data-answer="a"><b>9. Morphine is obtained naturally from:</b><br><label><button><input type="radio" name="q9" value="a"> Opium poppy</button></label><label><button><input type="radio" name="q9" value="b"> Tea leaf</button></label><label><button><input type="radio" name="q9" value="c"> Ginger root</button></label><label><button><input type="radio" name="q9" value="d"> Aloe leaf</button></label></div>
<div class="q" data-answer="b"><b>10. Alkaloids are studied in:</b><br><label><button><input type="radio" name="q10" value="a"> Engineering</button></label><label><button><input type="radio" name="q10" value="b"> Pharmacognosy</button></label><label><button><input type="radio" name="q10" value="c"> Astronomy</button></label><label><button><input type="radio" name="q10" value="d"> Architecture</button></label></div>
<div class="q" data-answer="d"><b>11. Which is NOT an alkaloid example?</b><br><label><button><input type="radio" name="q11" value="a"> Quinine</button></label><label><button><input type="radio" name="q11" value="b"> Atropine</button></label><label><button><input type="radio" name="q11" value="c"> Morphine</button></label><label><button><input type="radio" name="q11" value="d"> Glucose</button></label></div>
<div class="q" data-answer="c"><b>12. Alkaloids are generally:</b><br><label><button><input type="radio" name="q12" value="a"> Inorganic salts only</button></label><label><button><input type="radio" name="q12" value="b"> Proteins only</button></label><label><button><input type="radio" name="q12" value="c"> Organic nitrogen-containing compounds</button></label><label><button><input type="radio" name="q12" value="d"> Metals</button></label></div>
<div class="q" data-answer="a"><b>13. Which compound is associated with coffee?</b><br><label><button><input type="radio" name="q13" value="a"> Caffeine</button></label><label><button><input type="radio" name="q13" value="b"> Morphine</button></label><label><button><input type="radio" name="q13" value="c"> Quinine</button></label><label><button><input type="radio" name="q13" value="d"> Atropine</button></label></div>
<div class="q" data-answer="b"><b>14. A key feature of many alkaloids is:</b><br><label><button><input type="radio" name="q14" value="a"> No nitrogen</button></label><label><button><input type="radio" name="q14" value="b"> Nitrogen-containing structure</button></label><label><button><input type="radio" name="q14" value="c"> Only mineral content</button></label><label><button><input type="radio" name="q14" value="d"> Only carbohydrates</button></label></div>
<div class="q" data-answer="c"><b>15. Alkaloids may be valuable in:</b><br><label><button><input type="radio" name="q15" value="a"> Electronics</button></label><label><button><input type="radio" name="q15" value="b"> Construction</button></label><label><button><input type="radio" name="q15" value="c"> Drug discovery and therapy</button></label><label><button><input type="radio" name="q15" value="d"> Computer graphics</button></label></div>'

page "glycosides.html" "Glycosides" "Pharmacognosy • Chapter 05" \
'<p><b>Glycosides</b> are compounds that yield a sugar component and a non-sugar component called the aglycone (or genin) when hydrolyzed.</p>
<ul>
<li>The sugar portion is called the <b>glycone</b>.</li>
<li>The non-sugar portion is called the <b>aglycone/genin</b>.</li>
<li>Different glycosides have different pharmacological properties.</li>
<li>Examples include cardiac glycosides and anthraquinone glycosides.</li>
<li>Glycosides are important natural products studied in pharmacognosy.</li>
</ul>' \
'<ul><li>Glycoside → glycone + aglycone after hydrolysis</li><li>Glycone = sugar part</li><li>Aglycone/genin = non-sugar part</li><li>Cardiac and anthraquinone glycosides are important groups</li></ul>' \
'<div class="q" data-answer="a"><b>1. The sugar part of a glycoside is:</b><br><label><button><input type="radio" name="q1" value="a"> Glycone</button></label><label><button><input type="radio" name="q1" value="b"> Genin only</button></label><label><button><input type="radio" name="q1" value="c"> Alkaloid</button></label><label><button><input type="radio" name="q1" value="d"> Tannin</button></label></div>
<div class="q" data-answer="b"><b>2. The non-sugar part is:</b><br><label><button><input type="radio" name="q2" value="a"> Glycone</button></label><label><button><input type="radio" name="q2" value="b"> Aglycone</button></label><label><button><input type="radio" name="q2" value="c"> Glucose only</button></label><label><button><input type="radio" name="q2" value="d"> Protein</button></label></div>
<div class="q" data-answer="c"><b>3. Hydrolysis of a glycoside yields:</b><br><label><button><input type="radio" name="q3" value="a"> Only protein</button></label><label><button><input type="radio" name="q3" value="b"> Only lipid</button></label><label><button><input type="radio" name="q3" value="c"> Sugar and aglycone</button></label><label><button><input type="radio" name="q3" value="d"> Only mineral</button></label></div>
<div class="q" data-answer="d"><b>4. Glycone refers to:</b><br><label><button><input type="radio" name="q4" value="a"> Protein portion</button></label><label><button><input type="radio" name="q4" value="b"> Mineral portion</button></label><label><button><input type="radio" name="q4" value="c"> Nitrogen portion</button></label><label><button><input type="radio" name="q4" value="d"> Sugar portion</button></label></div>
<div class="q" data-answer="a"><b>5. Genin is another name for:</b><br><label><button><input type="radio" name="q5" value="a"> Aglycone</button></label><label><button><input type="radio" name="q5" value="b"> Glycone</button></label><label><button><input type="radio" name="q5" value="c"> Alkaloid</button></label><label><button><input type="radio" name="q5" value="d"> Tannin</button></label></div>
<div class="q" data-answer="c"><b>6. Cardiac glycosides are:</b><br><label><button><input type="radio" name="q6" value="a"> Proteins</button></label><label><button><input type="radio" name="q6" value="b"> Minerals</button></label><label><button><input type="radio" name="q6" value="c"> A group of glycosides</button></label><label><button><input type="radio" name="q6" value="d"> Enzymes</button></label></div>
<div class="q" data-answer="b"><b>7. Glycosides are important in:</b><br><label><button><input type="radio" name="q7" value="a"> Civil engineering</button></label><label><button><input type="radio" name="q7" value="b"> Pharmacognosy</button></label><label><button><input type="radio" name="q7" value="c"> Astronomy</button></label><label><button><input type="radio" name="q7" value="d"> Programming</button></label></div>
<div class="q" data-answer="d"><b>8. The aglycone is the:</b><br><label><button><input type="radio" name="q8" value="a"> Sugar component</button></label><label><button><input type="radio" name="q8" value="b"> Water component</button></label><label><button><input type="radio" name="q8" value="c"> Mineral component</button></label><label><button><input type="radio" name="q8" value="d"> Non-sugar component</button></label></div>
<div class="q" data-answer="a"><b>9. Hydrolysis separates the:</b><br><label><button><input type="radio" name="q9" value="a"> Sugar and non-sugar components</button></label><label><button><input type="radio" name="q9" value="b"> Two proteins</button></label><label><button><input type="radio" name="q9" value="c"> Two minerals</button></label><label><button><input type="radio" name="q9" value="d"> Two vitamins</button></label></div>
<div class="q" data-answer="c"><b>10. Which is a glycoside group?</b><br><label><button><input type="radio" name="q10" value="a"> Proteins</button></label><label><button><input type="radio" name="q10" value="b"> Lipids</button></label><label><button><input type="radio" name="q10" value="c"> Anthraquinone glycosides</button></label><label><button><input type="radio" name="q10" value="d"> Minerals</button></label></div>
<div class="q" data-answer="b"><b>11. Glycone is:</b><br><label><button><input type="radio" name="q11" value="a"> Non-sugar part</button></label><label><button><input type="radio" name="q11" value="b"> Sugar part</button></label><label><button><input type="radio" name="q11" value="c"> Protein part</button></label><label><button><input type="radio" name="q11" value="d"> Mineral part</button></label></div>
<div class="q" data-answer="d"><b>12. Aglycone is:</b><br><label><button><input type="radio" name="q12" value="a"> Sugar</button></label><label><button><input type="radio" name="q12" value="b"> Water</button></label><label><button><input type="radio" name="q12" value="c"> Protein</button></label><label><button><input type="radio" name="q12" value="d"> Non-sugar component</button></label></div>
<div class="q" data-answer="a"><b>13. Glycosides can have:</b><br><label><button><input type="radio" name="q13" value="a"> Pharmacological properties</button></label><label><button><input type="radio" name="q13" value="b"> Only electrical properties</button></label><label><button><input type="radio" name="q13" value="c"> Only mechanical properties</button></label><label><button><input type="radio" name="q13" value="d"> No biological relevance</button></label></div>
<div class="q" data-answer="c"><b>14. Another name for aglycone is:</b><br><label><button><input type="radio" name="q14" value="a"> Glycone</button></label><label><button><input type="radio" name="q14" value="b"> Sugar</button></label><label><button><input type="radio" name="q14" value="c"> Genin</button></label><label><button><input type="radio" name="q14" value="d"> Starch</button></label></div>
<div class="q" data-answer="b"><b>15. Glycosides are commonly studied as:</b><br><label><button><input type="radio" name="q15" value="a"> Synthetic plastics</button></label><label><button><input type="radio" name="q15" value="b"> Natural products</button></label><label><button><input type="radio" name="q15" value="c"> Electronic parts</button></label><label><button><input type="radio" name="q15" value="d"> Metals</button></label></div>'

page "tannins.html" "Tannins" "Pharmacognosy • Chapter 06" \
'<p><b>Tannins</b> are plant polyphenolic compounds known for their astringent properties.</p>
<ul>
<li>They can interact with proteins and produce an astringent effect.</li>
<li>They are generally water-soluble phenolic compounds.</li>
<li>Tannins occur in various plant materials.</li>
<li>They are commonly associated with an astringent taste.</li>
<li>They are important in pharmacognosy because of their biological and traditional uses.</li>
</ul>' \
'<ul><li>Tannins = plant polyphenolic compounds</li><li>Astringent = causes tissue contraction/tightening sensation</li><li>Often water-soluble</li><li>Can interact with proteins</li><li>Associated with astringent taste</li></ul>' \
'<div class="q" data-answer="a"><b>1. Tannins are mainly:</b><br><label><button><input type="radio" name="q1" value="a"> Polyphenolic plant compounds</button></label><label><button><input type="radio" name="q1" value="b"> Proteins</button></label><label><button><input type="radio" name="q1" value="c"> Minerals</button></label><label><button><input type="radio" name="q1" value="d"> Lipids</button></label></div>
<div class="q" data-answer="b"><b>2. Tannins are associated with:</b><br><label><button><input type="radio" name="q2" value="a"> Sweet taste only</button></label><label><button><input type="radio" name="q2" value="b"> Astringent taste</button></label><label><button><input type="radio" name="q2" value="c"> Salty taste only</button></label><label><button><input type="radio" name="q2" value="d"> No taste</button></label></div>
<div class="q" data-answer="c"><b>3. Tannins can interact with:</b><br><label><button><input type="radio" name="q3" value="a"> Glass</button></label><label><button><input type="radio" name="q3" value="b"> Metals only</button></label><label><button><input type="radio" name="q3" value="c"> Proteins</button></label><label><button><input type="radio" name="q3" value="d"> Plastic only</button></label></div>
<div class="q" data-answer="d"><b>4. Tannins are commonly:</b><br><label><button><input type="radio" name="q4" value="a"> Gases</button></label><label><button><input type="radio" name="q4" value="b"> Proteins</button></label><label><button><input type="radio" name="q4" value="c"> Minerals</button></label><label><button><input type="radio" name="q4" value="d"> Phenolic compounds</button></label></div>
<div class="q" data-answer="a"><b>5. Astringent effect is associated with:</b><br><label><button><input type="radio" name="q5" value="a"> Tissue contraction/tightening sensation</button></label><label><button><input type="radio" name="q5" value="b"> Increased sweetness</button></label><label><button><input type="radio" name="q5" value="c"> Vision improvement</button></label><label><button><input type="radio" name="q5" value="d"> Bone growth</button></label></div>
<div class="q" data-answer="c"><b>6. Tannins are important in:</b><br><label><button><input type="radio" name="q6" value="a"> Engineering</button></label><label><button><input type="radio" name="q6" value="b"> Astronomy</button></label><label><button><input type="radio" name="q6" value="c"> Pharmacognosy</button></label><label><button><input type="radio" name="q6" value="d"> Computer science</button></label></div>
<div class="q" data-answer="b"><b>7. Tannins are generally:</b><br><label><button><input type="radio" name="q7" value="a"> Insoluble gases</button></label><label><button><input type="radio" name="q7" value="b"> Water-soluble phenolic compounds</button></label><label><button><input type="radio" name="q7" value="c"> Metals</button></label><label><button><input type="radio" name="q7" value="d"> Proteins only</button></label></div>
<div class="q" data-answer="d"><b>8. Which is associated with tannins?</b><br><label><button><input type="radio" name="q8" value="a"> Sweetness</button></label><label><button><input type="radio" name="q8" value="b"> Saltiness</button></label><label><button><input type="radio" name="q8" value="c"> Oiliness</button></label><label><button><input type="radio" name="q8" value="d"> Astringency</button></label></div>
<div class="q" data-answer="a"><b>9. Tannins occur mainly in:</b><br><label><button><input type="radio" name="q9" value="a"> Plants</button></label><label><button><input type="radio" name="q9" value="b"> Computer chips</button></label><label><button><input type="radio" name="q9" value="c"> Glass</button></label><label><button><input type="radio" name="q9" value="d"> Steel</button></label></div>
<div class="q" data-answer="c"><b>10. Tannins belong to:</b><br><label><button><input type="radio" name="q10" value="a"> Proteins</button></label><label><button><input type="radio" name="q10" value="b"> Carbohydrates only</button></label><label><button><input type="radio" name="q10" value="c"> Polyphenolic compounds</button></label><label><button><input type="radio" name="q10" value="d"> Minerals</button></label></div>
<div class="q" data-answer="b"><b>11. Tannins can bind:</b><br><label><button><input type="radio" name="q11" value="a"> Plastic</button></label><label><button><input type="radio" name="q11" value="b"> Proteins</button></label><label><button><input type="radio" name="q11" value="c"> Glass</button></label><label><button><input type="radio" name="q11" value="d"> Silicon</button></label></div>
<div class="q" data-answer="d"><b>12. The characteristic taste of tannins is:</b><br><label><button><input type="radio" name="q12" value="a"> Sweet</button></label><label><button><input type="radio" name="q12" value="b"> Salty</button></label><label><button><input type="radio" name="q12" value="c"> Sour only</button></label><label><button><input type="radio" name="q12" value="d"> Astringent</button></label></div>
<div class="q" data-answer="a"><b>13. Tannins are natural:</b><br><label><button><input type="radio" name="q13" value="a"> Plant constituents</button></label><label><button><input type="radio" name="q13" value="b"> Electronic components</button></label><label><button><input type="radio" name="q13" value="c"> Metals</button></label><label><button><input type="radio" name="q13" value="d"> Plastics</button></label></div>
<div class="q" data-answer="c"><b>14. Tannins have importance because of their:</b><br><label><button><input type="radio" name="q14" value="a"> Electrical conductivity</button></label><label><button><input type="radio" name="q14" value="b"> Mechanical strength</button></label><label><button><input type="radio" name="q14" value="c"> Biological properties</button></label><label><button><input type="radio" name="q14" value="d"> Computer speed</button></label></div>
<div class="q" data-answer="b"><b>15. Which word best describes tannins?</b><br><label><button><input type="radio" name="q15" value="a"> Metallic</button></label><label><button><input type="radio" name="q15" value="b"> Astringent</button></label><label><button><input type="radio" name="q15" value="c"> Electronic</button></label><label><button><input type="radio" name="q15" value="d"> Mechanical</button></label></div>'

page "volatile-oils.html" "Volatile Oils" "Pharmacognosy • Chapter 07" \
'<p><b>Volatile oils</b> are aromatic plant products that evaporate readily and are also called essential oils.</p>
<ul>
<li>They are responsible for characteristic aromas of many plants.</li>
<li>They are generally obtained by methods such as steam distillation or expression, depending on the plant material.</li>
<li>They are different from fixed oils because volatile oils evaporate more readily and generally do not leave the same persistent greasy stain.</li>
<li>Examples include peppermint oil, clove oil and eucalyptus oil.</li>
<li>They are used in pharmaceutical, cosmetic and flavoring applications.</li>
</ul>' \
'<ul><li>Volatile oil = aromatic, readily evaporating oil</li><li>Also called essential oil</li><li>Examples: peppermint, clove, eucalyptus</li><li>Steam distillation is a common method</li><li>Used in pharmaceutical, cosmetic and flavoring products</li></ul>' \
'<div class="q" data-answer="a"><b>1. Volatile oils are also called:</b><br><label><button><input type="radio" name="q1" value="a"> Essential oils</button></label><label><button><input type="radio" name="q1" value="b"> Fixed proteins</button></label><label><button><input type="radio" name="q1" value="c"> Mineral oils only</button></label><label><button><input type="radio" name="q1" value="d"> Sugars</button></label></div>
<div class="q" data-answer="b"><b>2. Volatile oils are usually:</b><br><label><button><input type="radio" name="q2" value="a"> Non-aromatic</button></label><label><button><input type="radio" name="q2" value="b"> Aromatic</button></label><label><button><input type="radio" name="q2" value="c"> Metallic</button></label><label><button><input type="radio" name="q2" value="d"> Protein-based</button></label></div>
<div class="q" data-answer="c"><b>3. A common method of obtaining volatile oils is:</b><br><label><button><input type="radio" name="q3" value="a"> Freezing only</button></label><label><button><input type="radio" name="q3" value="b"> Filtration only</button></label><label><button><input type="radio" name="q3" value="c"> Steam distillation</button></label><label><button><input type="radio" name="q3" value="d"> Sedimentation</button></label></div>
<div class="q" data-answer="d"><b>4. Which is an example of a volatile oil?</b><br><label><button><input type="radio" name="q4" value="a"> Water</button></label><label><button><input type="radio" name="q4" value="b"> Glucose solution</button></label><label><button><input type="radio" name="q4" value="c"> Sodium chloride solution</button></label><label><button><input type="radio" name="q4" value="d"> Peppermint oil</button></label></div>
<div class="q" data-answer="a"><b>5. Volatile oils contribute mainly to plant:</b><br><label><button><input type="radio" name="q5" value="a"> Aroma</button></label><label><button><input type="radio" name="q5" value="b"> Bone formation</button></label><label><button><input type="radio" name="q5" value="c"> Blood clotting</button></label><label><button><input type="radio" name="q5" value="d"> DNA replication</button></label></div>
<div class="q" data-answer="c"><b>6. Which is another volatile oil example?</b><br><label><button><input type="radio" name="q6" value="a"> Glucose</button></label><label><button><input type="radio" name="q6" value="b"> Starch</button></label><label><button><input type="radio" name="q6" value="c"> Clove oil</button></label><label><button><input type="radio" name="q6" value="d"> Sodium chloride</button></label></div>
<div class="q" data-answer="b"><b>7. Volatile oils differ from fixed oils because they:</b><br><label><button><input type="radio" name="q7" value="a"> Are proteins</button></label><label><button><input type="radio" name="q7" value="b"> Evaporate more readily</button></label><label><button><input type="radio" name="q7" value="c"> Are minerals</button></label><label><button><input type="radio" name="q7" value="d"> Are sugars</button></label></div>
<div class="q" data-answer="d"><b>8. Eucalyptus oil is a:</b><br><label><button><input type="radio" name="q8" value="a"> Protein</button></label><label><button><input type="radio" name="q8" value="b"> Carbohydrate</button></label><label><button><input type="radio" name="q8" value="c"> Mineral</button></label><label><button><input type="radio" name="q8" value="d"> Volatile oil</button></label></div>
<div class="q" data-answer="a"><b>9. Volatile oils are used in:</b><br><label><button><input type="radio" name="q9" value="a"> Pharmaceutical and cosmetic products</button></label><label><button><input type="radio" name="q9" value="b"> Computer processors</button></label><label><button><input type="radio" name="q9" value="c"> Building steel</button></label><label><button><input type="radio" name="q9" value="d"> Glass production only</button></label></div>
<div class="q" data-answer="c"><b>10. Which oil is associated with cloves?</b><br><label><button><input type="radio" name="q10" value="a"> Mineral oil</button></label><label><button><input type="radio" name="q10" value="b"> Fixed protein</button></label><label><button><input type="radio" name="q10" value="c"> Clove oil</button></label><label><button><input type="radio" name="q10" value="d"> Water oil</button></label></div>
<div class="q" data-answer="b"><b>11. Essential oils are generally:</b><br><label><button><input type="radio" name="q11" value="a"> Non-aromatic</button></label><label><button><input type="radio" name="q11" value="b"> Aromatic and volatile</button></label><label><button><input type="radio" name="q11" value="c"> Proteins</button></label><label><button><input type="radio" name="q11" value="d"> Sugars</button></label></div>
<div class="q" data-answer="d"><b>12. Steam distillation is used for:</b><br><label><button><input type="radio" name="q12" value="a"> Protein synthesis</button></label><label><button><input type="radio" name="q12" value="b"> DNA replication</button></label><label><button><input type="radio" name="q12" value="c"> Blood clotting</button></label><label><button><input type="radio" name="q12" value="d"> Obtaining some volatile oils</button></label></div>
<div class="q" data-answer="a"><b>13. Peppermint oil is known for being:</b><br><label><button><input type="radio" name="q13" value="a"> A volatile oil</button></label><label><button><input type="radio" name="q13" value="b"> A protein</button></label><label><button><input type="radio" name="q13" value="c"> A mineral</button></label><label><button><input type="radio" name="q13" value="d"> A carbohydrate</button></label></div>
<div class="q" data-answer="c"><b>14. Volatile oils are studied in:</b><br><label><button><input type="radio" name="q14" value="a"> Engineering</button></label><label><button><input type="radio" name="q14" value="b"> Astronomy</button></label><label><button><input type="radio" name="q14" value="c"> Pharmacognosy</button></label><label><button><input type="radio" name="q14" value="d"> Architecture</button></label></div>
<div class="q" data-answer="b"><b>15. The word volatile means:</b><br><label><button><input type="radio" name="q15" value="a"> Difficult to evaporate</button></label><label><button><input type="radio" name="q15" value="b"> Readily evaporating</button></label><label><button><input type="radio" name="q15" value="c"> Always solid</button></label><label><button><input type="radio" name="q15" value="d"> Always frozen</button></label></div>'

cat > pharmacognosy.html <<'HTML'
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Pharmacognosy</title>
<style>
body{margin:0;background:#0f172a;color:#e2e8f0;font-family:Arial;padding:18px}
.box{max-width:750px;margin:auto}
h1{font-size:30px}
.sub{color:#94a3b8;margin-bottom:22px}
.card{display:block;text-decoration:none;color:white;background:#1e293b;padding:18px;margin:12px 0;border-radius:14px;border:1px solid #334155}
.card:hover{background:#263449}
.icon{font-size:25px}
small{display:block;color:#94a3b8;margin-top:7px}
.back{color:#38bdf8}
</style>
</head>
<body>
<div class="box">
<a class="back" href="pharmd.html">← Back to Pharm D</a>
<h1>🌿 Pharmacognosy</h1>
<div class="sub">Easy Notes • Quick Revision • 15 MCQs per chapter</div>

<a class="card" href="pharmacognosy-intro.html">🌱 <b>Introduction to Pharmacognosy</b><small>Natural sources, crude drugs and importance</small></a>
<a class="card" href="crude-drugs.html">🌿 <b>Crude Drugs</b><small>Definition, plant parts, quality and adulteration</small></a>
<a class="card" href="classification-crude-drugs.html">📚 <b>Classification of Crude Drugs</b><small>Alphabetical, taxonomical, morphological, chemical and pharmacological</small></a>
<a class="card" href="alkaloids.html">🧪 <b>Alkaloids</b><small>Nitrogen-containing natural compounds</small></a>
<a class="card" href="glycosides.html">🌿 <b>Glycosides</b><small>Glycone, aglycone and important groups</small></a>
<a class="card" href="tannins.html">🍃 <b>Tannins</b><small>Polyphenols and astringent properties</small></a>
<a class="card" href="volatile-oils.html">🌸 <b>Volatile Oils</b><small>Essential oils, aroma and extraction</small></a>

</div>
</body>
</html>
HTML

echo
echo "✅ Pharmacognosy section created!"
echo "📚 7 chapters"
echo "📝 105 MCQs"
echo
ls -lh pharmacognosy.html pharmacognosy-intro.html crude-drugs.html classification-crude-drugs.html alkaloids.html glycosides.html tannins.html volatile-oils.html
