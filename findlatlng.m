% Find latitude and longitude for entered address with Google Geocode API
function [lat, lng] = findlatlng(~, value) 
            encodeEndpoint = 'https://maps.googleapis.com/maps/api/geocode/json?';
            encodeKey = '';
            result = webread(encodeEndpoint, 'address', string(value),'key', encodeKey);
            lat = result.results.geometry.location.lat;
            lng = result.results.geometry.location.lng;
end