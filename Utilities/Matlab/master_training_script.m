% Forney
% 7-9-2009
% master_training_script.m
%
% If you author a section in the verification guide, create a script
% that generates all the graphics (in pdf format) in that section and 
% store the script in the 'scripts' directory.  For example, wall_model.m
% creates all the pdfs for the section on the Werner and Wengle wall
% model.  Also, add your script to the master list below.
%
% To remain backward compatible with the PyroGraph script we have
% included the script dataplot.m.  To utilize this script, add the
% appropriate parameters to a 'd' line in
% verification_data_config_matlab.csv.

close all
clear all

addpath 'scripts'

cfil = [pwd,'/training_data_config_matlab.csv'];
vdir = [pwd,'/../../Training/'];
plotdir = [pwd,'/../../Manuals/FDS_SMV_Training_Guide/datafigures/'];

set(gcf,'DefaultLineLineWidth',2.0)

[saved_data,drange] = dataplot(cfil,vdir,plotdir);

display('training scripts completed successfully!')