-- ��ʾemp����Ա�������ֺ͹���
select ename,sal from emp;
-- ��ʾemp����Ա���ı��,����,���
select empno,ename,comm from emp;
-- ��ʾ���ű�źͲ������� 
select deptno,dname from dept;
-- ��ʾԱ�����ֺ���ְ���� 
select ename,hiredate from emp;
-- ��ʾԱ�����  ���� ������ 
select empno,ename,mgr from emp;
-- ��ʾԱ����� ���� ���ű��
select empno,ename,deptno;
-- ��ʾ���ʵȼ�  �ȼ���͹���  �ȼ���߹���
select grade,losal,hisal from salgrade;
-- ��ѯ������BLAKE���˵ı��,����,����
select empno,ename,sal from emp where ename = 'BLAKE';
-- ��ѯ�����7782��Ա���ı��,����,����,���
select empno,ename,sal,comm from emp where empno = 7782;
-- ��ѯ��ְ������1981-2-20��Ա��������,��ְ����,���ű��
select ename,hiredate,deptno from emp where hiredate= '20-2��-81';
-- ��ѯְλ������(SALESMAN)���˵�����,ְλ,��ְ���� 
select ename,job,hiredate from emp where job = 'SALESMAN';
-- ��ѯ������10���˵ı��,����,���ű��
select empno,ename,deptno from emp where deptno = 10;
-- ��ѯ���ʴ���1500,����С��2500���˵ı��,����,����
select empno,ename,sal from emp where sal > 1500 and sal < 2500;
-- ��ѯ����С��2000���˵�����,����,���
select ename,sal,comm from emp where sal < 2000;
-- ��ѯ�����0���ǿյ��˵ı��,����,���,���ű��
select empno,ename,comm,deptno from emp where comm is null or comm = 0;
-- ��ѯ���ʴ���1000���߲�����30��Ա���ı��,����,���� 
select empno,ename,sal from emp where sal > 1000 or deptno = 30;
-- ��ѯ����10�Ĳ�������,λ�õ� 
select dname,loc from dept where deptno = 10;
-- ��ѯְλ(JOB)Ϊ'PRESIDENT'��Ա���Ĺ���
select sal from emp where job = 'PRESIDENT'; 
-- ��ѯ����ɵ�Ա����Ϣ 
select * from emp where comm is not null or comm !=0;
-- ��ѯ���ֳ���Ϊ4 ��Ա����Ա�����,����
select empno,ename from emp where length(ename) = 4;
-- ��ʾ10 �Ų��ŵ����о���('MANAGER')��20 �Ų��ŵ�����ְԱ('CLERK')����ϸ��Ϣ  
select * from emp where (deptno = 10 and job = 'MANAGER') or (deptno = 20 and job = 'CLERK');
-- ��ʾ�������ž���('MANAGER')�Ĺ���
select sal from emp where job = 'MANAGER' ;
-- ��ʾӶ��(COMM)����ȹ���(SAL)�ߵ�Ա������ϸ��Ϣ
select * from emp where comm > sal ;
-- ������S��β��Ա��������������( �������ǹ��ʺ����֮�� ) 
select ename,(sal + nvl(comm,0)) month_sal  from emp where ename like '%S';
-- ��ѯԱ�������ĵ�������ĸ��A��Ա������ 
select ename from emp where ename like '__A%';
-- ��ѯ���ʲ���1000��2000֮���Ա���������͹���
select ename,sal from emp where sal not between 1000 and 2000;
-- ��ѯ��˾��û�й����ߵ�Ա��������job 
select ename,job from emp where mgr is null;
-- ��ename�еĳ���,��ʾԱ�����,����,����
select empno,ename,length(ename) from emp;
-- ��enameת��Сд,��ʾԱ�����,����,Сд����
select ename,empno,lower(ename) from emp ;
-- ��ename�е�A,�滻��ABC,��ʾ���,�滻ǰ������,�滻�������
select empno,ename �滻ǰ,replace(ename,'A','ABC') �滻�� from emp;
-- ȡename�ĵڶ����ַ�,��ʾ���,����,�ڶ����ַ�
select empno,ename,substr(ename,2,1) from emp;
-- ȡename�ĵڶ����ַ���ĩβ�������ַ�,��ʾ���,����,��ȡ����ַ�
select empno,ename,substr(ename,2,length(ename)-1) from emp;
-- ȡename�ĵ�������������ַ�,��ʾ���,����,��ȡ����ַ�
select empno,ename,substr(ename,3,3) from emp;
-- �ҳ�ename��A��һ�γ��ֵ�λ��,��ʾ���,����,A��λ�� 
select empno,ename,instr(ename,'A') from emp;
-- ��ename�е�һ��A��λ�ÿ�ʼ��ȡ,ȡ2���ַ�,��ʾ����,��ȡ����ַ�
select ename,substr(ename,instr(ename,'A'),2) from emp;
-- ��'abc,bdc,def'���'abc bdc def',��ʾ��֮ǰ���ַ���,��֮����ַ���
select 'abc,bdc,def' str1
-- ��'ABCDEFADE'���'mBCDEFmDE',��ʾ��֮ǰ���ַ���,��֮����ַ���
select REPLACE('ABCDEFADE','A','M')
-- ��'      abcdef       '���'abcdef',��ʾ��֮ǰ���ַ���,��֮����ַ���

-- ��'     mnop'���'mnop',��ʾ��֮ǰ���ַ���,��֮����ַ���

-- ��'nqwd      '���'nqwd',��ʾ��֮ǰ���ַ���,��֮����ַ���  --rtrim( )

-- ��'hi    jk     mno'���'hijkmno',��ʾ��֮ǰ���ַ���,��֮����ַ���

-- ��D��d�� ascii��.

-- ��Ա�����ִ�M��ʼ��ȡ,��ʾԱ�������ͽ�ȡ֮������
select ename,
-- ��ename�е�M�滻��AAA,��ʾ�滻ǰ�������
select ename �滻ǰ,replace(ename,'M','AAA') �滻�� from emp;

-- �����ʱ�2λС������ʾΪ��Ԫ��ʽ����ʾԱ����ţ�����������
select empno,ename,to_char(round(sal,-2),'$9999.99') from emp;
-- ��Ա��������ʾǧ��λ��ʽ����ʾԱ����ţ�����������
select empno,ename,to_char(round(sal,-3),'$9999.999') from emp;
-- ��Ա����������500֮�����ԭ ���������˰ٷ�֮�����������뱣����λС������ʾԱ����ţ� ���֣����ʣ��ٷֱȣ����磺20%��
select empno,ename,sal,concat(to_char(500/(sal+500),'999.99')*100,'%') �Ƿ� from emp;
-- ��ѯ��ְ������1981-5-1��1981-12-31���������Ա����Ϣ
select * from emp where hiredate between '1-5��-81' and '31-12��-81' ;
-- ��1981���°�����ְ��Ա��

-- ��ѯ��ǰ���ж�����
select count(month(sysdate)) from dual
                   

-- �������ɣ���ʾ��'�����',û��ɣ���ʾ'û���'�ֱ���case��decode
select 
-- ���job��PRESIDENT��ʾ��'�ϰ�'��job��MANAGER����ʾ��'����'��������ʾ��Ա�����ֱ���

  
-- 1981�꼰��ǰ��ְ�ģ���ʾΪ'��Ա��',1982�꼰�Ժ���ְ�ģ���ʾΪ'��Ա��'
   
-- ���дһ����ݣ�����:1981),�ж��������ǲ������꣬�����꣬��ʾΪ'����'��������ʾΪ'ƽ��'


-- emp����hiredate�������ڣ����������һ����ʾΪ'��һ'�������ڶ�����ʾΪ'�ܶ�',�������ƣ���������ʾΪ'����'

-- �г�������һ����Ա�����в���
select deptno from emp where 

-- �г�н��ȡ�SMITH��������й�Ա

-- �г����й�Ա����������ֱ���ϼ�������

-- �г���ְ����������ֱ���ϼ������й�Ա

-- �г����С�CLERK��(����Ա)���������䲿������

-- �г�н����ڹ�˾ƽ��ˮƽ�����й�Ա

  
-- �г��롮SCOTT��������ͬ���������й�Ա

-- �г�ĳЩ��Ա��������Ӷ�����������ǵ�н����ڲ���30���κ�һ����Ա��н��


-- �г�ĳЩ��Ա��������Ӷ�����������ǵ�н����ڲ���30�����й�Ա��н��


-- �г�ÿ�����ŵı���Լ��ò����й�Ա������ƽ�����ʺ�ƽ����������

-- �г����й�Ա�Ĺ�Ա���ƣ��������ƺ�н��
select emp.ename,dept.dname,emp.sal from emp,dept where emp.job = 'CLERK' and emp.deptno = dept.deptno;
-- �г�����ͬһ�ֹ��������ڲ�ͬ���ŵĹ�Ա����

-- �г��������������͹���
select job,min(sal) from emp group by job 
-- �г��������ŵ�MANGER ������)�����н��
select deptno,min(sal) from emp where job = 'MANAGER' group by deptno; 
-- �г�����н��������й�Ա����н

-- �г�н��ˮƽ���ڵ���λ�Ĺ�Ա

-- �����麯�����нˮ�����ֵ

-- ��ѯԱ���Ļ�����Ϣ���������ϼ������� 

-- ��ʾ���ʱȡ�ALLEN���ߵ�����Ա���������͹���
select ename,sal from emp where sal > (select sal from emp where ename ='ALLEN');  
-- ��ʾ�롮SCOTT��������ͬ������Ա������ϸ��Ϣ
seelct * from emp where job = (select job from emp where ename = 'SCOTT');
-- ��ʾ��30���š�MARTIN��Ա��������ͬ��Ա���������͹���
select ename,sal from emp where sal = (select sal from emp where ename = 'MARTIN' and deptno = 30) 
-- ��ѯ���й��ʸ���ƽ�����ʣ�ƽ�����ʰ�������Ա������������Ա����SALESMAN����

-- ��ʾ����ְԱ�������������ڲ��ŵ����ƺ͹���

-- ��ѯ���з�������RESEARCH��������Ա���ı�ţ��������������ţ��������ڵ�

-- ��ѯ�������ŵ����ƺ�Ա������

-- ��ѯ����ְλԱ�����ʴ���ƽ�����ʣ�ƽ�����ʰ�������Ա������������Ա��ְλ

-- ��ѯ������ͬ��Ա���Ĺ��ʺ�����

-- ��ѯ������ߵ�3��Ա����Ϣ

-- ����ְ������ͬ�ģ���������ͬ����Ա��
 

-- ��ѯÿ��Ա������Ϣ�����ʼ���

 
-- ��ѯ�����Ź�����ߵ�Ա����Ϣ
select deptno,max(sal) from emp group by deptno;
 
-- ��ѯ����3������������Ա����Ϣ

-- ��ѯ���д��ڱ�����ƽ�����ʵ�Ա����Ϣ

-- ��ѯƽ��������ߵĲ�����Ϣ


-- ��ѯ����ƽ�����ʴ���������ƽ�����ʵĲ�����Ϣ

-- ��ѯû��Ա���Ĳ�����Ϣ

