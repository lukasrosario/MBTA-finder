%This gets relevant information from the MBTA api.
function markstops = getstopdata(~, stopdata, stopnames)
            markstops = [];
            stopsdata = [stopdata.data];
            for i = 1:length(stopsdata)
                for j = 1:length(stopnames)
                    if strcmp(stopdata.data(i).attributes.name, stopnames(j))
                        markstops = [markstops stopsdata(i)];
                    end
                end
            end
end