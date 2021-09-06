FROM ubuntu
RUN apt-get update
RUN apt-get install -y gnupg software-properties-common curl figlet
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN apt-get update && apt-get install -y terraform sudo
RUN useradd -d /home/user1/ -m -p FworD1STh3BesTGuYsYeahTruStM3 -s /bin/bash user1
RUN echo "user1:FworD1STh3BesTGuYsYeahTruStM3" | chpasswd
RUN useradd -d /home/user-privileged/ -m -p Fw0rd1SOuRPriD3_1mFedUpGuySBrrWhatAtAsk -s /bin/bash user-privileged
RUN echo "user-privileged:Fw0rd1SOuRPriD3_1mFedUpGuySBrrWhatAtAsk" | chpasswd
RUN chown root:user1 /home/user1/
COPY flag.txt /home/user1/
WORKDIR /home/user1
COPY devops.sh .
RUN chown root:user-privileged /home/user1/devops.sh
RUN chmod 755 /home/user1/devops.sh
RUN chmod 1775 /home/user1/
RUN chown root:user-privileged /home/user1/flag.txt
RUN chmod 740 /home/user1/flag.txt
COPY sudoers /etc/
USER user1
CMD /bin/bash
