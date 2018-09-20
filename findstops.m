%Passes the longitude and lattitude of users location to MBTA Stops API
function stopsdata = findstops(~, lat, lng)
    endpoint = 'https://api-v3.mbta.com/stops';
    stopsdata = webread(endpoint,'longitude', lng, 'latitude', lat, 'radius', 0.005, 'route_type', {0, 1, 2});
end