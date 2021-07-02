package main

func main() {

}


func GetUser(id string) (User, error) {
	resp, err := http.Get(fmt.Sprintf("https://api.mojang.com/users/profiles/minecraft/%v", id))
	if err != nil {
	
	}

}
