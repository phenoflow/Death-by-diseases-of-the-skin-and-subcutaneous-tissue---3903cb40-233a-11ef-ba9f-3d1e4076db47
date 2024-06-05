cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-effluvium---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-effluvium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-acrodermatitis---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-acrodermatitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-effluvium---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-classif---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-classif---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-acrodermatitis---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-unspec---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-unspec---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-classif---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-folliculitis---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-folliculitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-unspec---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-trunk---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-trunk---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-folliculitis---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-trunk---secondary/output
  pustular-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary:
    run: pustular-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-keratosis---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-keratosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: pustular-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-rosacea---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-rosacea---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-keratosis---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-pemphigu---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-pemphigu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-rosacea---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-scalded---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-scalded---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-pemphigu---secondary/output
  connective-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary:
    run: connective-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-scalded---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-atrophican---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-atrophican---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: connective-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-capitis---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-capitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-atrophican---secondary/output
  pemphigoid-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary:
    run: pemphigoid-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-capitis---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-elimination---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-elimination---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: pemphigoid-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-condition---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-condition---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-elimination---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-vitiligo---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-vitiligo---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-condition---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-apocrine---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-apocrine---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-vitiligo---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-subacute---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-subacute---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-apocrine---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-carbuncle---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-carbuncle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-subacute---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-druginduced---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-druginduced---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-carbuncle---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-decubitus---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-decubitus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-druginduced---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-parapsoriasis---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-parapsoriasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-decubitus---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-hyperpigmentation---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-hyperpigmentation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-parapsoriasis---secondary/output
  local-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary:
    run: local-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-hyperpigmentation---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-specified---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: local-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-scleroderma---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-scleroderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-specified---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-pruritus---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-pruritus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-scleroderma---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-acne---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-acne---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-pruritus---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-radiodermatitis---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-radiodermatitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-acne---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-acquired---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-acquired---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-radiodermatitis---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-rosea---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-rosea---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-acquired---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-lichenoide---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-lichenoide---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-rosea---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-chron---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-chron---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-lichenoide---secondary/output
  acantholytic-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary:
    run: acantholytic-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-chron---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-urticaria---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-urticaria---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: acantholytic-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-cellulitis---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-cellulitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-urticaria---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-vulgaris---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-vulgaris---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-cellulitis---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-granuloma---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-granuloma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-vulgaris---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-annulare---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-annulare---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-granuloma---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-multiforme---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-multiforme---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-annulare---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-miliaria---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-miliaria---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-multiforme---secondary/output
  keloid-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary:
    run: keloid-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-miliaria---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-plantaris---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-plantaris---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: keloid-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-cutis---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-cutis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-plantaris---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-alopecia---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-alopecia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-cutis---secondary/output
  eosinophilic-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary:
    run: eosinophilic-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-alopecia---secondary/output
  cicatricial-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary:
    run: cicatricial-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: eosinophilic-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-dermatosis---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-dermatosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: cicatricial-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-nodosum---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-nodosum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-dermatosis---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-areata---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-areata---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-nodosum---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-nigrican---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-nigrican---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-areata---secondary/output
  pilonidal-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary:
    run: pilonidal-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-nigrican---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-scarring---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-scarring---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: pilonidal-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-impetigo---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-impetigo---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-scarring---secondary/output
  follicular-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary:
    run: follicular-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-impetigo---secondary/output
  toxic-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary:
    run: toxic-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: follicular-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-rubra---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-rubra---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: toxic-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-marginatum---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-marginatum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-rubra---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-eccrine---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-eccrine---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-marginatum---secondary/output
  transepidermal-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary:
    run: transepidermal-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-eccrine---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-napkin---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-napkin---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: transepidermal-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-abnormality---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-abnormality---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-napkin---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-sunburn---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-sunburn---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-abnormality---secondary/output
  bullous-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary:
    run: bullous-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-sunburn---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-pyoderma---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: bullous-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-hypertrichosis---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-hypertrichosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-pyoderma---secondary/output
  hypertrophic-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary:
    run: hypertrophic-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-hypertrichosis---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-gangrenosum---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-gangrenosum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: hypertrophic-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-degree---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-degree---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-gangrenosum---secondary/output
  papulosquamous-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary:
    run: papulosquamous-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-degree---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-nail---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-nail---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: papulosquamous-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-callosity---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-callosity---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-nail---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-melanin---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-melanin---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-callosity---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-varioliformi---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-varioliformi---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-melanin---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-generalized---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-generalized---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-varioliformi---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-infantile---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-infantile---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-generalized---secondary/output
  plaque-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary:
    run: plaque-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-infantile---secondary/output
  death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-related---secondary:
    run: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-related---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: plaque-death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-skin-and-subcutaneous-tissue-natural-cause-related---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
