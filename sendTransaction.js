var Web3 = require('web3').default;

// Create a new Web3 instance
var web3 = new Web3(Web3.givenProvider || 'http://localhost:8545');

// Datos de la cuenta
var account = '0x53e3d8e5818eb82b3d71058d92641697d91d49ed';
var privateKey = '0x49364e785781e73d984a584d0577e4b77e5ea832e994729e05467813ba8ddb15';

web3.eth.getBalance(account).then(console.log);

var newAccount = web3.eth.accounts.create();
console.log(newAccount);

// Detalles de la transacción
var rawTransaction = {
    from: account,
    to: newAccount.address,  // Enviar a la nueva cuenta
    value: web3.utils.toWei('0.1', 'ether'),  // Enviar 0.1 ether
    gas: '2000000',  // Límite de gas
    gasPrice: web3.utils.toWei('20', 'gwei')  // Precio del gas en Gwei
};

// Firmar y enviar la transacción
web3.eth.accounts.signTransaction(rawTransaction, privateKey)
    .then(signedTx => web3.eth.sendSignedTransaction(signedTx.rawTransaction))
    .then(receipt => console.log('Transaction receipt: ', receipt))
    .catch(err => console.error('Error: ', err));