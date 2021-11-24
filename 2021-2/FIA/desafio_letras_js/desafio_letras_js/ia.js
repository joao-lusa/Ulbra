var image = null;
let matrizImagem = [
    mLinha1 = [c1 = 0, c2 = 0, c3 = 0, c4 = 0, c5 = 0],
    mLinha2 = [c1 = 0, c2 = 0, c3 = 0, c4 = 0, c5 = 0],
    mLinha3 = [c1 = 0, c2 = 0, c3 = 0, c4 = 0, c5 = 0],
    mLinha4 = [c1 = 0, c2 = 0, c3 = 0, c4 = 0, c5 = 0],
    mLinha5 = [c1 = 0, c2 = 0, c3 = 0, c4 = 0, c5 = 0],
    mLinha6 = [c1 = 0, c2 = 0, c3 = 0, c4 = 0, c5 = 0],
    mLinha7 = [c1 = 0, c2 = 0, c3 = 0, c4 = 0, c5 = 0],
    mLinha8 = [c1 = 0, c2 = 0, c3 = 0, c4 = 0, c5 = 0]
]

function upload() {
    //Get input from file input
    var fileinput = document.getElementById("finput");
    //Make new SimpleImage from file input
    image = new SimpleImage(fileinput);
    //Get canvas
    var canvas = document.getElementById("can");
    //Draw image on canvas
    image.drawTo(canvas);
    
    
}

function makeGray() {
    //change all pixels of image to gray
    for (var pixel of image.values()) {
        var avg = (pixel.getRed() + pixel.getGreen() + pixel.getBlue()) / 3;
        pixel.setRed(avg);
        pixel.setGreen(avg);
        pixel.setBlue(avg);
    }
    //display new image
    var canvas = document.getElementById("can");
    image.width = 250;
    image.height = 400;
    image.drawTo(canvas);
    
}


function toBinary() {
    var canvas = document.getElementById("can");
    contBlack = 0;
    let imageData = canvas.getContext('2d').getImageData(0, 0, 250, 400);
    console.log('aqui');
    console.log(canvas.getContext('2d').getImageData(0,0,1,1));
    let pixels = imageData.data;
    let incrementW = 0;
    let incrementH = 0;

    for (var line = 0; line < 8; line++) {
        for (var colun = 0; colun < 5; colun++) {
            contBlackPix = 0;
            incrementW = 0;
            for (var hgt = 0; hgt < 50; hgt++) {
                for (var wdt = (incrementW+incrementH); wdt < (200+incrementW+incrementH); wdt+=4) {
                    if (pixels[wdt] < 240 && pixels[wdt+1] < 240 && pixels[wdt+2] < 240) {
                        contBlackPix++;
                        //console.log("black!");
                    }   
                }
                incrementW = (1000*hgt + 50000*line);
                //console.log("NextLine");
                //console.log(incrementW);
            }
            if (contBlackPix>=400)  {
                matrizImagem[line][colun] = 1;
                //console.log(contBlackPix);
                //console.log(`linha: ${line}  coluna: ${colun}----BLACK-----------`);
            }
            else {
                matrizImagem[line][colun] = 0;
                //console.log(contBlackPix); 
                //console.log(`--linha: ${line}  coluna: ${colun}---WHITE-----------------`);
            }
            incrementH += 200;
            
            //console.log(incrementH);
        }
        
    }
    //console.log(pixels);
    console.log(matrizImagem);
}



