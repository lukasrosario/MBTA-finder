%This function takes the stops and distances and sorts them for the plot
%and table.
function [sortstops, sortdistances, sortids] = sortsandn(~, stopsdata, distances)
            sortstops = {};
            sortdistances = [];
            sortids = {};
            allstops = [stopsdata.data.attributes];
            stopnames = {allstops.name};
            stopids = {stopsdata.data.id};
            while ~isempty(stopnames)
                minindex = find(min(distances) == distances);
                minindex = minindex(1);
                sortstops(end + 1) = stopnames(minindex);
                sortdistances(end + 1) = distances(minindex);
                sortids(end + 1) = stopids(minindex);
                stopnames(minindex) = [];
                distances(minindex) = [];
                stopids(minindex) = [];
            end
            
end