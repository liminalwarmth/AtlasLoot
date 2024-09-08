import re
import os

# Load the eternals data
from nyct_eternals import eternals_data

def update_spell_block(block, eternal_data):
    # Update the block ID
    block = re.sub(r'^\[(\d+)\]', f'[{eternal_data["eternal_craft_spell_id"]}]', block, flags=re.MULTILINE)
    
    # Update the name
    block = re.sub(r'(\["name"\] = ").*(")', f'\\1{eternal_data["name"]}\\2', block)
    
    # Update the craftItem ID
    block = re.sub(r'(\["craftItem"\] = )(\d+)', lambda m: f'{m.group(1)}{eternal_data["crafted_item_id"]}', block)
    
    return block

# Read the NyctermoonSpells.lua file
input_file = 'AtlasLoot/Core/NyctermoonSpells.lua'
output_file = 'AtlasLoot/Core/NyctermoonSpells_Eternal.lua'

with open(input_file, 'r') as file:
    content = file.read()

# Split the content into blocks
blocks = re.split(r'(\[\d+\] = {[^}]+},)', content)

# Process each block
for i, block in enumerate(blocks):
    if block.strip().startswith('['):
        match = re.search(r'\[(\d+)\]', block)
        if match:
            spell_id = match.group(1)
            
            # Check if the spell_id exists in any of the eternals_data categories
            for category in eternals_data.values():
                if spell_id in category:
                    eternal_data = category[spell_id]
                    blocks[i] = update_spell_block(block, eternal_data)
                    break

# Join the blocks back together
updated_content = ''.join(blocks)

# Write the updated content to a new file
with open(output_file, 'w') as file:
    file.write(updated_content)

print(f"Updated content has been written to {output_file}")