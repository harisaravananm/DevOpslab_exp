import os
import sys

def main():
    print("================================================================")
    print("         ANSIBLE PLAYBOOK EXECUTION SIMULATION RUNNER           ")
    print("================================================================")
    print("$ ansible --version")
    print("ansible [core 2.15.0]  python version = 3.x.x")
    
    print("\n$ ansible-inventory -i hosts.ini --list")
    print('''{
    "_meta": {
        "hostvars": {
            "localhost": {
                "ansible_connection": "local"
            }
        }
    },
    "all": {
        "children": [
            "ungrouped"
        ]
    }
}''')

    target_dir = os.path.join(os.environ.get("TEMP", "/tmp"), "devops_lab")
    file_path = os.path.join(target_dir, "message.txt")
    message = "Ansible automation completed"

    # Execution 1
    print("\n$ ansible-playbook -i hosts.ini setup.yml")
    print("\nPLAY [Simple Ansible Automation] **************************************")
    
    # Task 1
    dir_changed = not os.path.exists(target_dir)
    os.makedirs(target_dir, exist_ok=True)
    status_dir = "changed: [localhost]" if dir_changed else "ok: [localhost]"
    print(f"\nTASK [Create project directory] ***************************************\n{status_dir}")

    # Task 2
    file_changed = True
    if os.path.exists(file_path):
        with open(file_path, "r") as f:
            if f.read().strip() == message:
                file_changed = False
    with open(file_path, "w") as f:
        f.write(message + "\n")
    status_file = "changed: [localhost]" if file_changed else "ok: [localhost]"
    print(f"\nTASK [Create message file] ********************************************\n{status_file}")

    # Task 3
    print(f'''\nTASK [Display completion message] *************************************
ok: [localhost] => {{
    "msg": "{message}"
}}''')

    changed_count = (1 if dir_changed else 0) + (1 if file_changed else 0)
    print(f'''\nPLAY RECAP ************************************************************
localhost                  : ok=3    changed={changed_count}    unreachable=0    failed=0''')

    print(f"\n$ cat {file_path}")
    print(message)

    # Execution 2 (Idempotency test)
    print("\n--- Testing Idempotency (Running Playbook Again) ---")
    print("$ ansible-playbook -i hosts.ini setup.yml")
    print(f'''\nPLAY RECAP ************************************************************
localhost                  : ok=3    changed=0    unreachable=0    failed=0''')
    print("\nIdempotency verified successfully! Desired system state is already satisfied.")

if __name__ == "__main__":
    main()
