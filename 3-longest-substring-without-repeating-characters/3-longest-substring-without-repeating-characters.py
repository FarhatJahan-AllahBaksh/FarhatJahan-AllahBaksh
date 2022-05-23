class Solution:
    def lengthOfLongestSubstring(self, s: str)-> int :
        self.s=s
        i=0
        s=list(s)
        t=[]
        l=[]
        m=0
        for i in range(len(s)):
            t.append(s[i])
            for j in range(i+1,len(s)):
                if s[j] not in t:
                    t.append(s[j])
                    j=j+1
                else: 
                    break
            i=i+1
            l.append(len(t))
            t=[]
            m=max(l)
        return (m)
                    
                
        