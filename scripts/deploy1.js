const fs = require("fs");

main = async () => {
  const ContractObj = await ethers.getContractFactory("Caching");
  const contractObj = await ContractObj.deploy();

  await contractObj.deployed();

  console.log(
    `${contractObj.signer.address} deployed ${contractObj.address}`
  );

  let details = {
    deployer : contractObj.signer.address,
    address : contractObj.address
  };

  fs.writeFile('./Details1.json', JSON.stringify(details), (err) => {
    if (err) {
      return console.log(err);
    }
    return console.log('Deployment Details are saved in Details.json.');
  })
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

