
var normalTangentialTension = [[ 240, 150 ],
                                 [ 320, 200],
                                 [ 300, 200],
                                 [ 400, 250],
                                 [ 360, 240],
                                 [ 480, 300],
                                 [ 540, 340],
                                 [ 640, 390],
                                 [ 900, 540],
                                 [ 1080, 600],
                                 [ 1260, 750]

                ]



function displayValues(materiali, diametri) {

    var column = 0;
    var material = parseFloat(materiali)

    if (material === 46) { column = 0; }
    else if (material === 48 ){ column = 1; }
    else if (material === 56 ){ column = 2; }
    else if (material === 58 ){ column = 3; }
    else if (material === 66 ){ column = 4; }
    else if (material === 68 ){ column = 5; }
    else if (material === 69 ){ column = 6; }
    else if (material === 88 ){ column = 7; }
    else if (material === 109 ){ column = 8; }
    else if (material === 129 ){ column = 9; }
    else if (material === 149 ){ column = 10; }


    displaySigmaT.text = normalTangentialTension[column][0]
    displayTauT.text = normalTangentialTension[column][1]

    if (eGdhendur.checked ) {

        if (material === 109 || material === 129)     {
            displayKsiT.text = 1.05
        }

        else if(material === 149){
            displayKsiT.text = 1
        }

        else {
            displayKsiT.text = 1.1
        }
}

    else if(!eGdhendur.checked) {

        if (material === 46 || material === 48 || material === 66 || material === 58)     {
            displayKsiT.text = 1.2
        }

        else if(material === 66 || material === 68 || material === 69){
            displayKsiT.text = 1.3
        }

        else if (material === 88){
            displayKsiT.text = 1.4
        }
    }


//    var d1,d2,d,x1,x2;

    var d = parseFloat(diametri)

    if (d<=6){
        displayKsi1z.text = 1.3;
        displayKsi1t.text = 1.3;
    }
    else if( d>=6 && d<=8){
        displayKsi1z.text = (1.1+(1.3 -1.1)*(d-8)/(6-8)).toFixed(5);
        displayKsi1t.text = (1.1+(1.3 -1.1)*(d-8)/(6-8)).toFixed(5);;

    }
    else if( d>8 && d<=12){
        displayKsi1z.text = (1+(1.1 -1)/(8-12)*(d-12)).toFixed(5);
        displayKsi1t.text = (1+(1.1 -1)/(8-12)*(d-12)).toFixed(5);

    }
    else if( d>12 && d<=30){
        displayKsi1z.text = (0.92+(1 -0.92)*(d-30)/(12-30)).toFixed(5)
        displayKsi1t.text = (0.9+(1 -0.9)*(d-30)/(12-30)).toFixed(5);

    }
    else if( d>30 && d<=60){
        displayKsi1z.text = (0.85+(0.92 -0.85)*(d-60)/(30-60)).toFixed(5);
        displayKsi1t.text = (0.8+(0.9 -0.8)*(d-60)/(30-60)).toFixed(5);

    }
    else if( d>60 && d<=100){
        displayKsi1z.text = (0.77+(0.85 -0.77)/(60-100)*(d-100)).toFixed(5);
        displayKsi1t.text = (0.7+(0.8 -0.7)*(d-100)/(60-100)).toFixed(5);

    }
    else if( d>100 && d<=150){
        displayKsi1z.text = (0.75+(0.77 -0.75)*(d-150)/(100-150)).toFixed(5);
        displayKsi1t.text = (0.7+(0.7 -0.7)*(d-150)/(100-150)).toFixed(5);

    }


}
























