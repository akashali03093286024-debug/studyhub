#!/data/data/com.termux/files/usr/bin/bash

make_page(){
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
h1{margin:0 0 6px;font-size:26px}.sub{color:#94a3b8;font-size:14px}
main{max-width:700px;margin:auto;padding:18px}
.back{color:#93c5fd;text-decoration:none}
.box{background:#1e293b;border:1px solid #334155;border-radius:14px;padding:18px;margin:16px 0}
h2{margin-top:0}li{margin:9px 0;line-height:1.5}
.q{background:#111827;border:1px solid #334155;border-radius:12px;padding:15px;margin:12px 0}
button{width:100%;padding:12px;margin:5px 0;background:#1e293b;color:#fff;border:1px solid #475569;border-radius:9px;text-align:left}
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
<a class="back" href="pharmacotherapy.html">← Back to Pharmacotherapy</a>

<div class="box"><h2>📚 Easy Notes</h2>$3</div>
<div class="box"><h2>⚡ Quick Revision</h2>$4</div>

<div class="box">
<h2>📝 15 MCQs</h2>
<div id="quiz"></div>
<div id="score"></div>
</div>
</main>

<script>
const qs=[
["Pharmacotherapy mainly focuses on?","Use of medicines to treat and manage diseases","Manufacturing hospital furniture","Plant classification","Laboratory building design"],
["The main goal of pharmacotherapy is to improve?","Patient outcomes","Tablet color","Package size","Hospital decoration"],
["A treatment plan should consider?","Patient condition and appropriate medicines","Only the medicine color","Only the package","Only the brand name"],
["Cardiovascular diseases affect mainly the?","Heart and blood vessels","Lungs only","Skin only","Bones only"],
["Hypertension means?","Persistently elevated blood pressure","Low blood glucose","Low body temperature","Reduced breathing rate"],
["Respiratory diseases primarily involve the?","Respiratory system","Digestive system only","Skeletal system only","Urinary system only"],
["Asthma is characterized by?","Airway inflammation and variable narrowing","Bone fracture","High blood glucose only","Kidney stones"],
["Infectious diseases are caused by?","Pathogenic microorganisms","Only vitamins","Only minerals","Normal body temperature"],
["Diabetes mellitus involves abnormal regulation of?","Blood glucose","Body height","Hair growth","Eye color"],
["Insulin has an important role in regulating?","Blood glucose","Blood pressure only","Bone length","Hearing"],
["CNS stands for?","Central Nervous System","Cardiac Nutrition System","Clinical Nursing Standard","Cellular Neuron Structure"],
["Pharmacotherapy requires monitoring of?","Treatment response and safety","Tablet packaging only","Room temperature only","Medicine advertisements"],
["An adverse drug reaction can affect?","Patient safety","Tablet color only","Package design only","Brand spelling only"],
["Rational drug therapy means using medicines?","Appropriately for the patient's condition","Without considering the patient","Only according to color","Only according to price"],
["A good pharmacotherapy plan should balance?","Effectiveness and safety","Color and packaging","Size and shape","Brand and logo"]
];

let score=0;
const quiz=document.getElementById("quiz");

qs.forEach((q,i)=>{
let d=document.createElement("div");
d.className="q";
d.innerHTML="<b>"+(i+1)+". "+q[0]+"</b>";

q.slice(1).forEach((a,j)=>{
let b=document.createElement("button");
b.textContent=a;
b.onclick=()=>{
if(d.dataset.done)return;
d.dataset.done="1";

if(j===0){
score++;
b.style.border="2px solid #22c55e";
}else{
b.style.border="2px solid #ef4444";
}

document.getElementById("score").textContent="Score: "+score+" / 15";
};
d.appendChild(b);
});

quiz.appendChild(d);
});
</script>
</body>
</html>
EOF
}

make_page pharmacotherapy-intro.html "Introduction to Pharmacotherapy" \
'<p>Pharmacotherapy is the use of medicines to prevent, treat, control or manage diseases and health conditions.</p>
<ul>
<li>Selection of appropriate medicines</li>
<li>Consideration of patient factors</li>
<li>Monitoring effectiveness</li>
<li>Monitoring safety</li>
</ul>' \
'<ul>
<li>Pharmacotherapy = medicine-based treatment</li>
<li>Patient factors matter</li>
<li>Effectiveness should be monitored</li>
<li>Safety should be monitored</li>
</ul>'

make_page cardiovascular-therapy.html "Cardiovascular Diseases" \
'<p>Cardiovascular diseases affect the heart and blood vessels. Pharmacotherapy may be used to control conditions such as hypertension and other cardiovascular problems.</p>
<ul>
<li>Blood pressure management</li>
<li>Risk-factor control</li>
<li>Medication adherence</li>
<li>Monitoring treatment response</li>
</ul>' \
'<ul>
<li>Cardiovascular = heart + blood vessels</li>
<li>Hypertension is elevated blood pressure</li>
<li>Monitor response and safety</li>
<li>Adherence is important</li>
</ul>'

make_page respiratory-therapy.html "Respiratory Diseases" \
'<p>Respiratory diseases affect the airways and lungs. Pharmacotherapy can help control symptoms, inflammation and airway problems depending on the condition.</p>
<ul>
<li>Asthma</li>
<li>Chronic respiratory conditions</li>
<li>Airway inflammation</li>
<li>Monitoring respiratory symptoms</li>
</ul>' \
'<ul>
<li>Respiratory system = airways + lungs</li>
<li>Asthma involves airway inflammation and narrowing</li>
<li>Treatment depends on the condition</li>
<li>Monitor symptoms and response</li>
</ul>'

make_page infectious-diseases.html "Infectious Diseases" \
'<p>Infectious diseases are caused by pathogenic microorganisms. Pharmacotherapy may include appropriate antimicrobial treatment when indicated.</p>
<ul>
<li>Bacterial infections</li>
<li>Viral infections</li>
<li>Fungal infections</li>
<li>Appropriate antimicrobial use</li>
</ul>' \
'<ul>
<li>Infections can be caused by microorganisms</li>
<li>Choose treatment according to the cause</li>
<li>Use antimicrobials appropriately</li>
<li>Monitor response and safety</li>
</ul>'

make_page diabetes-therapy.html "Diabetes & Metabolic Disorders" \
'<p>Diabetes mellitus is a metabolic disorder involving abnormal regulation of blood glucose. Management can include lifestyle measures and medicines when appropriate.</p>
<ul>
<li>Blood glucose control</li>
<li>Lifestyle management</li>
<li>Medication when indicated</li>
<li>Monitoring treatment response</li>
</ul>' \
'<ul>
<li>Diabetes involves blood glucose regulation</li>
<li>Lifestyle is important</li>
<li>Medicines may be required</li>
<li>Monitor glucose and treatment response</li>
</ul>'

make_page cns-disorders.html "CNS Disorders" \
'<p>Central nervous system disorders affect the brain, spinal cord or related functions. Pharmacotherapy depends on the specific disorder and patient.</p>
<ul>
<li>Central Nervous System</li>
<li>Condition-specific treatment</li>
<li>Monitoring effectiveness</li>
<li>Monitoring adverse effects</li>
</ul>' \
'<ul>
<li>CNS = Central Nervous System</li>
<li>Brain and spinal cord are major CNS structures</li>
<li>Treatment is condition-specific</li>
<li>Safety monitoring is important</li>
</ul>'

cat > pharmacotherapy.html <<'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Pharmacotherapy | StudyHub</title>
<style>
body{margin:0;background:#0f172a;color:#e5e7eb;font-family:Arial,sans-serif}
header{padding:24px 18px;background:#111827;border-bottom:1px solid #334155}
h1{margin:0 0 6px}.sub{color:#94a3b8}
main{max-width:700px;margin:auto;padding:18px}
.back{color:#93c5fd;text-decoration:none}
.card{display:block;background:#1e293b;color:#fff;text-decoration:none;padding:18px;margin:12px 0;border-radius:14px;border:1px solid #334155}
.card:hover{background:#334155}
.title{font-size:18px;font-weight:bold}
.desc{color:#94a3b8;font-size:13px;margin-top:6px}
</style>
</head>
<body>
<header>
<h1>💊 Pharmacotherapy</h1>
<div class="sub">Easy Notes • Quick Revision • 15 MCQs</div>
</header>
<main>
<a class="back" href="pharmd.html">← Back to Pharm D</a>

<a class="card" href="pharmacotherapy-intro.html">
<div class="title">🩺 Introduction to Pharmacotherapy</div>
<div class="desc">Basics of medicine-based disease management</div>
</a>

<a class="card" href="cardiovascular-therapy.html">
<div class="title">❤️ Cardiovascular Diseases</div>
<div class="desc">Heart, blood vessels and hypertension</div>
</a>

<a class="card" href="respiratory-therapy.html">
<div class="title">🫁 Respiratory Diseases</div>
<div class="desc">Airways, lungs and respiratory conditions</div>
</a>

<a class="card" href="infectious-diseases.html">
<div class="title">🦠 Infectious Diseases</div>
<div class="desc">Microbial infections and antimicrobial therapy</div>
</a>

<a class="card" href="diabetes-therapy.html">
<div class="title">🩸 Diabetes & Metabolic Disorders</div>
<div class="desc">Blood glucose and metabolic disease management</div>
</a>

<a class="card" href="cns-disorders.html">
<div class="title">🧠 CNS Disorders</div>
<div class="desc">Central nervous system conditions</div>
</a>
</main>
</body>
</html>
EOF

echo "======================================"
echo "✅ Pharmacotherapy pages created!"
echo "======================================"
ls -1 pharmacotherapy.html pharmacotherapy-intro.html cardiovascular-therapy.html respiratory-therapy.html infectious-diseases.html diabetes-therapy.html cns-disorders.html
