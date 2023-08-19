
#4 pregunta
4530*(1/sqrt(20))*qnorm(.025)/qnorm(.05)

#5 pregunta

qnorm(.05)/qnorm(.025)

#7 pregunta

270/18000

435/21850

330700/20120000

#pregunta 8

40000000*.03*(1-.32)

# pregunta 17

.0225*sqrt(252)

#pregunta 19

-1000*7.5*.35*qnorm(.05)/sqrt(252)

#pregunta 27

-(10000*12.5*.42/sqrt(360))*qnorm(.01)

# pregunta 30

(98-105)/(2*101*.01)

#pregunta 31

100*sqrt(5)*qnorm(.01)/qnorm(.05)

#pregunta 32

valorNAFTRAC <- 1000000*35.25

valorCETES<- 5000000*9.8

peso1<-valorNAFTRAC/(valorNAFTRAC+valorCETES)

peso2<-valorCETES/(valorNAFTRAC+valorCETES)

sigma1 <-.25/sqrt(252)

sigma2 <-.035/sqrt(252)

sigmaP <- sqrt((peso1^2)*sigma1^2+(peso2^2)*sigma2^2+2*(peso1)*(peso2)*.38*sigma1*sigma2)
sigmaP

(varP <- sigmaP*qnorm(.975)*(valorCETES+valorNAFTRAC))

#pregunta28

.05*.75

#pregunta 26

sqrt((0.000009/(1-.075-.85)))*100

