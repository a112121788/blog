hexo g

rm -rf public/studio/*
cp -Rf ../studio/* public/studio/

rm -rf public/full_stack_book/*
cp -Rf ../full_stack_book/_book/* public/full_stack_book/


hexo d