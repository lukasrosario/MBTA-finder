%Gets train info for a given T stop id.
function output = getpredictions(~, id)
            endpoint = sprintf('https://api-v3.mbta.com/predictions?filter[stop]=%s', id);
            output = webread(endpoint);
end