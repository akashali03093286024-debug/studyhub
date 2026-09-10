#!/data/data/com.termux/files/usr/bin/bash

page(){
cat > "$1" <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>$2 | StudyHub</title>
<style>
*{box-sizing:border-box}body{margin:0;background:#0f172a;color:#e5e7eb;font-family:Arial,sans-serif}
header{background:#111827;padding:22px 18px;border-bottom:1px solid #334155}
h1{margin:0 0 6px;font-size:26px}.sub{color:#94a3b8}
main{max-width:700px;margin:auto;padding:18px}.back{color:#93c5fd;text-decoration:none}
.box{background:#1e293b;border:1px solid #334155;border-radius:14px;padding:18px;margin:16px 0}
h2{margin-top:0}li{margin:9px 0;line-height:1.5}
.q{background:#111827;border:1px solid #334155;border-radius:12px;padding:15px;margin:12px 0}
button{width:100%;padding:12px;margin:5px 0;background:#1e293b;color:white;border:1px solid #475569;border-radius:9px;text-align:left}
button:hover{background:#334155}#score{font-size:20px;font-weight:bold;margin-top:18px}
</style>
</head>
<body>
<header><h1>🧪 $2</h1><div class="sub">Easy Notes • Quick Revision • 15 MCQs</div></header>
<main>
<a class="back" href="medicinal-chemistry.html">← Back to Medicinal Chemistry</a>
<div class="box"><h2>📚 Easy Notes</h2>$3</div>
<div class="box"><h2>⚡ Quick Revision</h2>$4</div>
<div class="box"><h2>📝 15 MCQs</h2><div id="quiz"></div><div id="score"></div></div>
</main>
<script>
const qs=[
["Medicinal chemistry mainly studies?","Design and development of medicines","Hospital construction","Plant classification","Blood circulation"],
["A drug target is commonly?","A biological molecule affected by a drug","A tablet package","A hospital bed","A measuring cup"],
["SAR stands for?","Structure-Activity Relationship","Safe Administration Rule","Solution Analysis Report","Standard Absorption Rate"],
["Drug-receptor binding can affect?","Biological response","Tablet color only","Package size","Room temperature"],
["A functional group can influence a drug's?","Chemical and biological properties","Tablet packaging only","Brand name only","Color only"],
["Drug design aims to develop compounds with?","Desired biological activity","Only pleasant taste","Only bright color","Only large size"],
["Lead compound means?","A promising compound for further optimization","A hospital patient","A dosage container","A laboratory chair"],
["Optimization of a lead compound may improve?","Potency and selectivity","Package weight only","Tablet color only","Label size only"],
["Acid-base properties can influence drug?","Ionization and solubility","Tablet shape only","Package design","Brand lettering"],
["An ionized drug generally has different?","Solubility and membrane permeability","Tablet color","Container size","Label position"],
["A receptor is generally?","A biological macromolecule that can bind a ligand","A glass container","A measuring device","A tablet coating"],
["Selectivity means a drug preferentially acts on?","A particular target or targets","Every molecule equally","Only the package","Only water"],
["Why are functional groups important in medicinal chemistry?","They affect interactions and chemical behavior","They determine the brand logo","They determine package color","They determine tablet count"],
["One purpose of medicinal chemistry is to improve?","Efficacy and safety of drug candidates","Hospital architecture","Food production","Computer hardware"],
["The relationship between chemical structure and biological effect is central to?","Medicinal chemistry","Hospital management","Accounting","Medical photography"]
];
let score=0;
const box=document.getElementById("quiz");
qs.forEach((q,i)=>{
let d=document.createElement("div");d.className="q";
d.innerHTML="<b>"+(i+1)+". "+q[0]+"</b>";
q.slice(1).forEach((a,j)=>{
let b=document.createElement("button");b.textContent=a;
b.onclick=()=>{
if(d.dataset.done)return;
d.dataset.done=1;
if(j===0){score++;b.style.border="2px solid #22c55e"}
else b.style.border="2px solid #ef4444";
document.getElementById("score").textContent="Score: "+score+" / 15";
};
d.appendChild(b);
});
box.appendChild(d);
});
</script>
</body>
</html>
EOF
}

page medicinal-intro.html "Introduction to Medicinal Chemistry" \
'<p>Medicinal chemistry combines chemistry and biological science to discover, design and optimize compounds used as medicines.</p><ul><li>Drug discovery</li><li>Lead identification</li><li>Lead optimization</li><li>Improving efficacy and safety</li></ul>' \
'<ul><li>Medicinal chemistry = chemistry + biology</li><li>Important in drug discovery</li><li>Lead compounds are optimized</li><li>Safety and efficacy matter</li></ul>'

page drug-receptor-interaction.html "Drug–Receptor Interaction" \
'<p>Drug–receptor interaction describes how a drug binds to a biological target and produces or modifies a response.</p><ul><li>Receptors are biological targets</li><li>Binding depends on chemical interactions</li><li>Interactions influence biological response</li><li>Affinity describes binding strength</li></ul>' \
'<ul><li>Drug binds target</li><li>Binding influences response</li><li>Affinity = strength of binding</li><li>Target interactions are important</li></ul>'

page sar.html "Structure–Activity Relationship (SAR)" \
'<p>SAR studies how changes in the chemical structure of a compound affect its biological activity.</p><ul><li>Structural changes can alter activity</li><li>Helps identify important groups</li><li>Supports lead optimization</li><li>Useful in drug design</li></ul>' \
'<ul><li>SAR = structure vs activity</li><li>Small structural changes can affect activity</li><li>Helps optimize leads</li><li>Important in drug discovery</li></ul>'

page drug-design.html "Drug Design & Development" \
'<p>Drug design uses chemical and biological knowledge to develop compounds with useful therapeutic properties.</p><ul><li>Target identification</li><li>Lead discovery</li><li>Lead optimization</li><li>Preclinical evaluation</li><li>Development of promising candidates</li></ul>' \
'<ul><li>Identify target</li><li>Find lead</li><li>Optimize structure</li><li>Evaluate safety and activity</li></ul>'

page functional-groups.html "Functional Groups" \
'<p>Functional groups are specific groups of atoms within molecules that influence their chemical properties and interactions.</p><ul><li>Hydroxyl group</li><li>Carbonyl group</li><li>Carboxyl group</li><li>Amino group</li><li>Functional groups can influence polarity and ionization</li></ul>' \
'<ul><li>Functional groups affect chemical behavior</li><li>They influence molecular interactions</li><li>They can affect polarity and ionization</li></ul>'

page acid-base-drugs.html "Acid–Base Properties of Drugs" \
'<p>Many drugs contain acidic or basic groups. Their ionization can change with pH and can influence solubility and membrane permeability.</p><ul><li>Ionized and unionized forms can differ</li><li>pH affects ionization</li><li>Ionization can influence solubility</li><li>Ionization can influence membrane passage</li></ul>' \
'<ul><li>pH affects ionization</li><li>Ionization affects drug behavior</li><li>Solubility may change with ionization</li><li>Membrane permeability may change</li></ul>'

cat > medicinal-chemistry.html <<'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Medicinal Chemistry | StudyHub</title>
<style>
body{margin:0;background:#0f172a;color:#e5e7eb;font-family:Arial,sans-serif}
header{padding:24px 18px;background:#111827;border-bottom:1px solid #334155}
h1{margin:0 0 6px}.sub{color:#94a3b8}
main{max-width:700px;margin:auto;padding:18px}.back{color:#93c5fd;text-decoration:none}
.card{display:block;background:#1e293b;color:white;text-decoration:none;padding:18px;margin:12px 0;border-radius:14px;border:1px solid #334155}
.card:hover{background:#334155}.title{font-size:18px;font-weight:bold}.desc{color:#94a3b8;font-size:13px;margin-top:6px}
</style>
</head>
<body>
<header><h1>🧪 Medicinal Chemistry</h1><div class="sub">Easy Notes • Quick Revision • 15 MCQs</div></header>
<main>
<a class="back" href="pharmd.html">← Back to Pharm D</a>
<a class="card" href="medicinal-intro.html"><div class="title">🧪 Introduction to Medicinal Chemistry</div><div class="desc">Basics of medicinal chemistry and drug discovery</div></a>
<a class="card" href="drug-receptor-interaction.html"><div class="title">⚛️ Drug–Receptor Interaction</div><div class="desc">Drug targets, binding and biological response</div></a>
<a class="card" href="sar.html"><div class="title">🔬 Structure–Activity Relationship (SAR)</div><div class="desc">Chemical structure and biological activity</div></a>
<a class="card" href="drug-design.html"><div class="title">💊 Drug Design & Development</div><div class="desc">Target identification, leads and optimization</div></a>
<a class="card" href="functional-groups.html"><div class="title">🧬 Functional Groups</div><div class="desc">Important groups and their chemical effects</div></a>
<a class="card" href="acid-base-drugs.html"><div class="title">⚗️ Acid–Base Properties of Drugs</div><div class="desc">pH, ionization, solubility and permeability</div></a>
</main>
</body>
</html>
EOF

echo "✅ Medicinal Chemistry added successfully!"
echo "Pages created:"
ls -1 medicinal-chemistry.html medicinal-intro.html drug-receptor-interaction.html sar.html drug-design.html functional-groups.html acid-base-drugs.html
