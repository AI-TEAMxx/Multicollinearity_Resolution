L=[2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019];
a0 =       104.6
       a1 =      -36.05
       b1 =       6.733
       a2 =       42.56
       b2 =       21.22
       a3 =      -15.68
       b3 =      -9.408
       w =      0.1941
       i=1;
       for x=2000:1:2019
f(i) =  a0 + a1*cos(x*w) + b1*sin(x*w) + a2*cos(2*x*w) + b2*sin(2*x*w) + a3*cos(3*x*w) + b3*sin(3*x*w)
i=i+1
       end
       