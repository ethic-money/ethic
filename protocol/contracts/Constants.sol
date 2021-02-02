/*
    Copyright 2021 Ethic Money Devs <devs@ethic.money> and Copyright 2020 Empty Set Squad <emptysetsquad@protonmail.com>

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

pragma solidity ^0.5.17;
pragma experimental ABIEncoderV2;

import "./external/Decimal.sol";

library Constants {
    /* Chain */
    uint256 private constant CHAIN_ID = 42; // Kovan testnet.  Mainnet = 1
    
    /* Bootstrapping */
    uint256 private constant BOOTSTRAPPING_PERIOD = 90;
    uint256 private constant BOOTSTRAPPING_PRICE = 11e17; // 1.10 DAI
    uint256 private constant BOOTSTRAPPING_SPEEDUP_FACTOR = 3; // 30 days @ 8 hours
    
    /* Oracle */
    address private constant DAI_ADDRESS = address(0x4F96Fe3b7A6Cf9725f59d353F723c1bDb64CA6Aa); // Kovan testnet address. Mainnet DAI addr = 0x6B175474E89094C44Da98b954EedeAC495271d0F
    uint256 private constant ORACLE_RESERVE_MINIMUM = 1e10; // 10,000 DAI
    
    /* Bonding */
    uint256 private constant INITIAL_STAKE_MULTIPLE = 1e6; // 100 ETHC -> 100M ETHCS
    
    /* Epoch */
    struct EpochStrategy {
        uint256 offset;
        uint256 start;
        uint256 period;
    }
    
    uint256 private constant EPOCH_OFFSET = 106;
    uint256 private constant EPOCH_START = 1610292686;
    uint256 private constant EPOCH_PERIOD = 3600;
    
    /* Governance */
    uint256 private constant GOVERNANCE_PERIOD = 96; // 96 epochs = 4 days
    uint256 private constant GOVERNANCE_EXPIRATION = 23; // 23 + 1 epochs = 24 hours
    uint256 private constant GOVERNANCE_QUORUM = 30e16; // 30% - higher quorum for better governance
    uint256 private constant GOVERNANCE_PROPOSAL_THRESHOLD = 2e16; // 2% - higher proposal threshold
    uint256 private constant GOVERNANCE_SUPER_MAJORITY = 6e17; // 60% - lower supermajority
    uint256 private constant GOVERNANCE_EMERGENCY_DELAY = 72; // 72 epochs = 3 days
    
    /* DAO */
    uint256 private constant INCENTIVE = 8e19; // 80 ETHC total incentive
    uint256 private constant ADVANCE_INCENTIVE = (INCENTIVE/100)*50; // 50% of incentive
    uint256 private constant TREASURY_INCENTIVE = (INCENTIVE/100)*50; // 50% of incentive
    uint256 private constant DAO_ENTRANCE_LOCKUP_EPOCHS = 96; // 96 epochs fluid = 4 days
    uint256 private constant DAO_EXIT_LOCKUP_EPOCHS = 168; // 168 epochs fluid = 7 days
    
    /* Pool */
    uint256 private constant POOL_EXIT_LOCKUP_EPOCHS = 96; // 96 epochs fluid = 4 days
    
    /* Market */
    uint256 private constant COUPON_EXPIRATION = 1080; // 1080 epochs = 45 days
    uint256 private constant DEBT_RATIO_CAP = 2e17; // 20%
    uint256 private constant INITIAL_COUPON_REDEMPTION_PENALTY = 5e17; // 50%
    uint256 private constant COUPON_REDEMPTION_PENALTY_DECAY = 3600; // 1 hour 

    /* Regulator */
    uint256 private constant SUPPLY_CHANGE_LIMIT = 3e15; // 0.3% per epoch = 7.2% per day
    uint256 private constant COUPON_SUPPLY_CHANGE_LIMIT = 6e16; // 6%
    uint256 private constant ORACLE_POOL_RATIO = 20; // 20%
    uint256 private constant TREASURY_RATIO = 250; // 2.5%
    
    /* Deployed */
    address private constant DAO_ADDRESS = address(0x3A29121f4D66d67432B3420c5fA5711003CB76C1); // Kovan Testnet - update with mainnet DAO address
    address private constant ETHIC_ADDRESS = address(0xb0deb36900e84Cf257325452a775fe9E81d060fb); // Kovan Testnet - update with mainnet ethic address
    address private constant PAIR_ADDRESS = address(0x7ab1D07Dcf918d1AB6f312b50464DD5C65CA0250); // Kovan Testnet - update with mainnet pair address
    address private constant TREASURY_ADDRESS = address(0x88B6b8518D80ecf62C39D5A3AafaCcC4705941A7); // Kovan Testnet - update with mainnet treasury address
    address private constant DEVELOPER_ADDRESS = address(0x64655E2c5721A92077978076B38bD34872f8b09F); // Kovan Testnet - unneeded on mainnet
    address private constant WPS_ADDRESS = address(0x42125A6B882bBF6e69375F2a274F23aC928c593a); // Kovan Testnet - unneeded on mainnet
    
    
    /**
     * Getters
     */

    function getDaiAddress() internal pure returns (address) {
        return DAI_ADDRESS;
    }

    function getOracleReserveMinimum() internal pure returns (uint256) {
        return ORACLE_RESERVE_MINIMUM;
    }

    function getEpochStrategy() internal pure returns (EpochStrategy memory) {
        return EpochStrategy({
            offset: EPOCH_OFFSET,
            start: EPOCH_START,
            period: EPOCH_PERIOD
        });
    }

    function getInitialStakeMultiple() internal pure returns (uint256) {
        return INITIAL_STAKE_MULTIPLE;
    }

    function getBootstrappingPeriod() internal pure returns (uint256) {
        return BOOTSTRAPPING_PERIOD;
    }

    function getBootstrappingPrice() internal pure returns (Decimal.D256 memory) {
        return Decimal.D256({value: BOOTSTRAPPING_PRICE});
    }

    function getBootstrappingSpeedupFactor() internal pure returns (uint256) {
        return BOOTSTRAPPING_SPEEDUP_FACTOR;
    }

    function getGovernancePeriod() internal pure returns (uint256) {
        return GOVERNANCE_PERIOD;
    }

    function getGovernanceExpiration() internal pure returns (uint256) {
        return GOVERNANCE_EXPIRATION;
    }

    function getGovernanceQuorum() internal pure returns (Decimal.D256 memory) {
        return Decimal.D256({value: GOVERNANCE_QUORUM});
    }

    function getGovernanceProposalThreshold() internal pure returns (Decimal.D256 memory) {
        return Decimal.D256({value: GOVERNANCE_PROPOSAL_THRESHOLD});
    }

    function getGovernanceSuperMajority() internal pure returns (Decimal.D256 memory) {
        return Decimal.D256({value: GOVERNANCE_SUPER_MAJORITY});
    }

    function getGovernanceEmergencyDelay() internal pure returns (uint256) {
        return GOVERNANCE_EMERGENCY_DELAY;
    }

    function getAdvanceIncentive() internal pure returns (uint256) {
        return ADVANCE_INCENTIVE;
    }

    function getTreasuryIncentive() internal pure returns (uint256) {
        return TREASURY_INCENTIVE;
    }    
    
    function getDAOExitLockupEpochs() internal pure returns (uint256) {
        return DAO_EXIT_LOCKUP_EPOCHS;
    }

    function getDAOEntranceLockupEpochs() internal pure returns (uint256) {
        return DAO_ENTRANCE_LOCKUP_EPOCHS;
    }
    
    function getPoolExitLockupEpochs() internal pure returns (uint256) {
        return POOL_EXIT_LOCKUP_EPOCHS;
    }

    function getCouponExpiration() internal pure returns (uint256) {
        return COUPON_EXPIRATION;
    }

    function getDebtRatioCap() internal pure returns (Decimal.D256 memory) {
        return Decimal.D256({value: DEBT_RATIO_CAP});
    }

    function getInitialCouponRedemptionPenalty() internal pure returns (Decimal.D256 memory) {
        return Decimal.D256({value: INITIAL_COUPON_REDEMPTION_PENALTY});
    }

    function getCouponRedemptionPenaltyDecay() internal pure returns (uint256) {
        return COUPON_REDEMPTION_PENALTY_DECAY;
    }

    function getSupplyChangeLimit() internal pure returns (Decimal.D256 memory) {
        return Decimal.D256({value: SUPPLY_CHANGE_LIMIT});
    }

    function getCouponSupplyChangeLimit() internal pure returns (Decimal.D256 memory) {
        return Decimal.D256({value: COUPON_SUPPLY_CHANGE_LIMIT});
    }

    function getOraclePoolRatio() internal pure returns (uint256) {
        return ORACLE_POOL_RATIO;
    }

    function getTreasuryRatio() internal pure returns (uint256) {
        return TREASURY_RATIO;
    }

    function getChainId() internal pure returns (uint256) {
        return CHAIN_ID;
    }

    function getDaoAddress() internal pure returns (address) {
        return DAO_ADDRESS;
    }

    function getEthicAddress() internal pure returns (address) {
        return ETHIC_ADDRESS;
    }

    function getPairAddress() internal pure returns (address) {
        return PAIR_ADDRESS;
    }

    function getTreasuryAddress() internal pure returns (address) {
        return TREASURY_ADDRESS;
    }
}
