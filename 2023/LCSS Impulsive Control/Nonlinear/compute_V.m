function V = compute_V(t,x1)
global P
xc = get_center(t);
V = (xc(1) - x1(1))*(P(1,1)*(xc(1) - x1(1)) + P(1,2)*(xc(2) - x1(2)) + P(1,3)*(xc(3) - x1(3)) + P(1,4)*(xc(4) - x1(4))) + (xc(2) - x1(2))*(P(1,2)*(xc(1) - x1(1)) + P(2,2)*(xc(2) - x1(2)) + P(2,3)*(xc(3) - x1(3)) + P(2,4)*(xc(4) - x1(4))) + (xc(3) - x1(3))*(P(1,3)*(xc(1) - x1(1)) + P(2,3)*(xc(2) - x1(2)) + P(3,3)*(xc(3) - x1(3)) + P(3,4)*(xc(4) - x1(4))) + (xc(4) - x1(4))*(P(1,4)*(xc(1) - x1(1)) + P(2,4)*(xc(2) - x1(2)) + P(3,4)*(xc(3) - x1(3)) + P(4,4)*(xc(4) - x1(4)));
end