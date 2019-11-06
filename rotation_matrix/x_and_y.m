clear all; close all;
xvect=[0,1,1,0,0];yvect=[0,0,1,1,0];zvect=zeros(1,5);
xvect=[xvect,xvect]; yvect=[yvect,yvect];zvect=[zvect,ones(1,5)];
xvect=[xvect,nan,1,1,nan,1,1,nan,0,0];
yvect=[yvect,nan,0,0,nan,1,1,nan,1,1];
zvect=[zvect,nan,0,1,nan,0,1,nan,0,1];
vect=[xvect;yvect;zvect];vect(2,:)=vect(2,:)*2;
plot3(vect(1,:),vect(2,:),vect(3,:),'linewidth',5);
axis equal;grid;
axis([-2,3,-2,3,-2,3]);
viewagl=[-37.5,30];
close all; thy=0;
Rx=inline('[1,0,0;0,cos(thx),-sin(thx);0,sin(thx),cos(thx)]');
Ry=inline('[cos(thy),0,-sin(thy);0,1,0;-sin(thy),0,cos(thy)]');
%Rz=inline('[cos(thx),-sin(thx),0;sin(thx),cos(thx),0;0,0,1]');
for thx=[0:0.1:(90*pi/180),(90*pi/180)]
    newvect=Rx(thx)*Ry(thy)*vect;
    subplot(121);
    plot3(newvect(1,:),newvect(2,:),newvect(3,:),'linewidth',2);
    axis equal;grid;xlabel('x');ylabel('y');zlabel('z');
    axis([-2,3,-2,3,-2,3]);
    view(viewagl);
    title(sprintf('Rx(%d)*Ry(%d)',round(thx*180/pi),round(thy*180/pi)));
       newvect=Ry(thy)*Rx(thx)*vect;
    subplot(122);
    plot3(newvect(1,:),newvect(2,:),newvect(3,:),'linewidth',2);
    axis equal;grid;xlabel('x');ylabel('y');zlabel('z');
    axis([-2,3,-2,3,-2,3]);
    view(viewagl);
    title(sprintf('Ry(%d)*Rx(%d)',round(thy*180/pi),round(thx*180/pi)));
    drawnow;
end 
for thy=[0:0.1:(90*pi/180),(90*pi/180)]
    newvect=Rx(thx)*Ry(thy)*vect;
    subplot(121);
    plot3(newvect(1,:),newvect(2,:),newvect(3,:),'linewidth',2);
    axis equal;grid;xlabel('x');ylabel('y');zlabel('z');
    axis([-2,3,-2,3,-2,3]);
    view(viewagl);
    title(sprintf('Rx(%d)*Ry(%d)',round(thx*180/pi),round(thy*180/pi)));
    
    newvect=Ry(thy)*Rx(thx)*vect;
    subplot(122);
    plot3(newvect(1,:),newvect(2,:),newvect(3,:),'linewidth',2);
    axis equal;grid;xlabel('x');ylabel('y');zlabel('z');
    axis([-2,3,-2,3,-2,3]);
    view(viewagl);
    title(sprintf('Ry(%d)*Rx(%d)',round(thy*180/pi),round(thx*180/pi)));
    drawnow;
end 
