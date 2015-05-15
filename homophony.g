Print(
"\nThis experiment verifes the result of the paper \n",
"by Jean-François Mestre, René Schoof, Lawrence Washington \n",
"and Don Zagier \"Quotients homophones des groupes libres\" \n",
"(Homophonic quotients of free groups), Experiment. Math. \n",
"2 (1993), no. 3, 153--155 (http://eudml.org/doc/233741).\n\n");

Print(
"The authors take the free group on 26 letters a, b, c, ..., z \n",
"and consider its two quotients (denote them G and H) by the \n",
"relations of the form A=B where A and B are words having the \n",
"same pronunciation in English and French languages respectively \n",
"for G and H. The authors prove that both G and H are trivial.\n\n");

Print(
"In this calculation we will verify this statement \n",
"with respect to the English language.\n\n");

F:=FreeGroup("a","b","c","d","e","f","g","h","i","j","k","l","m",
             "n","o","p","q","r","s","t","u","v","w","x","y","z");

Print("The free group F on 26 letters is \n", F, "\n"); 

pairs:=[ 
"bye=by",          # e=1
"lead=led",        # a=1
"maid=made",       # mid=md => i=1
"sow=sew",         # o=e=1
"buy=by",          # u=1
"sow=so",          # w=1
"lye=lie",         # y=1
"hour=our",        # h=1 
"knight=night",    # k=1
"damn=dam",        # n=1
"psalter=salter",  # p=1
"plumb=plum",      # b=1
"bass=base",       # s=1
"butt=but",        # t=1
"tolled=told",     # l=1
"barred=bard",     # r=1
"dammed=damned",   # m=1
"chased=chaste",   # d=1
"sign=sine",       # g=1
"daze=days",       # z=1
"cite=sight",      # c=1
"jeans=genes",     # j=1
"queue=cue",       # q=1
"tax=tacks",       # x=1
# "ruff=rough" ],  # f=1, we need not this relation used in the paper
"phase=faze",      # f=1
"chivvy=chivy"];   # v=1

Print("\n\nThe list of relations given by words with the same pronunciation is:\n\n");

for r in pairs do
  Print(r, "\n");
od;

rels:=List( pairs, r -> ParseRelators(GeneratorsOfGroup(F),r)[1]);

Print("\n\nCorresponding relators of the finitely presented group:\n\n");

for r in rels do
  Print(r, "\n");
od;

Print("\n\nFinally, the order of the quotient of G by these relations:\n\n", 
      "Size( F/ rels ) = ", Size( F/ rels ), "\n\n");

QUIT;
      
