
file_path=/hy-tmp/search_data
index_file=$file_path/e5_Flat.index
corpus_file=$file_path/wiki-18.jsonl
retriever_name=e5
retriever_path=intfloat/e5-base-v2

# export http_proxy="http://127.0.0.1:7890"
# export https_proxy="http://127.0.0.1:7890"
# export ftp_proxy="http://127.0.0.1:7890"
# export no_proxy="localhost,127.0.0.1,::1,.local"

# python -m debugpy --wait-for-client --listen 5678 search_r1/search/retrieval_server.py --index_path $index_file \
python search_r1/search/retrieval_server.py --index_path $index_file \
                                            --corpus_path $corpus_file \
                                            --topk 3 \
                                            --retriever_name $retriever_name \
                                            --retriever_model $retriever_path \
                                            --faiss_gpu
