class Solution:
    def findMedianSortedArrays(self, nums1: List[int], nums2: List[int]) -> float:
        self.nums1=nums1
        self.nums2=nums2
        nums3=[]
        nums3=(nums1+nums2)
        nums3.sort()
        l=len(nums3)
        m=0
        if l%2==0:
            l=(l//2)
            m=(nums3[l]+nums3[l-1])/2
        else:
            l=l//2
            m=nums3[l]
        return (m)