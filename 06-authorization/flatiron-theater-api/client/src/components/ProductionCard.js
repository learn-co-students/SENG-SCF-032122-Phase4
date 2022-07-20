

function ProductionCard({production}) {
    const {title, budget, genre, image} = production
    return (
      <div className="card">
       <h4>{title}</h4>
       <img style={{width:'100px'}} alt="theatre poster" src={image}/>
       <i>{genre}</i>
       <h5>{budget}</h5>
      </div>
    );
  }
  
  export default ProductionCard;