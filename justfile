new name:
    #!/usr/bin/env bash
    cp -r scratch {{ name }}

    sed -i "s/scratch/{{ name }}/g" {{ name }}/scratch.kicad_pro

    for file in {{ name }}/scratch.*; do
      mv "$file" "${file/scratch./{{ name }}.}"
    done
