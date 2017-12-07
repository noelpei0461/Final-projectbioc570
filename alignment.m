%alignment cdk2
% human cdk2 = seq1
hcdk2 = getgenbank('X61622');
seq1 = hcdk2.Sequence;
% mouse cdk2 = seq2
mcdk2 = getgenbank('NM_016756');
seq2 = mcdk2.Sequence;
figure(1)
[score,align,start]=swalign(seq1,seq2,'Alphabet','nt','Showscore',true);
mismatch = sum(double(isspace(align(2,:))));
total = size(align,2);
frac = 1- (mismatch / total);
disp('fraction of bp in human CDK2 aligned to mouse CDK2')
disp(frac)

%alignment cdk4
% human cdk4 = seq3
hcdk4 = getgenbank('NM_000075');
seq3 = hcdk4.Sequence;
% mouse cdk4 = seq4
mcdk4 = getgenbank('NM_009870');
seq4 = mcdk4.Sequence;
figure(2)
[score,align,start]=swalign(seq3,seq4,'Alphabet','nt','Showscore',true);
mismatch = sum(double(isspace(align(2,:))));
total = size(align,2);
frac = 1- (mismatch / total);
disp('fraction of bp in human CDK4 aligned to mouse CDK4')
disp(frac)

%alignment ccnd1
% human ccnd1 = seq5
hccnd1 = getgenbank('BC010958');
seq5 = hccnd1.Sequence;
% mouse ccnd1 = seq6
mccnd1 = getgenbank('NM_009829');
seq6 = mccnd1.Sequence;
figure(3);
[score,align,start]=swalign(seq5,seq6,'Alphabet','nt','Showscore',true);
mismatch = sum(double(isspace(align(2,:))));
total = size(align,2);
frac = 1- (mismatch / total);
disp('fraction of bp in human CCND1 aligned to mouse CCND1')
disp(frac)

%alignment ccne1
% human ccne1 = seq7
hccne1 = getgenbank('M73812');
seq7 = hccne1.Sequence;
% mouse ccne1 = seq8
mccne1 = getgenbank('NM_007633');
seq8 = mccne1.Sequence;
figure(4);
[score,align,start]=swalign(seq7,seq8,'Alphabet','nt','Showscore',true);
mismatch = sum(double(isspace(align(2,:))));
total = size(align,2);
frac = 1- (mismatch / total);
disp('fraction of bp in human CCNE1 aligned to mouse CCNE1')
disp(frac)