function DF=getAnnualDF(lat,lon,diffMatrix)

%inputs:

% lat: latitude of the desired site
% lon: longitude of the desired site
% diffMatrix: attached database based on data from the One Building Database
% (column 1 corresponds to latitude, column 2 to the longitude and column 3
% the diffuse fraction value)

% outputs:

% DF: estimated diffuse fraction value for the desired site

dist=abs(diffMatrix(:,1)-lat)+abs(diffMatrix(:,2)-lon);
minDist=min(dist);
idx=find(dist == minDist);
DF=diffMatrix(idx,3);
end