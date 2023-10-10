function fn(){
   let env = karate.env;

   if (!env) {
      env = 'herokuapp';
   }

   let config = {
       baseURL: "https://restful-booker." + env + ".com"
   };
   return config;
}