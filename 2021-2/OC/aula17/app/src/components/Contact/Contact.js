import React from "react";
import {useForm} from 'react-hook-form';
import Api from "../../Api";
import {useHistory} from 'react-router-dom'

function Contact(){
    const {handleSubmit, register } = useForm();
    const history = useHistory()

    const onSubmit = (data)=>{
      Api.post('/contacts',{
        name : data.name,
        email : data.email,
        message : data.message
      })
      .then((response)=>{
        console.log(response);
      })
      .catch((errors)=>{
        console.log(errors);
      })
      .finally(()=>{
        history.push('/contact/view');
      })
    }

    return(
      <div className="row">
      <div className="col-sm-1"></div>
      <div className="col-sm-10 mb-5">
        <h1>Contato</h1>
        <form onSubmit={handleSubmit(onSubmit)}>
              <div className="form-group">
                  <label>Nome:</label>
                  <input 
                      {...register("name")}
                      className="form-control" 
                      type="text" 
                  />
              </div>
              <div className="form-group">
                  <label>Email:</label>
                  <input 
                      {...register("email")}
                      className="form-control" 
                      type="text"
                  />
              </div>
              <div className="form-group">
                  <label>Mensagem:</label>
                  <textarea
                      {...register("menssage")}
                      className="form-control" 
                  ></textarea>
              </div>
              <button type="submit" className="btn btn-primary">Enviar</button>
        </form>
      </div>
      <div className="col-sm-1"></div>
      </div>
    );
}

export default Contact;