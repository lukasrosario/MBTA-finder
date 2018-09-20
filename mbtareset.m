%This resets the app in between one result and the user entering a new
%location.
function mbtareset(app)
            app.UITable.Enable = 'off';
            app.UITable.Data = [];
            cla(app.UIAxes, 'reset');
            app.UIAxes.Visible = 'off';
            cla(app.UIAxes2, 'reset');
            app.UIAxes2.Visible = 'off';
end