FROM ubuntu
RUN apt-get upgrade
RUN apt-get update
RUN apt-get install -y sudo gcc
RUN useradd -d /home/user1/ -m -p "" -s /bin/bash user1
#RUN echo "user1:FworD1STh3BesTGuYsTruStM3" | chpasswd
RUN useradd -d /home/user-privileged/ -m -p Fw0rd1SOuRPriD3_1mFedUpGuySTruStM3Plz -s /bin/bash user-privileged
RUN echo "user-privileged:Fw0rd1SOuRPriD3_1mFedUpGuySTruStM3Plz" | chpasswd
RUN chown root:user1 /home/user1/
COPY flag.txt /home/user1/
WORKDIR /home/user1
COPY sealer .
RUN chown root:user-privileged /home/user1/sealer
RUN chmod 755 /home/user1/sealer
RUN chmod 1775 /home/user1/
RUN chmod u+s /home/user1/sealer
#RUN chmod u+s /usr/bin/nsenter
RUN chown root:user-privileged /home/user1/flag.txt
RUN chmod 740 /home/user1/flag.txt
USER user1
CMD /bin/bash
