import React, { useEffect, useState } from "react";
import { useHistory } from "react-router";
import Api from '../../../Api'
import {getToken} from '../../../Auth'

export default function ClientView(){

    const [clients, setClients] = useState([]);
    const history = useHistory();

    useEffect(()=>{
        Api.get('/clients',
            {
                params : {}, 
                headers : {
                    Authorization: 'Bearer' + getToken()
                }
            }
        )
        .then((response)=>{
            setClients(response.data)
        })
    },[]);
    
    const handleAddButton = () => {
        history.push('/admin/client/add')
    }

    return(
        <div className="row">
        <div className="com-sm-1"></div>
        <div className="com-sm-10 container">
            <h1>Lista de clients</h1>
            <button className="btn btn-primary mb-2" onClick={handleAddButton}>Adicionar Cliente</button>
            <table className="table table-striped">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nome</th>
                        <th>Email</th>
                        <th>Telefone</th>
                        <th>Endereço</th>
                    </tr>
                </thead>
                <tbody>
                    {clients.map((client)=>
                        <tr key={client.idClient}>
                            <td>{client.idClient}</td>
                            <td>{client.name}</td>
                            <td>{client.email}</td>
                            <td>{client.phone}</td>
                            <td>{client.address}</td>
                        </tr>    
                    )}
                </tbody>
            </table>
        </div>
        <div className="com-sm-1"></div>
    </div>
    )

}