run("8-bit");
setAutoThreshold("MaxEntropy dark no-reset");
run("Threshold...");
setThreshold(84, 165);
setOption("BlackBackground", true);
run("Convert to Mask");
run("Convert to Mask");
