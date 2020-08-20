class Solution:
    def groupAnagrams(self, strs):
        strs_sort = [''.join(sorted(i)) for i in strs]
        anagrams = {}
        for j in range(len(strs_sort)):
            if strs_sort[j] not in anagrams:
                anagrams[strs_sort[j]] = [strs[j]]
            else:
                anagrams[strs_sort[j]].append(strs[j])
        return anagrams.values()
