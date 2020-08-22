class Solution:
    def numberToWords(self, num: int) -> str:
        LESS_THAN_20 = ["", "One", "Two", "Three", "Four", "Five", "Six",
                        "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve",
                        "Thirteen", "Fourteen", "Fifteen", "Sixteen",
                        "Seventeen", "Eighteen", "Nineteen"]
        TENS = ["", "Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty",
                "Seventy", "Eighty", "Ninety"]
        THOUSANDS = ["", "Thousand", "Million", "Billion"]

        def helper(num):
            if num == 0:
                return ''
            elif num < 20:
                return LESS_THAN_20[num] + ' '
            elif num < 100:
                return TENS[num // 10] + ' ' + helper(num % 10)
            return LESS_THAN_20[num // 100] + ' Hundred ' + helper(num % 100)

        if num == 0:
            return 'Zero'
        res = ''
        i = 0
        while num:
            if num % 1000:
                res = helper(num % 1000) + THOUSANDS[i] + ' ' + res
            i += 1
            num //= 1000
        return res.strip()
