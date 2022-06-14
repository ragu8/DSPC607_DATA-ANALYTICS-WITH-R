#Write a R program to predict whether A Person is male or female Based on Height Using Bayes Theorem (Assume p(maIe)=0.5 and p(femaIe)=0.5 and Evidence = 1) Bayes Rule P(male lh) and P(female Ih) Training function Using Normal Density 

uvtrain <- function(hm,hf)
{
  hmm = vector(mode = "numeric",length = 0)
  pmh=vector(mode="numeric", length=0)
  hmin = min(hm)-15 
  hmax = max(hm)+15
  mm = mean(hm); 
  vm	= var(hm);
  cat("Mean of Male Height", mm ,"\n") 
  cat("Variance of Male Height",vm)
  for(h in hmin:hmax) 
  {
    r = (h-mm)^2/vm
    p = (1/(sqrt(2*pi*vm)))*exp(-0.5*r); hmm <- c(hmm, h)
    pmh <- c(pmh, p)
  }
    
  hff=vector(mode="numeric", length=0) 
  pff =vector(mode = "numeric",length = 0)
  hmin = min(hf)-15 
  hmax = max(hf)+15 
  mf	= mean(hf);
  vf = var(hf);
  cat("Mean of Female Height", mf ,"\n") 
  cat("Variance of Female Height",vf)
  for(h in hmin:hmax) 
  {
   r = (h-mf)^2/vf
   p = (1/(sqrt(2*pi*vf)))*exp(-0.5*r); hff <- c(hff, h)
  pff <- c(pff, p)
  }
  plot(hmm, pmh, col ="red", pch = 9, xlim=c(min(hff),max(hmm)), xIab="Height of Person (Male and Female)", yIab="p(male I hm) and p(female I hf)", main="NormaI Density")
  lines(hff,pff,col = "blue")
  return(list(mm,vm,mf,vf))
}

uvtest <- function(mm,vm,mf,vf,ht)
{
  rm = (ht-mm)^2/vm
  pm = (1/(sqrt(2*pi*vm)))*exp(-0.5*rm)
  rf = (ht-mf)^2/vf
  pf = (1/(sqrt(2*pi*vf)))*exp(-0.5*rf)
  if(pm>pf)
    print("The given Height of Person is Male") 
  else
    print("The given Height of Person is Female")
}


hm <- c(165, 170, 160, 154, 175, 155, 167, 177, 158, 178)
hf <- c(140, 145, 149, 152, 157, 135, 139, 160, 155, 163)
mv = uvtrain(hm,hf)


ht= as.numeric(readline(prompt ='Enter the height of person for prediction =')) 
mm = as.numeric(mv[1])
vm = as.numeric(mv[2]) 
mf = as.numeric(mv[3]) 
vf = as.numeric(mv[4]) 
uvtest(mm,vm,mf,vf,ht)

