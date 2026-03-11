# DAO Governance & Timelock Controller

This repository provides a production-ready governance framework for Decentralized Autonomous Organizations (DAOs). It utilizes the OpenZeppelin Governor standard paired with a TimelockController to enforce a mandatory delay between proposal passing and execution.

## Features
- **Voting Power:** Based on ERC-20 token balances (using ERC20Votes).
- **Timelock Security:** Prevents "flash governance" attacks by requiring a waiting period (e.g., 2 days) before implementation.
- **Customizable Parameters:** Easily adjust voting delay, voting period, and proposal thresholds.
- **Proposer & Executor Roles:** Granular access control for different DAO responsibilities.

## Technical Architecture
1. **Governance Token:** Users hold tokens to vote.
2. **Governor Contract:** Handles proposal creation, voting, and counting.
3. **Timelock Controller:** Acts as the "owner" of the DAO assets, executing transactions only after the delay.

## License
MIT
