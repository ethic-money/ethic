/* const Implementation = artifacts.require("Ethic");
async function deployImplementation(deployer) {
  await deployer.deploy(Implementation);
}
module.exports = function(deployer) {
  deployer.then(async() => {
    console.log(deployer.network);
    switch (deployer.network) {
      case 'development':
      case 'rinkeby':
      case 'kovan':
      case 'ropsten':
        await deployImplementation(deployer);
        break;
      case 'mainnet':
      case 'mainnet-fork':
        await deployImplementation(deployer);
        break;
      default:
        throw("Unsupported network");
    }
  })
};
*/
