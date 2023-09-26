const Web3 = require('web3');
const web3 = new Web3("http://127.0.0.1:8545");
// let { abi } = require('./artifacts/contracts/memoryStorage.sol/NotCaching.json');
let { abi } = require('./artifacts/contracts/memoryStorage.sol/Caching.json');
let { deployer, address } = require('./Details1.json');

MyContract = new web3.eth.Contract(abi, address);
AccountAddress = deployer;

const cost1 = MyContract.methods.arraySum().estimateGas({ from: AccountAddress }).then((data)=>{
    console.log(data);
})

