 
 const resultQuery = async (options) => {
    let {result,error} = await query(options);
    if(error){
        console.log(error);
        return;
    }
    return result;
 }


 const ListPage = async() => {
 	let result = await query({
        type:'animals_by_user_id',
        params:[sessionStorage.userId]
    });

 	$("#page-list .animallist").html(makeAnimalList(result));
 }

const RecentPage = async() => {
   let result = await resultQuery({
      type:'recent_animal_locations',
      params:[sessionStorage.userId]
   });

   let mapEl = makeMap("#page-recent .map");
   makeMarkers(mapEl,result);
}


 const UserProfilePage = async() => {
 	let result = await query({
        type:'user_by_id',
        params:[sessionStorage.userId]
    });

 	let [user] = result;
 	$("#page-user-profile [data-role='main']").html(makeUserProfile(user));
 }

 const AnimalProfilePage = async() => {
   let animal_result = await resultQuery({
      type:'animal_by_id',
      params:[sessionStorage.animalId]
   });

    let [animal] = animal_result;
   $(".animal-profile-top img").attr("src",animal.img);

   let locations_result = await resultQuery({
      type:'locations_by_animal_id',
      params:[sessionStorage.animalId]
   });
   let mapEl = makeMap("#page-animal-profile .map");
   makeMarkers(mapEl,locations_result);
}