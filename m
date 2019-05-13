Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D89091AEB9
	for <lists+usrp-users@lfdr.de>; Mon, 13 May 2019 03:31:52 +0200 (CEST)
Received: from [::1] (port=37014 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hPzog-0005qm-Ux; Sun, 12 May 2019 21:31:46 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:39120)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <neel.pandeya@ettus.com>)
 id 1hPzo8-0005ly-Kf
 for usrp-users@lists.ettus.com; Sun, 12 May 2019 21:31:42 -0400
Received: by mail-ot1-f51.google.com with SMTP id r7so5793394otn.6
 for <usrp-users@lists.ettus.com>; Sun, 12 May 2019 18:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=3X0Y8d87AC5f85Losa53DJ6j+wbwV8Zx5wGgBFsA+FQ=;
 b=ezgz+XGq4E8gtjB8ixnHg8NE0SfaJoiYtBlCrL++ouFZl25ddfkHnpcUu849fm7ovJ
 B0iaj1PoX2cZdEgKcU1wY6qet3pCoPcZq2XW8LFQxlYfpLw0x9AtGqhiE/3NRWI7sdJN
 VF5r3Em7pKIzieiXjG5Jx1zxYNVqzfI80dTpmp8e4mBQdVIZeid2lT5rcXWXO37XDmhq
 mqN5TQX++nb2rfY9w9mQnsyNrswXIK4ogaG18N+c+a61hBJK1YBI04LSjyQ56sL+nMPy
 gz+CGxbKIIhib6ZtnKamWC9zUeZNg+AOIolypVLz9DPKiDvNv6A6J96794vDc1u0j2at
 3Bhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=3X0Y8d87AC5f85Losa53DJ6j+wbwV8Zx5wGgBFsA+FQ=;
 b=MQlpdZiky2GwPZK6bxggTFAjI04eTCz+De+njC97VV2/iAVqxTXVEIO8L5PRsUu0Jo
 VvbuG0B+zX6bRXWfzopRa2YMe5fza5TM/rspvls/AHVYELXYUpWq9UfY9jUbCUn3LoZE
 1mLIAnUrRSF1fhHKk+tmJt4adpYaMdeujgLcZ6H/ydPGMB0B9jZ505yL8Kr5LKPsp1iM
 me2/iz99kyNcNBphzEC7Q9qAHMaMtXCYSzYmW851F4blDPCr+0VGayjJ6yIsjE9Nm4CO
 zrDYLaXRJEpVfpsmVbRtExhkpHhrV5x6FvvPSMCIon+KFpptxfvMa54DPVWz4Yw/N13h
 QB/Q==
X-Gm-Message-State: APjAAAUC4ffQBxCIndyTHgcpDpP6Yn6QQc+EkepkWYygcFSbUYHrRDw/
 wcVoz25LEKyN9hSei+TbCoewLKxxrkXqlIwo0EBIxrwn+uQPcA==
X-Google-Smtp-Source: APXvYqwL42//C4QgRvQL3kEtN2j75xpFpX5eC+4uyb2Ip+h/cwGgKNtGhDqdQFDXxUFLfaiQvjol+Pt3eZl8V8zoayw=
X-Received: by 2002:a05:6830:2085:: with SMTP id
 y5mr5065271otq.68.1557711031585; 
 Sun, 12 May 2019 18:30:31 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 12 May 2019 20:30:15 -0500
Message-ID: <CACaXmv9VRzgAMhcnDDQPOfX=gC6Q3yY3Y-4yjb_0-uzkax3Zxg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] GNU Radio and RFNoC Workshops in Columbia Maryland
 This Week
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Content-Type: multipart/mixed; boundary="===============4887385129734953725=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============4887385129734953725==
Content-Type: multipart/alternative; boundary="000000000000b360810588badce6"

--000000000000b360810588badce6
Content-Type: text/plain; charset="UTF-8"

======================================================================
         *** Announcing GNU Radio and RFNoC Workshops ***

                         ** This Week **

     Ettus Research will be running a series of free, hands-on,
        technical workshops, and you are welcome to attend!

Location:
National Instruments
7125 Thomas Edison Drive, Suite 200
Columbia, Maryland, 21046, USA

Dates:
Tuesday May 14 -- GNU Radio Workshop
Wednesday May 15 -- RFNoC Workshop

Workshops will run from 09:00 to 17:00

Registration is required in advance, but is completely free:
https://events.ni.com/profile/form/index.cfm?PKformID=0x380818abcd

======================================================================
GNU Radio Workshop Description:

Full Title:
Introduction to the USRP, UHD, and GNU Radio (Open-Source Toolchain)

Abstract:
This workshop will provide a thorough and practical introduction to
the USRP hardware and the open-source software toolchain (UHD and
GNU Radio). We will examine the hardware and architecture of the
entire USRP family of software-defined radios. We will discuss topics
such as how to get started using a new USRP device, how to install and
configure the open-source software toolchain, programming the USRP
using the UHD API from C++, using GNU Radio with the USRP and creating
and running flowgraphs, using GNU Radio from both GRC and Python, and
various debugging techniques. Several exercises will be performed,
such as implementing an FM transmitter and receiver. Various
demonstrations of wireless systems will be shown. A discussion of the
embedded E310 radio and using embedded SDR will be included. Several
other open-source tools will be discussed, such as GQRX, Fosphor,
Inspectrum, and several Out-of-Tree (OOT) modules. A discussion of
cellular applications, including OpenBTS and LTE stacks, as well as
GPS/GNSS applications will be presented. Several other miscellaneous
topics such as 10 Gigabit Ethernet networking, host system performance
tuning, X300/X310 device recovery, and some best practices will be
discussed. Attendees should come away with a solid foundation and
practical understanding of how to configure, program, and use the USRP
to implement a wide range range of wireless systems.

======================================================================
RFNoC Workshop Description:

Full Title:
FPGA Programming on the USRP with the RFNoC Framework

Abstract:
Ettus Research's RFNoC (RF Network-on-Chip) software framework is
designed to decrease the development time for experienced FPGA
engineers seeking to integrate IP into the USRP FPGA signal
processing chain. RFNoC is the framework for USRP devices that use
Xilinx 7-series FPGAs (E310, E312, X300, X310). RFNoC is built around
a packetized network infrastructure in the FPGA that handles the
transport of control and sample data between the host CPU and the
radio. Users target their custom algorithms to the FPGA in the form
of Computation Engines (CE), which are processing blocks that attach
to this network. CEs act as independent nodes on the network that can
receive and transmit data to any other node (e.g., another CE, the
radio block, or the host CPU).  Users can create modular,
FPGA-accelerated SDR applications by chaining CEs into a flow graph.
RFNoC is supported in UHD and GNU Radio. In this workshop, we will
present an interactive hands-on tutorial on RFNoC, including a
discussion on its design and capabilities, demonstrations of several
existing examples, and a walk-through on implementing a user-defined
CE and integrating the CE into GNU Radio.

======================================================================
Details and Logistics:

* The workshops are free, technical, and hands-on.

* Laptop computers and USRP radios will be provided in the workshop.
  Attendees do not need to bring or prepare anything.

* Attendees may optionally bring their own equipment.
  Contact "support@ettus.com" for specific setup requirements.

* For the USRP/GNU Radio Workshop, attendees should have some previous
experience with Linux and using the Linux command line, and basic
familiarity with a programming language such as C, C++, or Python,
and basic fundamental concepts in DSP and RF. For the RFNoC Workshop,
attendees should also have some basic familiarity with Verilog.
Extensive or deep experience with these topics is not necessary.

* Space is limited and will be allocated
  on a first-come,first-serve basis.

* Registration is required in advance, but is completely free.
https://events.ni.com/profile/form/index.cfm?PKformID=0x380818abcd

======================================================================
              We look forward to seeing you there!!

======================================================================

--000000000000b360810588badce6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default"><span style=
=3D"font-family:courier new,monospace">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 *** Announcing GNU Radio and RFNoC Workshops ***<br><br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ** This Week **<br><=
br>=C2=A0=C2=A0=C2=A0=C2=A0 Ettus Research will be running a series of free=
, hands-on,<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 technical worksho=
ps, and you are welcome to attend!<br><br>Location:<br>National Instruments=
<br>7125 Thomas Edison Drive, Suite 200<br>Columbia, Maryland, 21046, USA<b=
r><br>Dates:<br>Tuesday May 14 -- GNU Radio Workshop<br>Wednesday May 15 --=
 RFNoC Workshop<br><br>Workshops will run from 09:00 to 17:00<br><br>Regist=
ration is required in advance, but is completely free:<br><a href=3D"https:=
//events.ni.com/profile/form/index.cfm?PKformID=3D0x380818abcd">https://eve=
nts.ni.com/profile/form/index.cfm?PKformID=3D0x380818abcd</a><br><br>=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>GNU Radio Worksho=
p Description:<br><br>Full Title:<br>Introduction to the USRP, UHD, and GNU=
 Radio (Open-Source Toolchain)<br><br>Abstract:<br>This workshop will provi=
de a thorough and practical introduction to<br>the USRP hardware and the op=
en-source software toolchain (UHD and<br>GNU Radio). We will examine the ha=
rdware and architecture of the<br>entire USRP family of software-defined ra=
dios. We will discuss topics<br>such as how to get started using a new USRP=
 device, how to install and<br>configure the open-source software toolchain=
, programming the USRP<br>using the UHD API from C++, using GNU Radio with =
the USRP and creating<br>and running flowgraphs, using GNU Radio from both =
GRC and Python, and<br>various debugging techniques. Several exercises will=
 be performed,<br>such as implementing an FM transmitter and receiver. Vari=
ous<br>demonstrations of wireless systems will be shown. A discussion of th=
e<br>embedded E310 radio and using embedded SDR will be included. Several<b=
r>other open-source tools will be discussed, such as GQRX, Fosphor,<br>Insp=
ectrum, and several Out-of-Tree (OOT) modules. A discussion of<br>cellular =
applications, including OpenBTS and LTE stacks, as well as<br>GPS/GNSS appl=
ications will be presented. Several other miscellaneous<br>topics such as 1=
0 Gigabit Ethernet networking, host system performance<br>tuning, X300/X310=
 device recovery, and some best practices will be<br>discussed. Attendees s=
hould come away with a solid foundation and<br>practical understanding of h=
ow to configure, program, and use the USRP<br>to implement a wide range ran=
ge of wireless systems.<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<br>RFNoC Workshop Description:<br><br>Full Title:<br>FPG=
A Programming on the USRP with the RFNoC Framework<br><br>Abstract:<br>Ettu=
s Research&#39;s RFNoC (RF Network-on-Chip) software framework is<br>design=
ed to decrease the development time for experienced FPGA<br>engineers seeki=
ng to integrate IP into the USRP FPGA signal<br>processing chain. RFNoC is =
the framework for USRP devices that use<br>Xilinx 7-series FPGAs (E310, E31=
2, X300, X310). RFNoC is built around<br>a packetized network infrastructur=
e in the FPGA that handles the<br>transport of control and sample data betw=
een the host CPU and the<br>radio. Users target their custom algorithms to =
the FPGA in the form<br>of Computation Engines (CE), which are processing b=
locks that attach<br>to this network. CEs act as independent nodes on the n=
etwork that can<br>receive and transmit data to any other node (e.g., anoth=
er CE, the<br>radio block, or the host CPU).=C2=A0 Users can create modular=
,<br>FPGA-accelerated SDR applications by chaining CEs into a flow graph.<b=
r>RFNoC is supported in UHD and GNU Radio. In this workshop, we will<br>pre=
sent an interactive hands-on tutorial on RFNoC, including a<br>discussion o=
n its design and capabilities, demonstrations of several<br>existing exampl=
es, and a walk-through on implementing a user-defined<br>CE and integrating=
 the CE into GNU Radio.<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<br>Details and Logistics:<br><br>* The workshops are fre=
e, technical, and hands-on.<br><br>* Laptop computers and USRP radios will =
be provided in the workshop.<br>=C2=A0 Attendees do not need to bring or pr=
epare anything.<br><br>* Attendees may optionally bring their own equipment=
.<br>=C2=A0 Contact &quot;<a href=3D"mailto:support@ettus.com">support@ettu=
s.com</a>&quot; for specific setup requirements.<br><br>* For the USRP/GNU =
Radio Workshop, attendees should have some previous<br>experience with Linu=
x and using the Linux command line, and basic<br>familiarity with a program=
ming language such as C, C++, or Python,<br>and basic fundamental concepts =
in DSP and RF. For the RFNoC Workshop,<br>attendees should also have some b=
asic familiarity with Verilog.<br>Extensive or deep experience with these t=
opics is not necessary.<br><br>* Space is limited and will be allocated<br>=
=C2=A0 on a first-come,first-serve basis.<br><br>* Registration is required=
 in advance, but is completely free.<br><a href=3D"https://events.ni.com/pr=
ofile/form/index.cfm?PKformID=3D0x380818abcd">https://events.ni.com/profile=
/form/index.cfm?PKformID=3D0x380818abcd</a><br><br>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 We look forward to seeing you=
 there!!<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br><br><br></span></div></div></div>

--000000000000b360810588badce6--


--===============4887385129734953725==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4887385129734953725==--

