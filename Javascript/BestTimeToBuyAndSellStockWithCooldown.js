/**
 * @param {number[]} prices
 * @return {number}
 */
const maxProfit = (prices) => {
  let buy = 2147483647;
  let free = 0;
  let last = 0;
  let now = 0;
  prices.forEach(x => {
    now = Math.max(last, x - buy);
    buy = Math.min(buy, x - free);
    free = last;
    last = now;
  });
  return now;
};

maxProfit([1, 2, 3, 4]);