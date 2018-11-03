%% Part 1
fid = fopen('example.txt','r')
% a = fscanf(fid,'%s')
b = fscanf(fid,'%s',1)
% disp(a)
disp(b)
fclose(fid)

%% Part 2
fid = fopen('example.txt','r')
line = fgets(fid)
line2 = fgetl(fid)
fclose(fid)

%% Part 3
x = input('Enter your ID number: ')
y = str2num(x)
