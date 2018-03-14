reset;
option solver loqo;
option loqo_options 'iterlim 30 dual', solver loqo;


set FullGrade; # set of FullGrades
set MyGrade; # set of MyGradess
param n_percent{FullGrade,MyGrade}>=0;
# percentage of MyGrade to FullGrade
param work{FullGrade}>=0;
# hours for full grades
param u_FullGrade{FullGrade}>=0;
# upper bound for the percentage of each FullGrade in semester
param l_FullGrade{FullGrade}>=0;
# lower bound for the percentage of each FullGrade in semester
param u_MyGrade{MyGrade} >=0;
# upper bound for the percentage of each MyGrade in semester
param l_MyGrade{MyGrade} >=0;
# lower bound for the percentage of each MyGrade in semester
var Work_Devision{FullGrade}>=0;
# percentage of each CourseWork in semester
minimize Total_work:
sum{i in FullGrade} work[i]*Work_Devision[i];
subject to Work: sum{i in FullGrade} Work_Devision[i] = 100;
# total percentage should be 100%
subject to FullGrade_u{i in FullGrade}: Work_Devision[i] <= u_FullGrade[i];
# FullGrade percentage <= upper bound
subject to FullGrade_l{i in FullGrade}: Work_Devision[i] >= l_FullGrade[i];
# FullGrade percentage >= lower bound
subject to MyGrade_u{j in MyGrade}: sum {i in FullGrade} Work_Devision[i] * n_percent[i,j] / 100 <= u_MyGrade[j];
# MyGrades percentage <= upper bound
subject to MyGrade_l{j in MyGrade}: sum {i in FullGrade} Work_Devision[i] * n_percent[i,j] /100 >= l_MyGrade[j];
# MyGrades percentage >= lower bound