function tests = testError
    tests = functiontests(localfunctions);
end

function testErrorLineal(casoDePrueba)

    matriz = [ 1 2 3 4 ; 10 5 2 1 ];
    
    errorLinealGenerico(casoDePrueba, matriz, aproximacionLineal(matriz), 4);

end

function testErrorCuadratico(casoDePrueba)

    matriz = [ 1 2 3 4 ; 10 5 2 1 ];
    
    [a, b, c] = aproximacionCuadratica(matriz);
    
    contrastarValores(casoDePrueba, calcularErrorCuadratico([a, b, c], matriz), 3.527785968148365e-27);

end


function testErrorExponencial(casoDePrueba)
    
    matriz = [ 1 2 3 4 ; 10 5 2 1 ];

    errorLinealGenerico(casoDePrueba, matriz, aproximacionExponencial(matriz), 1.040422538172001e+03);
    
end

function testErrorHiperbolica(casoDePrueba)

    matriz = [ 1 2 3 4 ; 10 5 2 1 ];

    errorLinealGenerico(casoDePrueba, matriz, aproximacionHiperbolica(matriz), 2.366666666666667e+02);
    
end

function testErrorPotencial(casoDePrueba)

    matriz = [ 1 2 3 4 ; 10 5 2 1 ];

    errorLinealGenerico(casoDePrueba, matriz, aproximacionPotencial(matriz), 50.6864);
    
end

function errorLinealGenerico(casoDePrueba, matriz, aproximacionLineal, valorEsperado) 

    actual = calcularErrorLineal(aproximacionLineal, matriz);

    contrastarValores(casoDePrueba, actual, valorEsperado);

end

function contrastarValores(casoDePrueba, actual, valorEsperado)

    verifyEqual(casoDePrueba, actual, valorEsperado, 'RelTol', 0.0001);

end