import re

def read_eternals_file(file_path):
    eternals = {}
    with open(file_path, 'r') as f:
        for line in f:
            if line.strip() and not line.startswith('['):
                parts = line.strip()[1:-1].split(', ')
                if len(parts) == 4:
                    original_id, eternal_id, name, item_id = parts
                    eternals[original_id] = {
                        'eternal_id': eternal_id,
                        'name': name.strip('"'),
                        'item_id': item_id
                    }
    return eternals

def process_spells_file(input_file, output_file, eternals):
    with open(input_file, 'r') as infile, open(output_file, 'w') as outfile:
        in_craftspells = False
        for line in infile:
            outfile.write(line)
            if '["craftspells"] = {' in line:
                in_craftspells = True
            elif in_craftspells and '},' in line and not line.strip().startswith('}'):
                spell_id = re.search(r'\[(\d+)\]', line)
                if spell_id:
                    spell_id = spell_id.group(1)
                    if spell_id in eternals:
                        eternal_entry = create_eternal_entry(line, eternals[spell_id])
                        outfile.write(eternal_entry)
            elif '},' in line and line.strip().startswith('}'):
                in_craftspells = False

def create_eternal_entry(original_entry, eternal_info):
    eternal_entry = original_entry.replace(
        f'[{eternal_info["eternal_id"]}]',
        f'[{eternal_info["item_id"]}]'
    )
    eternal_entry = re.sub(
        r'(\["name"\] = ")([^"]+)(")',
        f'\\1{eternal_info["name"]}\\3',
        eternal_entry
    )
    return eternal_entry

# File paths
eternals_file = 'AtlasLoot\\Core\\eternals_processed.txt'
input_spells_file = 'AtlasLoot\\Core\\Spells.lua'
output_spells_file = 'AtlasLoot\\Core\\Spells_updated.lua'

# Process files
eternals_data = read_eternals_file(eternals_file)
process_spells_file(input_spells_file, output_spells_file, eternals_data)

print("Processing complete. Updated file saved as Spells_updated.lua")