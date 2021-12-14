const Token = artifacts.require("Herectus"); // Change to be the artifact contract you'd wish to use

module.exports = (deployer, network, accounts) => {
  deployer.deploy(Token);
};
