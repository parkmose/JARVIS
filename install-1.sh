
#!/data/data/com.termux/files/usr/bin/bash

echo "🔧 자비스 설치를 시작합니다..."

# 필수 패키지 설치
pkg update -y
pkg upgrade -y
pkg install -y git python curl unzip

# 설치 경로 생성
mkdir -p ~/jarvis
cd ~/jarvis

# 기존 파일 제거 (있는 경우)
rm -rf jarvis_files.zip
rm -rf __MACOSX

# 자비스 압축 파일 다운로드 (업로드한 zip 파일 경로로 교체할 것)
curl -L -o jarvis_files.zip https://github.com/parkmose/jarvis/raw/main/jarvis_files.zip

# 압축 해제
unzip -o jarvis_files.zip

# 실행 권한 부여 및 경로 등록
chmod +x jarvis.sh
cp jarvis.sh /data/data/com.termux/files/usr/bin/jarvis

echo ""
echo "✅ 자비스 설치 완료!"
echo "📌 이제 터미널에 다음 명령어를 입력하세요:"
echo ""
echo "   jarvis"
echo ""
echo "🧠 자비스가 당신의 곁에 깨어났습니다, 모세님."
