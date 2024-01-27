alias vtex="..\..\..\..\bin\vtex"

# /bin/find . -not -name "*_*.tga" -name "*.tga" -exec /bin/bash -c 'string="{}"; substring=${string##*/}; substring=${substring%_*}; vtex -shader LightmappedGeneric -vmtparam "\$ambientocclusion" 1 -vmtparam "\$ssbump" 1 -vmtparam \$bumpmap "pie/env/${substring}_bump" -vmtparam \$AmbientOcclTexture "pie/env/${substring}_ao" {}' \;

/bin/find . -not -name "*_color.tga" -name "*.tga" | xargs vtex -nopause

