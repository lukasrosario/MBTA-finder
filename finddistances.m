%This function uses the Google Distance API to create a vector of distances.
function distances = finddistances(~, lat, lng, mbtadata)
    matrixAPI = 'https://maps.googleapis.com/maps/api/distancematrix/json?';
            encodeKey = '';
            destStr = '';
            latlng = strcat(num2str(lat), ',', num2str(lng));
            for i = 1:length(mbtadata.data)
                destStr = strcat(destStr, num2str(mbtadata.data(i).attributes.latitude), ',', num2str(mbtadata.data(i).attributes.longitude), '|');
            end
            matrixData = webread(matrixAPI, 'origins', latlng, 'destinations', destStr, 'key', encodeKey, 'mode', 'walking');
            distances = zeros(1, length(matrixData.rows.elements));
            for i = 1:length(matrixData.rows.elements)
                distances(i) = matrixData.rows.elements(i).distance.value;
            end
end