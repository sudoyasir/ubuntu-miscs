function execute_command(command)
    local handle = io.popen(command)
    local result = handle:read("*a")
    handle:close()
    return result
end

-- Get the CPU information
local cpu_info = execute_command("lscpu")
print("CPU Information:")
print(cpu_info)

-- Get the memory information
local mem_info = execute_command("free -m")
print("\nMemory Information:")
print(mem_info)

-- Get the disk space information
local disk_info = execute_command("df -h")
print("\nDisk Space Information:")
print(disk_info)
