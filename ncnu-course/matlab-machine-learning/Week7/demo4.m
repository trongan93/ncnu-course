A = magic(5)
b = [1 5 -2 3 6];
fid = fopen('mydata','wb')
fwrite(fid,A,'float');
fwrite(fid,b,'short');
fclose(fid);

fid = fopen('mydata','rb');
A2 = fread(fid,25,'float')
A2 = reshape(A2,5,5)
b2 = fread(fid,5,'short')
fclose(fid);