# Open the original file for reading
with open('Syn_Mem.txt', 'r') as file:
    # Read all lines from the file to count them
    lines = file.readlines()

# Open a new file for writing
with open('Syn_Mem_Empty.txt', 'w') as new_file:
    # For each line in the original file, write a line with 32 zeros
    for _ in lines:
        new_file.write('0' * 32 + '\n')
