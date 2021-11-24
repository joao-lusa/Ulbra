import React, { useEffect, useState } from "react";
import { useForm } from "react-hook-form";
import { useHistory, useParams } from "react-router";
import Api from "../../../Api";
import {getToken} from '../../../Auth'

function ContactResponse() {

    let {idContact} = useParams();
    const [contact, setContact] = useState([]);
    const {handleSubmit, register} = useForm();
    const history =  useHistory()

    useEffect(()=>{

        Api.get(`/contacts/${idContact}`,
            {
                params : {},
                headers:{
                    Authorization : "Bearer " + getToken()
                }
            }
        )
        .then((response)=>{
            setContact(response.data)
        })
    },[idContact])

    const onSubmit = (data) =>{

        Api.put(
            `/contacts/${contact.idContact}`,
            {
                status: data.status,
                description: data.description
            },
            {
                headers:{
                    Authorization: "Bearer " + getToken()
                }
            }
        )
        .then((response)=>{
            console.log(response)
        })
        .finally(()=>{
            history.push("/admin/contact/view")
        })

    }

    const handleChange = (e) =>{
        setContact({...contact, status: e.target.value})
    }

    return(
        <>
            <h1>Respondendo o contato feito</h1>
            <form onSubmit={handleSubmit(onSubmit)}>
                <table className='table table-striped'>
                    <thead>

                    </thead>
                    <tbody>
                        <tr>
                            <th>ID do Contato</th>
                            <td>{contact.idContact}</td>
                        </tr>
                        <tr>
                            <th>Nome</th>
                            <td>{contact.name}</td>
                        </tr>
                        <tr>
                            <th>E-mail</th>
                            <td>{contact.email}</td>
                        </tr>
                        <tr>
                            <th>Mensagem</th>
                            <td>{contact.message}</td>
                        </tr>
                        <tr>
                            <th>Status</th>
                            <td>
                                <div className="form-group">
                                    <select 
                                        {...register('status')}
                                        value = {contact.status}
                                        onChange = {handleChange}
                                    >
                                        <option value="0">Aberto</option>
                                        <option value="1">Fechado</option>
                                    </select>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>Descrição</th>
                            <td>
                                <textarea
                                    {...register('description')} 
                                    className="form-control" 
                                    type="text" 
                                    defaultValue={contact.description}
                                />
                            </td>
                        </tr>
                    </tbody>
                </table>

                <div className="form-group">

                    <button
                        type="submit"
                        className="btn btn-primary"
                    >
                        Save
                    </button>

                </div>
            </form>
        </>
    );
}

export default ContactResponse;