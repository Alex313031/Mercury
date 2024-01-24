## Document to show what to choose when running ./mach bootstrap or during the initial mozilla clone

1. Please choose the version of Firefox you want to build (see note above):
 - Choose "2. Firefox for Desktop" NOT Artifact Mode

2. Would you like to run a configuration wizard to ensure Mercurial is
   optimally configured? (This will also ensure 'version-control-tools' is up-to-date) (Yn):
 - Select Y

3. (Relevant config option: ui.username)
   What is your name?

 - Put your real first and last name

4. What is your e-mail address?
 - Put your email address you want to use

5. checking the "tweakdefaults" section
   Would you like to enable these features (Yn)?
 - Select Y

6. Mercurial is not configured to produce diffs in a more readable format.
   Would you like to change this (Yn)?
 - Select Y

7. Would you like to enable these history editing extensions (Yn)?
 - Select Y

8. Would you like to enable the evolve extension? (Yn)
 - Select Y

9. Would you like to enable fsmonitor (Yn)?
 - Select N

10. Enable logging of commands to help diagnose bugs and performance problems (Yn)
 - Select either Y or N depending on your wants/needs

11. Enable the shelve feature. Equivalent to git stash (Yn)
 - Select N

12. Would you like to activate firefoxtree (Yn)?
 - Select N

13. Would you like to activate clang-format (Yn)?
 - Select Y

14. Would you like to activate js-format (Yn)?
 - Select Y

15. Would you like to install the `hg show` extension and `hg wip` alias (Yn)?
 - Select Y

16. Would you like to install the `hg smart-annotate` alias (Yn)?
 - Select N

17. Would you like to activate push-to-try (Yn)?
 - Select N (unless you are committing upstream)

18. Would you like to see a diff of the changes first (Yn)?
 - Select either Y or N depending on your wants/needs

19. Write changes to hgrc file (Yn)?
 - Select Y to finalize changes

20. Would you like to fix the file permissions (Yn)
 - Select N (unless you are on a shared workstation and care about other users seeing this)

Your system should be ready to build Firefox for Desktop! = Done.
