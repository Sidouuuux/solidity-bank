import SimpleBank from './artifacts/SimpleBank.json'
import {DrizzleProvider} from 'drizzle-react'
import {LoadingContainer,
        AccountData,
        ContractData,
        ContractForm} from 'drizzle-react-components'

const drizzleOptions= {
  contracts: [SimpleBank]
}

function App() {
  return (
    <div className="App">
      <DrizzleProvider options={drizzleOptions}>
        <LoadingContainer>
         <div>
          <p>Account Infos :</p>
          <AccountData accountIndex={0} units={"ether"} precision={2}/>
          <br></br>
          <p>Token balance :</p>
          <ContractData contract="SimpleBank" method="getBalance"/>
          <p>Token deposit :</p>
          <ContractForm contract="SimpleBank" method="deposit"/>
          <p>Token withdraw :</p>
          <ContractForm contract="SimpleBank" method="withdraw"/>
         </div>
        </LoadingContainer>
      </DrizzleProvider>
    </div>
  );
}

export default App;
