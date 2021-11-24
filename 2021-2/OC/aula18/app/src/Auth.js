import * as jwt from 'jsonwebtoken';

export function isAdmin(){

    const checkJwt = (token) =>{
        var strToken = jwt.decode(token);
        if(strToken.admin === '1'){
            return true
        }else{
            return false
        }
            
    }

    return(
        getToken() != null ?
            checkJwt(getToken())
        :
            false
    );
}

export function setToken(token){
    localStorage.setItem('@myapp/token1', token)
}

export function getToken() {
    return localStorage.getItem('@myapp/token1');
}

export function deleteToken(){
    localStorage.removeItem('@myapp/token1')
}