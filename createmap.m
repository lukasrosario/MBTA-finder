function createmap(app, startlat, startlng, stopdata, stopnames)
%This function uses the Google Static Map API and to create a map
%with a yellow marker centered at the users location and red markers
%at the location of the stops.

            markstops = getstopdata(app, stopdata, stopnames);
            endpoint = 'https://maps.googleapis.com/maps/api/staticmap?';
            key = '';
            centerstring = sprintf("%f,%f", startlat, startlng);
            centermark = strcat('color:yellow|', centerstring);
            locationstring = 'color:red|';
            for i = 1:length(markstops)
                lat = markstops(i).attributes.latitude;
                lng = markstops(i).attributes.longitude;
                locationstring = strcat(locationstring, string(lat), ',', string(lng), '|');

            end
            [map, color] = webread(endpoint, 'size', '640x640', 'center', centerstring, 'markers', centermark, 'markers', locationstring, 'key', key);
            imwrite(map, color, 'map.jpg');
end