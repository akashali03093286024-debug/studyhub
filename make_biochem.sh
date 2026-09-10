#!/data/data/com.termux/files/usr/bin/bash

cd ~/study-website

cat > biochemistry.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Biochemistry | StudyHub</title>
<style>
*{box-sizing:border-box}body{margin:0;background:#0b1120;color:#e5e7eb;font-family:Arial;line-height:1.6}.box{max-width:850px;margin:auto;padding:20px}.head,.card{background:#111827;border:1px solid #243044;border-radius:16px;padding:20px;margin-bottom:16px}.back{color:#93c5fd;text-decoration:none}.head h1{margin-bottom:5px}.card h2{color:#93c5fd}.link{display:block;background:#1e293b;color:#fff;text-decoration:none;padding:15px;margin:10px 0;border-radius:10px;border:1px solid #334155}.link:hover{background:#334155}
</style>
</head>
<body><div class="box">
<div class="head"><a class="back" href="pharmd.html">← Back to Pharm D</a><h1>Biochemistry</h1><p>Notes, revision and interactive MCQs</p></div>
<div class="card">
<h2>Biochemistry Topics</h2>
<a class="link" href="carbohydrates.html">01 — Carbohydrates</a>
<a class="link" href="krebs.html">02 — Krebs / TCA Cycle</a>
<a class="link" href="enzymes.html">03 — Enzymes</a>
<a class="link" href="homeostasis.html">04 — Homeostasis</a>
</div>
</div></body></html>
EOF

cat > carbohydrates.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1">
<title>Carbohydrates | StudyHub</title>
<style>
*{box-sizing:border-box}body{margin:0;background:#0b1120;color:#e5e7eb;font-family:Arial;line-height:1.6}.box{max-width:850px;margin:auto;padding:20px}.head,.card{background:#111827;border:1px solid #243044;border-radius:16px;padding:20px;margin-bottom:16px}.back{color:#93c5fd;text-decoration:none}h1{color:#fff}h2{color:#93c5fd}.hl{background:#172033;border-left:4px solid #60a5fa;padding:14px;border-radius:8px}li{margin:6px 0}.q{border-top:1px solid #243044;padding-top:15px;margin-top:18px}.q p{font-weight:bold}button{display:block;width:100%;padding:13px;margin:8px 0;border:1px solid #334155;border-radius:10px;background:#1e293b;color:#e5e7eb;text-align:left;font-size:15px}#score{position:sticky;bottom:10px;background:#2563eb;color:white;padding:14px;border-radius:12px;text-align:center;font-weight:bold;font-size:18px}.rev{background:#0f172a;padding:15px;border-radius:10px}
</style></head>
<body><div class="box">
<div class="head"><a class="back" href="biochemistry.html">← Back to Biochemistry</a><h1>Carbohydrates</h1><p>Biochemistry — Notes + 15 MCQs</p></div>

<div class="card"><h2>Definition</h2><div class="hl"><b>Easy Definition:</b> Carbohydrates are organic compounds mainly made of carbon, hydrogen and oxygen. They are an important source of energy for the body.</div></div>

<div class="card"><h2>Classification</h2><ul>
<li><b>Monosaccharides:</b> single sugar unit. Example: glucose, fructose, galactose.</li>
<li><b>Disaccharides:</b> two sugar units. Example: sucrose, lactose, maltose.</li>
<li><b>Polysaccharides:</b> many sugar units. Example: starch, glycogen, cellulose.</li>
</ul></div>

<div class="card"><h2>Functions</h2><ul>
<li>Main source of energy.</li><li>Glucose is important for brain energy.</li><li>Glycogen stores glucose in liver and muscles.</li><li>Dietary fiber supports normal bowel function.</li><li>Carbohydrates can spare proteins from being used as energy.</li></ul></div>

<div class="card"><h2>Clinical Importance</h2><ul>
<li><b>Diabetes mellitus:</b> abnormal blood glucose regulation.</li>
<li><b>Hypoglycemia:</b> abnormally low blood glucose.</li>
<li><b>Lactose intolerance:</b> difficulty digesting lactose due to low lactase activity.</li>
</ul></div>

<div class="card"><h2>Quick Memory</h2><div class="hl">Glucose → energy<br>Glycogen → storage<br>Starch → plant storage<br>Cellulose → plant fiber<br>Lactose → milk sugar</div></div>

<div class="card"><h2>Interactive MCQs</h2>
<div id="quiz">
<div class="q"><p>1. Main immediate carbohydrate energy source is:</p><button onclick="c(this,1)">A. Glucose</button><button onclick="c(this,0)">B. Cholesterol</button><button onclick="c(this,0)">C. Protein</button><button onclick="c(this,0)">D. Urea</button></div>
<div class="q"><p>2. A single sugar unit is called:</p><button onclick="c(this,1)">A. Monosaccharide</button><button onclick="c(this,0)">B. Disaccharide</button><button onclick="c(this,0)">C. Polysaccharide</button><button onclick="c(this,0)">D. Lipid</button></div>
<div class="q"><p>3. Glucose, fructose and galactose are:</p><button onclick="c(this,1)">A. Monosaccharides</button><button onclick="c(this,0)">B. Proteins</button><button onclick="c(this,0)">C. Lipids</button><button onclick="c(this,0)">D. Enzymes</button></div>
<div class="q"><p>4. Sucrose is a:</p><button onclick="c(this,0)">A. Monosaccharide</button><button onclick="c(this,1)">B. Disaccharide</button><button onclick="c(this,0)">C. Protein</button><button onclick="c(this,0)">D. Vitamin</button></div>
<div class="q"><p>5. Glycogen is mainly a storage form of:</p><button onclick="c(this,1)">A. Glucose</button><button onclick="c(this,0)">B. Calcium</button><button onclick="c(this,0)">C. Fatty acids</button><button onclick="c(this,0)">D. Amino acids</button></div>
<div class="q"><p>6. Glycogen is stored mainly in:</p><button onclick="c(this,1)">A. Liver and muscles</button><button onclick="c(this,0)">B. Lungs only</button><button onclick="c(this,0)">C. Skin only</button><button onclick="c(this,0)">D. Hair</button></div>
<div class="q"><p>7. Lactose is commonly known as:</p><button onclick="c(this,1)">A. Milk sugar</button><button onclick="c(this,0)">B. Fruit sugar</button><button onclick="c(this,0)">C. Blood protein</button><button onclick="c(this,0)">D. Muscle protein</button></div>
<div class="q"><p>8. Lactose intolerance is associated with low activity of:</p><button onclick="c(this,0)">A. Amylase</button><button onclick="c(this,1)">B. Lactase</button><button onclick="c(this,0)">C. Lipase</button><button onclick="c(this,0)">D. Pepsin</button></div>
<div class="q"><p>9. Diabetes mellitus involves abnormal regulation of:</p><button onclick="c(this,1)">A. Blood glucose</button><button onclick="c(this,0)">B. Hair growth</button><button onclick="c(this,0)">C. Bone length</button><button onclick="c(this,0)">D. Skin color</button></div>
<div class="q"><p>10. Hypoglycemia means:</p><button onclick="c(this,1)">A. Low blood glucose</button><button onclick="c(this,0)">B. High blood glucose</button><button onclick="c(this,0)">C. High protein</button><button onclick="c(this,0)">D. Low oxygen only</button></div>
<div class="q"><p>11. Starch is a:</p><button onclick="c(this,0)">A. Monosaccharide</button><button onclick="c(this,0)">B. Disaccharide</button><button onclick="c(this,1)">C. Polysaccharide</button><button onclick="c(this,0)">D. Amino acid</button></div>
<div class="q"><p>12. Which is a polysaccharide?</p><button onclick="c(this,0)">A. Glucose</button><button onclick="c(this,0)">B. Fructose</button><button onclick="c(this,1)">C. Glycogen</button><button onclick="c(this,0)">D. Galactose</button></div>
<div class="q"><p>13. Carbohydrates mainly provide:</p><button onclick="c(this,1)">A. Energy</button><button onclick="c(this,0)">B. Antibodies only</button><button onclick="c(this,0)">C. Hormones only</button><button onclick="c(this,0)">D. Minerals only</button></div>
<div class="q"><p>14. Dietary fiber mainly supports:</p><button onclick="c(this,1)">A. Normal bowel function</button><button onclick="c(this,0)">B. Blood clotting only</button><button onclick="c(this,0)">C. Vision only</button><button onclick="c(this,0)">D. Hearing only</button></div>
<div class="q"><p>15. Which is a correct statement?</p><button onclick="c(this,1)">A. Carbohydrates are an important energy source</button><button onclick="c(this,0)">B. All carbohydrates are proteins</button><button onclick="c(this,0)">C. Glycogen is a mineral</button><button onclick="c(this,0)">D. Glucose cannot provide energy</button></div>
</div><div id="score">Score: 0 / 15</div></div>

<div class="card"><h2>30-Second Revision</h2><div class="rev"><b>Mono</b> = one sugar<br><b>Di</b> = two sugars<br><b>Poly</b> = many sugars<br><b>Glucose</b> = energy<br><b>Glycogen</b> = storage<br><b>Diabetes</b> = abnormal blood glucose regulation<br><b>Hypoglycemia</b> = low blood glucose<br><b>Lactose intolerance</b> = low lactase activity</div></div>
</div>
<script>let s=0,a=0;function c(b,x){let q=b.parentElement;if(q.dataset.d)return;q.dataset.d=1;a++;if(x){s++;b.style.background="#166534";b.textContent="✓ Correct!"}else{b.style.background="#991b1b";b.textContent="✗ Wrong"}document.getElementById("score").textContent="Score: "+s+" / 15";if(a===15)setTimeout(()=>alert("Quiz Complete! Your Score: "+s+" / 15"),200)}</script>
</body></html>
EOF

cat > krebs.html <<'EOF'
<!DOCTYPE html>
<html><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>Krebs Cycle | StudyHub</title>
<style>
*{box-sizing:border-box}body{margin:0;background:#0b1120;color:#e5e7eb;font-family:Arial;line-height:1.6}.box{max-width:850px;margin:auto;padding:20px}.head,.card{background:#111827;border:1px solid #243044;border-radius:16px;padding:20px;margin-bottom:16px}.back{color:#93c5fd;text-decoration:none}h1{color:#fff}h2{color:#93c5fd}.hl{background:#172033;border-left:4px solid #60a5fa;padding:14px;border-radius:8px}.step{background:#1e293b;padding:10px;border-radius:8px;margin:7px 0}button{display:block;width:100%;padding:13px;margin:8px 0;border:1px solid #334155;border-radius:10px;background:#1e293b;color:#e5e7eb;text-align:left;font-size:15px}.q{border-top:1px solid #243044;padding-top:15px;margin-top:18px}.q p{font-weight:bold}#score{position:sticky;bottom:10px;background:#2563eb;color:#fff;padding:14px;border-radius:12px;text-align:center;font-weight:bold;font-size:18px}
</style></head><body><div class="box">
<div class="head"><a class="back" href="biochemistry.html">← Back to Biochemistry</a><h1>Krebs / TCA Cycle</h1><p>Biochemistry — Notes + 15 MCQs</p></div>
<div class="card"><h2>What is Krebs Cycle?</h2><div class="hl">The Krebs cycle, also called the TCA cycle or citric acid cycle, is a series of reactions involved in aerobic energy metabolism.</div><p>It occurs mainly in the <b>mitochondrial matrix</b> in eukaryotic cells.</p></div>
<div class="card"><h2>Simple Flow</h2>
<div class="step">Acetyl-CoA + Oxaloacetate</div><div class="step">↓</div><div class="step">Citrate</div><div class="step">↓</div><div class="step">Isocitrate</div><div class="step">↓</div><div class="step">α-Ketoglutarate</div><div class="step">↓</div><div class="step">Succinyl-CoA</div><div class="step">↓</div><div class="step">Succinate</div><div class="step">↓</div><div class="step">Fumarate</div><div class="step">↓</div><div class="step">Malate</div><div class="step">↓</div><div class="step"><b>Oxaloacetate</b> — cycle continues</div></div>
<div class="card"><h2>Important Points</h2><ul><li>Acetyl-CoA enters the cycle.</li><li>Oxaloacetate combines with acetyl-CoA.</li><li>The cycle produces reduced electron carriers such as NADH and FADH₂.</li><li>GTP/ATP is also produced.</li><li>The cycle is important for cellular energy production.</li></ul></div>
<div class="card"><h2>Interactive MCQs</h2>
<div id="quiz">
<div class="q"><p>1. Krebs cycle is also called:</p><button onclick="c(this,1)">A. TCA cycle</button><button onclick="c(this,0)">B. Urea cycle</button><button onclick="c(this,0)">C. Calvin cycle</button><button onclick="c(this,0)">D. Cori cycle</button></div>
<div class="q"><p>2. Krebs cycle occurs mainly in the:</p><button onclick="c(this,1)">A. Mitochondrial matrix</button><button onclick="c(this,0)">B. Nucleus</button><button onclick="c(this,0)">C. Ribosome</button><button onclick="c(this,0)">D. Cell membrane</button></div>
<div class="q"><p>3. Which molecule enters the cycle?</p><button onclick="c(this,1)">A. Acetyl-CoA</button><button onclick="c(this,0)">B. DNA</button><button onclick="c(this,0)">C. Urea</button><button onclick="c(this,0)">D. Cholesterol</button></div>
<div class="q"><p>4. Acetyl-CoA combines with:</p><button onclick="c(this,1)">A. Oxaloacetate</button><button onclick="c(this,0)">B. Glucose</button><button onclick="c(this,0)">C. Lactose</button><button onclick="c(this,0)">D. Glycogen</button></div>
<div class="q"><p>5. First named product formed is:</p><button onclick="c(this,1)">A. Citrate</button><button onclick="c(this,0)">B. Glucose</button><button onclick="c(this,0)">C. Lactate</button><button onclick="c(this,0)">D. Urea</button></div>
<div class="q"><p>6. Krebs cycle is important for:</p><button onclick="c(this,1)">A. Energy metabolism</button><button onclick="c(this,0)">B. Hair growth only</button><button onclick="c(this,0)">C. Vision only</button><button onclick="c(this,0)">D. Bone formation only</button></div>
<div class="q"><p>7. One important reduced carrier produced is:</p><button onclick="c(this,1)">A. NADH</button><button onclick="c(this,0)">B. DNA</button><button onclick="c(this,0)">C. RNA</button><button onclick="c(this,0)">D. Hemoglobin</button></div>
<div class="q"><p>8. Another reduced carrier is:</p><button onclick="c(this,1)">A. FADH₂</button><button onclick="c(this,0)">B. ATPase</button><button onclick="c(this,0)">C. DNA</button><button onclick="c(this,0)">D. Insulin</button></div>
<div class="q"><p>9. Citrate is followed by:</p><button onclick="c(this,1)">A. Isocitrate</button><button onclick="c(this,0)">B. Glucose</button><button onclick="c(this,0)">C. Glycogen</button><button onclick="c(this,0)">D. Lactose</button></div>
<div class="q"><p>10. Which molecule is regenerated at the end?</p><button onclick="c(this,1)">A. Oxaloacetate</button><button onclick="c(this,0)">B. Glucose</button><button onclick="c(this,0)">C. Urea</button><button onclick="c(this,0)">D. Lactose</button></div>
<div class="q"><p>11. Krebs cycle is associated with:</p><button onclick="c(this,1)">A. Aerobic metabolism</button><button onclick="c(this,0)">B. DNA copying only</button><button onclick="c(this,0)">C. Protein storage</button><button onclick="c(this,0)">D. Blood clotting only</button></div>
<div class="q"><p>12. Which is an intermediate of the cycle?</p><button onclick="c(this,1)">A. Succinate</button><button onclick="c(this,0)">B. Insulin</button><button onclick="c(this,0)">C. Hemoglobin</button><button onclick="c(this,0)">D. Keratin</button></div>
<div class="q"><p>13. Krebs cycle produces electron carriers used for:</p><button onclick="c(this,1)">A. ATP production</button><button onclick="c(this,0)">B. Hair color</button><button onclick="c(this,0)">C. Bone shape</button><button onclick="c(this,0)">D. Hearing</button></div>
<div class="q"><p>14. The cycle is located in which organelle?</p><button onclick="c(this,1)">A. Mitochondrion</button><button onclick="c(this,0)">B. Golgi apparatus</button><button onclick="c(this,0)">C. Lysosome</button><button onclick="c(this,0)">D. Ribosome</button></div>
<div class="q"><p>15. Correct sequence is:</p><button onclick="c(this,1)">A. Acetyl-CoA → Citrate → Isocitrate</button><button onclick="c(this,0)">B. Citrate → Glucose → DNA</button><button onclick="c(this,0)">C. Urea → Citrate → Lactose</button><button onclick="c(this,0)">D. Glycogen → Citrate → Protein</button></div>
</div><div id="score">Score: 0 / 15</div></div></div>
<script>let s=0,a=0;function c(b,x){let q=b.parentElement;if(q.dataset.d)return;q.dataset.d=1;a++;if(x){s++;b.style.background="#166534";b.textContent="✓ Correct!"}else{b.style.background="#991b1b";b.textContent="✗ Wrong"}document.getElementById("score").textContent="Score: "+s+" / 15";if(a===15)setTimeout(()=>alert("Quiz Complete! Your Score: "+s+" / 15"),200)}</script>
</body></html>
EOF

cat > enzymes.html <<'EOF'
<!DOCTYPE html>
<html><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>Enzymes | StudyHub</title>
<style>
*{box-sizing:border-box}body{margin:0;background:#0b1120;color:#e5e7eb;font-family:Arial;line-height:1.6}.box{max-width:850px;margin:auto;padding:20px}.head,.card{background:#111827;border:1px solid #243044;border-radius:16px;padding:20px;margin-bottom:16px}.back{color:#93c5fd;text-decoration:none}h1{color:#fff}h2{color:#93c5fd}.hl{background:#172033;border-left:4px solid #60a5fa;padding:14px;border-radius:8px}button{display:block;width:100%;padding:13px;margin:8px 0;border:1px solid #334155;border-radius:10px;background:#1e293b;color:#e5e7eb;text-align:left;font-size:15px}.q{border-top:1px solid #243044;padding-top:15px;margin-top:18px}.q p{font-weight:bold}#score{position:sticky;bottom:10px;background:#2563eb;color:#fff;padding:14px;border-radius:12px;text-align:center;font-weight:bold;font-size:18px}
</style></head><body><div class="box">
<div class="head"><a class="back" href="biochemistry.html">← Back to Biochemistry</a><h1>Enzymes</h1><p>Biochemistry — Notes + 15 MCQs</p></div>
<div class="card"><h2>Definition</h2><div class="hl">Enzymes are biological catalysts that speed up biochemical reactions without being consumed in the reaction.</div></div>
<div class="card"><h2>Important Terms</h2><ul><li><b>Substrate:</b> substance on which an enzyme acts.</li><li><b>Active site:</b> region where the substrate binds.</li><li><b>Enzyme-substrate complex:</b> temporary complex formed during the reaction.</li><li><b>Product:</b> substance formed after the reaction.</li></ul></div>
<div class="card"><h2>Factors Affecting Enzyme Activity</h2><ul><li>Temperature</li><li>pH</li><li>Substrate concentration</li><li>Enzyme concentration</li><li>Inhibitors</li></ul><div class="hl">Very high temperature can denature many enzymes and reduce their activity.</div></div>
<div class="card"><h2>Major Classes</h2><p>Oxidoreductases, transferases, hydrolases, lyases, isomerases and ligases.</p></div>
<div class="card"><h2>Interactive MCQs</h2><div id="quiz">
<div class="q"><p>1. Enzymes are biological:</p><button onclick="c(this,1)">A. Catalysts</button><button onclick="c(this,0)">B. Vitamins</button><button onclick="c(this,0)">C. Minerals</button><button onclick="c(this,0)">D. Sugars</button></div>
<div class="q"><p>2. Enzymes mainly:</p><button onclick="c(this,1)">A. Speed up reactions</button><button onclick="c(this,0)">B. Stop all reactions</button><button onclick="c(this,0)">C. Become DNA</button><button onclick="c(this,0)">D. Produce bones</button></div>
<div class="q"><p>3. Substance acted upon by an enzyme is:</p><button onclick="c(this,1)">A. Substrate</button><button onclick="c(this,0)">B. Product</button><button onclick="c(this,0)">C. Vitamin</button><button onclick="c(this,0)">D. Hormone</button></div>
<div class="q"><p>4. Substrate binds at the:</p><button onclick="c(this,1)">A. Active site</button><button onclick="c(this,0)">B. Nucleus</button><button onclick="c(this,0)">C. Cell wall</button><button onclick="c(this,0)">D. Ribosome</button></div>
<div class="q"><p>5. Which affects enzyme activity?</p><button onclick="c(this,1)">A. Temperature</button><button onclick="c(this,0)">B. Hair length</button><button onclick="c(this,0)">C. Eye color</button><button onclick="c(this,0)">D. Height only</button></div>
<div class="q"><p>6. Enzymes are generally:</p><button onclick="c(this,1)">A. Specific in their actions</button><button onclick="c(this,0)">B. Always minerals</button><button onclick="c(this,0)">C. Always carbohydrates</button><button onclick="c(this,0)">D. DNA molecules</button></div>
<div class="q"><p>7. Very high temperature may cause:</p><button onclick="c(this,1)">A. Denaturation</button><button onclick="c(this,0)">B. Hydration</button><button onclick="c(this,0)">C. Digestion of DNA</button><button onclick="c(this,0)">D. Freezing</button></div>
<div class="q"><p>8. The temporary enzyme-substrate combination is:</p><button onclick="c(this,1)">A. Enzyme-substrate complex</button><button onclick="c(this,0)">B. DNA complex</button><button onclick="c(this,0)">C. Lipid complex</button><button onclick="c(this,0)">D. Mineral complex</button></div>
<div class="q"><p>9. Which can affect enzyme activity?</p><button onclick="c(this,1)">A. pH</button><button onclick="c(this,0)">B. Shoe size</button><button onclick="c(this,0)">C. Hair style</button><button onclick="c(this,0)">D. Eye color</button></div>
<div class="q"><p>10. Enzymes are not normally:</p><button onclick="c(this,1)">A. Consumed as reactants</button><button onclick="c(this,0)">B. Biological catalysts</button><button onclick="c(this,0)">C. Reaction helpers</button><button onclick="c(this,0)">D. Specific</button></div>
<div class="q"><p>11. Which is an enzyme class?</p><button onclick="c(this,1)">A. Hydrolases</button><button onclick="c(this,0)">B. Vitamins</button><button onclick="c(this,0)">C. Sugars</button><button onclick="c(this,0)">D. Electrolytes</button></div>
<div class="q"><p>12. The substance formed after an enzyme reaction is:</p><button onclick="c(this,1)">A. Product</button><button onclick="c(this,0)">B. Substrate</button><button onclick="c(this,0)">C. Active site</button><button onclick="c(this,0)">D. Catalyst</button></div>
<div class="q"><p>13. Which is NOT a common factor affecting enzyme activity?</p><button onclick="c(this,1)">A. Hair color</button><button onclick="c(this,0)">B. Temperature</button><button onclick="c(this,0)">C. pH</button><button onclick="c(this,0)">D. Substrate concentration</button></div>
<div class="q"><p>14. Enzymes are important in:</p><button onclick="c(this,1)">A. Biochemical reactions</button><button onclick="c(this,0)">B. Only mechanical movement</button><button onclick="c(this,0)">C. Only hearing</button><button onclick="c(this,0)">D. Only vision</button></div>
<div class="q"><p>15. Correct statement:</p><button onclick="c(this,1)">A. Enzymes speed up biochemical reactions</button><button onclick="c(this,0)">B. Enzymes always stop reactions</button><button onclick="c(this,0)">C. Enzymes are never affected by pH</button><button onclick="c(this,0)">D. Enzymes are all minerals</button></div>
</div><div id="score">Score: 0 / 15</div></div></div>
<script>let s=0,a=0;function c(b,x){let q=b.parentElement;if(q.dataset.d)return;q.dataset.d=1;a++;if(x){s++;b.style.background="#166534";b.textContent="✓ Correct!"}else{b.style.background="#991b1b";b.textContent="✗ Wrong"}document.getElementById("score").textContent="Score: "+s+" / 15";if(a===15)setTimeout(()=>alert("Quiz Complete! Your Score: "+s+" / 15"),200)}</script>
</body></html>
EOF

cat > homeostasis.html <<'EOF'
<!DOCTYPE html>
<html><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>Homeostasis | StudyHub</title>
<style>
*{box-sizing:border-box}body{margin:0;background:#0b1120;color:#e5e7eb;font-family:Arial;line-height:1.6}.box{max-width:850px;margin:auto;padding:20px}.head,.card{background:#111827;border:1px solid #243044;border-radius:16px;padding:20px;margin-bottom:16px}.back{color:#93c5fd;text-decoration:none}h1{color:#fff}h2{color:#93c5fd}.hl{background:#172033;border-left:4px solid #60a5fa;padding:14px;border-radius:8px}button{display:block;width:100%;padding:13px;margin:8px 0;border:1px solid #334155;border-radius:10px;background:#1e293b;color:#e5e7eb;text-align:left;font-size:15px}.q{border-top:1px solid #243044;padding-top:15px;margin-top:18px}.q p{font-weight:bold}#score{position:sticky;bottom:10px;background:#2563eb;color:#fff;padding:14px;border-radius:12px;text-align:center;font-weight:bold;font-size:18px}
</style></head><body><div class="box">
<div class="head"><a class="back" href="biochemistry.html">← Back to Biochemistry</a><h1>Homeostasis</h1><p>Biochemistry — Notes + 15 MCQs</p></div>
<div class="card"><h2>Definition</h2><div class="hl">Homeostasis is the maintenance of a relatively stable internal environment of the body despite changes in the external environment.</div></div>
<div class="card"><h2>Examples</h2><ul><li>Body temperature regulation</li><li>Blood glucose regulation</li><li>Water balance</li><li>Electrolyte balance</li><li>Blood pH regulation</li></ul></div>
<div class="card"><h2>Feedback</h2><p><b>Negative feedback</b> reduces a change and helps restore normal conditions. It is the most common mechanism of homeostasis.</p><div class="hl"><b>Example:</b> When body temperature rises, mechanisms help reduce the temperature toward normal.</div></div>
<div class="card"><h2>Why Important?</h2><p>Cells and organs work properly only when important internal conditions remain within suitable ranges.</p></div>
<div class="card"><h2>Interactive MCQs</h2><div id="quiz">
<div class="q"><p>1. Homeostasis means:</p><button onclick="c(this,1)">A. Maintaining stable internal conditions</button><button onclick="c(this,0)">B. Stopping all body functions</button><button onclick="c(this,0)">C. Increasing body temperature always</button><button onclick="c(this,0)">D. Digestion only</button></div>
<div class="q"><p>2. Homeostasis mainly maintains:</p><button onclick="c(this,1)">A. Internal environment</button><button onclick="c(this,0)">B. Hair style</button><button onclick="c(this,0)">C. Eye color</button><button onclick="c(this,0)">D. Height</button></div>
<div class="q"><p>3. Most common feedback mechanism in homeostasis:</p><button onclick="c(this,1)">A. Negative feedback</button><button onclick="c(this,0)">B. Positive feedback only</button><button onclick="c(this,0)">C. No feedback</button><button onclick="c(this,0)">D. Random feedback</button></div>
<div class="q"><p>4. Which is regulated by homeostasis?</p><button onclick="c(this,1)">A. Body temperature</button><button onclick="c(this,0)">B. Hair color</button><button onclick="c(this,0)">C. Fingerprint</button><button onclick="c(this,0)">D. Height</button></div>
<div class="q"><p>5. Blood glucose regulation is an example of:</p><button onclick="c(this,1)">A. Homeostasis</button><button onclick="c(this,0)">B. Bone growth</button><button onclick="c(this,0)">C. Hearing</button><button onclick="c(this,0)">D. Vision</button></div>
<div class="q"><p>6. Negative feedback generally:</p><button onclick="c(this,1)">A. Reduces the original change</button><button onclick="c(this,0)">B. Always increases the change</button><button onclick="c(this,0)">C. Stops circulation</button><button onclick="c(this,0)">D. Destroys cells</button></div>
<div class="q"><p>7. Water balance is part of:</p><button onclick="c(this,1)">A. Homeostasis</button><button onclick="c(this,0)">B. Hair growth</button><button onclick="c(this,0)">C. Hearing</button><button onclick="c(this,0)">D. Vision</button></div>
<div class="q"><p>8. Electrolyte balance helps maintain:</p><button onclick="c(this,1)">A. Internal stability</button><button onclick="c(this,0)">B. Hair color</button><button onclick="c(this,0)">C. Fingerprint pattern</button><button onclick="c(this,0)">D. Height</button></div>
<div class="q"><p>9. Blood pH is regulated as part of:</p><button onclick="c(this,1)">A. Homeostasis</button><button onclick="c(this,0)">B. Vision only</button><button onclick="c(this,0)">C. Hearing only</button><button onclick="c(this,0)">D. Hair growth</button></div>
<div class="q"><p>10. Cells function properly when:</p><button onclick="c(this,1)">A. Internal conditions are suitably maintained</button><button onclick="c(this,0)">B. Conditions are always changing wildly</button><button onclick="c(this,0)">C. Temperature is always high</button><button onclick="c(this,0)">D. Water is absent</button></div>
<div class="q"><p>11. A rise in body temperature can trigger mechanisms that:</p><button onclick="c(this,1)">A. Help lower temperature</button><button onclick="c(this,0)">B. Always increase temperature</button><button onclick="c(this,0)">C. Stop breathing</button><button onclick="c(this,0)">D. Stop circulation</button></div>
<div class="q"><p>12. Homeostasis is important for:</p><button onclick="c(this,1)">A. Normal cell and organ function</button><button onclick="c(this,0)">B. Hair styling</button><button onclick="c(this,0)">C. Eye color</button><button onclick="c(this,0)">D. Fingerprints</button></div>
<div class="q"><p>13. Which is NOT an example of homeostasis?</p><button onclick="c(this,1)">A. Hair length</button><button onclick="c(this,0)">B. Temperature regulation</button><button onclick="c(this,0)">C. Blood glucose regulation</button><button onclick="c(this,0)">D. Water balance</button></div>
<div class="q"><p>14. Negative feedback helps the body:</p><button onclick="c(this,1)">A. Return toward a normal range</button><button onclick="c(this,0)">B. Lose all water</button><button onclick="c(this,0)">C. Stop metabolism</button><button onclick="c(this,0)">D. Stop all enzymes</button></div>
<div class="q"><p>15. Correct statement:</p><button onclick="c(this,1)">A. Homeostasis maintains internal stability</button><button onclick="c(this,0)">B. Homeostasis stops every body process</button><button onclick="c(this,0)">C. Homeostasis is only digestion</button><button onclick="c(this,0)">D. Homeostasis occurs only outside the body</button></div>
</div><div id="score">Score: 0 / 15</div></div></div>
<script>let s=0,a=0;function c(b,x){let q=b.parentElement;if(q.dataset.d)return;q.dataset.d=1;a++;if(x){s++;b.style.background="#166534";b.textContent="✓ Correct!"}else{b.style.background="#991b1b";b.textContent="✗ Wrong"}document.getElementById("score").textContent="Score: "+s+" / 15";if(a===15)setTimeout(()=>alert("Quiz Complete! Your Score: "+s+" / 15"),200)}</script>
</body></html>
EOF

echo
echo "========================================"
echo "  StudyHub Biochemistry Created!"
echo "========================================"
ls -lh biochemistry.html carbohydrates.html krebs.html enzymes.html homeostasis.html
