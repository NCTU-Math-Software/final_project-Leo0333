F=1:4;
PF=(1/4)*ones(1,4);
S=1:6;
PS=(1/6)*ones(1,6);
[E,PE]=diceGame(F,PF,9);
[C,PC]=diceGame(S,PS,6);
[A,PA]=ranVar(E,PE,@diceF,C,PC);
answer1=1-Pcdf(A,PA,0);
answer2=Pcdf(A,PA,-1);
answer3=1-answer1-answer2;
answer1=round(answer1,7);
answer2=round(answer2,7);
answer3=round(answer3,7);
disp(['彼得贏的機率為',num2str(answer1,7)]);
disp(['科林贏的機率為',num2str(answer2,7)]);
disp(['兩人平手機率為',num2str(answer3,7)]);
