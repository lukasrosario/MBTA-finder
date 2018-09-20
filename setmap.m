%Sets the map image from the google api to the UIAxes view in the app
%designer.
function setmap(app)
            app.UIAxes2.Visible = 'on';
            [image, map] = imread('map.jpg');
            imshow(image, map, 'Parent', app.UIAxes2);
end