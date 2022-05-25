class Solution:
    def reverse(self, x: int) -> int:
        
        if (x<=(-2**31) or x>=(2**31)-1) or x==0:
            return(0)
        else:
            x=str(x)
            x=x.strip('0')
            #x=list((x))
            a=[]
            b=[]
            l=''
            if len(x)!=0:
                if x[0] == "-":
                    a=(x[0])
                    b=(x[:0:-1])
                    a=a+b
                    a=l.join(a)
                else:
                    a=(x[::-1])
                    a=l.join(a)
                if a[0] == '0' and len(a)!=1:
                    a=a[1:]
        if (int(a)<=(-2**31) or int(a)>=(2**31)-1):
            return(0)
        else:
            return (int(a))
        