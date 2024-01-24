## Document to show what to choose when running ./mach bootstrap or during the initial mozilla clone.

1. Please choose the version of Firefox you want to build (see note above):  
 &ndash; Choose "2. Firefox for Desktop" NOT Artifact Mode

2. Would you like to run a configuration wizard to ensure Mercurial is
   optimally configured? (This will also ensure 'version&ndash;control&ndash;tools' is up&ndash;to&ndash;date) (Yn):  
 &ndash; Select Y

3. (Relevant config option: ui.username)  
   What is your name?
 &ndash; Put your real first and last name  

4. What is your e&ndash;mail address?  
 &ndash; Put the email address you want to use

5. checking the "tweakdefaults" section
   Would you like to enable these features (Yn)?  
 &ndash; Select Y

6. Mercurial is not configured to produce diffs in a more readable format.
   Would you like to change this (Yn)?  
 &ndash; Select Y

7. Would you like to enable these history editing extensions (Yn)?  
 &ndash; Select Y

8. Would you like to enable the evolve extension? (Yn)  
 &ndash; Select Y

9. Would you like to enable fsmonitor (Yn)?  
 &ndash; Select N

10. Enable logging of commands to help diagnose bugs and performance problems (Yn)  
 &ndash; Select either Y or N depending on your wants/needs

11. Enable the shelve feature. Equivalent to git stash (Yn)  
 &ndash; Select N

12. Would you like to activate firefoxtree (Yn)?  
 &ndash; Select N

13. Would you like to activate clang&ndash;format (Yn)?  
 &ndash; Select Y

14. Would you like to activate js&ndash;format (Yn)?  
 &ndash; Select Y

15. Would you like to install the `hg show` extension and `hg wip` alias (Yn)?  
 &ndash; Select Y

16. Would you like to install the `hg smart&ndash;annotate` alias (Yn)?  
 &ndash; Select N

17. Would you like to activate push&ndash;to&ndash;try (Yn)?  
 &ndash; Select N (unless you are committing upstream)

18. Would you like to see a diff of the changes first (Yn)?  
 &ndash; Select either Y or N depending on your wants/needs

19. Write changes to hgrc file (Yn)?  
 &ndash; Select Y to finalize changes

20. Would you like to fix the file permissions (Yn)  
 &ndash; Select N (unless you are on a shared workstation and care about other users seeing this)  

Your system should be ready to build Firefox for Desktop! = Done.
