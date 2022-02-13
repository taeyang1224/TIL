# 무신사 랭킹 크롤링
- Request와 beautifulsoup을 활용하여 정적페이지 크롤링
- 무신사 랭킹을 크롤링하여 csv로 저장

## musinsa_top300.csv
### Column 설명
- rank: 순위
- name: 검색어
- increase: 증가 및 하락 (증가: 1, 하락: 0)
- increase_cnt: 증가 및 하락 개수

## musinsa_brand100.csv
### Column 설명
- rnak: 순위
- name: 브랜드명
- en_name: 브랜드명 영문
- url: 해당 브랜드로 연결되는 url

## musinsa_best.csv
### Column 설명
- rank: 순위
- brand: 브랜드명
- product: 상품명
- price: 실제 가격
- sale_price: 세일 가격
- increase: 증가 및 하락 (증가: 0, 하락: 1)
- increase_cnt: 증가 및 하락 개수
- no_deli: 재고 부족으로 인한 일정 날짜에 배송을 시작
