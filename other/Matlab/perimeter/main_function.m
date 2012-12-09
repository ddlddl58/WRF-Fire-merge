data='data_perim.txt';

addpath ../../other/Matlab/perimeter
addpath('../../other/Matlab/util1_jan');
addpath('../../other/Matlab/netcdf');
addpath('../../other/Matlab/vis3d');

[long,lat,uf,vf,dzdxf,dzdyf,time_now,bound]=read_file_perimeter(data,'wrfout_d01_2007-10-21_12:00:00_real_case');
tign=perimeter(long,lat,uf,vf,dzdxf,dzdyf,time_now,bound);

% Writing the data to the file data_out.txt
fid = fopen('data_out_tign.txt', 'w');
dlmwrite('data_out_tign.txt', tign, 'delimiter', '\t','precision', '%.4f');
fclose(fid);
'printed'

write_array_2d('data_out_wrf_tign.txt',tign)