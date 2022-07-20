import ProductionCard from './ProductionCard'


function ProductionContainer({productions}) {
    return (
        <div className='container'>
        {productions.map(production => <ProductionCard  key={production.id} production={production} />)}
    </div>
    );
  }
  
  export default ProductionContainer;