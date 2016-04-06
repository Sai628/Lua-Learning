
mytable = {"apple", "orange", "banana"}

print(collectgarbage("count"))
mytable = nil
print(collectgarbage("count"))

print(collectgarbage("collect"))
print(collectgarbage("count"))

-- 25.05859375
-- 25.171875
-- 0
-- 24.44140625
