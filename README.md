# Hash Cracking Assignment
Majority of code for this module is missing, but here is a description of what this repository is about. <br />
This was a module focused on Scalable Computing and majority of practical exercises for it were were: <br />
Using password cracking tools such as `John the Ripper` and `Hashcat` to crack sets of hashes of various difficulties, by running the programs on remote AWS servers, as the local machines were only powerful enough to solve the first few exercises.

## Description
This repository contains lists of hashes that I had to crack for my assignment under `.hashes` filenames, lists of broken hashes under `.broken` filenames,and Ruby and Bash scripts written for some basic task automation which made my life easier.

### Examples of Automation
1. One technique for cracking hashes is checking a worldlist of passwords like `rockyou` (which can be downloaded from the internet) against your hashlist. These lists can contain hundreds of millions of passwords. If early on you've spotted that your hashes contain passwords under 8 char. in length, then it's possible to run a script which reduces the wordlist to suit that. <br />
These kind of automation scripts are often used. (Although as I later learned, the same operations can be performed using bash commands., which simplifies the process).

2. Other type of automation scripts, were Bash scripts that perform groups of common operations. For example when SSHing into a remote server you might need to:

- Download a file which contains a secret key
- Move the file to your workspace
- Run the command to SSH into the server using the downloaded key file to authenticate
- Copy some files over to the remote machine, possibly using the keyfile to authorize
This can all be grouped into one script which saves a lot of time.

Other examples of such operations are:
- Backing up files on remote machines
- Safely swapping or merging `.pot` files of `John the Ripper` and `Hashcat` systems.

### Commands
- `ruby -r "./pass.rb" -e "Pass.new.lencheck"`
- `ruby -r "./pass.rb" -e "Pass.new.replace_colon"`
