# Ensure that "/" is at the end so _contents_ are copied without parent folder
echo $SAMPLE_DATA_PATH
echo $MARKDOWN_READER_SAMPLE_DATA_BUNDLE_PATH

# -a        Preserve permissions
# -v        Verbose
# --delete  Remove extraneous files from dest dirs

rsync -rv \
  --exclude="cp_bundle.sh" \
  --exclude=".git" \
  --exclude=".gitignore" \
  --delete \
  $SAMPLE_DATA_PATH \
  $MARKDOWN_READER_SAMPLE_DATA_BUNDLE_PATH
