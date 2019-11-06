close all;clear all
viewagl=[-37.5,30];
l1=3;l2=2;l3=2;th1=0;th2=0;
l2g=l2/2;l3g=l3/2;
wedge=inline('[0,-az,ay;az,0,-ax;-ay,ax,0]');
testmodel2;
plt(1)=plot3(xy(1,:),xy(2,:),xy(3,:),'o-','linewidth',3);
hold on
plt(2)=plot3(xyg(1,:),xyg(2,:),xyg(3,:),'ro','markersize',5);
hold off
axis equal;grid;xlabel('x');ylabel('y');zlabel('z');
axis([-5,5,-5,5,0,10]);
view(viewagl);
ui1=uicontrol(1,'style','slider','max',pi/2,'min',-pi/2,'value',0);
ui2=uicontrol(1,'style','slider','max',pi/2,'min',-pi/2,'value',0);
set(ui1,'position',[10,25,60,20],'callback','sub3');
set(ui2,'position',[10,65,60,20],'callback','sub3');
uicontrol('style','text','position',[10,45,60,20],'string','th1');
uicontrol('style','text','position',[10,85,60,20],'string','th2');
