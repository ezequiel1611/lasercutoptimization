// -------- CONFIGURACIÓN --------
savePath = "/mnt/FC8ACA9F8ACA55B4/Balseiro/1er Cuatrimestre/Materiales/matrix_P20-30_V50-200/measurements/bordesP25V50.txt"; 

// Obtener dimensiones
w = getWidth();
h = getHeight();

// Abrir archivo de salida
File.delete(savePath); // Si existe, lo reemplaza
File.append("x_position, y, intensity\n", savePath);

// Ciclo de mediciones en x = w/11... 10w/11
for(i = 1; i <= 10; i++) {
    x = (i*w)/11;
    
    // Definir recta vertical
    makeLine(x, 0, x, h);

    // Obtener perfil
    //run("Plot Profile");
    p = getProfile();

    // Guardar datos
    for (y = 0; y < p.length; y++) {
        File.append(i + "," + y + "," + p[y] + "\n", savePath);
    }
}
