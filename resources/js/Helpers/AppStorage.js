class AppStorage{

	storeToken(token){
		localStorage.setItem('token',token);
	}

	storeUser(user){
		localStorage.setItem('user',user);
	}

	storeRole(role){
		localStorage.setItem('role',role);
	}
	storeDillerId(dillerId){
		localStorage.setItem('dillerId',dillerId);
	}

	store(token,user,role,dillerId){
		this.storeToken(token)
		this.storeUser(user)
		this.storeRole(role)
		this.storeDillerId(dillerId)
	}

	clear(){
		localStorage.removeItem('token')
		localStorage.removeItem('user')
	}

	getToken(){
		localStorage.getItem(token);
	}

	getUser(){
		localStorage.getItem(user);
	}

}

export default AppStorage = new AppStorage();
