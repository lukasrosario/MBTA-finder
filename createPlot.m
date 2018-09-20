%This creates a plot that shows the closest five lines and the distances to
%them from the starting point in meters.
function createPlot(app, stopnames, distances, ids)
            cla(app.UIAxes, 'reset');
            app.UIAxes.Visible = 'on';
            if length(distances) >= 6
                stoplimit = stopnames(1:6);
                distancelimit = distances(1:6);
            else
                stoplimit = stopnames(1:length(stopnames));
                distancelimit = distances(1:length(distances));
            end
            stoplimit = categorical(stoplimit);
            for i = 1:length(distancelimit)
                color = findcolor(app, findLine(app, ids{i}));
                barh(app.UIAxes, stoplimit(i), distancelimit(i), 'FaceColor', color);
                hold(app.UIAxes, 'on');
            end
            app.UIAxes.Title.String = 'Closest Stops';
end