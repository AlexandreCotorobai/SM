function Save8bitImage(Filename,Image)
%SAVE8BITIMAGE Summary of this function goes here
%   Detailed explanation goes here
    fid = fopen(Filename, 'wb');
    [n,m] = size(Image);
    N = vint16(n);
    M = vint16(m);
    fwrite(f,N,"uint16");
    fwrite(f,M,"uint16");
    fwrite(f,Image,"uint8");
    fclose(fid)
end

