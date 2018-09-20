function writestops(~, stopnames, distances)
% Writes the stop and distance in sentence format to a file named stopdistances.txt

            fid = fopen('stopdistances.txt','w');
            for i = 1:length(distances)
                fprintf(fid,'The stop %s is %d meters away.\n',stopnames{i}, distances(i));
            end
            fclose(fid);
end