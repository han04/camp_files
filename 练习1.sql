--01．查询职（job）为'PRESIDENT'的员工的工资 
select sal from emp where job = 'PRESIDENT';
--02．查询佣金为0或为null的员工的信息 
select * from emp where comm is null or comm = 0
--03．查询入职日期在1981-5-1到1981-12-31之间的所有员工的信息
select * from emp where hiredate between '1-5月-1' and '31-12月-81' 
--04．查询所有名字长度为4的员工的员工的编号，姓名 
select empno,ename from emp where length(ename)=4
--05．显示10号部门的所有经理和20号部门的所有员工 
select * from emp where (deptno=10 and job ='MANAGER')  or (deptno=20 and job ='CLERK')
--06．显示姓名没有'L'字的员工的详细信息或含有'SM'字的员工信息 
select * from emp where ename like '%L%' or ename like '%SM%'
--07．显示各个部门经理的工资 
select deptno,sal from emp where job = 'MANAGER' 
--08．显示佣金收入比工资高的员工的详细信息
select * from emp where sal < comm 
--10．把hiredate列看做是员工的生日，求本月过生日的员工： 
select * from emp where  extract(month from sysdate)= extract(month from hiredate) 
--11．把hiredate列看做是员工的生日，求下月过生日的员工 
select * from emp where  extract(month from add_months(sysdate,1))= extract(month from hiredate) 
--12. 求1982年入职的员工 
select * from emp where extract(year from hiredate) = '1982'
--13．求1981年下半年入职的员工 
--14．求1981年各个月入职的员工个数 
select extract(month from hiredate) 入职月份,count(empno) 该月入职人数 from emp where hiredate between '1-7月-81' and '31-12月-81' group by extract(month from hiredate)
--01. 查询各个部门的平均工资 
select deptno,avg(sal) from emp group by deptno
--02. 显示各种职位的最低工资 
select job,min(sal) from emp group by job
--03．按照入职日期由新到旧排列员工信息 
select * from emp order by hiredate desc
--#####04．查询员工的基本信息，附加其上级的姓名
select worker.* ,manager.ename mname from emp worker,emp manager where worker.mgr = manager.empno 
--05．显示工资比’ALLEN’高的所有员工的姓名和工作 
select ename,job from emp where sal > (select sal from emp where ename='ALLEN')
--06．显示与scott从事相同工作的员工的信息
select * from emp where job = (select job from emp where ename = 'SCOTT')
--07．显示销售部(‘SALES’)员工的姓名 
select emp.ename from emp,dept where dept.dname  = 'SALES'
--08．显示与30号部门’MARTIN’员工工资相同的员工的姓名和工资 
select ename,sal from emp where sal = (select sal from emp where ename = 'MARTIN')
--09．查询所有工资高于平均工资（包括所有员工）的销售人员
select ename from emp where( sal >  (select avg(sal) from emp )) and job = 'SALESMAN' 
--10．显示所有职员的姓名及其所在部门的名称和工资(表连接) 
select e.ename,d.dname,e.sal from emp e,dept d 
--11．查询在研发部(RESEARCH)工作人员的编号，姓名，工作部门，工作所在地 
select e.empno,e.ename,d.dname,d.loc from emp e,dept d where d.dname ='RESEARCH'
--12．查询各个部门的名称和员工人数 
select d.dname,count(e.empno) from emp e,dept d group by d.dname
--13．查询各个部门员工工资大于平均工资（平均工资包括所有员工）的人数和员工职位
select job,count(empno) from emp where sal >  (select avg(sal) from emp )  group by job
--14．查询工资相同的员工的工资和姓名 
select e1.ename,e2.ename,e1.sal from emp e1,emp e2 where e1.ename != e2.ename and e1.sal = e2.sal
--15．求入职日期相同的（年月日相同）的员工 
select e1.ename,e2.ename,e1.hiredate from emp e1,emp e2 where e1.ename != e2.ename and e1.hiredate = e2.hiredate
--17．查询每个部门的最高工资 
select max(sal) from emp group by deptno
--19．查询每个部门，每个职位的最高工资 
select max(sal) from emp group by deptno,job
--20．查询每个员工的信息及工资级别，用到表(Salgrade) 
select emp.*,salgrade.grade
from emp,salgrade
where emp.sal between salgrade.losal and salgrade.hisal

--22．查询各个部门工资最高的员工信息 
select * from emp where sal in (select max(sal) from emp group by deptno)
--23．查询10部门工资最高的
select max(sal) from emp where deptno = 10 
--###24．查询出有3个以上 下属的员工信息（自关联）
select emp.* from emp, (select mgr,count(empno) 人数 from emp group by mgr) mgrnum 
where emp.empno= mgrnum.mgr and 人数 > 3
--25．查询所有大于本部门平均工资的员工信息 
select emp.* 
from emp ,(select deptno,avg(sal) asal from emp where deptno = emp.deptno group by deptno) avgsal
where emp.deptno = avgsal.deptno and emp.sal > avgsal.asal


select * from emp where sal > (select avg(sal) from emp where deptno = emp.deptno ) 
--26．查询平均工资最高的部门信息 

--27．查询大于各个部门总工资的平均值的部门信息 

--28．查询大于各个部门总工资平均值的部门下的员工信息 

--29．查询没有员工的部门信息 

