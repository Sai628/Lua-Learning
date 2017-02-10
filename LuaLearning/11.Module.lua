
require("module")

print(module.constant)  -- this is a constant
module.func1()  -- this is a public function
module.func3()  -- this is a private function


local m = require("module")
print(m.constant)  -- this is a constant
m.func3()  -- this is a private function
