# KOCCA-Image2Mesh

KOCCA 가상공간 과제 1차년도
* 이미지 기반 3D 객체 생성 기술

## Process
### 코드 다운로드
```
git clone https://github.com/KAIST-VML/KOCCA-Image2Mesh.git
cd KOCCA-Image2Mesh
git submodule update --init
```

### conda 환경 만들기
```
conda create -n unique3d python=3.10
conda activate unique3d
bash install.sh
```


### 데이터셋 설치
```
mkdir ckpt
mv ckpt.zip ckpt/
unzip ckpt/ckpt.zip –d ckpt/
mv ckpt/ Uniuqe3D/
```

### 테스트 객체 생성
```
python run_all.sh
```
