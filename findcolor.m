%This function gets the specific line color for a given line.
function output = findcolor(~, line)
            [linecolor, ~] = strtok(line, '-');
            switch linecolor
                case 'Red'
                    output = [0.85, 0.16, 0.11]; % 218,41,28
                case 'Green'
                    output = [0, 0.52, 0.24]; % 0,132,61
                case 'Blue'
                    output = [0, 0.24, 0.65]; % 0,61,165
                case 'Orange'
                    output = [0.93, 0.55, 0]; % 237,139,0
                case 'CR'
                    output = [0.50, 0.15, 0.42]; % 128,39,108
            end
end