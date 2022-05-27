class Solution:
    def maximumBags(self, capacity: list , rocks: list , additionalRocks: int) -> int:
        self.capacity:list[int]
        self.rocks:list[int]
        self.capacity=capacity 
        self.additionalRocks=additionalRocks
        self.rocks=rocks
        aR:int
        a=[]
        if len(capacity) == len(rocks):
            if len(capacity)>=1 and  len(capacity)<=5*10**4:
                if additionalRocks>=1 and additionalRocks<=10**9:
                    count=0
                    for i in range(len(rocks)):
                        diff=capacity[i]-rocks[i]
                        a.append(diff)
                    a.sort()
                    for i in range(len(a)):
                        if  a[i]<=additionalRocks and additionalRocks!=0:
                            aR=additionalRocks-a[i]
                            count=count+1
                            additionalRocks=aR
                        
            return (count)                
                  