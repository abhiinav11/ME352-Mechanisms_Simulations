%% Code written for ME352A by : Abhinav Maheshwari, Roll No. 190028

%% taking the input

clear all;
clc;
fprintf('• Input all the angles in degrees only\n');
d=input('  Input r1 = ');
a=input('  Input r2 = ');
b=input('  Input r3 = ');
c=input('  Input r4 = ');
r_5=input('  Input r5 = ');
r_6=input('  Input r6 = ');
r_7=input('  Input r7 = ');
r_8=input('  Input r8 = ');
theta1=deg2rad(input('  Input θ1 = '));
theta8=deg2rad(input('  Input θ8 = '));
gamma=deg2rad(input('  Input γ (the angle between r4 and r5) = '));
theta2=deg2rad(input('  Enter the input angle θ2 = '));

%% code for calculation

%Calculation: angle θ3
k2=(c^2-(a^2+b^2+d^2)+2*a*d*cos(theta2-theta1))/(2*b);
A2=k2+a*cos(theta2)-d*cos(theta1);
B2=2*(d*sin(theta1)-a*sin(theta2));
C2=k2+d*cos(theta1)-a*cos(theta2);
D2=B2^2-4*A2*C2;
theta3_1=(2*atan((-1*B2+sqrt(D2))/(2*A2)));
theta3_2=(2*atan((-1*B2-sqrt(D2))/(2*A2)));

%Calculation: angle θ4
k1=(b^2-(a^2+c^2+d^2)+2*a*d*cos(theta2-theta1))/(2*c);
A1=k1+d*cos(theta1)-a*cos(theta2);
B1=2*(d*sin(theta1)-a*sin(theta2));
C1=k1+a*cos(theta2)-d*cos(theta1);
D1=B1^2-4*A1*C1;
theta4_1=(-2*atan((-1*B1+sqrt(D1))/(2*A1)));
theta4_2=(-2*atan((-1*B1-sqrt(D1))/(2*A1)));

%Calculation: angle θ5
theta5_1=(theta4_1-gamma);
theta5_2=(theta4_2-gamma);

%Calculation: angle θ6
k4=(r_7^2-(r_5^2+r_6^2+r_8^2)+2*r_5*r_8*cos(theta5_1-theta8))/(2*r_6);
A4=k4+r_5*cos(theta5_1)-r_8*cos(theta8);
B4=2*(r_8*sin(theta8)-r_5*sin(theta5_1));
C4=k4+r_8*cos(theta8)-r_5*cos(theta5_1);
D4=B4^2-4*A4*C4;
theta6_1=(2*atan((-1*B4+sqrt(D4))/(2*A4)));
theta6_2=(2*atan((-1*B4-sqrt(D4))/(2*A4)));

k4_1=(r_7^2-(r_5^2+r_6^2+r_8^2)+2*r_5*r_8*cos(theta5_2-theta8))/(2*r_6);
A4_1=k4_1+r_5*cos(theta5_2)-r_8*cos(theta8);
B4_1=2*(r_8*sin(theta8)-r_5*sin(theta5_2));
C4_1=k4_1+r_8*cos(theta8)-r_5*cos(theta5_2);
D4_1=B4_1^2-4*A4_1*C4_1;
theta6_1_1=(2*atan((-1*B4_1+sqrt(D4_1))/(2*A4_1)));
theta6_2_2=(2*atan((-1*B4_1-sqrt(D4_1))/(2*A4_1)));

%Calculation: angle θ7
k3=(r_6^2-(r_5^2+r_7^2+r_8^2)+2*r_5*r_8*cos(theta5_1-theta8))/(2*r_7);
A3=k3+r_8*cos(theta8)-r_5*cos(theta5_1);
B3=2*(r_8*sin(theta8)-r_5*sin(theta5_1));
C3=k3-r_8*cos(theta8)+r_5*cos(theta5_1);
D3=B3^2-4*A3*C3;
theta7_1=(-2*atan((-1*B3+sqrt(D3))/(2*A3)));
theta7_2=(-2*atan((-1*B3-sqrt(D3))/(2*A3)));

k3_1=(r_6^2-(r_5^2+r_7^2+r_8^2)+2*r_5*r_8*cos(theta5_2-theta8))/(2*r_7);
A3_1=k3_1+r_8*cos(theta8)-r_5*cos(theta5_2);
B3_1=2*(r_8*sin(theta8)-r_5*sin(theta5_2));
C3_1=k3_1-r_8*cos(theta8)+r_5*cos(theta5_2);
D3_1=B3_1^2-4*A3_1*C3_1;
theta7_1_1=(-2*atan((-1*B3_1+sqrt(D3_1))/(2*A3_1)));
theta7_2_2=(-2*atan((-1*B3_1-sqrt(D3_1))/(2*A3_1)));


%% Find the number of possible configurations

possible_configuration=4;
configuration_1=1;
configuration_2=1;
configuration_3=1;
configuration_4=1;

if(imag(theta3_2)~=0 || imag(theta4_2)~=0 || imag(theta5_2)~=0 || imag(theta6_2_2)~=0 || imag(theta7_2_2)~=0)
    possible_configuration=possible_configuration-1;
    configuration_1=0;
end
if(imag(theta3_2)~=0 || imag(theta4_2)~=0 || imag(theta5_2)~=0 || imag(theta6_1_1)~=0 || imag(theta7_1_1)~=0)
    possible_configuration=possible_configuration-1;
    configuration_2=0;
end
if(imag(theta3_1)~=0 || imag(theta4_1)~=0 || imag(theta5_1)~=0 || imag(theta6_2)~=0 || imag(theta7_2)~=0)
    possible_configuration=possible_configuration-1;
    configuration_3=0;
end
if(imag(theta3_1)~=0 || imag(theta4_1)~=0 || imag(theta5_1)~=0 || imag(theta6_1)~=0 || imag(theta7_1)~=0)
    possible_configuration=possible_configuration-1;
    configuration_4=0;
end

%% Output to be displayed on the console

fprintf('\n• The output angles given are in degrees\n');
fprintf('• There can be %i orientations possible for the given inputs :\n',possible_configuration);
fprintf('\ni)   Orientation 1 : Loop 1 - Open, Loop 2 - Open :\n');
if(configuration_1~=0)
	fprintf('     θ3 = %.2f\n',rad2deg(theta3_2));
	fprintf('     θ4 = %.2f\n',rad2deg(theta4_2));
	fprintf('     θ5 = %.2f\n',rad2deg(theta5_2));
	fprintf('     θ6 = %.2f\n',rad2deg(theta6_2_2));
	fprintf('     θ7 = %.2f\n',rad2deg(theta7_2_2));
else
    fprintf('     This orientation is not possible for the provided input dimensions\n');
end
fprintf('\nii)  Orientation 2 : Loop 1 - Open, Loop 2 - Crossed :\n');
if(configuration_2~=0)
	fprintf('     θ3 = %.2f\n',rad2deg(theta3_2));
	fprintf('     θ4 = %.2f\n',rad2deg(theta4_2));
	fprintf('     θ5 = %.2f\n',rad2deg(theta5_2));
	fprintf('     θ6 = %.2f\n',rad2deg(theta6_1_1));
	fprintf('     θ7 = %.2f\n',rad2deg(theta7_1_1));
else
    fprintf('     This orientation is not possible for the provided input dimensions\n');
end
fprintf('\niii) Orientation 3 : Loop 1 - Crossed, Loop 2 - Open :\n');
if(configuration_3~=0)
	fprintf('     θ3 = %.2f\n',rad2deg(theta3_1));
	fprintf('     θ4 = %.2f\n',rad2deg(theta4_1));
	fprintf('     θ5 = %.2f\n',rad2deg(theta5_1));
	fprintf('     θ6 = %.2f\n',rad2deg(theta6_2));
	fprintf('     θ7 = %.2f\n',rad2deg(theta7_2));
else
    fprintf('     This orientation is not possible for the provided input dimensions\n');
end
fprintf('\niv)  Orientation 4 : Loop 1 - Crossed, Loop 2 - Crossed :\n');
if(configuration_4~=0)
	fprintf('     θ3 = %.2f\n',rad2deg(theta3_1));
	fprintf('     θ4 = %.2f\n',rad2deg(theta4_1));
	fprintf('     θ5 = %.2f\n',rad2deg(theta5_1));
	fprintf('     θ6 = %.2f\n',rad2deg(theta6_1));
	fprintf('     θ7 = %.2f\n',rad2deg(theta7_1));
else
    fprintf('     This orientation is not possible for the provided input dimensions\n');
end

%% Code for plotting the output

if(configuration_1~=0 || configuration_2~=0 || configuration_3~=0 || configuration_4~=0)
	figure('units','normalized','outerposition',[0 0 1 1])
	plot_1=subplot(2,2,1);
	title('Orientation 1 : Loop 1 - Open, Loop 2 - Open');
	p1=[0;0];
	p2=[a*cos(theta2);a*sin(theta2)];
	p3=[a*cos(theta2)+b*cos(theta3_2);a*sin(theta2)+b*sin(theta3_2)];
	p4=[d*cos(theta1);d*sin(theta1)];
	p5=[d*cos(theta1)+r_5*cos(theta5_2);d*sin(theta1)+r_5*sin(theta5_2)];
	p6=[d*cos(theta1)+r_5*cos(theta5_2)+r_6*cos(theta6_2_2);d*sin(theta1)+r_5*sin(theta5_2)+r_6*sin(theta6_2_2)];
	p7=[d*cos(theta1)+r_8*cos(theta8);d*sin(theta1)+r_8*sin(theta8)];
	if(configuration_1~=0)
		p1_circle=viscircles(p1',0.05,'Color','r');
		p2_circle=viscircles(p2',0.05,'Color','r');
		p3_circle=viscircles(p3',0.05,'Color','r');
		p4_circle=viscircles(p4',0.05,'Color','r');
		p5_circle=viscircles(p5',0.05,'Color','r');
		p6_circle=viscircles(p6',0.05,'Color','r');
		p7_circle=viscircles(p7',0.05,'Color','r');
		link_a=line([p1(1) p2(1)],[p1(2) p2(2)]);
		link_b=line([p2(1) p3(1)],[p2(2) p3(2)]);
		link_c=line([p3(1) p4(1)],[p3(2) p4(2)]);
		link_d=line([p1(1) p4(1)],[p1(2) p4(2)]);
		link_e=line([p4(1) p5(1)],[p4(2) p5(2)]);
		link_f=line([p5(1) p6(1)],[p5(2) p6(2)]);
		link_g=line([p6(1) p7(1)],[p6(2) p7(2)]);
		link_h=line([p4(1) p7(1)],[p4(2) p7(2)]);
		link_i=line([p3(1) p5(1)],[p3(2) p5(2)]);
		patch([p3(1) p4(1) p5(1)],[p3(2) p4(2) p5(2)],'blue','FaceAlpha',.3);
	end
	plot_2=subplot(2,2,2);
	title('Orientation 2 : Loop 1 - Open, Loop 2 - Crossed');
	p1_1=[0;0];
	p2_2=[a*cos(theta2);a*sin(theta2)];
	p3_3=[a*cos(theta2)+b*cos(theta3_2);a*sin(theta2)+b*sin(theta3_2)];
	p4_4=[d*cos(theta1);d*sin(theta1)];
	p5_5=[d*cos(theta1)+r_5*cos(theta5_2);d*sin(theta1)+r_5*sin(theta5_2)];
	p6_6=[d*cos(theta1)+r_5*cos(theta5_2)+r_6*cos(theta6_1_1);d*sin(theta1)+r_5*sin(theta5_2)+r_6*sin(theta6_1_1)];
	p7_7=[d*cos(theta1)+r_8*cos(theta8);d*sin(theta1)+r_8*sin(theta8)];
	if(configuration_2~=0)
		p1_1_circle=viscircles(p1_1',0.05,'Color','r');
		p2_2_circle=viscircles(p2_2',0.05,'Color','r');
		p3_3_circle=viscircles(p3_3',0.05,'Color','r');
		p4_4_circle=viscircles(p4_4',0.05,'Color','r');
		p5_5_circle=viscircles(p5_5',0.05,'Color','r');
		p6_6_circle=viscircles(p6_6',0.05,'Color','r');
		p7_7_circle=viscircles(p7_7',0.05,'Color','r');
		link_a_a=line([p1_1(1) p2_2(1)],[p1_1(2) p2_2(2)]);
		link_b_b=line([p2_2(1) p3_3(1)],[p2_2(2) p3_3(2)]);
		link_c_c=line([p3_3(1) p4_4(1)],[p3_3(2) p4_4(2)]);
		link_d_d=line([p1_1(1) p4_4(1)],[p1_1(2) p4_4(2)]);
		link_e_e=line([p4_4(1) p5_5(1)],[p4_4(2) p5_5(2)]);
		link_f_f=line([p5_5(1) p6_6(1)],[p5_5(2) p6_6(2)]);
		link_g_g=line([p6_6(1) p7_7(1)],[p6_6(2) p7_7(2)]);
		link_h_h=line([p4_4(1) p7_7(1)],[p4_4(2) p7_7(2)]);
		link_i_i=line([p3_3(1) p5_5(1)],[p3_3(2) p5_5(2)]);
		patch([p3_3(1) p4_4(1) p5_5(1)],[p3_3(2) p4_4(2) p5_5(2)],'yellow','FaceAlpha',.3);
	end
	plot_3=subplot(2,2,3);
	title('Orientation 3 : Loop 1 - Crossed, Loop 2 - Open');
	p1_x=[0;0];
	p2_x=[a*cos(theta2);a*sin(theta2)];
	p3_x=[a*cos(theta2)+b*cos(theta3_1);a*sin(theta2)+b*sin(theta3_1)];
	p4_x=[d*cos(theta1);d*sin(theta1)];
	p5_x=[d*cos(theta1)+r_5*cos(theta5_1);d*sin(theta1)+r_5*sin(theta5_1)];
	p6_x=[d*cos(theta1)+r_5*cos(theta5_1)+r_6*cos(theta6_2);d*sin(theta1)+r_5*sin(theta5_1)+r_6*sin(theta6_2)];
	p7_x=[d*cos(theta1)+r_8*cos(theta8);d*sin(theta1)+r_8*sin(theta8)];
	if(configuration_3~=0)
		p1_x_circle=viscircles(p1_x',0.05,'Color','r');
		p2_x_circle=viscircles(p2_x',0.05,'Color','r');
		p3_x_circle=viscircles(p3_x',0.05,'Color','r');
		p4_x_circle=viscircles(p4_x',0.05,'Color','r');
		p5_x_circle=viscircles(p5_x',0.05,'Color','r');
		p6_x_circle=viscircles(p6_x',0.05,'Color','r');
		p7_x_circle=viscircles(p7_x',0.05,'Color','r');
		link_a_x=line([p1_x(1) p2_x(1)],[p1_x(2) p2_x(2)]);
		link_b_x=line([p2_x(1) p3_x(1)],[p2_x(2) p3_x(2)]);
		link_c_x=line([p3_x(1) p4_x(1)],[p3_x(2) p4_x(2)]);
		link_d_x=line([p1_x(1) p4_x(1)],[p1_x(2) p4_x(2)]);
		link_e_x=line([p4_x(1) p5_x(1)],[p4_x(2) p5_x(2)]);
		link_f_x=line([p5_x(1) p6_x(1)],[p5_x(2) p6_x(2)]);
		link_g_x=line([p6_x(1) p7_x(1)],[p6_x(2) p7_x(2)]);
		link_h_x=line([p4_x(1) p7_x(1)],[p4_x(2) p7_x(2)]);
		link_i_x=line([p3_x(1) p5_x(1)],[p3_x(2) p5_x(2)]);
		patch([p3_x(1) p4_x(1) p5_x(1)],[p3_x(2) p4_x(2) p5_x(2)],'magenta','FaceAlpha',.3);
	end
	plot_4=subplot(2,2,4);
	title('Orientation 4 : Loop 1 - Crossed, Loop 2 - Crossed');
	p1_y=[0;0];
	p2_y=[a*cos(theta2);a*sin(theta2)];
	p3_y=[a*cos(theta2)+b*cos(theta3_1);a*sin(theta2)+b*sin(theta3_1)];
	p4_y=[d*cos(theta1);d*sin(theta1)];
	p5_y=[d*cos(theta1)+r_5*cos(theta5_1);d*sin(theta1)+r_5*sin(theta5_1)];
	p6_y=[d*cos(theta1)+r_5*cos(theta5_1)+r_6*cos(theta6_1);d*sin(theta1)+r_5*sin(theta5_1)+r_6*sin(theta6_1)];
	p7_y=[d*cos(theta1)+r_8*cos(theta8);d*sin(theta1)+r_8*sin(theta8)];
	if(configuration_4~=0)
		p1_y_circle=viscircles(p1_y',0.05,'Color','r');
		p2_y_circle=viscircles(p2_y',0.05,'Color','r');
		p3_y_circle=viscircles(p3_y',0.05,'Color','r');
		p4_y_circle=viscircles(p4_y',0.05,'Color','r');
		p5_y_circle=viscircles(p5_y',0.05,'Color','r');
		p6_y_circle=viscircles(p6_y',0.05,'Color','r');
		p7_y_circle=viscircles(p7_y',0.05,'Color','r');
		link_a_y=line([p1_y(1) p2_y(1)],[p1_y(2) p2_y(2)]);
		link_b_y=line([p2_y(1) p3_y(1)],[p2_y(2) p3_y(2)]);
		link_c_y=line([p3_y(1) p4_y(1)],[p3_y(2) p4_y(2)]);
		link_d_y=line([p1_y(1) p4_y(1)],[p1_y(2) p4_y(2)]);
		link_e_y=line([p4_y(1) p5_y(1)],[p4_y(2) p5_y(2)]);
		link_f_y=line([p5_y(1) p6_y(1)],[p5_y(2) p6_y(2)]);
		link_g_y=line([p6_y(1) p7_y(1)],[p6_y(2) p7_y(2)]);
		link_h_y=line([p4_y(1) p7_y(1)],[p4_y(2) p7_y(2)]);
		link_i_y=line([p3_y(1) p5_y(1)],[p3_y(2) p5_y(2)]);
		patch([p3_y(1) p4_y(1) p5_y(1)],[p3_y(2) p4_y(2) p5_y(2)],'green','FaceAlpha',.3);
	end
end