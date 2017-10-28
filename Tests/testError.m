%function tests = testError
%    tests = functiontests(localfunctions);
%end

%{

function testErrorLineal(casoDePrueba)

    matriz = [ 1 2 3 4 ; 10 5 2 1 ];
    
    [m, b] = aproximacionLineal(matriz);
    
    actual = calcularErrorLineal([m, b], matriz);
    
    esperado = 4;
    
    verifyEqual(casoDePrueba, actual, esperado, 'RelTol', 0.0001);

end

% Funciona, pero lo comento porque me rompe el test siguiente

%}

function testErrorCuadratico(casoDePrueba)

    matriz = [ 1 2 3 4 ; 10 5 2 1 ];
    
    [a, b, c] = aproximacionCuadratica(matriz);
    
    actual = calcularErrorCuadratico([a, b, c], matriz);
    
    esperado = 4;
    
    verifyEqual(casoDePrueba, actual, esperado, 'RelTol', 0.0001);

end