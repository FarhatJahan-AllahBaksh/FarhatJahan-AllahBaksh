  
        
class Solution:
    def convert(self, s: str, numRows: int) -> str:
        if numRows==1:
            return s
        l=len(s)
        c=(numRows*2)-2
        k=[]
        for i in range(numRows):
            for j in range(i,l,c):
                k.append(s[j])
                if i!=0 and i!=numRows-1 and j+c-2*i < l:
                     k.append(s[j+c-2*i])
        q=''.join(k)
        return q
