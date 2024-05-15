const SHA256 = require("crypto-js/sha256");

// Primero creamos el bloque
class Block {
  constructor(index, timestamp, data, previousHash = "") {
    //Indice del bloque
    this.index = index;
    //Tiempo de la transacción
    this.timestamp = timestamp;
    // Datos del bloque
    this.data = data;
    //Hash del bloque anterior
    this.previousHash = previousHash;
    //Hash actual del bloque
    this.hash = this.calculateHash();
  }

  //Funcion para calcular el hash del bloque
  calculateHash() {
    return SHA256(
      this.index +
        this.previousHash +
        this.timestamp +
        JSON.stringify(this.data)
    ).toString();
  }
}

//Creamos nuestra blockchain
class Blockchain {
  constructor() {
    this.chain = [this.createGenesisBlock];
    this.addBlock(this.createGenesisBlock());
  }

  //Funcion de nuestro bloque genesis.
  createGenesisBlock() {
    return new Block(0, "17/04/2024", "Genesis Block", "0");
  }

  getLatestBlock() {
    return this.chain[this.chain.length - 1];
  }

  //Funcion para añadir un nuevo bloque
  addBlock(newBlock) {
    //primero devemos obtener el bloque anterior
    newBlock.previousHash = this.getLatestBlock().hash;
    //Calcular el hash del bloque actual
    newBlock.hash = newBlock.calculateHash();
    //Añadir el bloque a la blockchain
    this.chain.push(newBlock);
  }
  isChainValid() {
    for (let i = 1; i < this.chain.length; i++) {
      const currentBlock = this.chain[i];
      const previousBlock = this.chain[i - 1];
      if (currentBlock.hash !== currentBlock.calculateHash()) {
        return false;
      }
      if (currentBlock.previousHash !== previousBlock.hash) {
        false;
      }
    }
    return true;
  }
}

//definir el nombre de blockchain
let JJACoin = new Blockchain();

//Añadir nuevos bloques a nuestra blockchain
JJACoin.addBlock(new Block(1, "18/04/2024", { amount: 5 }));
JJACoin.addBlock(new Block(2, "19/04/2024", { amount: 10 }));

//obtener información de los bloques añadidos a nuestra blockchain
// console.log(JSON.stringify(JJACoin, null, 4));

//Probar la funcion de comprobar si nuestra blockchain es valida o no

console.log("es valida nuestra blockchain? " + JJACoin.isChainValid());

//Itentamos modificar los datos

JJACoin.chain[1].data = { amount: 15 };
JJACoin.chain[1].hash = JJACoin.chain[1].calculateHash();

console.log("es valida nuestra blockchain? " + JJACoin.isChainValid());
