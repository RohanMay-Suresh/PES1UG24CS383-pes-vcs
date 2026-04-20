#!/bin/bash

# Ensure we are in the correct directory
cd /home/rohan/OS/PES1UG24CS383-pes-vcs

# Create the folder to hold the screenshots
mkdir -p screenshots

clear
echo "================================================="
echo "               PHASE 1 SCREENSHOTS               "
echo "================================================="
echo "Running: make test_objects && ./test_objects"
echo ""
make test_objects
./test_objects
echo ""
echo "📸 -> TAKE SCREENSHOT 1A NOW. Save it as screenshots/1A.png"
read -p "Press [Enter] to continue to 1B..."

clear
echo "================================================="
echo "Running: find .pes/objects -type f"
echo ""
find .pes/objects -type f
echo ""
echo "📸 -> TAKE SCREENSHOT 1B NOW. Save it as screenshots/1B.png"
read -p "Press [Enter] to continue to Phase 2..."

clear
echo "================================================="
echo "               PHASE 2 SCREENSHOTS               "
echo "================================================="
echo "Running: make test_tree && ./test_tree"
echo ""
make test_tree
./test_tree
echo ""
echo "📸 -> TAKE SCREENSHOT 2A NOW. Save it as screenshots/2A.png"
read -p "Press [Enter] to continue to 2B..."

clear
echo "================================================="
echo "Running: xxd on the first available tree object"
echo ""
OBJ_FILE=$(find .pes/objects -type f | head -n 1)
echo "$ xxd $OBJ_FILE | head -20"
xxd "$OBJ_FILE" | head -20
echo ""
echo "📸 -> TAKE SCREENSHOT 2B NOW. Save it as screenshots/2B.png"
read -p "Press [Enter] to continue to Phase 3..."

clear
echo "================================================="
echo "               PHASE 3 SCREENSHOTS               "
echo "================================================="
echo "Running: pes init, add, and status sequence"
echo ""
make pes
./pes init
echo "hello" > file1.txt
echo "world" > file2.txt
./pes add file1.txt file2.txt
./pes status
echo ""
echo "📸 -> TAKE SCREENSHOT 3A NOW. Save it as screenshots/3A.png"
read -p "Press [Enter] to continue to 3B..."

clear
echo "================================================="
echo "Running: cat .pes/index"
echo ""
cat .pes/index
echo ""
echo "📸 -> TAKE SCREENSHOT 3B NOW. Save it as screenshots/3B.png"
read -p "Press [Enter] to continue to Phase 4..."

clear
echo "================================================="
echo "               PHASE 4 SCREENSHOTS               "
echo "================================================="
echo "Running: pes log sequence"
echo ""
./pes commit -m "First commit"
echo "update" >> file1.txt
./pes add file1.txt
./pes commit -m "Second commit"
echo "new" > notes.txt
./pes add notes.txt
./pes commit -m "Third commit"
./pes log
echo ""
echo "📸 -> TAKE SCREENSHOT 4A NOW. Save it as screenshots/4A.png"
read -p "Press [Enter] to continue to 4B..."

clear
echo "================================================="
echo "Running: find .pes -type f | sort"
echo ""
find .pes -type f | sort
echo ""
echo "📸 -> TAKE SCREENSHOT 4B NOW. Save it as screenshots/4B.png"
read -p "Press [Enter] to continue to 4C..."

clear
echo "================================================="
echo "Running: cat .pes/HEAD && cat .pes/refs/heads/main"
echo ""
echo "$ cat .pes/HEAD"
cat .pes/HEAD
echo "$ cat .pes/refs/heads/main"
cat .pes/refs/heads/main
echo ""
echo "📸 -> TAKE SCREENSHOT 4C NOW. Save it as screenshots/4C.png"
read -p "Press [Enter] to continue to Final Integration Test..."

clear
echo "================================================="
echo "           FINAL INTEGRATION SCREENSHOT          "
echo "================================================="
echo "Running: make test-integration"
echo ""
make test-integration
echo ""
echo "📸 -> TAKE SCREENSHOT Final NOW. Save it as screenshots/Final.png"
echo ""
echo "All done! You have captured everything for the lab report."