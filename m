Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCDF318D3
	for <lists+usrp-users@lfdr.de>; Sat,  1 Jun 2019 02:51:39 +0200 (CEST)
Received: from [::1] (port=48228 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hWsFC-0008W2-FQ; Fri, 31 May 2019 20:51:34 -0400
Received: from mail-oi1-f182.google.com ([209.85.167.182]:33972)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <neel.pandeya@ettus.com>)
 id 1hWsF9-0008Gk-GK
 for usrp-users@lists.ettus.com; Fri, 31 May 2019 20:51:31 -0400
Received: by mail-oi1-f182.google.com with SMTP id u64so9097761oib.1
 for <usrp-users@lists.ettus.com>; Fri, 31 May 2019 17:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=xbGHO+xrQm0HRspWOe5yIFiBkNrmJnS8R/sLJ8Fcg2s=;
 b=WChHM2o8RbHXqsiBB0zxXXD+WfgM0SZzghS6B7R792Gz6g9UtBuYAk33QmiNUllRIR
 2ZqZGbuIYADIO+aDgSv155jPPwBp1zrrOcehCfiXjblQ+2umCBtrbJO2xKq2KjSURfU1
 iTZMcrSBDF36YhpM1doi91x0sM42sXXgM8/8dvwKuA/6Em4kJJGcNaj1jNR+XqTCQmzp
 UnRNJECv0yeR2IA0jJNRRKYYuONk+ynZhZqTwGMMO5Jikx47HCC+Zyo0MORsdJMk/7E7
 ynaZcJ+UV/I6sQ3fTKqfyd7dppUPK+UmYKay6qwyf6xkDecNG07TwmXWdT0/DjhprhdD
 WPwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=xbGHO+xrQm0HRspWOe5yIFiBkNrmJnS8R/sLJ8Fcg2s=;
 b=pZWiiSGwka1xCYG754uUaZF6xLry/zFp4mQKqAUZV6VPb7jSRFfTjjzvMNpMD/nQnw
 pVhU0/Ggdj1omwrD8Mv+hgYzGS2sqmysz+ge1XNnWYxGopu7KzDlj3z7ca0NeM91c8gt
 gJ0vrDjuCSFPufI+7DY6WEquGq/xPvIzDk8ljvgImyMR6PjRLKLrrZlRp5BuqbnPqjPB
 znKy/gvO3VXdqMrI/2w/THlKk2WPCYYdX3hFH9HaAIw4snV+Dh+cLkjfZcTeYb2R9BHc
 VlTeWCr7MYKthav2pxY/F9f+s8RclOSIMbZijDiYuBdOQCJxfi5kKUxL8HwQjsd2A+xO
 soQw==
X-Gm-Message-State: APjAAAVNph+GAxKVirVpQBpMeBQhhuY+RbhW2UdKaM+WEgnOdu9BU70V
 lXu8nsIty7IKAuKO82DJ1O6LVJAnzZAf/wSPM7QCAJPwtZeSFg==
X-Google-Smtp-Source: APXvYqwmkmq+Q+xCGco4k3rMtldD0tKjxh+wMqrM1ee6rCLWdQBU7lSw3hdp3PY+PW8WkSvnzxBiWjhA/FI7Pn29Qzw=
X-Received: by 2002:aca:d548:: with SMTP id m69mr952725oig.19.1559350250297;
 Fri, 31 May 2019 17:50:50 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 31 May 2019 19:50:34 -0500
Message-ID: <CACaXmv8uojZ+=xF499myvz3Y4LDoMOdGKMLwNv52153hJEHBnw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] GNU Radio & RFNoC Workshops in Boston on June 11 & 13
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
Content-Type: multipart/mixed; boundary="===============3098881244044561649=="
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

--===============3098881244044561649==
Content-Type: multipart/alternative; boundary="000000000000bff1a4058a388540"

--000000000000bff1a4058a388540
Content-Type: text/plain; charset="UTF-8"

======================================================================
            *** Announcing Workshops in the Boston Area ***

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

--000000000000bff1a4058a388540
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default"><span style=3D"font-family:co=
urier new,monospace">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *** Announcing Workshop=
s in the Boston Area ***<br><br>=C2=A0 =C2=A0 =C2=A0Ettus Research will be =
running two free, hands-on, technical<br>=C2=A0 =C2=A0 =C2=A0workshops in t=
he Boston area, and you are welcome to attend!<br><br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 GNU R=
adio Workshop<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Tuesday June 11<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Woburn, Massachusetts<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RFNoC Workshop<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0Thursday June 13<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NEWSDR at UMass-Boston=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 Boston, Massachusetts<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*** GNU Radio Workshop ***<br><br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0Tuesday June 11<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A009:00 to 17:00<b=
r><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 National Instruments<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 800 Cummings Park Drive<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 Woburn, MA 01801<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0(I-93, Exit 36, Washington Street)<br><br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Breakfast and Set-up start at 08=
:30<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Worksh=
op runs from 09:00 to 17:00<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0To register, please send email to:<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot=
;<a href=3D"mailto:haydn.nelson@ni.com">haydn.nelson@ni.com</a>&quot;<br><b=
r>Full Title:<br>Introduction to the USRP, UHD, and GNU Radio (Open-Source =
Toolchain)<br><br>Abstract:<br>This workshop will provide a thorough and pr=
actical introduction to<br>the USRP hardware and the open-source software t=
oolchain (UHD and<br>GNU Radio). We will examine the hardware and architect=
ure of the<br>entire USRP family of software-defined radios. We will discus=
s topics<br>such as how to get started using a new USRP device, how to inst=
all and<br>configure the open-source software toolchain, programming the US=
RP<br>using the UHD API from C++, using GNU Radio with the USRP and creatin=
g<br>and running flowgraphs, using GNU Radio from both GRC and Python, and<=
br>various debugging techniques. Several exercises will be performed,<br>su=
ch as implementing an FM transmitter and receiver. Various<br>demonstration=
s of wireless systems will be shown. A discussion of the<br>embedded E310 r=
adio and using embedded SDR will be included. Several<br>other open-source =
tools will be discussed, such as GQRX, Fosphor,<br>Inspectrum, and several =
Out-of-Tree (OOT) modules. A discussion of<br>cellular applications, includ=
ing OpenBTS and LTE stacks, as well as<br>GPS/GNSS applications will be pre=
sented. Several other miscellaneous<br>topics such as 10 Gigabit Ethernet n=
etworking, host system performance<br>tuning, X300/X310 device recovery, an=
d some best practices will be<br>discussed. Attendees should come away with=
 a solid foundation and<br>practical understanding of how to configure, pro=
gram, and use the USRP<br>to implement a wide range range of wireless syste=
ms.<br><br>Prerequisites:<br>Attendees do not need to bring any USRP radios=
 or laptop computers.<br>All necessary hardware and software will be provid=
ed in the workshop.<br><br>Attendees should have some previous experience w=
ith Linux and using<br>the Linux command line, and basic familiarity with a=
 programming<br>language such as C, C++, or Python, and have basic understa=
nding of<br>fundamental concepts in DSP and RF. Extensive or deep experienc=
e with<br>these topics is not necessary.<br><br>Attendees may bring their o=
wn equipment.<br>Please contact &quot;<a href=3D"mailto:support@ettus.com">=
support@ettus.com</a>&quot; for specific setup requirements.<br><br><br>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*** RF=
NoC Workshop ***<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Thursday June 13<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 16:00 to 21:00<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Run as part of NEWSDR<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"h=
ttp://www.sdr-boston.org/">http://www.sdr-boston.org/</a><br>=C2=A0 <a href=
=3D"http://ecewp.ece.wpi.edu/wordpress/sdr-boston/workshops/newsdr-19/">htt=
p://ecewp.ece.wpi.edu/wordpress/sdr-boston/workshops/newsdr-19/</a><br><br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Unive=
rsity of Massachusetts Boston<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 100 William T Morrissey Blvd<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 Boston, MA 02125<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 Pizza/Soda and Set-up start at 16:00<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Workshop runs from 17:00 to 2=
1:00<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 To register, please register=
 with the NEWSDR event.<br><br>Full Title:<br>FPGA Programming on the USRP =
with the RFNoC Framework<br><br>Abstract:<br>Ettus Research&#39;s RFNoC (RF=
 Network-on-Chip) software framework is<br>designed to decrease the develop=
ment time for experienced FPGA<br>engineers seeking to integrate IP into th=
e USRP FPGA signal<br>processing chain. RFNoC is the framework for USRP dev=
ices that use<br>Xilinx 7-series FPGAs (E310, E312, X300, X310). RFNoC is b=
uilt around<br>a packetized network infrastructure in the FPGA that handles=
 the<br>transport of control and sample data between the host CPU and the<b=
r>radio. Users target their custom algorithms to the FPGA in the form<br>of=
 Computation Engines (CE), which are processing blocks that attach<br>to th=
is network. CEs act as independent nodes on the network that can<br>receive=
 and transmit data to any other node (e.g., another CE, the<br>radio block,=
 or the host CPU).=C2=A0 Users can create modular,<br>FPGA-accelerated SDR =
applications by chaining CEs into a flow graph.<br>RFNoC is supported in UH=
D and GNU Radio. In this workshop, we will<br>present an interactive hands-=
on tutorial on RFNoC, including a<br>discussion on its design and capabilit=
ies, demonstrations of several<br>existing examples, and a walk-through on =
implementing a user-defined<br>CE and integrating the CE into GNU Radio.<br=
><br>Prerequisites:<br>Attendees do not need to bring any USRP radios or la=
ptop computers.<br>All necessary hardware and software will be provided in =
the workshop.<br><br>Attendees should have some previous experience with Li=
nux and using<br>the Linux command line, and basic familiarity with a progr=
amming<br>language such as C, C++, or Python, and have basic understanding =
of<br>fundamental concepts in DSP and RF. Attendees should also have some<b=
r>basic familiarity with Verilog. Extensive or deep experience with<br>thes=
e topics is not necessary.<br><br>Attendees may bring their own equipment.<=
br>Please contact &quot;<a href=3D"mailto:support@ettus.com">support@ettus.=
com</a>&quot; for specific setup requirements.<br><br>=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>Details and Logistics:<br><br>* =
The workshops are free, technical, and hands-on.<br><br>* Registration is r=
equired in advance, but is completely free.<br><br>* Space is limited and w=
ill be allocated on a first-come,<br>=C2=A0 first-serve basis.<br><br>* You=
r registration information will be kept private,<br>=C2=A0 and will not be =
shared with any third-party whatsoever.<br>=C2=A0 <br>* Registration for th=
e GNU Radio Workshop and the RFNoC Workshop<br>=C2=A0 is done separately, a=
s the RFNoC Workshop is part of the NEWSDR<br>=C2=A0 event, but the GNU Rad=
io Workshop is not.<br><br>* For questions, please email &quot;<a href=3D"m=
ailto:support@ettus.com">support@ettus.com</a>&quot;.<br><br>* We look forw=
ard to seeing you!!<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 EOF<br>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br><br></span></div></div>

--000000000000bff1a4058a388540--


--===============3098881244044561649==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3098881244044561649==--

