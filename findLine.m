%This gets the line names for a given stop.
function output = findLine(app, id)
            prediction = getpredictions(app, string(id));
            data = [prediction.data];
            rel = [data.relationships];
            route = [rel.route];
            rdata = [route.data];
            ids = categorical({rdata.id});
            output = categories(ids);
            output = string(output{1});
end