# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"L24","system":"icd10"},{"code":"L23.6","system":"icd10"},{"code":"L23.9","system":"icd10"},{"code":"L30.9","system":"icd10"},{"code":"L27.8","system":"icd10"},{"code":"L25.8","system":"icd10"},{"code":"L21","system":"icd10"},{"code":"L23.5","system":"icd10"},{"code":"L23","system":"icd10"},{"code":"L23.2","system":"icd10"},{"code":"L24.9","system":"icd10"},{"code":"L24.6","system":"icd10"},{"code":"L24.5","system":"icd10"},{"code":"L26.X","system":"icd10"},{"code":"L20","system":"icd10"},{"code":"L23.4","system":"icd10"},{"code":"L27","system":"icd10"},{"code":"L30.8","system":"icd10"},{"code":"L25.0","system":"icd10"},{"code":"L21.8","system":"icd10"},{"code":"L26","system":"icd10"},{"code":"L71.0","system":"icd10"},{"code":"L30.4","system":"icd10"},{"code":"L30.1","system":"icd10"},{"code":"L20.8","system":"icd10"},{"code":"L21.1","system":"icd10"},{"code":"L13.0","system":"icd10"},{"code":"L40.2","system":"icd10"},{"code":"L24.3","system":"icd10"},{"code":"L44.4","system":"icd10"},{"code":"L25","system":"icd10"},{"code":"L30.3","system":"icd10"},{"code":"L30","system":"icd10"},{"code":"L25.4","system":"icd10"},{"code":"L24.0","system":"icd10"},{"code":"L98.1","system":"icd10"},{"code":"L25.9","system":"icd10"},{"code":"L30.2","system":"icd10"},{"code":"L24.1","system":"icd10"},{"code":"L23.8","system":"icd10"},{"code":"L27.2","system":"icd10"},{"code":"L20.9","system":"icd10"},{"code":"L30.5","system":"icd10"},{"code":"L27.9","system":"icd10"},{"code":"L23.0","system":"icd10"},{"code":"L30.0","system":"icd10"},{"code":"L21.9","system":"icd10"},{"code":"L23.1","system":"icd10"},{"code":"L25.2","system":"icd10"},{"code":"L20.0","system":"icd10"},{"code":"L59.0","system":"icd10"},{"code":"L24.8","system":"icd10"},{"code":"L24.2","system":"icd10"},{"code":"L25.3","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-diseases-of-the-skin-and-subcutaneous-tissue-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-acrodermatitis---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-acrodermatitis---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-acrodermatitis---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
