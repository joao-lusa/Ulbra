import React from "react";
import { useForm } from "react-hook-form";
import { useHistory } from "react-router";
import Api from "../../../Api";
import { getToken } from "../../../Auth";



export default function ClientAdd(){

    const {handleSubmit, register } = useForm();
    const history = useHistory();

    const onSubmit = (data) => {
        Api.post(
            '/clients',
            {
                name: data.name,
                phone: data.phone,
                email: data.email,
                address: data.address
            },
            {
                headers : {
                    Authorization: 'Bearer ' + getToken()
                }
            }
        )
        .then((response)=>{
            console.log(response.data);
        })
        .finally( () => {
            history.push('/admin/client/view');
            window.location.reload(true)
        })
    }

    return(
        <div className="row">
        <div className="col-sm-1"></div>
        <div className="col-sm-10 mb-5">
            <h1>Adicionando Cliente</h1>
            <form onSubmit={handleSubmit(onSubmit)}>
                <div className="form-group">
                    <label>Nome</label>
                    <input
                        {...register("name")}
                        type="text" 
                        className="form-control"
                    />
                </div>
                <div className="form-group">
                    <label>Email</label>
                    <input 
                        {...register("email")}
                        type="text" 
                        className="form-control"/>
                </div>
                <div className="form-group">
                    <label>Telefone</label>
                    <input
                        {...register("phone")}
                        type="text" 
                        className="form-control"/>
                </div>
                <div className="form-group">
                    <label>Endereço</label>
                    <input 
                        {...register("address")}
                        type="text" 
                        className="form-control"/>
                </div>
                <input type="submit"/>
            </form>
        </div>
        <div className="col-sm-1"></div>
        </div>
    )

}