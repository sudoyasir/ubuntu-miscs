local directory_path = "/home/yasir/Desktop"

function list_directory_contents(directory_path)
    local pfile = io.popen('ls "' .. directory_path .. '"')
    local contents = pfile:read('*a')
    pfile:close()
    return contents
end

local contents = list_directory_contents(directory_path)
print("Contents of the directory: " .. directory_path)
print(contents)
