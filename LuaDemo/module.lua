
module = {}

module.constant = "this is a constant"


function module.func1()
    print("this is a public function")
end


local function func2()
    print("this is a private function")
end


function module.func3()
    func2()
end


return module