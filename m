Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9742BD7B
	for <lists+usrp-users@lfdr.de>; Tue, 28 May 2019 05:06:47 +0200 (CEST)
Received: from [::1] (port=35730 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hVSRk-0008Ad-E9; Mon, 27 May 2019 23:06:40 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:37162)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <neel.pandeya@ettus.com>)
 id 1hVSRC-0007wS-Rv
 for usrp-users@lists.ettus.com; Mon, 27 May 2019 23:06:36 -0400
Received: by mail-ot1-f46.google.com with SMTP id r10so16395771otd.4
 for <usrp-users@lists.ettus.com>; Mon, 27 May 2019 20:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=kvLxEtGJhBN0qZtNLW3rJT2YG2UHSfi1oU7PnYjdAAU=;
 b=KOvcDvblD+yH6+4cQF3htqN0vD2VLwF1A/ndB13xKM+vx8DGpv9Lqlbj4Gj+LCUSOY
 9zxN+8ONZs/h7rULqC0j4FwLmB9NSxWCah8vZFrwrdE4R7x5/zdpCPVBa5sO2+8Ppxa1
 1uj0HinWThnLN8n88vm7rmfpQERDXrKPe8ofa/0ohEX8s2hn7CnBEPD40YcomwKKfRo0
 aQeaYrWvquto2H9x/MO6M6borYZAzqtVUQ0m696eEtF2lnYvbzsoDZPPz7t3F/lxmcyd
 phBGuNbAHp2jDWQ4O7a/RTGnj0fnRUQo2tM0B4j9wc3h68WYb8ozodKsIajmYKomKrxK
 LtCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=kvLxEtGJhBN0qZtNLW3rJT2YG2UHSfi1oU7PnYjdAAU=;
 b=lalzGys0yHHKwwoYL9K1wITBg8a6/1lx8E2RJsav0uoiI7BxWtTEldsAxppYAEIr0l
 03nXBC6w93IjM/iQsucY+XdZWG6tJcEdB7YDFXajib8RtuBPCDOeuhXRTxPcwHtvobRf
 y9tm5HyHsmvHthXI+56+l1+pv06IG4imS4AJhnX0YsRoE1dxPr6p+5uzxl9t36OrQuWO
 8dzYGtdhmKaTOR5RSyQc3y/U1ha5jkZJqMUfxnzSxhgddojy/aUuORBbWWxehMY2RPnO
 aHzG++MlPf3J6q9G2G4qnqBOkqcmfkVfCV2T1bw8eqQdjbne6JpJHdP6S4bFL+VCnlLR
 M93Q==
X-Gm-Message-State: APjAAAXy0lh0i63ZDruyQNNYPmkguYYMG5X++DNx7xUWdQmYuOwWh49F
 uWnLPTk5Cxq2RpWRlN1xcgKLgFtK1d9yjVFHspZi9VnUWQaGZQ==
X-Google-Smtp-Source: APXvYqxyOyOILsXq+nsGXRj8snxu+t/wSgsh3t/SOMrWEI/UsvmbyWNUR4fZsC7MNKp/bA8Copr9ZMC3Q0oDaavZw3I=
X-Received: by 2002:a9d:526:: with SMTP id 35mr12003368otw.163.1559012725784; 
 Mon, 27 May 2019 20:05:25 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 27 May 2019 22:05:09 -0500
Message-ID: <CACaXmv_ZOb+prAPiFJ=01aX379yOwPq0AmFSEiSDqogcQMKV0Q@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] NEWSDR in Boston on Thr/Fri June 13/14 (in two weeks)
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
Content-Type: multipart/mixed; boundary="===============0425807220641176211=="
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

--===============0425807220641176211==
Content-Type: multipart/alternative; boundary="000000000000b88bf90589e9ef7a"

--000000000000b88bf90589e9ef7a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

*********************************************************************
                        *** NEWSDR 2019 ***

                      * Coming in Two Weeks *

                         Free Registration

    Offering technical Workshops, Symposium, Poster Presentations

                     Call for Poster Presentations

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

--000000000000b88bf90589e9ef7a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default"><span style=3D"font-family:co=
urier new,monospace">******************************************************=
***************<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 *** NEWSDR 2019 ***<br><br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * Coming in Two We=
eks *<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0Free Registration<br><br>=C2=A0 =C2=A0 Offering=
 technical Workshops, Symposium, Poster Presentations<br><br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Call for Post=
er Presentations<br><br>***************************************************=
******************<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NEWSDR 2019<br><br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0New England Workshop on Software Defi=
ned Radio<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Ninth Annual<br><br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Technical Workshops<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Thursday June 13<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A016:00 to 21:00<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Symposium<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0Friday June 14<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A007:45 to =
16:45<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Univer=
sity of Massachusetts at Boston<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 100 William T Morrissey Blvd<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 B=
oston, MA, 02125, USA<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://www.sdr-boston.org/">http=
://www.sdr-boston.org/</a><br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Free Registration<br><br>=
*********************************************************************<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0INVITATION TO PARTICIPATE<br><br>You are cordially invited to the 2019 N=
ew England Workshop on<br>Software Defined Radio (NEWSDR 2019), which is th=
e ninth installment<br>of an annual series of symposium and workshop events=
 organized by<br>the Boston SDR User Group (SDR-Boston).<br><br>This year, =
NEWSDR will be held at University of Massachusetts<br>at Boston. It consist=
s of a day-long symposium on Friday,<br>as well as several hands-on short c=
ourses the evening before<br>on Thursday. You are welcome to attend either =
or both events,<br>which are entirely free.<br><br>Attendance is typically =
about 100 people, and attendees come from<br>both academia and industry.<br=
><br>*********************************************************************<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0WORKSHOPS<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Thursday=
 June 13<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A016:00 to 21:00<br><br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 Agenda<br><br>16:00 to 17:00 =C2=A0 Pizza/Soda and Attendee N=
etworking<br><br>17:00 to 21:00 =C2=A0 Workshop Events<br><br>Two workshops=
 are being offered in parallel:<br><br>* &quot;Intro to the AD9361 via the =
PLUTO SDR, Linux&#39;s IIO, and Open-Source<br>=C2=A0 =C2=A0Toolchains&quot=
; by Analog Devices<br><br>* &quot;FPGA Programming on the USRP with the RF=
NoC Framework&quot;<br>=C2=A0 =C2=A0by Ettus Research / National Instrument=
s<br><br>Analog Devices and Ettus Research will each run a short course<br>=
the evening before the main event. Short courses are technical,<br>practica=
l, hands-on activities. Attendance is free, but advance<br>registration is =
required. Free pizza and soda will be provided.<br><br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-----=
---------------<br>Title:<br>FPGA Programming on the USRP using the RFNoC F=
ramework<br><br>Abstract:<br>The RFNoC (RF Network-on-Chip) software framew=
ork from Ettus<br>Research is meant to decrease the development time for ex=
perienced<br>FPGA engineers seeking to integrate IP into the USRP signal<br=
>processing chain. RFNoC is the architecture for USRP devices that<br>use X=
ilinx 7-series FPGAs (E310, E312, E320, X300, X310, N310, N320).<br>RFNoC i=
s built around a packetized network infrastructure in the FPGA<br>that hand=
les the transport of control and sample data between the<br>host CPU and th=
e radio. Users target their custom algorithms to the<br>FPGA in the form of=
 Computation Engines (CE), which are processing<br>blocks that attach to th=
is network. CEs act as independent nodes on<br>the network that can receive=
 and transmit data to any other node<br>(e.g., another CE, the radio block,=
 or the host CPU). Users can create<br>modular, FPGA-accelerated SDR applic=
ations by chaining CEs into a flow<br>graph. RFNoC is supported in UHD and =
GNU Radio. In this workshop, we<br>will present an interactive hands-on tut=
orial on RFNoC, including a<br>discussion on its design and capabilities, d=
emonstrations of several<br>existing examples, and a walk-through on implem=
enting a user-defined<br>CE and integrating the CE into both UHD and GNU Ra=
dio.<br><br>Prerequisites:<br>Attendees should have some previous experienc=
e with Linux and using<br>the Linux command line, and basic familiarity wit=
h a programming<br>language such as C, C++, or Python, and have basic under=
standing<br>of fundamental concepts in DSP and RF. Attendees should also ha=
ve<br>some basic familiarity with Verilog. Extensive or deep experience<br>=
with these topics is not necessary.<br><br>Attendees do not have to bring a=
ny USRP radios or laptop computers.<br>All necessary hardware and software =
will be provided in the workshop.<br><br>Attendees may optionally bring the=
ir own laptops and/or radios for use<br>in the workshop. Please contact &qu=
ot;<a href=3D"mailto:support@ettus.com">support@ettus.com</a>&quot; for spe=
cific<br>setup and configuration requirements.<br><br>*********************=
************************************************<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0SYMPOSIUM<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Friday June 14<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A007:45 to 16:45<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Tentative Agenda<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (please check the =
website for updates)<br><br>07:45 =E2=80=93 08:30 =C2=A0 Registration, Coff=
ee,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Light Breakf=
ast, Attendee Networking<br><br>08:30 =E2=80=93 08:45 =C2=A0 Welcome and In=
troduction<br><br>08:45 =E2=80=93 10:00 =C2=A0 Corporate Sponsor Presentati=
ons<br><br>10:00 =E2=80=93 10:30 =C2=A0 Poster Presenter Elevator Pitches<b=
r><br>10:30 =E2=80=93 11:00 =C2=A0 Network Session, Coffee,<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Poster Sessions,Sponsor Exhib=
its/Demos<br><br>11:00 =E2=80=93 11:45 =C2=A0 Technical Presentation from M=
athWorks:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;=
Modulation Classification with Deep Learning&quot;<br><br>11:45 =E2=80=93 1=
3:00 =C2=A0 Lunch, Networking, Poster Sessions,<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Sponsor Exhibits/Demos<br><br>13:00 =E2=80=
=93 14:00 =C2=A0 Invited Talk by Professor Pau Closas,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Northeastern University<br><br>14:00=
 =E2=80=93 14:45 =C2=A0 Technical Presentation from MediaTek:<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;5G NR-U =E2=80=93 &#39;=
Houston, we have a problem here&#39;&quot;<br><br>14:45 =E2=80=93 15:15 =C2=
=A0 Network Session, Coffee, Poster Sessions,<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Sponsor Exhibits/Demos<br><br>15:15 =E2=80=
=93 16:15 =C2=A0 Invited Talk by Professor Vuk Marojevic,<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mississippi State University<br><=
br>16:15 =E2=80=93 16:30 =C2=A0 Award Announcements<br><br>16:30 =E2=80=93 =
16:45 =C2=A0 Closing Remarks<br><br>Technical Poster Presentations:<br>=C2=
=A0* Covering the recent work in SDR and cognitive radio technology<br>=C2=
=A0* Poster presentations are now being solicited<br>=C2=A0* See link at th=
e bottom of this email to submit your abstract<br><br>Corporate Sponsors (t=
entative):<br>=C2=A0* MathWorks<br>=C2=A0* Mediatek<br>=C2=A0* Analog Devic=
es<br>=C2=A0* Ettus Research / National Instruments<br>=C2=A0* University o=
f Massachusetts at Boston,<br>=C2=A0 =C2=A0College of Sciences and Mathemat=
ics<br><br>The symposium features plenary speakers, technical poster<br>pre=
sentation sessions, hardware and software demonstrations from the<br>event =
sponsors, and workshops from the event sponsors, all focusing<br>on recent =
work in SDR and cognitive radio technology. Free breakfast,<br>lunch, and c=
offee will be provided. Attendance is free, but advance<br>registration is =
required.<br><br>The symposium provides an excellent networking opportunity=
 and a<br>terrific venue to exchange thoughts and ideas with other people<b=
r>working in the SDR space.<br><br>****************************************=
*****************************<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0REGISTRATION<br><br>=
* Register for the Symposium, or the Workshop, or both.<br><br>* Registrati=
on is required but is completely free,<br>=C2=A0 and includes free food.<br=
><br>* Attendance and food are limited, so please register<br>=C2=A0 online=
 as soon as possible to secure your spot.<br><br>* Attendee Event Registrat=
ion deadline is Friday May 31.<br><br>* Poster Abstract Submission deadline=
 is Friday May 31.<br><br>* See links below to register online.<br><br>****=
*****************************************************************<br>=C2=A0=
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

--000000000000b88bf90589e9ef7a--


--===============0425807220641176211==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0425807220641176211==--

