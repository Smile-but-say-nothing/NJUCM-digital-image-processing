function [H,S,I] = rgb2hisPixel(R,G,B)
    theta = acos((0.5*(R-G+R-B))/(sqrt((R-G)^2+(R-B)*(G-B))));
    if B <= G
        H = theta;
    else
        H = 360 - theta;
    end
    S = 1 - (3/(R+G+B))*(min(min(R,G),B));
    I = (R+G+B)/3;
end