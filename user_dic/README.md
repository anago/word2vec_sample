### wikipediaの見出し全量取得して解凍
    wget https://dumps.wikimedia.org/jawiki/latest/jawiki-latest-all-titles-in-ns0.gz
    gzip -d jawiki-latest-all-titles-in-ns0.gz
### 見出しをcsv変換
    python3.7 wiki2csv.py
### csvからMecabのユーザー辞書作成
    /usr/lib/mecab/mecab-dict-index -d /usr/lib/x86_64-linux-gnu/cab/dic/mecab-ipadic-neologd/ -u user.dic -f utf-8 -t utf-8 user.csv

