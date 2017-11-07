function graficarAproximacionLineal(m, b, X)
    %Trunca la cantidad de decimales que se muestran por pantalla    
    digits(4);

    for i=1:length(X(1,:))
        hold on; 
        plot (X(1,i),X(2,i),'*','MarkerEdgeColor','r','LineWidth',1); 
    end 

    %Extremos a considerar para el gr�fico
    
    e1=min(X(1,:))-10;
    e2=max(X(1,:))+10;
    e3=min(X(2,:))-10;
    e4=max(X(2,:))+10;

    %Grafico de la recta obtenida
    
    fplot(@(x) m*x + b,'g')
    xlim([e1 e2]);
    ylim([e3 e4]);
    
    %Asigno el t�tulo del gr�fico. S�lo puedo mostrar texto con formato
    %piola en los ploteos, as� que cambi� el t�tulo anterior por la funci�n
    %aproximante: con los dos �ltimos par�metros de la funci�n title y
    %xlabel, se asigna el formato cheto a las funciones.
    
    title(mostrarFuncion(m, b));
    
    xlabel(['Error: ' num2str(calcularErrorLineal([m, b], X))]);

end

function [funcion] = mostrarFuncion(pendiente, ordenada)    
    
    funcion = ['Polinomio aproximante: ' num2str(pendiente) 'x + ' num2str(ordenada)];
    
end