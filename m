Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 016193B763
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jun 2019 16:30:43 +0200 (CEST)
Received: from [::1] (port=52428 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1haLJq-0004ko-2z; Mon, 10 Jun 2019 10:30:42 -0400
Received: from mail-oi1-f180.google.com ([209.85.167.180]:44273)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <neel.pandeya@ettus.com>)
 id 1haLJm-0004WS-Cc
 for usrp-users@lists.ettus.com; Mon, 10 Jun 2019 10:30:38 -0400
Received: by mail-oi1-f180.google.com with SMTP id e189so6358986oib.11
 for <usrp-users@lists.ettus.com>; Mon, 10 Jun 2019 07:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=TWzP7OVIlZPLSjXOJbtlM9jwHwit7CwzqkncASYeOuk=;
 b=odudd+MtBa0js11XzC+h2nAH66XLwaJMnV+mpP3IIVjP29fTP6sC8/I8zuDf8mpr0o
 3nmVZ63ZghoN+Qk+gjK9DOyyymMq3Rg6i5BtpXJDEy33WSHp/Twj634KzMD4ykPDvMtb
 ILRTK+EJw7hoPmCDoOqujRk8FL26rqcFkkSLwV6OzDeonmib2KQ74amv9PXE3WNyWbOa
 5IpwNe6J6cQpP0CKFVSR7wJOef0roYdX3JXxi4JQDGuyQqbGc1JunmpjGSFEG5UfUun0
 8Zq1kzp4AdR1oNMssQQ8A6FjBkNwDKiICh/ubzkmQ8mn1VOuI2xG2i3/+IuD/pKWBbUS
 U0EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=TWzP7OVIlZPLSjXOJbtlM9jwHwit7CwzqkncASYeOuk=;
 b=mEnTxYwX2t5k6rE1kKQ4gLFGZQWVUt6uNkGVoFZ6nQKsPBgCVBPmqNlLWba2BZco/W
 DD3I4CSR08nGXko18WlBCmQwEFZHgVd9ZPMD4eFwN6VUhDEoAby1JPPF8WJg+8G8xCJg
 Jar59s8U7UrjCFrNfrkND7pvE/tuqtdasQCgbtC/6dwkL7rxTxQ3/pwy2V2Zt1OewVRs
 5dYXP5Le/k9RpqGrH3YOWX5KKcm7zlpnQXtnCLghqq4KTNuGAlR/Ag7flRn28gbmatXJ
 4bUIJSGYOnBS9VGVMIYgNV7xzwJ8FF/9R1rz5a2vXJLW+ySvV5Y9rm9TokZaGT9sXKSJ
 B4cA==
X-Gm-Message-State: APjAAAV9pf8B3mVRS+djvbvU6eRee9ELAyiRzvXn0OoNMcnXLscXqu6w
 5X9LkYJqGQ2uqB7M3St+qjC5GDbHDRusJa90mgF54CMqUqlPmw==
X-Google-Smtp-Source: APXvYqw8BWNl0E3I2AKAWyBfCG/ORJ6N7m1jbFLGfHEgST8eRNcdfMMBfNkUKRig0vijGjuzmKzl2uCji6sNQdZHCTE=
X-Received: by 2002:aca:fc92:: with SMTP id a140mr5315335oii.19.1560176997400; 
 Mon, 10 Jun 2019 07:29:57 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 10 Jun 2019 09:29:40 -0500
Message-ID: <CACaXmv-eFOheDse1KOxFF40zckAjCgwsB9s2zKxaH5Jsz4xoJA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] GNU Radio & RFNoC Workshops in Boston This Week
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
Content-Type: multipart/mixed; boundary="===============4238019926326220507=="
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

--===============4238019926326220507==
Content-Type: multipart/alternative; boundary="000000000000b78f65058af903ac"

--000000000000b78f65058af903ac
Content-Type: text/plain; charset="UTF-8"

======================================================================
            *** Announcing Workshops in the Boston Area ***

                * Tomorrow (Tuesday) -and- Thursday *

     Ettus Research will be running two free, hands-on, technical
     workshops in the Boston area, and you are welcome to attend!

                          GNU Radio Workshop
                            Tuesday June 11
                         Woburn, Massachusetts

                            RFNoC Workshop
                           Thursday June 13
                        NEWSDR at UMass-Boston
                        Boston, Massachusetts

======================================================================
                     *** GNU Radio Workshop ***

                           Tuesday June 11
                           09:00 to 17:00

                        National Instruments
                      800 Cummings Park Drive
                          Woburn, MA 01801
                 (I-93, Exit 36, Washington Street)

                Breakfast and Set-up start at 08:30
                 Workshop runs from 09:00 to 17:00

                 To register, please send email to:
                       "haydn.nelson@ni.com"

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

Prerequisites:
Attendees do not need to bring any USRP radios or laptop computers.
All necessary hardware and software will be provided in the workshop.

Attendees should have some previous experience with Linux and using
the Linux command line, and basic familiarity with a programming
language such as C, C++, or Python, and have basic understanding of
fundamental concepts in DSP and RF. Extensive or deep experience with
these topics is not necessary.

Attendees may bring their own equipment.
Please contact "support@ettus.com" for specific setup requirements.


======================================================================
                       *** RFNoC Workshop ***

                         Thursday June 13
                          16:00 to 21:00

                        Run as part of NEWSDR
                      http://www.sdr-boston.org/
  http://ecewp.ece.wpi.edu/wordpress/sdr-boston/workshops/newsdr-19/

                    University of Massachusetts Boston
                      100 William T Morrissey Blvd
                          Boston, MA 02125

                Pizza/Soda and Set-up start at 16:00
                  Workshop runs from 17:00 to 21:00

          To register, please register with the NEWSDR event.

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

Prerequisites:
Attendees do not need to bring any USRP radios or laptop computers.
All necessary hardware and software will be provided in the workshop.

Attendees should have some previous experience with Linux and using
the Linux command line, and basic familiarity with a programming
language such as C, C++, or Python, and have basic understanding of
fundamental concepts in DSP and RF. Attendees should also have some
basic familiarity with Verilog. Extensive or deep experience with
these topics is not necessary.

Attendees may bring their own equipment.
Please contact "support@ettus.com" for specific setup requirements.

======================================================================
Details and Logistics:

* The workshops are free, technical, and hands-on.

* Registration is required in advance, but is completely free.

* Space is limited and will be allocated on a first-come,
  first-serve basis.

* Your registration information will be kept private,
  and will not be shared with any third-party whatsoever.

* Registration for the GNU Radio Workshop and the RFNoC Workshop
  is done separately, as the RFNoC Workshop is part of the NEWSDR
  event, but the GNU Radio Workshop is not.

* For questions, please email "support@ettus.com".

* We look forward to seeing you!!

======================================================================
                                EOF
======================================================================

--000000000000b78f65058af903ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default"><span style=3D"font-family:co=
urier new,monospace">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *** Announcing Workshop=
s in the Boston Area ***<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 * Tomorrow (Tuesday) -and- Thursday *<br><br>=C2=A0 =C2=A0 =
=C2=A0Ettus Research will be running two free, hands-on, technical<br>=C2=
=A0 =C2=A0 =C2=A0workshops in the Boston area, and you are welcome to atten=
d!<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 GNU Radio Workshop<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 T=
uesday June 11<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Woburn, Massachusetts<br><br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 RFNoC Workshop<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Thursday June 13<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 NEWSDR at UMass-Boston<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Boston, Massachusetts<br><br>=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*** GNU R=
adio Workshop ***<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Tuesday June 11<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A009:00 to 17:00<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 National Instruments<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 800 Cummings Park Drive<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Woburn, MA 01801<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(I-93, Exit 36, Was=
hington Street)<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Breakfast and Set-up start at 08:30<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Workshop runs from 09:00 to 17:00<br><br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0To register, ple=
ase send email to:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<a href=3D"mailto:haydn.nelson@ni.com"=
>haydn.nelson@ni.com</a>&quot;<br><br>Full Title:<br>Introduction to the US=
RP, UHD, and GNU Radio (Open-Source Toolchain)<br><br>Abstract:<br>This wor=
kshop will provide a thorough and practical introduction to<br>the USRP har=
dware and the open-source software toolchain (UHD and<br>GNU Radio). We wil=
l examine the hardware and architecture of the<br>entire USRP family of sof=
tware-defined radios. We will discuss topics<br>such as how to get started =
using a new USRP device, how to install and<br>configure the open-source so=
ftware toolchain, programming the USRP<br>using the UHD API from C++, using=
 GNU Radio with the USRP and creating<br>and running flowgraphs, using GNU =
Radio from both GRC and Python, and<br>various debugging techniques. Severa=
l exercises will be performed,<br>such as implementing an FM transmitter an=
d receiver. Various<br>demonstrations of wireless systems will be shown. A =
discussion of the<br>embedded E310 radio and using embedded SDR will be inc=
luded. Several<br>other open-source tools will be discussed, such as GQRX, =
Fosphor,<br>Inspectrum, and several Out-of-Tree (OOT) modules. A discussion=
 of<br>cellular applications, including OpenBTS and LTE stacks, as well as<=
br>GPS/GNSS applications will be presented. Several other miscellaneous<br>=
topics such as 10 Gigabit Ethernet networking, host system performance<br>t=
uning, X300/X310 device recovery, and some best practices will be<br>discus=
sed. Attendees should come away with a solid foundation and<br>practical un=
derstanding of how to configure, program, and use the USRP<br>to implement =
a wide range range of wireless systems.<br><br>Prerequisites:<br>Attendees =
do not need to bring any USRP radios or laptop computers.<br>All necessary =
hardware and software will be provided in the workshop.<br><br>Attendees sh=
ould have some previous experience with Linux and using<br>the Linux comman=
d line, and basic familiarity with a programming<br>language such as C, C++=
, or Python, and have basic understanding of<br>fundamental concepts in DSP=
 and RF. Extensive or deep experience with<br>these topics is not necessary=
.<br><br>Attendees may bring their own equipment.<br>Please contact &quot;<=
a href=3D"mailto:support@ettus.com">support@ettus.com</a>&quot; for specifi=
c setup requirements.<br><br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*** RFNoC Workshop ***<br><br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Thursday June 13<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16:00 to 21:00<br><br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Run a=
s part of NEWSDR<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://www.sdr-boston.org/">http://www.sdr=
-boston.org/</a><br>=C2=A0 <a href=3D"http://ecewp.ece.wpi.edu/wordpress/sd=
r-boston/workshops/newsdr-19/">http://ecewp.ece.wpi.edu/wordpress/sdr-bosto=
n/workshops/newsdr-19/</a><br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 University of Massachusetts Boston<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 100 W=
illiam T Morrissey Blvd<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Boston, MA 02125<br><br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Pizza/Soda and Set-up star=
t at 16:00<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Workshop runs from 17:00 to 21:00<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 To register, please register with the NEWSDR event.<br><br>Full Titl=
e:<br>FPGA Programming on the USRP with the RFNoC Framework<br><br>Abstract=
:<br>Ettus Research&#39;s RFNoC (RF Network-on-Chip) software framework is<=
br>designed to decrease the development time for experienced FPGA<br>engine=
ers seeking to integrate IP into the USRP FPGA signal<br>processing chain. =
RFNoC is the framework for USRP devices that use<br>Xilinx 7-series FPGAs (=
E310, E312, X300, X310). RFNoC is built around<br>a packetized network infr=
astructure in the FPGA that handles the<br>transport of control and sample =
data between the host CPU and the<br>radio. Users target their custom algor=
ithms to the FPGA in the form<br>of Computation Engines (CE), which are pro=
cessing blocks that attach<br>to this network. CEs act as independent nodes=
 on the network that can<br>receive and transmit data to any other node (e.=
g., another CE, the<br>radio block, or the host CPU).=C2=A0 Users can creat=
e modular,<br>FPGA-accelerated SDR applications by chaining CEs into a flow=
 graph.<br>RFNoC is supported in UHD and GNU Radio. In this workshop, we wi=
ll<br>present an interactive hands-on tutorial on RFNoC, including a<br>dis=
cussion on its design and capabilities, demonstrations of several<br>existi=
ng examples, and a walk-through on implementing a user-defined<br>CE and in=
tegrating the CE into GNU Radio.<br><br>Prerequisites:<br>Attendees do not =
need to bring any USRP radios or laptop computers.<br>All necessary hardwar=
e and software will be provided in the workshop.<br><br>Attendees should ha=
ve some previous experience with Linux and using<br>the Linux command line,=
 and basic familiarity with a programming<br>language such as C, C++, or Py=
thon, and have basic understanding of<br>fundamental concepts in DSP and RF=
. Attendees should also have some<br>basic familiarity with Verilog. Extens=
ive or deep experience with<br>these topics is not necessary.<br><br>Attend=
ees may bring their own equipment.<br>Please contact &quot;<a href=3D"mailt=
o:support@ettus.com">support@ettus.com</a>&quot; for specific setup require=
ments.<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<br>Details and Logistics:<br><br>* The workshops are free, technical, and =
hands-on.<br><br>* Registration is required in advance, but is completely f=
ree.<br><br>* Space is limited and will be allocated on a first-come,<br>=
=C2=A0 first-serve basis.<br><br>* Your registration information will be ke=
pt private,<br>=C2=A0 and will not be shared with any third-party whatsoeve=
r.<br>=C2=A0 <br>* Registration for the GNU Radio Workshop and the RFNoC Wo=
rkshop<br>=C2=A0 is done separately, as the RFNoC Workshop is part of the N=
EWSDR<br>=C2=A0 event, but the GNU Radio Workshop is not.<br><br>* For ques=
tions, please email &quot;<a href=3D"mailto:support@ettus.com">support@ettu=
s.com</a>&quot;.<br><br>* We look forward to seeing you!!<br><br>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 EOF<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br><br></span></div></div>

--000000000000b78f65058af903ac--


--===============4238019926326220507==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4238019926326220507==--

