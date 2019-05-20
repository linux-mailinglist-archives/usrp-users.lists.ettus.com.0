Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C48C242EC
	for <lists+usrp-users@lfdr.de>; Mon, 20 May 2019 23:38:16 +0200 (CEST)
Received: from [::1] (port=34294 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hSpz0-0007SS-3r; Mon, 20 May 2019 17:38:10 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:33616)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <neel.pandeya@ettus.com>)
 id 1hSpyS-0007OL-6B
 for usrp-users@lists.ettus.com; Mon, 20 May 2019 17:38:06 -0400
Received: by mail-ot1-f51.google.com with SMTP id 66so14455284otq.0
 for <usrp-users@lists.ettus.com>; Mon, 20 May 2019 14:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=BiJk0Jw+5ibcqNWupP99IgsbCthZGH+hI+DfES79G1Y=;
 b=UXwyAGWcB7xmx9x50do2Jlk9QWkKjJy/g4E8zgrCHjl1eVAJzbsTu9lJXdBcYvoFgS
 a85oAyjGl/CEjs3ASS4FQA1LD3zYdlixC9Dpic+pfoUfOfxZJezEQCsfc+J/sNg40PRr
 nYwc/tN0op34HH2wVbGk1yT8xqlsWGMR8dUWH2nvg2vyAd2w5fCtTPNAOLmTT/7JBORC
 jM/dfBTzy21Ir1dFIheXq/q+ZizAHecxdv5lJC4JxuBNFHQbmrriptFTY2xWLZs61YGY
 3Y0xFo8fZPKwWL9q7dTQTfhkZx15Ixq5XBN3zBieliGbaXmr2xSbFcdEOlflJhqLz8Mf
 G9hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=BiJk0Jw+5ibcqNWupP99IgsbCthZGH+hI+DfES79G1Y=;
 b=p+5TweRcRgIV0henzCSKaDvrVMiushVfIhL7/RmP2CxpjfCxFit/5a/tQGE4mN02xO
 n2oXywhK4uuVabyLTZE977YszvX0B9OrdE8ZyNtZ8JdFa9+CKCKNrSJj91g15yN90zOj
 R+c9KBTTRqq9UMJvzXX4N281BU1CDuc2Yb0c5k985jw34+McjfPsyPv9dpUrmYdjgeQ/
 rdlDlRwBrckxtQExRKEeaRm/evTgVC1+l2ViYlr9AaWtTsqyShDnnXpdpf7OSzkJl7d0
 4yBJEIjoRLkcW9pogxWXwax4qORfqR1YUi/cGicaoaO1TD8SvZc7uyeXgSaMt83dFhnV
 irMg==
X-Gm-Message-State: APjAAAX7dQ4Ck6oc4l0O8ehWGLxu85DHrwhn6DKUOYKIWrByNKbpALjZ
 upAnEP3+B70+FZtWrJq87LCN1DmhZ8Yab6XiyQM3tDQkq8t0+w==
X-Google-Smtp-Source: APXvYqwQJi7yDrSfMM1oWJSC31c5QFKoiWnHNNL6zZFN4dtFSJrKdt7+Ei3Vg1OSuiqcmEv8GuoZbevm8z4R3aZoDjc=
X-Received: by 2002:a9d:526:: with SMTP id 35mr43723842otw.163.1558388214946; 
 Mon, 20 May 2019 14:36:54 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 20 May 2019 16:36:38 -0500
Message-ID: <CACaXmv-RofeJUsTJceuNmo8z_zgDGZf3CH4kvtwdkk=H-uNQug@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] NEWSDR in Boston on Thr/Fri June 13/14 (in three weeks)
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
Content-Type: multipart/mixed; boundary="===============4334112411442153199=="
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

--===============4334112411442153199==
Content-Type: multipart/alternative; boundary="000000000000f97800058958871d"

--000000000000f97800058958871d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

*********************************************************************
                        *** NEWSDR 2019 ***

                         Free Registration

    Offering technical Workshops, Symposium, Poster Presentations

                         Call for Attendees

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

--000000000000f97800058958871d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdiBkaXI9Imx0ciI+PGRpdiBjbGFzcz0iZ21haWxfZGVmYXVsdCI+
PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OmNvdXJpZXIgbmV3LG1vbm9zcGFjZSI+KioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqPGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKioq
IE5FV1NEUiAyMDE5ICoqKjxicj48YnI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIEZyZWUgUmVnaXN0cmF0aW9uPGJyPjxicj7CoMKgwqAgT2ZmZXJpbmcg
dGVjaG5pY2FsIFdvcmtzaG9wcywgU3ltcG9zaXVtLCBQb3N0ZXIgUHJlc2VudGF0aW9uczxicj48
YnI+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OmNvdXJpZXIgbmV3LG1vbm9zcGFjZSI+wqAgwqDC
oCDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBDYWxsIGZvciBBdHRlbmRl
ZXM8L3NwYW4+PC9zcGFuPjwvZGl2PjxkaXYgY2xhc3M9ImdtYWlsX2RlZmF1bHQiPjxzcGFuIHN0
eWxlPSJmb250LWZhbWlseTpjb3VyaWVyIG5ldyxtb25vc3BhY2UiPjxzcGFuIHN0eWxlPSJmb250
LWZhbWlseTpjb3VyaWVyIG5ldyxtb25vc3BhY2UiPjxicj48L3NwYW4+PC9zcGFuPjwvZGl2Pjxk
aXYgY2xhc3M9ImdtYWlsX2RlZmF1bHQiPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTpjb3VyaWVy
IG5ldyxtb25vc3BhY2UiPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTpjb3VyaWVyIG5ldyxtb25v
c3BhY2UiPjwvc3Bhbj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIENh
bGwgZm9yIFBvc3RlciBQcmVzZW50YXRpb25zPGJyPjxicj4qKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKio8YnI+wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIE5FV1NEUiAy
MDE5PGJyPjxicj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTmV3IEVuZ2xhbmQgV29ya3Nob3Ag
b24gU29mdHdhcmUgRGVmaW5lZCBSYWRpbzxicj48YnI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBOaW50aCBBbm51YWw8YnI+PGJyPsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBUZWNobmljYWwgV29ya3No
b3BzPGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IFRodXJzZGF5IEp1bmUgMTM8YnI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAxNjowMCB0byAyMTowMDxicj48YnI+wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgU3ltcG9zaXVtPGJyPsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRnJpZGF5IEp1
bmUgMTQ8YnI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAwNzo0NSB0byAxNjo0NTxicj48YnI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IFVuaXZlcnNpdHkgb2YgTWFzc2FjaHVzZXR0cyBhdCBCb3N0b248YnI+wqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMTAwIFdpbGxpYW0gVCBNb3JyaXNzZXkgQmx2ZDxicj7C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEJvc3RvbiwgTUEs
IDAyMTI1LCBVU0E8YnI+PGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCA8YSBocmVmPSJodHRwOi8vd3d3LnNkci1ib3N0b24ub3JnLyI+aHR0cDovL3d3dy5zZHIt
Ym9zdG9uLm9yZy88L2E+PGJyPjxicj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBGcmVlIFJlZ2lzdHJhdGlvbjxicj48YnI+KioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqPGJy
PsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgSU5WSVRBVElPTiBUTyBQ
QVJUSUNJUEFURTxicj48YnI+WW91IGFyZSBjb3JkaWFsbHkgaW52aXRlZCB0byB0aGUgMjAxOSBO
ZXcgRW5nbGFuZCBXb3Jrc2hvcCBvbjxicj5Tb2Z0d2FyZSBEZWZpbmVkIFJhZGlvIChORVdTRFIg
MjAxOSksIHdoaWNoIGlzIHRoZSBuaW50aCBpbnN0YWxsbWVudDxicj5vZiBhbiBhbm51YWwgc2Vy
aWVzIG9mIHN5bXBvc2l1bSBhbmQgd29ya3Nob3AgZXZlbnRzIG9yZ2FuaXplZCBieTxicj50aGUg
Qm9zdG9uIFNEUiBVc2VyIEdyb3VwIChTRFItQm9zdG9uKS48YnI+PGJyPlRoaXMgeWVhciwgTkVX
U0RSIHdpbGwgYmUgaGVsZCBhdCBVbml2ZXJzaXR5IG9mIE1hc3NhY2h1c2V0dHM8YnI+YXQgQm9z
dG9uLiBJdCBjb25zaXN0cyBvZiBhIGRheS1sb25nIHN5bXBvc2l1bSBvbiBGcmlkYXksPGJyPmFz
IHdlbGwgYXMgc2V2ZXJhbCBoYW5kcy1vbiBzaG9ydCBjb3Vyc2VzIHRoZSBldmVuaW5nIGJlZm9y
ZTxicj5vbiBUaHVyc2RheS4gWW91IGFyZSB3ZWxjb21lIHRvIGF0dGVuZCBlaXRoZXIgb3IgYm90
aCBldmVudHMsPGJyPndoaWNoIGFyZSBlbnRpcmVseSBmcmVlLjxicj48YnI+QXR0ZW5kYW5jZSBp
cyB0eXBpY2FsbHkgYWJvdXQgMTAwIHBlb3BsZSwgYW5kIGF0dGVuZGVlcyBjb21lIGZyb208YnI+
Ym90aCBhY2FkZW1pYSBhbmQgaW5kdXN0cnkuPGJyPjxicj4qKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKio8YnI+wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgV09SS1NI
T1BTPGJyPjxicj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBUaHVyc2RheSBKdW5lIDEzPGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgMTY6MDAgdG8gMjE6MDA8YnI+PGJyPsKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQWdlbmRhPGJyPjxi
cj4xNjowMCB0byAxNzowMMKgwqAgUGl6emEvU29kYSBhbmQgQXR0ZW5kZWUgTmV0d29ya2luZzxi
cj48YnI+MTc6MDAgdG8gMjE6MDDCoMKgIFdvcmtzaG9wIEV2ZW50czxicj48YnI+VHdvIHdvcmtz
aG9wcyBhcmUgYmVpbmcgb2ZmZXJlZCBpbiBwYXJhbGxlbDo8YnI+PGJyPiogJnF1b3Q7SW50cm8g
dG8gdGhlIEFEOTM2MSB2aWEgdGhlIFBMVVRPIFNEUiwgTGludXgmIzM5O3MgSUlPLCBhbmQgT3Bl
bi1Tb3VyY2U8YnI+wqDCoCBUb29sY2hhaW5zJnF1b3Q7IGJ5IEFuYWxvZyBEZXZpY2VzPGJyPjxi
cj4qICZxdW90O0ZQR0EgUHJvZ3JhbW1pbmcgb24gdGhlIFVTUlAgd2l0aCB0aGUgUkZOb0MgRnJh
bWV3b3JrJnF1b3Q7PGJyPsKgwqAgYnkgRXR0dXMgUmVzZWFyY2ggLyBOYXRpb25hbCBJbnN0cnVt
ZW50czxicj48YnI+QW5hbG9nIERldmljZXMgYW5kIEV0dHVzIFJlc2VhcmNoIHdpbGwgZWFjaCBy
dW4gYSBzaG9ydCBjb3Vyc2U8YnI+dGhlIGV2ZW5pbmcgYmVmb3JlIHRoZSBtYWluIGV2ZW50LiBT
aG9ydCBjb3Vyc2VzIGFyZSB0ZWNobmljYWwsPGJyPnByYWN0aWNhbCwgaGFuZHMtb24gYWN0aXZp
dGllcy4gQXR0ZW5kYW5jZSBpcyBmcmVlLCBidXQgYWR2YW5jZTxicj5yZWdpc3RyYXRpb24gaXMg
cmVxdWlyZWQuIEZyZWUgcGl6emEgYW5kIHNvZGEgd2lsbCBiZSBwcm92aWRlZC48YnI+PGJyPsKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtLS0tLS0tLS0t
LS0tLS0tLS0tLTxicj5UaXRsZTo8YnI+RlBHQSBQcm9ncmFtbWluZyBvbiB0aGUgVVNSUCB1c2lu
ZyB0aGUgUkZOb0MgRnJhbWV3b3JrPGJyPjxicj5BYnN0cmFjdDo8YnI+VGhlIFJGTm9DIChSRiBO
ZXR3b3JrLW9uLUNoaXApIHNvZnR3YXJlIGZyYW1ld29yayBmcm9tIEV0dHVzPGJyPlJlc2VhcmNo
IGlzIG1lYW50IHRvIGRlY3JlYXNlIHRoZSBkZXZlbG9wbWVudCB0aW1lIGZvciBleHBlcmllbmNl
ZDxicj5GUEdBIGVuZ2luZWVycyBzZWVraW5nIHRvIGludGVncmF0ZSBJUCBpbnRvIHRoZSBVU1JQ
IHNpZ25hbDxicj5wcm9jZXNzaW5nIGNoYWluLiBSRk5vQyBpcyB0aGUgYXJjaGl0ZWN0dXJlIGZv
ciBVU1JQIGRldmljZXMgdGhhdDxicj51c2UgWGlsaW54IDctc2VyaWVzIEZQR0FzIChFMzEwLCBF
MzEyLCBFMzIwLCBYMzAwLCBYMzEwLCBOMzEwLCBOMzIwKS48YnI+UkZOb0MgaXMgYnVpbHQgYXJv
dW5kIGEgcGFja2V0aXplZCBuZXR3b3JrIGluZnJhc3RydWN0dXJlIGluIHRoZSBGUEdBPGJyPnRo
YXQgaGFuZGxlcyB0aGUgdHJhbnNwb3J0IG9mIGNvbnRyb2wgYW5kIHNhbXBsZSBkYXRhIGJldHdl
ZW4gdGhlPGJyPmhvc3QgQ1BVIGFuZCB0aGUgcmFkaW8uIFVzZXJzIHRhcmdldCB0aGVpciBjdXN0
b20gYWxnb3JpdGhtcyB0byB0aGU8YnI+RlBHQSBpbiB0aGUgZm9ybSBvZiBDb21wdXRhdGlvbiBF
bmdpbmVzIChDRSksIHdoaWNoIGFyZSBwcm9jZXNzaW5nPGJyPmJsb2NrcyB0aGF0IGF0dGFjaCB0
byB0aGlzIG5ldHdvcmsuIENFcyBhY3QgYXMgaW5kZXBlbmRlbnQgbm9kZXMgb248YnI+dGhlIG5l
dHdvcmsgdGhhdCBjYW4gcmVjZWl2ZSBhbmQgdHJhbnNtaXQgZGF0YSB0byBhbnkgb3RoZXIgbm9k
ZTxicj4oZS5nLiwgYW5vdGhlciBDRSwgdGhlIHJhZGlvIGJsb2NrLCBvciB0aGUgaG9zdCBDUFUp
LiBVc2VycyBjYW4gY3JlYXRlPGJyPm1vZHVsYXIsIEZQR0EtYWNjZWxlcmF0ZWQgU0RSIGFwcGxp
Y2F0aW9ucyBieSBjaGFpbmluZyBDRXMgaW50byBhIGZsb3c8YnI+Z3JhcGguIFJGTm9DIGlzIHN1
cHBvcnRlZCBpbiBVSEQgYW5kIEdOVSBSYWRpby4gSW4gdGhpcyB3b3Jrc2hvcCwgd2U8YnI+d2ls
bCBwcmVzZW50IGFuIGludGVyYWN0aXZlIGhhbmRzLW9uIHR1dG9yaWFsIG9uIFJGTm9DLCBpbmNs
dWRpbmcgYTxicj5kaXNjdXNzaW9uIG9uIGl0cyBkZXNpZ24gYW5kIGNhcGFiaWxpdGllcywgZGVt
b25zdHJhdGlvbnMgb2Ygc2V2ZXJhbDxicj5leGlzdGluZyBleGFtcGxlcywgYW5kIGEgd2Fsay10
aHJvdWdoIG9uIGltcGxlbWVudGluZyBhIHVzZXItZGVmaW5lZDxicj5DRSBhbmQgaW50ZWdyYXRp
bmcgdGhlIENFIGludG8gYm90aCBVSEQgYW5kIEdOVSBSYWRpby48YnI+PGJyPlByZXJlcXVpc2l0
ZXM6PGJyPkF0dGVuZGVlcyBzaG91bGQgaGF2ZSBzb21lIHByZXZpb3VzIGV4cGVyaWVuY2Ugd2l0
aCBMaW51eCBhbmQgdXNpbmc8YnI+dGhlIExpbnV4IGNvbW1hbmQgbGluZSwgYW5kIGJhc2ljIGZh
bWlsaWFyaXR5IHdpdGggYSBwcm9ncmFtbWluZzxicj5sYW5ndWFnZSBzdWNoIGFzIEMsIEMrKywg
b3IgUHl0aG9uLCBhbmQgaGF2ZSBiYXNpYyB1bmRlcnN0YW5kaW5nPGJyPm9mIGZ1bmRhbWVudGFs
IGNvbmNlcHRzIGluIERTUCBhbmQgUkYuIEF0dGVuZGVlcyBzaG91bGQgYWxzbyBoYXZlPGJyPnNv
bWUgYmFzaWMgZmFtaWxpYXJpdHkgd2l0aCBWZXJpbG9nLiBFeHRlbnNpdmUgb3IgZGVlcCBleHBl
cmllbmNlPGJyPndpdGggdGhlc2UgdG9waWNzIGlzIG5vdCBuZWNlc3NhcnkuPGJyPjxicj5BdHRl
bmRlZXMgZG8gbm90IGhhdmUgdG8gYnJpbmcgYW55IFVTUlAgcmFkaW9zIG9yIGxhcHRvcCBjb21w
dXRlcnMuPGJyPkFsbCBuZWNlc3NhcnkgaGFyZHdhcmUgYW5kIHNvZnR3YXJlIHdpbGwgYmUgcHJv
dmlkZWQgaW4gdGhlIHdvcmtzaG9wLjxicj48YnI+QXR0ZW5kZWVzIG1heSBvcHRpb25hbGx5IGJy
aW5nIHRoZWlyIG93biBsYXB0b3BzIGFuZC9vciByYWRpb3MgZm9yIHVzZTxicj5pbiB0aGUgd29y
a3Nob3AuIFBsZWFzZSBjb250YWN0ICZxdW90OzxhIGhyZWY9Im1haWx0bzpzdXBwb3J0QGV0dHVz
LmNvbSI+c3VwcG9ydEBldHR1cy5jb208L2E+JnF1b3Q7IGZvciBzcGVjaWZpYzxicj5zZXR1cCBh
bmQgY29uZmlndXJhdGlvbiByZXF1aXJlbWVudHMuPGJyPjxicj4qKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKio8YnI+wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgU1lN
UE9TSVVNPGJyPjxicj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIEZyaWRheSBKdW5lIDE0PGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMDc6NDUgdG8gMTY6NDU8YnI+PGJyPsKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFRlbnRhdGl2ZSBBZ2VuZGE8
YnI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIChwbGVhc2UgY2hlY2sgdGhlIHdlYnNp
dGUgZm9yIHVwZGF0ZXMpPGJyPjxicj4wNzo0NSDigJMgMDg6MzDCoMKgIFJlZ2lzdHJhdGlvbiwg
Q29mZmVlLDxicj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTGlnaHQgQnJlYWtmYXN0
LCBBdHRlbmRlZSBOZXR3b3JraW5nPGJyPjxicj4wODozMCDigJMgMDg6NDXCoMKgIFdlbGNvbWUg
YW5kIEludHJvZHVjdGlvbjxicj48YnI+MDg6NDUg4oCTIDEwOjAwwqDCoCBDb3Jwb3JhdGUgU3Bv
bnNvciBQcmVzZW50YXRpb25zPGJyPjxicj4xMDowMCDigJMgMTA6MzDCoMKgIFBvc3RlciBQcmVz
ZW50ZXIgRWxldmF0b3IgUGl0Y2hlczxicj48YnI+MTA6MzAg4oCTIDExOjAwwqDCoCBOZXR3b3Jr
IFNlc3Npb24sIENvZmZlZSw8YnI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFBvc3Rl
ciBTZXNzaW9ucyxTcG9uc29yIEV4aGliaXRzL0RlbW9zPGJyPjxicj4xMTowMCDigJMgMTE6NDXC
oMKgIFRlY2huaWNhbCBQcmVzZW50YXRpb24gZnJvbSBNYXRoV29ya3M6PGJyPsKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAmcXVvdDtNb2R1bGF0aW9uIENsYXNzaWZpY2F0aW9uIHdpdGgg
RGVlcCBMZWFybmluZyZxdW90Ozxicj48YnI+MTE6NDUg4oCTIDEzOjAwwqDCoCBMdW5jaCwgTmV0
d29ya2luZywgUG9zdGVyIFNlc3Npb25zLDxicj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgU3BvbnNvciBFeGhpYml0cy9EZW1vczxicj48YnI+MTM6MDAg4oCTIDE0OjAwwqDCoCBJbnZp
dGVkIFRhbGsgYnkgUHJvZmVzc29yIFBhdSBDbG9zYXMsPGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBOb3J0aGVhc3Rlcm4gVW5pdmVyc2l0eTxicj48YnI+MTQ6MDAg4oCTIDE0OjQ1
wqDCoCBUZWNobmljYWwgUHJlc2VudGF0aW9uIGZyb20gTWVkaWFUZWs6PGJyPsKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAmcXVvdDs1RyBOUi1VIOKAkyAmIzM5O0hvdXN0b24sIHdlIGhh
dmUgYSBwcm9ibGVtIGhlcmUmIzM5OyZxdW90Ozxicj48YnI+MTQ6NDUg4oCTIDE1OjE1wqDCoCBO
ZXR3b3JrIFNlc3Npb24sIENvZmZlZSwgUG9zdGVyIFNlc3Npb25zLDxicj7CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgU3BvbnNvciBFeGhpYml0cy9EZW1vczxicj48YnI+MTU6MTUg4oCT
IDE2OjE1wqDCoCBJbnZpdGVkIFRhbGsgYnkgUHJvZmVzc29yIFZ1ayBNYXJvamV2aWMsPGJyPsKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBNaXNzaXNzaXBwaSBTdGF0ZSBVbml2ZXJzaXR5
PGJyPjxicj4xNjoxNSDigJMgMTY6MzDCoMKgIEF3YXJkIEFubm91bmNlbWVudHM8YnI+PGJyPjE2
OjMwIOKAkyAxNjo0NcKgwqAgQ2xvc2luZyBSZW1hcmtzPGJyPjxicj5UZWNobmljYWwgUG9zdGVy
IFByZXNlbnRhdGlvbnM6PGJyPsKgKiBDb3ZlcmluZyB0aGUgcmVjZW50IHdvcmsgaW4gU0RSIGFu
ZCBjb2duaXRpdmUgcmFkaW8gdGVjaG5vbG9neTxicj7CoCogUG9zdGVyIHByZXNlbnRhdGlvbnMg
YXJlIG5vdyBiZWluZyBzb2xpY2l0ZWQ8YnI+wqAqIFNlZSBsaW5rIGF0IHRoZSBib3R0b20gb2Yg
dGhpcyBlbWFpbCB0byBzdWJtaXQgeW91ciBhYnN0cmFjdDxicj48YnI+Q29ycG9yYXRlIFNwb25z
b3JzICh0ZW50YXRpdmUpOjxicj7CoCogTWF0aFdvcmtzPGJyPsKgKiBNZWRpYXRlazxicj7CoCog
QW5hbG9nIERldmljZXM8YnI+wqAqIEV0dHVzIFJlc2VhcmNoIC8gTmF0aW9uYWwgSW5zdHJ1bWVu
dHM8YnI+wqAqIFVuaXZlcnNpdHkgb2YgTWFzc2FjaHVzZXR0cyBhdCBCb3N0b24sPGJyPsKgwqAg
Q29sbGVnZSBvZiBTY2llbmNlcyBhbmQgTWF0aGVtYXRpY3M8YnI+PGJyPlRoZSBzeW1wb3NpdW0g
ZmVhdHVyZXMgcGxlbmFyeSBzcGVha2VycywgdGVjaG5pY2FsIHBvc3Rlcjxicj5wcmVzZW50YXRp
b24gc2Vzc2lvbnMsIGhhcmR3YXJlIGFuZCBzb2Z0d2FyZSBkZW1vbnN0cmF0aW9ucyBmcm9tIHRo
ZTxicj5ldmVudCBzcG9uc29ycywgYW5kIHdvcmtzaG9wcyBmcm9tIHRoZSBldmVudCBzcG9uc29y
cywgYWxsIGZvY3VzaW5nPGJyPm9uIHJlY2VudCB3b3JrIGluIFNEUiBhbmQgY29nbml0aXZlIHJh
ZGlvIHRlY2hub2xvZ3kuIEZyZWUgYnJlYWtmYXN0LDxicj5sdW5jaCwgYW5kIGNvZmZlZSB3aWxs
IGJlIHByb3ZpZGVkLiBBdHRlbmRhbmNlIGlzIGZyZWUsIGJ1dCBhZHZhbmNlPGJyPnJlZ2lzdHJh
dGlvbiBpcyByZXF1aXJlZC48YnI+PGJyPlRoZSBzeW1wb3NpdW0gcHJvdmlkZXMgYW4gZXhjZWxs
ZW50IG5ldHdvcmtpbmcgb3Bwb3J0dW5pdHkgYW5kIGE8YnI+dGVycmlmaWMgdmVudWUgdG8gZXhj
aGFuZ2UgdGhvdWdodHMgYW5kIGlkZWFzIHdpdGggb3RoZXIgcGVvcGxlPGJyPndvcmtpbmcgaW4g
dGhlIFNEUiBzcGFjZS48YnI+PGJyPioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKjxicj7CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFJFR0lTVFJBVElPTjxicj48YnI+KiBS
ZWdpc3RlciBmb3IgdGhlIFN5bXBvc2l1bSwgb3IgdGhlIFdvcmtzaG9wLCBvciBib3RoLjxicj48
YnI+KiBSZWdpc3RyYXRpb24gaXMgcmVxdWlyZWQgYnV0IGlzIGNvbXBsZXRlbHkgZnJlZSw8YnI+
wqAgYW5kIGluY2x1ZGVzIGZyZWUgZm9vZC48YnI+PGJyPiogQXR0ZW5kYW5jZSBhbmQgZm9vZCBh
cmUgbGltaXRlZCwgc28gcGxlYXNlIHJlZ2lzdGVyPGJyPsKgIG9ubGluZSBhcyBzb29uIGFzIHBv
c3NpYmxlIHRvIHNlY3VyZSB5b3VyIHNwb3QuPGJyPjxicj4qIEF0dGVuZGVlIEV2ZW50IFJlZ2lz
dHJhdGlvbiBkZWFkbGluZSBpcyBGcmlkYXkgTWF5IDMxLjxicj48YnI+KiBQb3N0ZXIgQWJzdHJh
Y3QgU3VibWlzc2lvbiBkZWFkbGluZSBpcyBGcmlkYXkgTWF5IDMxLjxicj48YnI+KiBTZWUgbGlu
a3MgYmVsb3cgdG8gcmVnaXN0ZXIgb25saW5lLjxicj48YnI+KioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqPGJyPsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBM
SU5LUzxicj48YnI+QXR0ZW5kZWUgRXZlbnQgUmVnaXN0cmF0aW9uOjxicj48YSBocmVmPSJodHRw
czovL2Zvcm1zLmdsZS9GZFNWM3RUcnFWRUs2Y0RnNyI+aHR0cHM6Ly9mb3Jtcy5nbGUvRmRTVjN0
VHJxVkVLNmNEZzc8L2E+PGJyPjxicj5Qb3N0ZXIgQWJzdHJhY3QgU3VibWlzc2lvbjo8YnI+PGEg
aHJlZj0iaHR0cHM6Ly9mb3Jtcy5nbGUveHNSdXNQUzJySkhuTnFTWEEiPmh0dHBzOi8vZm9ybXMu
Z2xlL3hzUnVzUFMyckpIbk5xU1hBPC9hPjxicj48YnI+KioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqPGJyPsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBBRERJVElPTkFMIElORk9STUFUSU9O
PGJyPjxicj7CoMKgwqDCoMKgIE1vcmUgZGV0YWlscyBhbmQgaW5mb3JtYXRpb24gY2FuIGJlIGZv
dW5kIGF0IG91ciB3ZWJzaXRlOjxicj48YnI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgPGEgaHJlZj0iaHR0cDovL3d3dy5zZHItYm9zdG9uLm9yZy8iPmh0dHA6Ly93d3cu
c2RyLWJvc3Rvbi5vcmcvPC9hPjxicj48YnI+KioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqPGJyPsKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEVPRjxicj4q
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKio8YnI+PGJyPjxicj48YnI+PC9zcGFuPjwvZGl2PjwvZGl2PjwvZGl2Pg0K
--000000000000f97800058958871d--


--===============4334112411442153199==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4334112411442153199==--

