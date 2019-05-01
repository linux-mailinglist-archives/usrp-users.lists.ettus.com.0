Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 071E610567
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2019 08:06:32 +0200 (CEST)
Received: from [::1] (port=41570 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hLiNr-0002ah-IC; Wed, 01 May 2019 02:06:23 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:39972)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <neel.pandeya@ettus.com>)
 id 1hLiNJ-0002UX-SY
 for usrp-users@lists.ettus.com; Wed, 01 May 2019 02:06:19 -0400
Received: by mail-ot1-f48.google.com with SMTP id w6so14082708otl.7
 for <usrp-users@lists.ettus.com>; Tue, 30 Apr 2019 23:05:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=ZvUfAWlRNqo3V8nXFhe6g35Lu629RyuuMv1bfJt2EmE=;
 b=dvQNl4SOQSfgvRj/eQw8Oyk2lYMsdIH75dHy+ntNDIlTuBBEoPg9Mm7pM61ewvcdtO
 6hTYc8hwVJ+JJ+y2dmN+Pem0Bk1pNOnWZPRsmvpNv1c17gwfzcFe2SnXvAA9KG+ZYgag
 JEXEZqj8LFLdDiyVkmL0ZfWONW/MZEscKjOKlHedL7AdjgUYZHczb/dpOdRkzgvkud+L
 Mg20UOXmBDX0Sc2fMYMBUBYUrf37S5T1nroiEI2PEbY4ZAtakx4I3KLgtlsAddnwd9CS
 h6kyHeepsvljpO+RsuECPI+YYjAqessgyPy53zWXfkkqL19nGoIBcHbtX524uU3DF8rk
 6SMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ZvUfAWlRNqo3V8nXFhe6g35Lu629RyuuMv1bfJt2EmE=;
 b=K+oNeDe4JZiHIVnrzFgYwg2TjiPRb4yQNFgIVydA5UF14Pu/VpCUA5c0bwBeCPw2+x
 do23FODpJKtDhSUkqOyxnCgddktcHEBh799PFvQ02KdLcaKJEc3QzwgcoB3yrfyd6uOG
 DmY/3x45U5/XTZ+8d7m1C5rsfx0aSXvUV0ya985AFRJ0OTQZrTKXi0zpQc2rtfp2NbAQ
 jiJc6P/I+QH1qohm2A1SIudzWdlUwJCiCjRdW9yv6uCDrWIX7OoRqk5D4jUIFtl/8GT6
 /asfQ/5NqWpM46y3xvDWBk0lGbfz/O73RFsbwuXGoWCT7AdRYpdBOPXlQcqbVLynNU3U
 W++Q==
X-Gm-Message-State: APjAAAVL3zdvtoBKezWXXXy7NddOI8Cnf86+vu3JH0NVBSn89R6McYfx
 pGqygRANyD4mhc6oHObiEkebnXLOGyGW4EfJ5bO5AcZ+0iba3A==
X-Google-Smtp-Source: APXvYqwkDE+bgWVEFhp3ox8lJeRZarNtX083hwgjgauDVAah7alAcHg0+Wh7BHypuJNmYjX6cXOZyNLkJwnRKNsbMmg=
X-Received: by 2002:a9d:7f0b:: with SMTP id j11mr35565905otq.132.1556690708614; 
 Tue, 30 Apr 2019 23:05:08 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 1 May 2019 01:04:52 -0500
Message-ID: <CACaXmv-UW0aE1hVuXQ2fPR90Z7uNrnWLRsiXm-yb6b_iit4r9Q@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] Announcing GNU Radio and RFNoC Workshops in Columbia,
 Maryland
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
Content-Type: multipart/mixed; boundary="===============0013754699836937653=="
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

--===============0013754699836937653==
Content-Type: multipart/alternative; boundary="000000000000b6641f0587cd4c83"

--000000000000b6641f0587cd4c83
Content-Type: text/plain; charset="UTF-8"

======================================================================
         *** Announcing GNU Radio and RFNoC Workshops ***

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
Coffee and donuts will be provided at 08:00
Lunch will be provided at around 12:00

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

--000000000000b6641f0587cd4c83
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default"><font size=
=3D"2"><span style=3D"font-family:monospace,monospace">=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 *** Announcing GNU Radio and RFNoC Workshops ***<br><=
br>=C2=A0=C2=A0=C2=A0=C2=A0 Ettus Research will be running a series of free=
, hands-on,<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 technical worksho=
ps, and you are welcome to attend!<br><br>Location:<br>National Instruments=
<br>7125 Thomas Edison Drive, Suite 200<br>Columbia, Maryland, 21046, USA<b=
r><br>Dates:<br>Tuesday May 14 -- GNU Radio Workshop<br>Wednesday May 15 --=
 RFNoC Workshop<br><br>Workshops will run from 09:00 to 17:00<br>Coffee and=
 donuts will be provided at 08:00<br>Lunch will be provided at around 12:00=
<br><br>Registration is required in advance, but is completely free:<br><a =
href=3D"https://events.ni.com/profile/form/index.cfm?PKformID=3D0x380818abc=
d">https://events.ni.com/profile/form/index.cfm?PKformID=3D0x380818abcd</a>=
<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>GN=
U Radio Workshop Description:<br><br>Full Title:<br>Introduction to the USR=
P, UHD, and GNU Radio (Open-Source Toolchain)<br><br>Abstract:<br>This work=
shop will provide a thorough and practical introduction to<br>the USRP hard=
ware and the open-source software toolchain (UHD and<br>GNU Radio). We will=
 examine the hardware and architecture of the<br>entire USRP family of soft=
ware-defined radios. We will discuss topics<br>such as how to get started u=
sing a new USRP device, how to install and<br>configure the open-source sof=
tware toolchain, programming the USRP<br>using the UHD API from C++, using =
GNU Radio with the USRP and creating<br>and running flowgraphs, using GNU R=
adio from both GRC and Python, and<br>various debugging techniques. Several=
 exercises will be performed,<br>such as implementing an FM transmitter and=
 receiver. Various<br>demonstrations of wireless systems will be shown. A d=
iscussion of the<br>embedded E310 radio and using embedded SDR will be incl=
uded. Several<br>other open-source tools will be discussed, such as GQRX, F=
osphor,<br>Inspectrum, and several Out-of-Tree (OOT) modules. A discussion =
of<br>cellular applications, including OpenBTS and LTE stacks, as well as<b=
r>GPS/GNSS applications will be presented. Several other miscellaneous<br>t=
opics such as 10 Gigabit Ethernet networking, host system performance<br>tu=
ning, X300/X310 device recovery, and some best practices will be<br>discuss=
ed. Attendees should come away with a solid foundation and<br>practical und=
erstanding of how to configure, program, and use the USRP<br>to implement a=
 wide range range of wireless systems.<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>RFNoC Workshop Description:<br><br>Ful=
l Title:<br>FPGA Programming on the USRP with the RFNoC Framework<br><br>Ab=
stract:<br>Ettus Research&#39;s RFNoC (RF Network-on-Chip) software framewo=
rk is<br>designed to decrease the development time for experienced FPGA<br>=
engineers seeking to integrate IP into the USRP FPGA signal<br>processing c=
hain. RFNoC is the framework for USRP devices that use<br>Xilinx 7-series F=
PGAs (E310, E312, X300, X310). RFNoC is built around<br>a packetized networ=
k infrastructure in the FPGA that handles the<br>transport of control and s=
ample data between the host CPU and the<br>radio. Users target their custom=
 algorithms to the FPGA in the form<br>of Computation Engines (CE), which a=
re processing blocks that attach<br>to this network. CEs act as independent=
 nodes on the network that can<br>receive and transmit data to any other no=
de (e.g., another CE, the<br>radio block, or the host CPU).=C2=A0 Users can=
 create modular,<br>FPGA-accelerated SDR applications by chaining CEs into =
a flow graph.<br>RFNoC is supported in UHD and GNU Radio. In this workshop,=
 we will<br>present an interactive hands-on tutorial on RFNoC, including a<=
br>discussion on its design and capabilities, demonstrations of several<br>=
existing examples, and a walk-through on implementing a user-defined<br>CE =
and integrating the CE into GNU Radio.<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>Details and Logistics:<br><br>* The wo=
rkshops are free, technical, and hands-on.<br><br>* Laptop computers and US=
RP radios will be provided in the workshop.<br>=C2=A0 Attendees do not need=
 to bring or prepare anything.<br><br>* Attendees may optionally bring thei=
r own equipment.<br>=C2=A0 Contact &quot;<a href=3D"mailto:support@ettus.co=
m">support@ettus.com</a>&quot; for specific setup requirements.<br><br>* Fo=
r the USRP/GNU Radio Workshop, attendees should have some previous<br>exper=
ience with Linux and using the Linux command line, and basic<br>familiarity=
 with a programming language such as C, C++, or Python,<br>and basic fundam=
ental concepts in DSP and RF. For the RFNoC Workshop,<br>attendees should a=
lso have some basic familiarity with Verilog.<br>Extensive or deep experien=
ce with these topics is not necessary.<br><br>* Space is limited and will b=
e allocated<br>=C2=A0 on a first-come,first-serve basis.<br><br>* Registrat=
ion is required in advance, but is completely free.<br><a href=3D"https://e=
vents.ni.com/profile/form/index.cfm?PKformID=3D0x380818abcd">https://events=
.ni.com/profile/form/index.cfm?PKformID=3D0x380818abcd</a><br><br>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 We look forwar=
d to seeing you there!!<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<br><br><br></span></font></div></div></div>

--000000000000b6641f0587cd4c83--


--===============0013754699836937653==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0013754699836937653==--

