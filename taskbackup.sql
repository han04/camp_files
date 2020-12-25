select emp.deptno,dept.dname,count(emp.deptno),max(emp.sal),min(emp.sal),sum(emp.sal),
avg(emp.sal)
from emp,dept
where emp.deptno = dept.deptno
group by emp.deptno,dept.dname

select emp.deptno 部门编号,dept.dname 部门名称,emp.job 岗位名称,count(emp.deptno) 部门人数
from emp,dept
where emp.deptno = dept.deptno
group by emp.deptno,dept.dname,emp.job
order by emp.deptno


select manager.ename 经理姓名,manager.empno 经理编号,count(worker.ename) 管理人数
from emp worker,emp manager
where worker.mgr = manager.empno(+)
group by manager.ename,manager.empno

select deptno,max(sal)-min(sal) distance
from emp
group by deptno

select job,sum(sal)
from emp
where job != 'SALESMAN'
having sum(sal)>= 2500
group by job

select dept.dname,count(emp.empno),round(max(emp.sal)),round(min(emp.sal))
from emp,dept
where emp.deptno = dept.deptno
having count(emp.empno) > 2
group by dept.dname,emp.deptno

select ename,job
from emp
where sal > (select sal from emp where empno = 7876)
and job = (select job from emp where empno = 7369)

select ename,job,min(sal)
from emp
where sal = (select min(sal) from emp  )
group by ename,job


select ename,hiredate 
from emp
where hiredate = (select max(hiredate) from emp)
group by ename,hiredate

select emp.ename,emp.sal,dept.dname
from emp,dept
where sal > (select sal from emp where emp.ename='SCOTT')
and dept.loc = 'CHICAGO'
and dept.deptno = emp.deptno


select * from emp 
where hiredate < (select min(hiredate) from emp where deptno = 20 )


select dept.deptno,dept.dname,dept.loc
from dept,emp
where emp.deptno(+) = dept.deptno
group by dept.deptno,dept.dname,dept.loc
having 
      count(emp.empno) > (select avg(num1) 
                        from(
                             select count(emp.empno) num1 
                             from emp,dept 
                             where emp.deptno(+)= dept.deptno 
                             group by dept.deptno)
                             )
