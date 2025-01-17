%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% model = loadYeastModel
% Loads model and adds the rxnGeneMatrix to the structure
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function model = loadYeastModel

scriptFolder = fileparts(which(mfilename));
currentDir = cd(scriptFolder);
model = readCbModel('../model/yeast-GEM.xml');
model = buildRxnGeneMat(model);
cd(currentDir)

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%