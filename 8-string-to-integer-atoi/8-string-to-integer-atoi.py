class Solution:
    def myAtoi(self, s: str) -> int:
        n=s.strip(' ')
        l=list(n)
        k=[]
        p=[]
        if len(l)==0:
            return('0')
        else:
            if l[0] in ('-','+'):
                k.append(l[0])
                for i in range(1,len(l)):
                    if(l[i] in ('0','1','2','3','4','5','6','7','8','9')):
                        k.append(l[i])

                    else:
                        break
            elif(l[0] not in ('0','1','2','3','4','5','6','7','8','9')):
                    return('0')
            else:
                for i in range(len(l)):
                    if(l[i] in ('0','1','2','3','4','5','6','7','8','9')):
                        k.append(l[i])
                    elif(l[0] not in ('0','1','2','3','4','5','6','7','8','9')):
                        return('0')
                        


                    else:
                        break
            if len(k)==1 and  k[0] in ('+','-'):
                return (0)
            else:
                p=k
            m=''.join(p)
            m=m.lstrip('0')

            if len(m)> 1:
                
                m=int(m)
                if (m>=-2**31 and m<=2**31-1):
                    return (m)

                elif (m<-2**31):
                    return(-2**31)
                elif (m>2**31-1):
                    return(2**31-1)
            elif len(m)==1:
                #m=''.join(p)
                #m=m.lstrip('0')
                m=int(m)
                return((m))
            else:
                m=m.lstrip('0')
                return('0')