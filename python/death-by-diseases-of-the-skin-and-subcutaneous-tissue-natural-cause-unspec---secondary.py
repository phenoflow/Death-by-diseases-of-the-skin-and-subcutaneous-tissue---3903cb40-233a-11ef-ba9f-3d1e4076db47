# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"L60.9","system":"icd10"},{"code":"L41.9","system":"icd10"},{"code":"L87.9","system":"icd10"},{"code":"L51.9","system":"icd10"},{"code":"L44.9","system":"icd10"},{"code":"L67.9","system":"icd10"},{"code":"L73.9","system":"icd10"},{"code":"L58.9","system":"icd10"},{"code":"L74.9","system":"icd10"},{"code":"L50.9","system":"icd10"},{"code":"L72.9","system":"icd10"},{"code":"L29.3","system":"icd10"},{"code":"L29.9","system":"icd10"},{"code":"L92.9","system":"icd10"},{"code":"L53.9","system":"icd10"},{"code":"L08.9","system":"icd10"},{"code":"L66.9","system":"icd10"},{"code":"L94.9","system":"icd10"},{"code":"L98.9","system":"icd10"},{"code":"L91.9","system":"icd10"},{"code":"L71.9","system":"icd10"},{"code":"L40.9","system":"icd10"},{"code":"L55.9","system":"icd10"},{"code":"L08.8","system":"icd10"},{"code":"L68.9","system":"icd10"},{"code":"L70.9","system":"icd10"},{"code":"L03.9","system":"icd10"},{"code":"L64.9","system":"icd10"},{"code":"L75.9","system":"icd10"},{"code":"L85.9","system":"icd10"},{"code":"L13.9","system":"icd10"},{"code":"L65.9","system":"icd10"},{"code":"L12.9","system":"icd10"},{"code":"L02.9","system":"icd10"},{"code":"L11.9","system":"icd10"},{"code":"L10.9","system":"icd10"},{"code":"L63.9","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-diseases-of-the-skin-and-subcutaneous-tissue-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-unspec---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-unspec---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-unspec---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
