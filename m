Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 476433B377
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jun 2019 12:52:50 +0200 (CEST)
Received: from [::1] (port=47878 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1haHut-0002OC-A9; Mon, 10 Jun 2019 06:52:43 -0400
Received: from mail-oi1-f175.google.com ([209.85.167.175]:38693)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <neel.pandeya@ettus.com>)
 id 1haHup-0002Ig-Bt
 for usrp-users@lists.ettus.com; Mon, 10 Jun 2019 06:52:39 -0400
Received: by mail-oi1-f175.google.com with SMTP id v186so5888907oie.5
 for <usrp-users@lists.ettus.com>; Mon, 10 Jun 2019 03:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=A/KQIg1myZqCYPAECLyrvPNo5W6yNFwLnFS8Qnw7g/g=;
 b=FAWvYi2u/0IZCi3iR/x1p5W3sam0GUmP40OWUp2grRDFugE6kPokMC5aPMCP4eZeDp
 ixKDMzC3j+c/IhHl54S8x4+7stoj2WVhVYFEwEl4OXbhyVAyDf5KhmCflYdhAwel6pUy
 ITekYyurBp3U1SFgOGUUEUhQsCnOTThMoRVl1Qp+rNdB8slKM2yHoFLHHZmoLi6TMdEZ
 QPcr0U6ZJBBH2eOOe5eTlzGxEOXYYTKfhaaNhc6zBSblQrs+vElxic+UMM56VEIX9zva
 2tYy0lScIO4HU2g6KWeVanpEKbOXQwjXgWHZ+xA2wKyvwt+hs3DRBiF4bRrRBenzHCMs
 OwEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=A/KQIg1myZqCYPAECLyrvPNo5W6yNFwLnFS8Qnw7g/g=;
 b=iBp/bhSJfKdE0TBd/HPJBFzhhhrPRe90hp5D9eyId/k54/WzW63WhmqNgLMLEddR2u
 wx33hfhaHzfXVqlpl3tCTTucZS+lISnP8kaPQATXwfhV+GIc4HqPTUYxyKbNpgLRSK45
 Q+LXT1KP2HCnMWwYA/dFnWoi8cYBtPEKHQcNcq+jPxUN1yZjkOSrPPgFtGm6tfyuXo72
 BEe2xy2/vz7okApOVxpYdF+Fkakxgb6GCzWR+Zgtl4n/KABb93NXmIsGNAw9op8vMDip
 S8D/lISqPq/4W4G2LsjDhQTY1ehaBcyrN2mOBhJ+rVOWnC6iGfVxqmF/pqnk7e4NkFja
 Im8A==
X-Gm-Message-State: APjAAAWBHXfaT7ot1vgIErSsiUb493lYvktw9kl3aE48YD0WLTMr7ZOs
 W5qilAQQugsUpTd+KhtQSOsCP3cV+D4ZIBNkPrhngJ/fevMhRg==
X-Google-Smtp-Source: APXvYqzTXnOMm6TMa19BwNhpKxM2QP5isJxP+x+hNfVwE3MzlHvG/CjOUeOygBAvTF1qNR0Y+fEYIi+q+/Mha5nuPYM=
X-Received: by 2002:aca:90c:: with SMTP id 12mr11756275oij.91.1560163918133;
 Mon, 10 Jun 2019 03:51:58 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 10 Jun 2019 05:51:41 -0500
Message-ID: <CACaXmv8-6uwU2tNMgedK1joqcWpQFP-CoJj7jG8D7g=Z2jrkOg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] NEWSDR in Boston -- This Week!
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
Content-Type: multipart/mixed; boundary="===============3377762025874358385=="
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

--===============3377762025874358385==
Content-Type: multipart/alternative; boundary="00000000000021ce84058af5f8fd"

--00000000000021ce84058af5f8fd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

*********************************************************************
                        *** NEWSDR 2019 ***

                         ** This Week **

                        Free Registration

                Space is tight, so register today

       Walk-ins welcome but advance registration much preferred

*********************************************************************
                            NEWSDR 2019

             New England Workshop on Software Defined Radio

                           Ninth Annual

                         Technical Workshops
                          Thursday June 13
                           16:00 to 21:00

                             Symposium
                           Friday June 14
                           07:45 to 16:45

                University of Massachusetts at Boston
                    100 William T Morrissey Blvd
                        Boston, MA, 02125, USA

                      http://www.sdr-boston.org/

                          Free Registration

*********************************************************************
                     INVITATION TO PARTICIPATE

You are cordially invited to the 2019 New England Workshop on
Software Defined Radio (NEWSDR 2019), which is the ninth installment
of an annual series of symposium and workshop events organized by
the Boston SDR User Group (SDR-Boston).

This year, NEWSDR will be held at University of Massachusetts
at Boston. It consists of a day-long symposium on Friday,
as well as several hands-on short courses the evening before
on Thursday. You are welcome to attend either or both events,
which are entirely free.

Attendance is typically about 100 people, and attendees come from
both academia and industry.

*********************************************************************
                             WORKSHOPS

                          Thursday June 13
                           16:00 to 21:00

                              Agenda

16:00 to 17:00   Pizza/Soda and Attendee Networking

17:00 to 21:00   Workshop Events

Two workshops are being offered in parallel:

* "Intro to the AD9361 via the PLUTO SDR, Linux's IIO, and Open-Source
   Toolchains" by Analog Devices

* "FPGA Programming on the USRP with the RFNoC Framework"
   by Ettus Research / National Instruments

Analog Devices and Ettus Research will each run a short course
the evening before the main event. Short courses are technical,
practical, hands-on activities. Attendance is free, but advance
registration is required. Free pizza and soda will be provided.

                         --------------------
Title:
FPGA Programming on the USRP using the RFNoC Framework

Abstract:
The RFNoC (RF Network-on-Chip) software framework from Ettus
Research is meant to decrease the development time for experienced
FPGA engineers seeking to integrate IP into the USRP signal
processing chain. RFNoC is the architecture for USRP devices that
use Xilinx 7-series FPGAs (E310, E312, E320, X300, X310, N310, N320).
RFNoC is built around a packetized network infrastructure in the FPGA
that handles the transport of control and sample data between the
host CPU and the radio. Users target their custom algorithms to the
FPGA in the form of Computation Engines (CE), which are processing
blocks that attach to this network. CEs act as independent nodes on
the network that can receive and transmit data to any other node
(e.g., another CE, the radio block, or the host CPU). Users can create
modular, FPGA-accelerated SDR applications by chaining CEs into a flow
graph. RFNoC is supported in UHD and GNU Radio. In this workshop, we
will present an interactive hands-on tutorial on RFNoC, including a
discussion on its design and capabilities, demonstrations of several
existing examples, and a walk-through on implementing a user-defined
CE and integrating the CE into both UHD and GNU Radio.

Prerequisites:
Attendees should have some previous experience with Linux and using
the Linux command line, and basic familiarity with a programming
language such as C, C++, or Python, and have basic understanding
of fundamental concepts in DSP and RF. Attendees should also have
some basic familiarity with Verilog. Extensive or deep experience
with these topics is not necessary.

Attendees do not have to bring any USRP radios or laptop computers.
All necessary hardware and software will be provided in the workshop.

Attendees may optionally bring their own laptops and/or radios for use
in the workshop. Please contact "support@ettus.com" for specific
setup and configuration requirements.

*********************************************************************
                             SYMPOSIUM

                           Friday June 14
                           07:45 to 16:45

                          Tentative Agenda
                (please check the website for updates)

07:45 =E2=80=93 08:30   Registration, Coffee,
                Light Breakfast, Attendee Networking

08:30 =E2=80=93 08:45   Welcome and Introduction

08:45 =E2=80=93 10:00   Corporate Sponsor Presentations

10:00 =E2=80=93 10:30   Poster Presenter Elevator Pitches

10:30 =E2=80=93 11:00   Network Session, Coffee,
                Poster Sessions,Sponsor Exhibits/Demos

11:00 =E2=80=93 11:45   Technical Presentation from MathWorks:
                "Modulation Classification with Deep Learning"

11:45 =E2=80=93 13:00   Lunch, Networking, Poster Sessions,
                Sponsor Exhibits/Demos

13:00 =E2=80=93 14:00   Invited Talk by Professor Pau Closas,
                Northeastern University

14:00 =E2=80=93 14:45   Technical Presentation from MediaTek:
                "5G NR-U =E2=80=93 'Houston, we have a problem here'"

14:45 =E2=80=93 15:15   Network Session, Coffee, Poster Sessions,
                Sponsor Exhibits/Demos

15:15 =E2=80=93 16:15   Invited Talk by Professor Vuk Marojevic,
                Mississippi State University

16:15 =E2=80=93 16:30   Award Announcements

16:30 =E2=80=93 16:45   Closing Remarks

Technical Poster Presentations:
 * Covering the recent work in SDR and cognitive radio technology
 * Poster presentations are now being solicited
 * See link at the bottom of this email to submit your abstract

Corporate Sponsors (tentative):
 * MathWorks
 * Mediatek
 * Analog Devices
 * Ettus Research / National Instruments
 * University of Massachusetts at Boston,
   College of Sciences and Mathematics

The symposium features plenary speakers, technical poster
presentation sessions, hardware and software demonstrations from the
event sponsors, and workshops from the event sponsors, all focusing
on recent work in SDR and cognitive radio technology. Free breakfast,
lunch, and coffee will be provided. Attendance is free, but advance
registration is required.

The symposium provides an excellent networking opportunity and a
terrific venue to exchange thoughts and ideas with other people
working in the SDR space.

*********************************************************************
                           REGISTRATION

* Register for the Symposium, or the Workshop, or both.

* Registration is required but is completely free,
  and includes free food.

* Attendance and food are limited, so please register
  online as soon as possible to secure your spot.

* Attendee Event Registration deadline is Friday May 31.

* Poster Abstract Submission deadline is Friday May 31.

* See links below to register online.

*********************************************************************
                               LINKS

Attendee Event Registration:
https://forms.gle/FdSV3tTrqVEK6cDg7

Poster Abstract Submission:
https://forms.gle/xsRusPS2rJHnNqSXA

*********************************************************************
                      ADDITIONAL INFORMATION

      More details and information can be found at our website:

                    http://www.sdr-boston.org/

*********************************************************************
                                EOF
*********************************************************************

--00000000000021ce84058af5f8fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default"><span style=3D"font-family:co=
urier new,monospace">******************************************************=
***************<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 *** NEWSDR 2019 ***<br><br>=C2=A0 =C2=A0=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ** Th=
is Week **<br><br>=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 Free Registration</span></div><div class=
=3D"gmail_default"><span style=3D"font-family:courier new,monospace"><br></=
span></div><div class=3D"gmail_default"><span style=3D"font-family:courier =
new,monospace"><span style=3D"font-family:courier new,monospace">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Space is tight, so register today</span></span></div><div class=3D"g=
mail_default"><span style=3D"font-family:courier new,monospace"><span style=
=3D"font-family:courier new,monospace"><br></span></span></div><div class=
=3D"gmail_default"><span style=3D"font-family:courier new,monospace"><span =
style=3D"font-family:courier new,monospace"><span style=3D"font-family:cour=
ier new,monospace">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Walk-ins welcome bu=
t advance registration much preferred</span></span></span></div><div class=
=3D"gmail_default"><br><span style=3D"font-family:courier new,monospace"></=
span></div><div class=3D"gmail_default"><span style=3D"font-family:courier =
new,monospace">************************************************************=
*********<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NEWSDR 2019<br><br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0New England Workshop on Software Defined Radio<=
br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Ninth Annual<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Technical=
 Workshops<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Thursday June 13<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A016:00 to 21:00<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Symposium<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0Friday June 14<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A007:45 to 16:45<b=
r><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 University of=
 Massachusetts at Boston<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 100 William T Morrissey Blvd<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Boston, =
MA, 02125, USA<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://www.sdr-boston.org/">http://www.=
sdr-boston.org/</a><br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Free Registration<br><br>*******=
**************************************************************<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0INVITA=
TION TO PARTICIPATE<br><br>You are cordially invited to the 2019 New Englan=
d Workshop on<br>Software Defined Radio (NEWSDR 2019), which is the ninth i=
nstallment<br>of an annual series of symposium and workshop events organize=
d by<br>the Boston SDR User Group (SDR-Boston).<br><br>This year, NEWSDR wi=
ll be held at University of Massachusetts<br>at Boston. It consists of a da=
y-long symposium on Friday,<br>as well as several hands-on short courses th=
e evening before<br>on Thursday. You are welcome to attend either or both e=
vents,<br>which are entirely free.<br><br>Attendance is typically about 100=
 people, and attendees come from<br>both academia and industry.<br><br>****=
*****************************************************************<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0WORKSHOPS<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Thursday June 13<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A016:00 to 21:00<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Agenda<br><br>16:00 to 17:00 =C2=A0 Pizza/Soda and Attendee Networking<=
br><br>17:00 to 21:00 =C2=A0 Workshop Events<br><br>Two workshops are being=
 offered in parallel:<br><br>* &quot;Intro to the AD9361 via the PLUTO SDR,=
 Linux&#39;s IIO, and Open-Source<br>=C2=A0 =C2=A0Toolchains&quot; by Analo=
g Devices<br><br>* &quot;FPGA Programming on the USRP with the RFNoC Framew=
ork&quot;<br>=C2=A0 =C2=A0by Ettus Research / National Instruments<br><br>A=
nalog Devices and Ettus Research will each run a short course<br>the evenin=
g before the main event. Short courses are technical,<br>practical, hands-o=
n activities. Attendance is free, but advance<br>registration is required. =
Free pizza and soda will be provided.<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-------------=
-------<br>Title:<br>FPGA Programming on the USRP using the RFNoC Framework=
<br><br>Abstract:<br>The RFNoC (RF Network-on-Chip) software framework from=
 Ettus<br>Research is meant to decrease the development time for experience=
d<br>FPGA engineers seeking to integrate IP into the USRP signal<br>process=
ing chain. RFNoC is the architecture for USRP devices that<br>use Xilinx 7-=
series FPGAs (E310, E312, E320, X300, X310, N310, N320).<br>RFNoC is built =
around a packetized network infrastructure in the FPGA<br>that handles the =
transport of control and sample data between the<br>host CPU and the radio.=
 Users target their custom algorithms to the<br>FPGA in the form of Computa=
tion Engines (CE), which are processing<br>blocks that attach to this netwo=
rk. CEs act as independent nodes on<br>the network that can receive and tra=
nsmit data to any other node<br>(e.g., another CE, the radio block, or the =
host CPU). Users can create<br>modular, FPGA-accelerated SDR applications b=
y chaining CEs into a flow<br>graph. RFNoC is supported in UHD and GNU Radi=
o. In this workshop, we<br>will present an interactive hands-on tutorial on=
 RFNoC, including a<br>discussion on its design and capabilities, demonstra=
tions of several<br>existing examples, and a walk-through on implementing a=
 user-defined<br>CE and integrating the CE into both UHD and GNU Radio.<br>=
<br>Prerequisites:<br>Attendees should have some previous experience with L=
inux and using<br>the Linux command line, and basic familiarity with a prog=
ramming<br>language such as C, C++, or Python, and have basic understanding=
<br>of fundamental concepts in DSP and RF. Attendees should also have<br>so=
me basic familiarity with Verilog. Extensive or deep experience<br>with the=
se topics is not necessary.<br><br>Attendees do not have to bring any USRP =
radios or laptop computers.<br>All necessary hardware and software will be =
provided in the workshop.<br><br>Attendees may optionally bring their own l=
aptops and/or radios for use<br>in the workshop. Please contact &quot;<a hr=
ef=3D"mailto:support@ettus.com">support@ettus.com</a>&quot; for specific<br=
>setup and configuration requirements.<br><br>*****************************=
****************************************<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0SY=
MPOSIUM<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Friday June 14<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A007:45 to 16:45<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Tentative Agenda<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (please check the website =
for updates)<br><br>07:45 =E2=80=93 08:30 =C2=A0 Registration, Coffee,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Light Breakfast, At=
tendee Networking<br><br>08:30 =E2=80=93 08:45 =C2=A0 Welcome and Introduct=
ion<br><br>08:45 =E2=80=93 10:00 =C2=A0 Corporate Sponsor Presentations<br>=
<br>10:00 =E2=80=93 10:30 =C2=A0 Poster Presenter Elevator Pitches<br><br>1=
0:30 =E2=80=93 11:00 =C2=A0 Network Session, Coffee,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Poster Sessions,Sponsor Exhibits/Dem=
os<br><br>11:00 =E2=80=93 11:45 =C2=A0 Technical Presentation from MathWork=
s:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;Modulat=
ion Classification with Deep Learning&quot;<br><br>11:45 =E2=80=93 13:00 =
=C2=A0 Lunch, Networking, Poster Sessions,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Sponsor Exhibits/Demos<br><br>13:00 =E2=80=93 1=
4:00 =C2=A0 Invited Talk by Professor Pau Closas,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Northeastern University<br><br>14:00 =E2=
=80=93 14:45 =C2=A0 Technical Presentation from MediaTek:<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;5G NR-U =E2=80=93 &#39;Hous=
ton, we have a problem here&#39;&quot;<br><br>14:45 =E2=80=93 15:15 =C2=A0 =
Network Session, Coffee, Poster Sessions,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Sponsor Exhibits/Demos<br><br>15:15 =E2=80=93 1=
6:15 =C2=A0 Invited Talk by Professor Vuk Marojevic,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mississippi State University<br><br>=
16:15 =E2=80=93 16:30 =C2=A0 Award Announcements<br><br>16:30 =E2=80=93 16:=
45 =C2=A0 Closing Remarks<br><br>Technical Poster Presentations:<br>=C2=A0*=
 Covering the recent work in SDR and cognitive radio technology<br>=C2=A0* =
Poster presentations are now being solicited<br>=C2=A0* See link at the bot=
tom of this email to submit your abstract<br><br>Corporate Sponsors (tentat=
ive):<br>=C2=A0* MathWorks<br>=C2=A0* Mediatek<br>=C2=A0* Analog Devices<br=
>=C2=A0* Ettus Research / National Instruments<br>=C2=A0* University of Mas=
sachusetts at Boston,<br>=C2=A0 =C2=A0College of Sciences and Mathematics<b=
r><br>The symposium features plenary speakers, technical poster<br>presenta=
tion sessions, hardware and software demonstrations from the<br>event spons=
ors, and workshops from the event sponsors, all focusing<br>on recent work =
in SDR and cognitive radio technology. Free breakfast,<br>lunch, and coffee=
 will be provided. Attendance is free, but advance<br>registration is requi=
red.<br><br>The symposium provides an excellent networking opportunity and =
a<br>terrific venue to exchange thoughts and ideas with other people<br>wor=
king in the SDR space.<br><br>*********************************************=
************************<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0REGISTRATION<br><br>* R=
egister for the Symposium, or the Workshop, or both.<br><br>* Registration =
is required but is completely free,<br>=C2=A0 and includes free food.<br><b=
r>* Attendance and food are limited, so please register<br>=C2=A0 online as=
 soon as possible to secure your spot.<br><br>* Attendee Event Registration=
 deadline is Friday May 31.<br><br>* Poster Abstract Submission deadline is=
 Friday May 31.<br><br>* See links below to register online.<br><br>*******=
**************************************************************<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LINKS<br><br>Attendee Event Registration:<br=
><a href=3D"https://forms.gle/FdSV3tTrqVEK6cDg7">https://forms.gle/FdSV3tTr=
qVEK6cDg7</a><br><br>Poster Abstract Submission:<br><a href=3D"https://form=
s.gle/xsRusPS2rJHnNqSXA">https://forms.gle/xsRusPS2rJHnNqSXA</a><br><br>***=
******************************************************************<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 A=
DDITIONAL INFORMATION<br><br>=C2=A0 =C2=A0 =C2=A0 More details and informat=
ion can be found at our website:<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://www.sdr-boston.org/">h=
ttp://www.sdr-boston.org/</a><br><br>**************************************=
*******************************<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 E=
OF<br>*********************************************************************=
<br><br><br></span></div></div>

--00000000000021ce84058af5f8fd--


--===============3377762025874358385==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3377762025874358385==--

