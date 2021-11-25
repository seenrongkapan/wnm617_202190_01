
const animalAddForm = async () => {
	let name = $("#animal-add-name").val();
	let breed = $("#animal-add-breed").val();
	let description = $("#animal-add-description").val();
	let unique = $("#animal-add-unique").val();
	// console.log(name,breed,description,unique)

	let r = await query({
		type:'insert_animal',
		params:[sessionStorage.userId,name,breed,description,unique]
	});

	if(r.error) throw(r.error);

	sessionStorage.animalId = r.id;
	history.go(-1);
}


const animalEditForm = async () => {
	let name = $("#animal-edit-name").val();
	let breed = $("#animal-edit-breed").val();
	let description = $("#animal-edit-description").val();
	let unique = $("#animal-edit-unique").val();

	let r = await query({
		type:'update_animal',
		params:[sessionStorage.userId,name,breed,description,unique]
	});

	if(r.error) throw(r.error);

	history.go(-1);
}


const userAddForm = async () => {
	let name = $("#user-add-name").val();
	let breed = $("#user-add-breed").val();
	let description = $("#user-add-description").val();
	let unique = $("#user-add-unique").val();
	
	let r = await query({
		type:'update_animal',
		params:[name,breed,description,unique,sessionStorage.animalId]
	});

	if(r.error) throw(r.error);

	history.go(-1);
}


const userEditForm = async () => {
   let username = $("#user-edit-username").val();
   let name = $("#user-edit-name").val();
   let email = $("#user-edit-email").val();

   let r = await query({
      type:'update_user',
      params:[username,name,email,sessionStorage.userId]
   });

   if(r.error) throw(r.error);

   history.go(-1);
}

const userEditPasswordForm = async () => {
   let password = $("#user-password-initial").val();
   let confirm = $("#user-password-confirm").val();

   if(password!==confirm) throw ("Passwords don't match")

   let r = await query({
      type:'update_user_password',
      params:[password,sessionStorage.userId]
   });

   if(r.error) throw(r.error);

   history.go(-1);
}