 
 const ListPage = async() => {
 	let {result,error} = await query({type:'animals_by_user_id',params:[sessionStorage.userId]});

 	if(error) {
 		console.log(result,error);
 		return;
 	}


 	$("#page-list .animallist").html(makeAnimalList(result));
 }

 const RecentPage = async() => {
 	console.log("honk")
 }

 const UserProfilePage = async() => {
 	let {result,error} = await query({type:'user_by_id',params:[sessionStorage.userId]});

 	if(error) {
 		console.log(result,error);
 		return;
 	}

 	let [user] = result;
 	$("#page-user-profile [data-role='main']").html(makeUserProfile(user));
 }

 const AnimalProfilePage = async() => {
 	console.log("honk")
 }