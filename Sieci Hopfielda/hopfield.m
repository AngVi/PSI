%% 

T = [+1 +1 -1 -1; ...
      -1 +1 -1 +1];



plot(T(1,:),T(2,:),'r*')
axis([-1.1 1.1 -1.1 1.1])
title('Hopfield Network State Space')
xlabel('a(1)');
ylabel('a(2)');

% tworzy now¹ sieæ  hopfielda
net = newhop(T);

%symetria
[Y,Pf,Af] = net([],[],T);
Y


a = {rands(2,1)};
[y,Pf,Af] = net({20},{},a);


record = [cell2mat(a) cell2mat(y)];
start = cell2mat(a);
hold on
plot(start(1,1),start(2,1),'bx',record(1,:),record(2,:))

color = 'rgbmy';
for i=1:10
   a = {rands(2,1)};
   [y,Pf,Af] = net({20},{},a);
   record=[cell2mat(a) cell2mat(y)];
   start=cell2mat(a);
   plot(start(1,1),start(2,1),'kx',record(1,:),record(2,:),color(rem(i,5)+1))
end


displayEndOfDemoMessage(mfilename)