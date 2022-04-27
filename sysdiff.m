function dy = sysdiff(t,Y)
% Returns the coupled equation system

dy = [0; 0];

top = topsurface(t,Y);

% Sum of heat flow rate
dy(1) = mantelsurface(t,Y)+ top(2);

% Mass flow rate
dy(2) = top(1);

%debugging print statements
fprintf('current heat flux mantel %.3f k/s\n current heat flux top %.3f k/s \n',mantelsurface(t,Y),top(2))
fprintf('current mass flux %.5f g/s\n',dy(2)*1E3)
fprintf('Current temp and mass %.1f K %.1f g \n \n',Y(1),Y(2)*1E3)
end

