# PowerShell alias

## procedure

1. `New-Item -type file -force $profile`
2. `notepad $profile`
3. Paste [Microsoft.PowerShell_profile.ps1](https://github.com/masachika-kamada/windows-terminal-setting/blob/main/Microsoft.PowerShell_profile.ps1) into the file
4. If you save the file and launch PowerShell again, the alias will be applied

## error resolution

After step 4, the following error may occur

> File C:\Users\\[user name]\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1 cannot be loaded because running scripts is disabled on this system. For more information, see about_Execution_Policies at https:/go.microsoft.com/fwlink/?LinkID=135170.

Since this is due to the execution policy not being properly set, take the following actions

1. Launch PowerShell with administrative privileges
2. Check PowerShell's default execution policy

    ```
    Get-ExecutionPolicy
    ```

3. If the execution policy is "Restricted", change the execution policy

    ```
    Set-ExecutionPolicy RemoteSigned
    ```

4. When asked any question, answer "y"
