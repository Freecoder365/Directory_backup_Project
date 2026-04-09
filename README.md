# Directory Backup Script

## 📌 Description
This project is a Bash-based automation script that creates timestamped backups of a specified directory and stores them in a backup location.

It also maintains only the latest backups by automatically deleting older ones, helping manage disk space efficiently.

---

## 🚀 Features
- Takes source and backup directory as input
- Creates timestamp-based backups
- Automatically creates backup directory if not present
- Logs all backup and deletion actions
- Retains only the latest 3 backups (retention logic)
- Simple and reusable script

---

## 🛠️ Technologies Used
- Bash (Shell Scripting)
- Linux Commands:
  - `cp` (copy directories)
  - `date` (generate timestamp)
  - `ls`, `tail` (sorting & filtering)
  - `rm` (deletion)

---

## Output
<img width="1105" height="100" alt="Screenshot from 2026-04-09 15-01-57" src="https://github.com/user-attachments/assets/f843d1b1-830e-493f-957f-19f814e7e9d2" />

---

## ▶️ How to Run

```bash
chmod +x Directory_backup.sh
./Directory_backup.sh <source_directory> <backup_directory>
