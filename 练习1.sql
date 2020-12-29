--01����ѯְ��job��Ϊ'PRESIDENT'��Ա���Ĺ��� 
select sal from emp where job = 'PRESIDENT';
--02����ѯӶ��Ϊ0��Ϊnull��Ա������Ϣ 
select * from emp where comm is null or comm = 0
--03����ѯ��ְ������1981-5-1��1981-12-31֮�������Ա������Ϣ
select * from emp where hiredate between '1-5��-1' and '31-12��-81' 
--04����ѯ�������ֳ���Ϊ4��Ա����Ա���ı�ţ����� 
select empno,ename from emp where length(ename)=4
--05����ʾ10�Ų��ŵ����о����20�Ų��ŵ�����Ա�� 
select * from emp where (deptno=10 and job ='MANAGER')  or (deptno=20 and job ='CLERK')
--06����ʾ����û��'L'�ֵ�Ա������ϸ��Ϣ����'SM'�ֵ�Ա����Ϣ 
select * from emp where ename like '%L%' or ename like '%SM%'
--07����ʾ�������ž���Ĺ��� 
select deptno,sal from emp where job = 'MANAGER' 
--08����ʾӶ������ȹ��ʸߵ�Ա������ϸ��Ϣ
select * from emp where sal < comm 
--10����hiredate�п�����Ա�������գ����¹����յ�Ա���� 
select * from emp where  extract(month from sysdate)= extract(month from hiredate) 
--11����hiredate�п�����Ա�������գ������¹����յ�Ա�� 
select * from emp where  extract(month from add_months(sysdate,1))= extract(month from hiredate) 
--12. ��1982����ְ��Ա�� 
select * from emp where extract(year from hiredate) = '1982'
--13����1981���°�����ְ��Ա�� 
--14����1981���������ְ��Ա������ 
select extract(month from hiredate) ��ְ�·�,count(empno) ������ְ���� from emp where hiredate between '1-7��-81' and '31-12��-81' group by extract(month from hiredate)
--01. ��ѯ�������ŵ�ƽ������ 
select deptno,avg(sal) from emp group by deptno
--02. ��ʾ����ְλ����͹��� 
select job,min(sal) from emp group by job
--03��������ְ�������µ�������Ա����Ϣ 
select * from emp order by hiredate desc
--#####04����ѯԱ���Ļ�����Ϣ���������ϼ�������
select worker.* ,manager.ename mname from emp worker,emp manager where worker.mgr = manager.empno 
--05����ʾ���ʱȡ�ALLEN���ߵ�����Ա���������͹��� 
select ename,job from emp where sal > (select sal from emp where ename='ALLEN')
--06����ʾ��scott������ͬ������Ա������Ϣ
select * from emp where job = (select job from emp where ename = 'SCOTT')
--07����ʾ���۲�(��SALES��)Ա�������� 
select emp.ename from emp,dept where dept.dname  = 'SALES'
--08����ʾ��30�Ų��š�MARTIN��Ա��������ͬ��Ա���������͹��� 
select ename,sal from emp where sal = (select sal from emp where ename = 'MARTIN')
--09����ѯ���й��ʸ���ƽ�����ʣ���������Ա������������Ա
select ename from emp where( sal >  (select avg(sal) from emp )) and job = 'SALESMAN' 
--10����ʾ����ְԱ�������������ڲ��ŵ����ƺ͹���(������) 
select e.ename,d.dname,e.sal from emp e,dept d 
--11����ѯ���з���(RESEARCH)������Ա�ı�ţ��������������ţ��������ڵ� 
select e.empno,e.ename,d.dname,d.loc from emp e,dept d where d.dname ='RESEARCH'
--12����ѯ�������ŵ����ƺ�Ա������ 
select d.dname,count(e.empno) from emp e,dept d group by d.dname
--13����ѯ��������Ա�����ʴ���ƽ�����ʣ�ƽ�����ʰ�������Ա������������Ա��ְλ
select job,count(empno) from emp where sal >  (select avg(sal) from emp )  group by job
--14����ѯ������ͬ��Ա���Ĺ��ʺ����� 
select e1.ename,e2.ename,e1.sal from emp e1,emp e2 where e1.ename != e2.ename and e1.sal = e2.sal
--15������ְ������ͬ�ģ���������ͬ����Ա�� 
select e1.ename,e2.ename,e1.hiredate from emp e1,emp e2 where e1.ename != e2.ename and e1.hiredate = e2.hiredate
--17����ѯÿ�����ŵ���߹��� 
select max(sal) from emp group by deptno
--19����ѯÿ�����ţ�ÿ��ְλ����߹��� 
select max(sal) from emp group by deptno,job
--20����ѯÿ��Ա������Ϣ�����ʼ����õ���(Salgrade) 
select emp.*,salgrade.grade
from emp,salgrade
where emp.sal between salgrade.losal and salgrade.hisal

--22����ѯ�������Ź�����ߵ�Ա����Ϣ 
select * from emp where sal in (select max(sal) from emp group by deptno)
--23����ѯ10���Ź�����ߵ�
select max(sal) from emp where deptno = 10 
--###24����ѯ����3������ ������Ա����Ϣ���Թ�����
select emp.* from emp, (select mgr,count(empno) ���� from emp group by mgr) mgrnum 
where emp.empno= mgrnum.mgr and ���� > 3
--25����ѯ���д��ڱ�����ƽ�����ʵ�Ա����Ϣ 
select emp.* 
from emp ,(select deptno,avg(sal) asal from emp where deptno = emp.deptno group by deptno) avgsal
where emp.deptno = avgsal.deptno and emp.sal > avgsal.asal


select * from emp where sal > (select avg(sal) from emp where deptno = emp.deptno ) 
--26����ѯƽ��������ߵĲ�����Ϣ 

--27����ѯ���ڸ��������ܹ��ʵ�ƽ��ֵ�Ĳ�����Ϣ 

--28����ѯ���ڸ��������ܹ���ƽ��ֵ�Ĳ����µ�Ա����Ϣ 

--29����ѯû��Ա���Ĳ�����Ϣ 

