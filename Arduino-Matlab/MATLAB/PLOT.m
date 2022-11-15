%% Inicialización Comunicación Serial   
  arduinoObj = serialport("COM4",115200);
  readline(arduinoObj);
 
 % Enviar comando inicial y primera lectura de datos
 writeline(arduinoObj,"MS0000068301001");
 raw_data = read(arduinoObj,1460,"char");
 flush(arduinoObj);
 
 %% Preparación data para decodificar
 
 while true
     
     str_data = string(raw_data);
     % Eliminar la data fuera de los delimitadores de cada corrida
     split_data = strsplit(str_data,'99b'); 
     final_str = split_data(2);
     data_util = strsplit(final_str,'0Cc');
     util_data = data_util(1);

     % Separar en un string independiente cada linea
     data_sep = split(util_data,newline);

     %Eliminar el último caracter de los strings de interés
     for i=[3:1:24]
        val = data_sep(i);
        val2 = char(val);
        val3 = string(val2(1:end-1));
        data_sep(i) = val3;
     end
     

    str = strcat(data_sep(3), data_sep(4), data_sep(5), data_sep(6), data_sep(7),...
               data_sep(8), data_sep(9), data_sep(10), data_sep(11), data_sep(12),...
               data_sep(13), data_sep(14), data_sep(15), data_sep(16), data_sep(17),...
               data_sep(18), data_sep(19), data_sep(20), data_sep(21), data_sep(22),...
               data_sep(23), data_sep(24));
           
%     str = string(str_1(1:end-1));

    %vector_plot = (2*pi/360)*[0:(240/768):(240-((240/768)))]; 
    vector_plot = (2*pi/360)*[0:0.3515625:239.765625]; 

    a = cellstr(reshape(char(str),2,[])');

    L = length(a);
    final = "";

    %Conversión de datos
    for k = 1:numel(a) 
        valor = a{k};
        if valor(1) == '0'
            dig1 = ((valor(2)-'!')+33);
            dig1sub = dig1-48;
            dig1bin = dec2bin(dig1sub,6);
            rangeval_2 = bin2dec([dig1bin]);
        else
            dig1 = ((valor(1)-'!')+33);
            dig2 = ((valor(2)-'!')+33);
            dig1sub = dig1-48;
            dig2sub = dig2-48;
            dig1bin = dec2bin(dig1sub,6);
            dig2bin = dec2bin(dig2sub,6);
            rangeval_2 = bin2dec([dig1bin dig2bin]); 
        end

        final = final + ',' + rangeval_2;
    end

    %Vector con valores
    values = str2num(final);
    values(end)=[];
    


    %Plot
    polarplot(vector_plot, values);
    rlim([0 5600]);

    % Actualizar Data
     writeline(arduinoObj,"MS0000068301001");
     raw_data = read(arduinoObj,1460,"char");
     flush(arduinoObj);
 end
 