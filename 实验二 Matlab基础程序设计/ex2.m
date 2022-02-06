% A=[3 -1 5;4 7 10;2 0 6];
% B=[3 5 9;0 -2 -3;8 7 4];
% C=[5 -1 9;4 3 11;12 -7 6];
% AB = cat(1,A,B)
% AC = cat(2,A,C)
% year = input('输入年份：');
% if(mod(year,400) == 0|| (mod(year,4) == 0 && mod(year,100) ~= 0))
%     fprintf("%d年是闰年\n",year);
% else
%     fprintf("%d年不是闰年\n",year);
% end
y1 = @(x) sin(x);
y2 = @(x) cos(x);
fplot(y1)
hold on 
fplot(y2)
legend('sin(x)','cos(x)')
t = 0:pi/500:40*pi;
xt = (3 + cos(sqrt(32)*t)).*cos(t);
yt = sin(sqrt(32) * t);
zt = (3 + cos(sqrt(32)*t)).*sin(t);
plot3(xt,yt,zt)
axis equal
xlabel('x(t)')
ylabel('y(t)')
zlabel('z(t)')
[X,Y] = meshgrid(-8:.5:8);
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R)./R;
C = gradient(Z);

figure
mesh(X,Y,Z,C)
ezplot('x^2-y^4')