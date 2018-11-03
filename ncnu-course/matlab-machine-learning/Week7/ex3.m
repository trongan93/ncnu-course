% Part 3
fid = fopen('FAK_48Z66ZZA.wa','rb');
data = fread(fid,'short');
fclose(fid);
figure(1), plot(data)
