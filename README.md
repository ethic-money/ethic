# ∉thic 

![image](https://avatars.githubusercontent.com/u/77220017?s=400&u=4c74930480eff37b4dacb870b810e441baf22b64&v=4)

Ethical, decentralized, voluntary, self-stabilizing money. **Not an element of fiat monetary systems.**

| :white_check_mark: Algorithmic Stablecoin | :x: Not a product of fiat money systems |
| :--- | :--- |
| :white_check_mark: Voluntary Elastic Supply | :x: 20,000 ETHC Premine for initial liquidity - to be returned to treasury after bootstrap period |
| :white_check_mark: 100% Community Governance | :x: NO Pre-existing Developer Pool |
| :white_check_mark: Fully composable for DeFi | :x: NO Rebasing |
| :white_check_mark: Publicly Identified Developers |  |
| :white_check_mark: Path to free voting & improved governance |  |



## What is ∉thic?

∉thic is a stablecoin that is meant to revolutionize the role of money, and to usher in greater responsibility and professionalism to the DeFi world. 

∉thic is a chance to opt out of money systems bound to fiat monetary systems that are unethical, enforced through violence, and exacerbating the imbalances between the world's rich and poor.

The symbol for ∉thic is the mathematical sign, **∉**, meaning "Not an element of" (a set). This is meant to express ∉thic's core mission to define a stable, voluntary, ethical store of value, unit of account, and medium of exchange that _is not an element of the unethical systems that comprise fiat monies_, as well as to pay homage to the EmptySetSquad who anonymously authored the underlying **døllar** smart contract framework ∉thic is built upon. (An important component of ethical action is to acknowledge and suitably reward those whose prior contributions made progress possible.)

![image](https://github.com/ethic-money/ethic/blob/master/Cointelegraph%20Oct%202%202020%20Douglas%20Horn.png)

### A Break from Fiat Money

∉thic is the first "Voluntary Elastic Stablecoin Protocol" developed by a publicly disclosed developer with a strong, multi-year track record in blockchain. [Douglas Horn](https://github.com/DouglasHorn) led the creation of the Telos blockchain in 2018 as a highly successful no-ICO blockchain and community in 2018. In October 2020, [his call for higher DeFi standards](https://cointelegraph.com/news/the-chance-for-defi-to-fulfill-the-technology-s-promise) was published by Cointelegraph outlining his five hallmarks of responsible DeFi:

:white_check_mark:  Publicly identified, experienced founders

:white_check_mark:  Rewards every crucial member of the ecosystem

:white_check_mark:  No pre-mine or robbable developer pool - Developer funds are generated along the way

:white_check_mark:  Governance prioritized, easy and deterministic

:white_check_mark:  Protection from "rug-pulls" and code errors

∉thic is designed to fulfill each of these requirements and set a new Gold Standard for responsible, safe DeFi offerings.


## ∉thic is:

### Ethical

* An opt-in monetary system anyone is free to interact with or not
* Derives its value from the actions and decisions of users
* Owned and governed entirely by users
* No pre-sales, early mining, or special classes of ownership - everyone has an equal opportunity to participate
* Rewards all critical participants for their role
* To the greatest extent feasible, minimizes electrical usage and offsets its ecological impacts

### Decentralized & Community Governed

* Built on the Ethereum blockchain
* Entirely governed by ETHC token-holders
* Epoch length, rewards, developer rewards recipients and all other configuration parameters will be governed by the ETHC token holders

### Self-stabilizing & Self-sustaining

* Programmatically aligns the current value of ETHC towards an economic standard (currently the US Dollar, via Maker DAI, but upgradeable through community governance)
* No pre-mined reserve or developer pool to risk rug-pulls
* Developer rewards are generated with each new epoch to incentivize developer longevity and continuing efforts
* Project Proposal System driven and voted by community members to perform additional marketing, education, services and outreach as voted by the ETHC token holders
* A small pool of developer rewards are created with each epoch advance to sustain some development even through prolonged periods of non-expansion so that the protocol does not stagnate

### Not an Element of Fiat Monetary Systems

* ∉thic seeks to track the value of the Maker DAI cryptocurrency, which, itself, tracks the US Dollar, but is programmatically derived and stable. 
* Free from the risks of unregulated USD stablecoins (e.g. The funds aren't actually there)
* Free from the risks of government regulation of stablecoins meant to track the US Dollar directly

### Stablecoin

- shorthand name: `∉thic`
- full name: `Ethic Money`
- symbol: `ETHC`
- decimals: `18`
- character: `∉ [U+2209]`

## Features & Tokenomics

∉thic seeks to optimize features of the voluntary elastic stablecoin class through improved features and tokenomics.

| Parameter Name | Setting | Rationale |
| --- | --- | --- |
| Target Denomination | Maker DAI | Standard 1 USD unit without being directly tied to any fiat USD |
| Epoch Time | 4 hour | Smaller, more consistent adjustments balancing Ethereum gas price for long term sustainability |
| Bonding | 100 ETHC -> 100M ETHCS | Successful for previous protocols |
| Oracle Reserve Minimum | 10,000 DAI | Successful for previous protocols |
| Bootstrapping Period | 45 days (270 epochs) | Longer period with lower speedup |
| Bootstrapping Price Target | 1.10 DAI | Successful for previous protocols |
| Bootstrapping Speedup Factor | 2 | Lower speedup paired to longer bootstrap period |
| Epoch Advance Reward | 300 ETHC | More frequent epochs / reasonable reward |
| Epoch Treasury Payment | 100 ETHC | ensure ongoing developer/marketing funding in contraction periods |
| Governance Period | 4 days (24 epochs) | Longer voting period invites more voters |
| Governance Expiration |  1 day (6 epochs) | Reasonable amount of time to execute governance proposals |
| Governance Quorum | 30% | Higher quorum supports better governance |
| Governance Proposal Threshold | 1% | Ensure proposals have reasonable support |
| Governance Super-Majority | 60% | With higher quorum, a lower supermajority helps ensure passage with broader community support |
| Governance Emergency Delay | 3 days (18 epochs) | Such delays will be rare; Ensures time to fully develop and test a solution |
| DAO Entrance Lockup Period | 4 days (24 epochs) | Shorter period creates better liquidity for users |
| DAO Exit Lockup Period | 7 days (42 epochs) | Longer period encourages more stable staking to expand pool equity |
| Pool Exit Lockup Period | 4 days (24 epochs) | Improved experience for liquidity providers |
| Coupon Expiration | 45 days (270 epochs) | Provides longer viable period for coupon-holders to preserve against value loss in prolonged contraction |
| Debt Ratio Cap | 24% | Greater incentive at extreme debt demand |
| Initial Coupon Redemption Penalty | 50% | Favors earlier token burners over later thanks to a DSD improvement |
| Coupon Redeption Penalty Delay | 1 hour |  |
| Supply Change Limit | 1.5% /epoch | moderate expansion for greater stability |
| Coupon Supply Limit | 6% |  |
| Oracle Pool Ratio | 20% |  |
| Treasury Ratio | 2.25% | Lower treasury ratio to accommodate additional creation on advance |

## Dashboard

A simple [dashboard](https://github.com/ethic-money/ethic-dashboard) for interacting with the ∉thic protocol.

## Litepaper

The [∉thic Litepaper](https://github.com/ethic-money/ethic/blob/master/xxxxx.pdf) describes unique features of ∉thic among Set Dollar Protocols, originally developed in the [Empty Set Dollar Whitepaper](https://github.com/emptysetsquad/dollar/blob/master/d%C3%B8llar.pdf).

## Community Owned and Governed

∉thic is entirely owned and operated by the community of ETHC token holders. V1 governance will exist on Ethereum's Aragon but will rapidly (within 3 months of launch) migrate to V2 governance on the Telos Decide™ governance system which will allow benefits including:

* Free voting on all ballots
* Deterministic Cross-Chain Interaction (CCI) to Ethereum to execute ballot outcomes
* Fast, easy voting experience via the custom ∉thic Voting Wallet mobile app 

Current Ethereum-based voting systems are inefficient because voting requires paying large gas fees. Managing voting through the Telos Decide system will make all voting free and fast, encouraging better governance.

∉thic also modifies some of the quorum and threshold amounts in an attempt to improve functional governance and shift the power away from whales and towards broad governance.

## Open Source Software - A Legacy of Contributions

∉thic aims to honor the legacy of open source software by first acknowledging the long line ofcontributions of developers over the past 70 years of computer science and particularly cryptocurrencies. A portion of the developer fees will be paid to EmptySetSquad for their contributions and the first governance votes on ∉thic will determine which other service providers or developers (e.g. Metamask, Ethereum developers, etc.) the ETHC token holders wish to also include in the ongoing developer reward structure. 

Rewarding developers incentivizes them to remain with a project, uncovering bugs, developing new and improved features and listening to the community that controls their fees. This is the ultimate predictor of a project that will grow and thrive over years to come.

## Contracts

### Kovan Testnet

- `0x3A29121f4D66d67432B3420c5fA5711003CB76C1` **DAO**
- `0xb0deb36900e84Cf257325452a775fe9E81d060fb` **∉thic**
- `0x------------` **Oracle**
- `0x7ab1D07Dcf918d1AB6f312b50464DD5C65CA0250` **UniswapV2 DAI:ETHC Pair**
- `0x------------` **LP Incentivation Pool**
- `0x88B6b8518D80ecf62C39D5A3AafaCcC4705941A7` **Community Treasury Multisig**


### Mainnet

- `0x-----------` **DAO**
- `0x-----------` **∉thic**
- `0x-----------` **Oracle**
- `0x-----------` **UniswapV2 DAI:ETHC Pair**
- `0x-----------` **LP Incentivation Pool**
- `0x-----------` **Community Treasury Multisig**

## Audit

Audit for forked codebase is available [here](https://github.com/emptysetsquad/dollar/blob/master/audit/REP-Dollar-06-11-20.pdf).

Additional audit specific for the ∉thic codebase: coming soon.

# Join ∉thic

∉thic is always looking for additional developers to expand its developer base. A programmatically sustained developer pool is generated with each new expansion epoch and to a smaller extent, with each new epoch advance. New developers are encouraged to join and make contributions.

For the protection of the community, the ∉thic project will only accept developers who are publicly identified as real individuals. Too many DeFi protocols are developed by anonymous teams, creating a strong incentive to exit scam if projects hit rough patches. ∉thic intends to set a new gold standard for responsible DeFi.

## Claiming Developer Rewards

∉thic earns a regular pool of new developer rewards in order to continuously advance the protocol. The intended function of these rewards is to encourage ongoing __future__ development. However, ∉thic recognizes the debt that every program owes to its predecessors and the importance of rewarding all contributors to the success of the system. Any participant who has a legitmate claim of contributing to the existence and health of the system should propose a payment. Examples are the developers of the Empty Set Dollar protocol and others whose work helps form the foundation of this project.

### Community Treasury Funds Control

As ∉thic operations accrues funds for the community treasury pool intended to support ongoing development and marketing efforts, these funds are deposited into an Ethereum address controlled by multisignature wallets (using the Gnosis multisig wallet contracts). The signers with the ability to approve these transactions are also openly announced individuals who will only approve transactions voted on and passed by the community. They are not developers of the protocol and their only role is to approve only valid draws from these multisig wallets. Executing any transfer requires agreement from 4 signatures of a possible 7 signers.

| Signer | Country | Position | Signing Address |
| --- | --- | --- | --- |
| **Sukesh Tedla** | Sweden |  Chairman of Swedish Blockchain Association | `0xE2262b6a9e049E1c9E7675b32090744e7dbD8FAe` |
| **Suvi Rinkinen** | Finland |  Telos Foundation CEO | `0x00D155bE8b97aE6590bcb868154C5636250cF1e6` |
| **Rory Mapstone** | South Africa |  TSwaps.com creator, EOS/ZA | `0x85BFb3867FEc02bd4b138B6A8E211Ab2942a4E2C` |
| **Marlon Williams** | USA |  Qubicles CEO | `0x87E592C8D476EA66329Df1801D4a45FD463A7003` |
| **Rami James** | Israel |  Scatter Founder | `0xebc927335d9a6ae78312dda40a8d9de10c7b32fa` |
| **George Vernon** | USA |  Crypto Investor | `0x988c844503F2740c17Cc0010A4fBbDC89D5209AA` |
| **Douglas Horn**  [![Twitter](https://i.imgur.com/wWzX9uB.png)](https://twitter.com/Douglas_Horn) [![Github](https://i.imgur.com/9I6NRUm.png)](https://github.com/DouglasHorn)       | USA |  ETHIC Founder, Telos Architect | `0x5C327e62F735F37e7F816eEb2c8574a4ce61E003` |


## Disclaimer
This project is an experiment in decentralize finance and monetary systems. Its contracts are unaudited but based on previously audited open source software code. These contracts operate on a blockchain with dependencies on open source software code and price oracles that are accessed by wallet applications on computer operating systems - all are built using a variety of frameworks, programming languages and code libraries believed to be reliable but outside the control of the developers. Bugs, errors and exploits unknown to the developers may exist or be discovered or introduced at any layer or step in the technology stack of components that make this application operate. All participants should take great caution when interacting with this experimental software. The loss of some or all funds contributed to this experimental system is possibilite. The developers and Treasury address multisig signers disavow any fiduciary responsibility, custodianship or legal or moral responsibilities for losses resulting from anything outside their direct, explicit, intentioned actions. 

```
Copyright 2021 Ethic Money Devs <devs@ethic.money>
Copyright 2020 Empty Set Squad <emptysetsquad@protonmail.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use the included code except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

<br>

**Escape the Fiat Monetary System** 

