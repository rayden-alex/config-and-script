::w32tm /monitor /computers:f.vgarant.by
w32tm /monitor /computers:time.nist.gov
w32tm /monitor /computers:ntp3.stratum2.ru
w32tm /stripchart /computer:1.by.pool.ntp.org /samples:5 /dataonly
W32tm /query /status /verbose
pause