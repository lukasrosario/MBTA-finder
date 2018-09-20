%Take sorted stops and distances and puts them in the UITable.
function putstopsinrows(app, stops, distances)
            set(app.UITable, 'Data', []);
            for i = 1:length(distances)
                olddata = get(app.UITable, 'Data');
                newdata = [olddata; stops(i), strcat(num2str(distances(i)), ' meters')];
                set(app.UITable, 'Data', newdata);
            end
end