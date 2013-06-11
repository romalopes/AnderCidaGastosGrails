class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

    "/login"(controller: 'login', action: 'index')
    "/"(controller: "main", action:"index")
    //"/"(view:"/index")
    "500"(view:'/error')
    "401"(view:'/error')
    "404"(view:'/error')
    "403"(view:'/error')

	}
}
