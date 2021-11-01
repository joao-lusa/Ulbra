import React, {useState, useEffect} from "react";
import Api from "../../Api";

function Products() {
    const[page, setPage] = useState([])

    useEffect(()=>{
        Api.get('/pages/3')
            .then((response)=>{
                setPage(response.data)
            })
    },[])
    return (
        <div className="row">
        <div className="col-sm-1"></div>
        <div 
            className="col-sm-10"
            dangerouslySetInnerHTML={
                {
                    __html : page.content
                }
            }
        >
           
        </div>
        <div className="col-sm-1"></div>
        </div>
    );
}
export default Products;