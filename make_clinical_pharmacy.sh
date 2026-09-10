#!/data/data/com.termux/files/usr/bin/bash

make_page() {
cat > "$1" <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>$2 | StudyHub</title>
<style>
*{box-sizing:border-box}
body{margin:0;background:#0f172a;color:#e5e7eb;font-family:Arial,sans-serif}
header{background:#111827;padding:22px 18px;border-bottom:1px solid #334155}
h1{margin:0 0 7px;font-size:26px}
.sub{color:#94a3b8;font-size:14px}
main{max-width:700px;margin:auto;padding:18px}
.back{display:inline-block;color:#93c5fd;text-decoration:none;margin-bottom:18px}
.box{background:#1e293b;border:1px solid #334155;border-radius:14px;padding:18px;margin-bottom:14px}
h2{font-size:19px;margin-top:0}
li{margin:9px 0;line-height:1.5}
.revision{border-left:4px solid #60a5fa}
.question{background:#111827;border:1px solid #334155;border-radius:12px;padding:15px;margin:12px 0}
button{width:100%;padding:12px;margin:6px 0;background:#1e293b;color:#fff;border:1px solid #475569;border-radius:9px;text-align:left}
button:hover{background:#334155}
#score{font-size:20px;font-weight:bold;margin-top:18px}
</style>
</head>
<body>
<header>
<h1>💊 $2</h1>
<div class="sub">Easy Notes • Quick Revision • 15 MCQs</div>
</header>
<main>
<a class="back" href="clinical-pharmacy.html">← Back to Clinical Pharmacy</a>

<div class="box">
<h2>📚 Easy Notes</h2>
$3
</div>

<div class="box revision">
<h2>⚡ Quick Revision</h2>
$4
</div>

<div class="box">
<h2>📝 15 MCQs</h2>
<div id="quiz"></div>
<div id="score"></div>
</div>
</main>

<script>
const qs=[
["What is the main goal of clinical pharmacy?","Optimize patient medication therapy","Manufacture tablets","Study plant classification","Measure blood pressure"],
["Which activity is commonly performed by a clinical pharmacist?","Patient medication review","Building hospital rooms","Performing surgery","Taking X-rays"],
["What should a pharmacist consider when reviewing medicines?","Dose, interactions and patient factors","Only tablet color","Only package size","Only brand name"],
["Patient counseling mainly helps patients understand?","How to use medicines safely","How to manufacture glass","How to perform surgery","How to grow plants"],
["Medication history includes information about?","Medicines currently and previously used","Only food preferences","Only height","Only blood group"],
["Drug information should be?","Accurate and evidence-based","Based only on rumors","Based only on advertisements","Always handwritten"],
["An adverse drug reaction is?","A harmful and unintended response to a medicine","A medicine's color","A tablet's shape","A normal food reaction"],
["Drug interaction occurs when?","One drug affects another drug's effect","A tablet changes color","A patient drinks water","A capsule is opened"],
["Clinical pharmacy is mainly concerned with?","Safe and effective use of medicines in patients","Manufacturing machines","Plant farming","Hospital construction"],
["Which factor can affect drug therapy?","Age and kidney function","Shoe size","Hair length","Favorite color"],
["Why is medication adherence important?","It helps patients take medicines as prescribed","It changes tablet color","It increases package size","It removes all side effects"],
["What is therapeutic monitoring used for?","Monitoring drug therapy and response","Counting hospital beds","Designing labels","Measuring room temperature"],
["A pharmacist may identify a potential drug interaction by checking?","The patient's complete medication list","Only the patient's name","Only the tablet color","Only the hospital room"],
["Good patient counseling should use?","Clear and understandable language","Only technical jargon","No instructions","Unverified information"],
["The overall purpose of clinical pharmacy is to improve?","Patient outcomes and medication safety","Building design","Food production","Computer hardware"]
];

let score=0,answered=0;
const qbox=document.getElementById("quiz");

qs.forEach((q,i)=>{
let div=document.createElement("div");
div.className="question";
div.innerHTML="<b>"+(i+1)+". "+q[0]+"</b>";
q.slice(1).forEach((a,j)=>{
let b=document.createElement("button");
b.textContent=a;
b.onclick=()=>{
if(div.dataset.done)return;
div.dataset.done="1";answered++;
if(j===0){score++;b.style.border="2px solid #22c55e";}
else{b.style.border="2px solid #ef4444";}
document.getElementById("score").textContent=
"Score: "+score+" / 15";
};
div.appendChild(b);
});
qbox.appendChild(div);
});
</script>
</body>
</html>
EOF
}

make_page clinical-pharmacy.html "Clinical Pharmacy" \
'<p>Clinical Pharmacy focuses on the safe, effective and appropriate use of medicines in patients.</p>
<ul>
<li>Patient-focused pharmacy practice</li>
<li>Medication review and monitoring</li>
<li>Patient counseling</li>
<li>Drug information</li>
<li>Adverse drug reactions</li>
<li>Drug interactions</li>
</ul>' \
'<ul>
<li>Clinical pharmacy = patient-centered medicine use</li>
<li>Medication review helps identify problems</li>
<li>Counseling improves safe medicine use</li>
<li>ADR = harmful and unintended response</li>
<li>Drug interactions can change medicine effects</li>
</ul>'

make_page clinical-intro.html "Introduction to Clinical Pharmacy" \
'<p>Clinical pharmacy applies pharmaceutical knowledge directly to patient care.</p>
<ul><li>Focuses on patients and medicines</li><li>Supports rational drug therapy</li><li>Works with healthcare professionals</li><li>Promotes medication safety</li></ul>' \
'<ul><li>Patient-centered practice</li><li>Safe medicine use</li><li>Rational therapy</li><li>Better patient outcomes</li></ul>'

make_page patient-counseling.html "Patient Counseling" \
'<p>Patient counseling means giving patients clear information about their medicines and how to use them correctly.</p>
<ul><li>Explain dose and timing</li><li>Explain route of administration</li><li>Discuss important precautions</li><li>Encourage adherence</li></ul>' \
'<ul><li>Use simple language</li><li>Explain dose and timing</li><li>Check patient understanding</li><li>Promote adherence</li></ul>'

make_page medication-history.html "Medication History" \
'<p>A medication history records medicines a patient is taking or has taken, including relevant details needed for safe therapy.</p>
<ul><li>Current medicines</li><li>Previous medicines</li><li>Doses and frequency</li><li>Allergies and relevant medication problems</li></ul>' \
'<ul><li>Collect complete medicine information</li><li>Include dose and frequency</li><li>Check allergies</li><li>Look for medication-related problems</li></ul>'

make_page drug-information.html "Drug Information" \
'<p>Drug information involves providing accurate, relevant and evidence-based information about medicines.</p>
<ul><li>Uses and doses</li><li>Adverse effects</li><li>Contraindications</li><li>Interactions</li><li>Administration information</li></ul>' \
'<ul><li>Information should be accurate</li><li>Use reliable evidence</li><li>Consider the patient and clinical context</li></ul>'

make_page adverse-drug-reactions.html "Adverse Drug Reactions" \
'<p>An adverse drug reaction (ADR) is a harmful and unintended response associated with the use of a medicine.</p>
<ul><li>May occur despite appropriate medicine use</li><li>Can affect patient safety</li><li>Should be recognized and documented</li><li>Important for medication monitoring</li></ul>' \
'<ul><li>ADR = harmful + unintended response</li><li>Monitor patients</li><li>Document suspected reactions</li><li>Patient safety is important</li></ul>'

make_page drug-interactions.html "Drug Interactions" \
'<p>A drug interaction occurs when one medicine or substance changes the effect of another medicine.</p>
<ul><li>Effects may increase or decrease</li><li>Medication lists should be reviewed</li><li>Interactions can affect safety and effectiveness</li><li>Patient factors also matter</li></ul>' \
'<ul><li>Drug + drug can interact</li><li>Effects may change</li><li>Review complete medication lists</li><li>Monitor important interactions</li></ul>'

cat > clinical-pharmacy.html.tmp <<'EOF'
EOF

python3 - <<'PY'
from pathlib import Path

p=Path("clinical-pharmacy.html")
s=p.read_text()

start=s.index('<div class="box">')
end=s.index('</main>')

menu='''<div class="box">
<h2>💊 Clinical Pharmacy Topics</h2>
<a href="clinical-intro.html" style="display:block;color:#fff;text-decoration:none;background:#0f172a;padding:15px;margin:10px 0;border-radius:10px">🏥 Introduction to Clinical Pharmacy</a>
<a href="patient-counseling.html" style="display:block;color:#fff;text-decoration:none;background:#0f172a;padding:15px;margin:10px 0;border-radius:10px">💬 Patient Counseling</a>
<a href="medication-history.html" style="display:block;color:#fff;text-decoration:none;background:#0f172a;padding:15px;margin:10px 0;border-radius:10px">📋 Medication History</a>
<a href="drug-information.html" style="display:block;color:#fff;text-decoration:none;background:#0f172a;padding:15px;margin:10px 0;border-radius:10px">📚 Drug Information</a>
<a href="adverse-drug-reactions.html" style="display:block;color:#fff;text-decoration:none;background:#0f172a;padding:15px;margin:10px 0;border-radius:10px">⚠️ Adverse Drug Reactions</a>
<a href="drug-interactions.html" style="display:block;color:#fff;text-decoration:none;background:#0f172a;padding:15px;margin:10px 0;border-radius:10px">🔄 Drug Interactions</a>
</div>
'''
p.write_text(s[:start]+menu+s[end:])
PY

rm -f clinical-pharmacy.html.tmp
echo "================================"
echo "✅ Clinical Pharmacy added!"
echo "================================"
ls -1 clinical*.html patient-counseling.html medication-history.html drug-information.html adverse-drug-reactions.html drug-interactions.html
