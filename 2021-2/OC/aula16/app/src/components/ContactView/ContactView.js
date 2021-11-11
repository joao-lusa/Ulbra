import React, { useEffect, useState } from "react";
import Api from '../../Api'
function ContactView() {

    const [contacts, setContacts] = useState([]);

    useEffect(()=>{
        Api.get('/contacts')
            .then((response)=>{
                setContacts(response.data);
            })
    },[]);

    return(
        <div className="row">
            <div className="col-sm-1"></div>
            <div className="col-sm-10">
                <h1>Lista de contatos</h1>
                <table className="table table-striped">
                    <tr>
                        <th>Id</th>
                        <th>nome</th>
                        <th>Email</th>
                    </tr>
                    <tbody>
                        {contacts.map((contact,index)=>
                            <tr key={index}>
                                <td>{contact.IdContact}</td>
                                <td>{contact.name}</td>
                                <td>{contact.email}</td>
                            </tr>
                        )}
                    </tbody>
                </table>
            </div>
            <div className="col-sm-1"></div>
        </div>
    )
}

export default ContactView;