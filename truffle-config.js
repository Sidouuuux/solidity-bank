const MNEMONIC = 'cement large tongue olympic sick firm tongue replace animal dynamic fitness pumpkin';

module.exports = {
  contracts_build_directory: "./client/src/artifacts/",
  networks: {
    development: {
	    host: "127.0.0.1",     // LOCALHOST (DEFAULT: NONE)
	    port: 7545,            // STANDARD ETHEREUM PORT (DEFAULT: NONE)
	    network_id: 5777       // ANY NETWORK (DEFAULT: NONE)
    }
  },
  compilers: {
    solc: {
      version: "0.5.16",
    },
  } 
};
