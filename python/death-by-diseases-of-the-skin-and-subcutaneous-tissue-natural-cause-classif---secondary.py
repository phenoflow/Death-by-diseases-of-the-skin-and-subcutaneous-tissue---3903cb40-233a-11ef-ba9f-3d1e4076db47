# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"L86","system":"icd10"},{"code":"L95.9","system":"icd10"},{"code":"L95","system":"icd10"},{"code":"L92.1","system":"icd10"},{"code":"L62","system":"icd10"},{"code":"L95.8","system":"icd10"},{"code":"L97","system":"icd10"},{"code":"L54","system":"icd10"},{"code":"L14.X","system":"icd10"},{"code":"L95.1","system":"icd10"},{"code":"L62.8","system":"icd10"},{"code":"L45","system":"icd10"},{"code":"L86.X","system":"icd10"},{"code":"L54.8","system":"icd10"},{"code":"L97.X","system":"icd10"},{"code":"L62.0","system":"icd10"},{"code":"L45.X","system":"icd10"},{"code":"L95.0","system":"icd10"},{"code":"L14","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-diseases-of-the-skin-and-subcutaneous-tissue-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-classif---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-classif---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-classif---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
