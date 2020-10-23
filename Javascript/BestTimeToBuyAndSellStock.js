/**
 * @param {number[]} prices
 * @return {number}
 */
const maxProfit = (prices) => {
  let profit = 0;
  let min = prices[0];
  for (let i = 1; i < prices.length; i += 1) {
    min = Math.min(prices[i], min);
    profit = Math.max(profit, prices[i] - min);
  }
  return profit;
};

maxProfit([1, 2, 3, 4]);