-- 显示emp表中员工的名字和工资
select ename,sal from emp;
-- 显示emp表中员工的编号,名字,提成
select empno,ename,comm from emp;
-- 显示部门编号和部门名称 
select deptno,dname from dept;
-- 显示员工名字和入职日期 
select ename,hiredate from emp;
-- 显示员工编号  名字 经理编号 
select empno,ename,mgr from emp;
-- 显示员工编号 名字 部门编号
select empno,ename,deptno;
-- 显示工资等级  等级最低工资  等级最高工资
select grade,losal,hisal from salgrade;
-- 查询名字是BLAKE的人的编号,名字,工资
select empno,ename,sal from emp where ename = 'BLAKE';
-- 查询编号是7782的员工的编号,名字,工资,提成
select empno,ename,sal,comm from emp where empno = 7782;
-- 查询入职日期是1981-2-20的员工的名字,入职日期,部门编号
select ename,hiredate,deptno from emp where hiredate= '20-2月-81';
-- 查询职位是销售(SALESMAN)的人的名字,职位,入职日期 
select ename,job,hiredate from emp where job = 'SALESMAN';
-- 查询部门是10的人的编号,名字,部门编号
select empno,ename,deptno from emp where deptno = 10;
-- 查询工资大于1500,并且小于2500的人的编号,名字,工资
select empno,ename,sal from emp where sal > 1500 and sal < 2500;
-- 查询工资小于2000的人的名字,工资,提成
select ename,sal,comm from emp where sal < 2000;
-- 查询提成是0或是空的人的编号,名字,提成,部门编号
select empno,ename,comm,deptno from emp where comm is null or comm = 0;
-- 查询工资大于1000或者部门是30的员工的编号,姓名,工资 
select empno,ename,sal from emp where sal > 1000 or deptno = 30;
-- 查询部门10的部门名称,位置等 
select dname,loc from dept where deptno = 10;
-- 查询职位(JOB)为'PRESIDENT'的员工的工资
select sal from emp where job = 'PRESIDENT'; 
-- 查询有提成的员工信息 
select * from emp where comm is not null or comm !=0;
-- 查询名字长度为4 的员工的员工编号,姓名
select empno,ename from emp where length(ename) = 4;
-- 显示10 号部门的所有经理('MANAGER')和20 号部门的所有职员('CLERK')的详细信息  
select * from emp where (deptno = 10 and job = 'MANAGER') or (deptno = 20 and job = 'CLERK');
-- 显示各个部门经理('MANAGER')的工资
select sal from emp where job = 'MANAGER' ;
-- 显示佣金(COMM)收入比工资(SAL)高的员工的详细信息
select * from emp where comm > sal ;
-- 检索以S结尾的员工姓名及月收入( 月收入是工资和提成之和 ) 
select ename,(sal + nvl(comm,0)) month_sal  from emp where ename like '%S';
-- 查询员工姓名的第三个字母是A的员工姓名 
select ename from emp where ename like '__A%';
-- 查询工资不在1000到2000之间的员工的姓名和工资
select ename,sal from emp where sal not between 1000 and 2000;
-- 查询公司中没有管理者的员工姓名及job 
select ename,job from emp where mgr is null;
-- 求ename列的长度,显示员工编号,名字,长度
select empno,ename,length(ename) from emp;
-- 将ename转成小写,显示员工编号,名字,小写名字
select ename,empno,lower(ename) from emp ;
-- 将ename中的A,替换成ABC,显示编号,替换前的名字,替换后的名字
select empno,ename 替换前,replace(ename,'A','ABC') 替换后 from emp;
-- 取ename的第二个字符,显示编号,名字,第二个字符
select empno,ename,substr(ename,2,1) from emp;
-- 取ename的第二个字符到末尾的所有字符,显示编号,名字,截取后的字符
select empno,ename,substr(ename,2,length(ename)-1) from emp;
-- 取ename的第三个到第五个字符,显示编号,名字,截取后的字符
select empno,ename,substr(ename,3,3) from emp;
-- 找出ename中A第一次出现的位置,显示编号,名字,A的位置 
select empno,ename,instr(ename,'A') from emp;
-- 从ename中第一个A的位置开始截取,取2个字符,显示名字,截取后的字符
select ename,substr(ename,instr(ename,'A'),2) from emp;
-- 将'abc,bdc,def'变成'abc bdc def',显示变之前的字符串,变之后的字符串
select 'abc,bdc,def' str1
-- 将'ABCDEFADE'变成'mBCDEFmDE',显示变之前的字符串,变之后的字符串
select REPLACE('ABCDEFADE','A','M')
-- 将'      abcdef       '变成'abcdef',显示变之前的字符串,变之后的字符串

-- 将'     mnop'变成'mnop',显示变之前的字符串,变之后的字符串

-- 将'nqwd      '变成'nqwd',显示变之前的字符串,变之后的字符串  --rtrim( )

-- 将'hi    jk     mno'变成'hijkmno',显示变之前的字符串,变之后的字符串

-- 求D和d的 ascii码.

-- 将员工名字从M开始截取,显示员工姓名和截取之后名字
select ename,
-- 将ename中的M替换成AAA,显示替换前后的名字
select ename 替换前,replace(ename,'M','AAA') 替换后 from emp;

-- 将工资保2位小数，显示为美元格式，显示员工编号，姓名，工资
select empno,ename,to_char(round(sal,-2),'$9999.99') from emp;
-- 将员工工资显示千分位形式，显示员工编号，姓名，工资
select empno,ename,to_char(round(sal,-3),'$9999.999') from emp;
-- 将员工工资增加500之后，求比原 工资增加了百分之几，四舍五入保留两位小数，显示员工编号， 名字，工资，百分比（比如：20%）
select empno,ename,sal,concat(to_char(500/(sal+500),'999.99')*100,'%') 涨幅 from emp;
-- 查询入职日期在1981-5-1到1981-12-31至间的所有员工信息
select * from emp where hiredate between '1-5月-81' and '31-12月-81' ;
-- 求1981年下半年入职的员工

-- 查询当前月有多少天
select count(month(sysdate)) from dual
                   

-- 如果有提成，显示成'有提成',没提成，显示'没提成'分别用case和decode
select 
-- 如果job是PRESIDENT显示成'老板'，job是MANAGER，显示成'经理'，其他显示成员工，分别用

  
-- 1981年及以前入职的，显示为'老员工',1982年及以后入职的，显示为'新员工'
   
-- 随便写一个年份（比如:1981),判断这个年份是不是闰年，是闰年，显示为'闰年'，否则显示为'平年'


-- emp表中hiredate，求星期，如果是星期一，显示为'周一'，是星期二，显示为'周二',依次类推，星期日显示为'周日'

-- 列出至少有一个雇员的所有部门
select deptno from emp where 

-- 列出薪金比‘SMITH’多的所有雇员

-- 列出所有雇员的姓名及其直接上级的姓名

-- 列出入职日期早于其直接上级的所有雇员

-- 列出所有‘CLERK’(办事员)的姓名及其部门名称

-- 列出薪金高于公司平均水平的所有雇员

  
-- 列出与‘SCOTT’从事相同工作的所有雇员

-- 列出某些雇员的姓名和佣金，条件是他们的薪金等于部门30中任何一个雇员的薪金


-- 列出某些雇员的姓名和佣金，条件是他们的薪金高于部门30中所有雇员的薪金


-- 列出每个部门的编号以及该部门中雇员数量、平均工资和平均服务期限

-- 列出所有雇员的雇员名称，部门名称和薪金
select emp.ename,dept.dname,emp.sal from emp,dept where emp.job = 'CLERK' and emp.deptno = dept.deptno;
-- 列出从事同一种工作但属于不同部门的雇员数量

-- 列出各种类别工作的最低工资
select job,min(sal) from emp group by job 
-- 列出各个部门的MANGER （经理)的最低薪金
select deptno,min(sal) from emp where job = 'MANAGER' group by deptno; 
-- 列出按年薪排序的所有雇员的年薪

-- 列出薪金水平处于第四位的雇员

-- 不用组函数求出薪水的最大值

-- 查询员工的基本信息，附加其上级的姓名 

-- 显示工资比‘ALLEN’高的所有员工的姓名和工资
select ename,sal from emp where sal > (select sal from emp where ename ='ALLEN');  
-- 显示与‘SCOTT’从事相同工作的员工的详细信息
seelct * from emp where job = (select job from emp where ename = 'SCOTT');
-- 显示与30部门‘MARTIN’员工工资相同的员工的姓名和工资
select ename,sal from emp where sal = (select sal from emp where ename = 'MARTIN' and deptno = 30) 
-- 查询所有工资高于平均工资（平均工资包括所有员工）的销售人员（‘SALESMAN’）

-- 显示所有职员的姓名及其所在部门的名称和工资

-- 查询在研发部（‘RESEARCH’）工作员工的编号，姓名，工作部门，工作所在地

-- 查询各个部门的名称和员工人数

-- 查询各个职位员工工资大于平均工资（平均工资包括所有员工）的人数和员工职位

-- 查询工资相同的员工的工资和姓名

-- 查询工资最高的3名员工信息

-- 求入职日期相同的（年月日相同）的员工
 

-- 查询每个员工的信息及工资级别

 
-- 查询各部门工资最高的员工信息
select deptno,max(sal) from emp group by deptno;
 
-- 查询出有3个以上下属的员工信息

-- 查询所有大于本部门平均工资的员工信息

-- 查询平均工资最高的部门信息


-- 查询部门平均工资大于所有人平均工资的部门信息

-- 查询没有员工的部门信息

