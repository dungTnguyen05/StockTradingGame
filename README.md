# Stock Trading Game (MATLAB)

A simple MATLAB stock trading simulation that models daily price fluctuations and lets a player buy and sell five synthetic stocks over a week. The simulation uses randomized predictions (percent change and accuracy) to drive price movement and provides real-time console output and a final plot of stock prices.

## Features
- Simulates 7 days of trading (with prices tracked across 8 time points).
- Five independent stocks with randomized daily percent changes and prediction accuracies.
- Interactive buy/sell prompts with input validation.
- Tracks cash balance and stock holdings; calculates final net worth (cash + holdings).
- Final chart plotting the price history for all stocks.

## Requirements
- MATLAB (any recent release that supports basic plotting and `input`/`fprintf`).

## Quick Start / Usage
1. Open MATLAB and set the current folder to this project directory (the folder containing these `.m` files).
2. Run the full week simulation by executing:

```matlab
stock_final
```

For shorter demos you can run:

```matlab
stock_1_day   % Run a single-day demo
stock_2_days  % Run a two-day demo
```

During the simulation you will be prompted to enter `yes`/`no` for buy/sell decisions and numeric amounts when buying or selling. Inputs are validated by helper functions.

## Files
- `stock_final.m` — Main full-week simulation (7 days). This is the recommended entrypoint.
- `stock_1_day.m` — Minimal single-day demo of the buy/sell logic.
- `stock_2_days.m` — Two-day demonstration script.
- `stock_value_change.m` — Core function that computes next-day stock prices based on predicted percent change, predicted accuracy, and a randomized actual accuracy.
- `display_stock_value_changed.m` — Prints stock prices for a given day to the console.
- `display_stock_owned.m` — Prints current holdings of each stock.
- `valid_buy.m` — Validates a buy amount (numeric, non-negative, and affordable).
- `valid_sell.m` — Validates a sell amount (numeric, non-negative, and not exceeding holdings).
- `valid_request.m` — Validates yes/no requests.

## How It Works (brief)
- Each stock receives a random percent-change (1–8%) and a predicted accuracy (20–80%).
- An independent random "actual" accuracy is generated; if actual <= predicted the prediction is considered correct, otherwise the price moves opposite to the prediction.
- Prices are updated by applying the percent change (up or down) to the current price.
- The player starts with $10,000 and can buy/sell integer amounts of each stock each day.
- After day 7 the game displays the final cash + stock value and a plot of all 5 stock price histories.

## Example Play
- Start the simulation: `stock_final`
- For each stock you'll see a message like: "Today, stock 2 is predicted to increase by 5% (accuracy: 36%)" and be asked whether to buy/sell.
- At the end you'll see your final total and a plot titled `Stock Chart` showing prices across time.

## Notes & Possible Improvements
- The simulation uses integer/randomized inputs for percent changes and holdings; consider supporting fractional shares or more realistic price dynamics.
- Add a GUI (App Designer) for a friendlier interface.
- Persist game results to a file or add CSV export for analysis.
- Add unit tests for validation functions.

## Author / Repository
Original project: https://github.com/dungTnguyen05/StockTradingGame
