run("8-bit");
setAutoThreshold("MaxEntropy dark no-reset");
run("Threshold...");
setThreshold(78, 124);
setOption("BlackBackground", true);
run("Convert to Mask");
run("Convert to Mask");
