### wikipediaの記事全文取得
    wget https://dumps.wikimedia.org/jawiki/latest/jawiki-latest-pages-articles.xml.bz2
### xmlファイルから記事本文取り出し
WikiExtractorを利用
    git clone git@github.com:attardi/wikiextractor.git
    cd wikiextractor
    python3.7 setup.py install
### 分割されたファイルを結合
    find text/ | grep wiki | awk '{system("cat "$0" >> wiki.txt")}'
### 分かち書きに変換
    mecab -Owakati wiki.txt -o wiki_wakati.txt
### UTF-8に変換
    nkf -w --overwrite wiki_wakati.txt
### モデル作成
    python3 wiki2model.py    
