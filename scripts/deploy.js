const hre = require("hardhat");

async function deploy() {
  const firdaus = await hre.ethers.getContractFactory("firdaus");
  const Firdaus = await firdaus.deploy();

  await Firdaus.deployed();

  console.log("firdaus deployed to:", Firdaus.address);
}

deploy()
  .then(() => process.exit(0))
  .catch((error) => {
    console.log(error);
    procecs.exit(1);
  });
