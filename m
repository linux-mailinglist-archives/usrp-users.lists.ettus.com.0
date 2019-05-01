Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 80360105E1
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2019 09:30:06 +0200 (CEST)
Received: from [::1] (port=46978 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hLjgm-0004an-Tz; Wed, 01 May 2019 03:30:00 -0400
Received: from mail-oi1-f176.google.com ([209.85.167.176]:38591)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <neel.pandeya@ettus.com>)
 id 1hLjgF-0004VS-5C
 for usrp-users@lists.ettus.com; Wed, 01 May 2019 03:29:57 -0400
Received: by mail-oi1-f176.google.com with SMTP id t70so7741336oif.5
 for <usrp-users@lists.ettus.com>; Wed, 01 May 2019 00:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=p+wMGhK/rcLQtJ9z3Kqi8ySQWEDDatkojYBW+SSnG+A=;
 b=IDcYfXU80o8UCoWbVjrfOVda+iL79G71tToFtKhCGWiU4tXf0WWv2ynwsVs0PLH/KG
 A8KVPkxhligAPMfHqy2uBOWYPm+i+7sS8VdKosXKk9gdIPNB6WGvfJI6v1j24wdWPSNG
 WaEdW1edX/oMnfDTMR8EzXS4Dewq+usb4sQqRKyQYPdqL7wz+/8oNcFLOUFYPkls0eE3
 iUryQrJ8DxxZBrz5AuSBtp42hcS27ZhhyLT8JDKrldRZ/U3KGXn1uXjsq3VsfcqhNtQG
 GnzEaUwiagYtgYluo9p/4M9orKxQYAKSJmpF5+3zmcyvPkBhDrNmKwMKtGSMQYIRhxNf
 KBgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=p+wMGhK/rcLQtJ9z3Kqi8ySQWEDDatkojYBW+SSnG+A=;
 b=j8lJhvOT1w6VUxvbuoi+oF90CfrYiuLTipsUGA2YK+ZpHD9WECHXdR6QU8PR4PfRy3
 vJQglvy1O851Jn2S+EhrsTaQ+jkhJZcPLC22l/VX+mf9ysSIgWhha87tQ+Mcl6BHA/q7
 ZD1WoX/xGlziAsKZoyGI8best6C9aeJPVxDFulauxFpWf1Iqj1oK/zKw0NQmdXZuRXMK
 gY97KyxZkhrajysE8VUtV3MnEcqFZyP/XR3R7ktLoUIXt2nVy23ifA3L5DjWFldObvJL
 hOBnTjSAFa6VUQ4MWza2NLYNaSr5BxSpn1BHyAjpXVKIwFqdcaCXW98bmOOTzvvxzWkq
 EFwA==
X-Gm-Message-State: APjAAAWC2rBtO61CuwbSSkKCFmdCOVdRCsbYeigs7WQp+TozaKNAql/7
 MWJ1/ZCd1w8cPNv2htQ+1NmTR/A0hRcs7obJMeXzxVOQsYVTUA==
X-Google-Smtp-Source: APXvYqy7Gu3nypM6wgf+yRG+lG7N33g2/snMZRJO4nOxvQhCCNEZXwH6F/TL4bZEG5aJZYPMo/53AdOhhRBkf6bbulc=
X-Received: by 2002:aca:c202:: with SMTP id s2mr5984521oif.91.1556695726073;
 Wed, 01 May 2019 00:28:46 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 1 May 2019 02:28:29 -0500
Message-ID: <CACaXmv8g-3i5Cr9ezhWOzBJjAKq1xyRuJTXPOVk+PQHu=DkRNg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] Announcing NEWSDR at UMass-Boston on June 13/14
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
Content-Type: multipart/mixed; boundary="===============6307099520392753921=="
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

--===============6307099520392753921==
Content-Type: multipart/alternative; boundary="000000000000c6b7500587ce7771"

--000000000000c6b7500587ce7771
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

*********************************************************************
                        *** NEWSDR 2019 ***

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
                           08:00 to 17:00

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

* (title and abstract coming soon!)
   by Analog Devices

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
                           07:45 to 17:00

                          Tentative Agenda
                (check website next week for updates)

07:45 =E2=80=93 08:30   Registration, Coffee,
                Light Breakfast, Attendee Networking

08:30 =E2=80=93 08:45   Welcome and Introduction

08:45 =E2=80=93 10:15   Corporate Sponsor Presentations

10:15 =E2=80=93 11:00   Network Session, Coffee,
                Poster Sessions,Sponsor Exhibits/Demos

11:00 =E2=80=93 12:00   Technical Presentation from MathWorks

12:00 =E2=80=93 13:00   Lunch, Networking, Poster Sessions,
                Sponsor Exhibits/Demos

13:00 =E2=80=93 14:00   Invited Talk by Dr Pau Closas, Northeastern Univers=
ity

14:00 =E2=80=93 14:45   Poster Presenter Elevator Pitches

14:45 =E2=80=93 15:30   Network Session, Coffee, Poster Sessions,
                Sponsor Exhibits/Demos

15:30 =E2=80=93 16:30   Technical Presentation from MediaTek

16:30 =E2=80=93 17:00   Closing Remarks and Poster Awards

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

* Attendee Event Registration deadline is Monday June 3.

* Poster Abstract Submission deadline is Monday May 13.

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

--000000000000c6b7500587ce7771
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdiBkaXI9Imx0ciI+PGRpdiBjbGFzcz0iZ21haWxfZGVmYXVsdCI+
PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5Om1vbm9zcGFjZSxtb25vc3BhY2UiPioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
Kjxicj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICoqKiBO
RVdTRFIgMjAxOSAqKio8YnI+PGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBGcmVlIFJlZ2lzdHJhdGlvbjxicj48YnI+wqDCoMKgIE9mZmVyaW5nIHRl
Y2huaWNhbCBXb3Jrc2hvcHMsIFN5bXBvc2l1bSwgUG9zdGVyIFByZXNlbnRhdGlvbnM8YnI+PGJy
PsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQ2FsbCBmb3IgUG9zdGVy
IFByZXNlbnRhdGlvbnM8YnI+PGJyPioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKjxicj7CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTkVXU0RSIDIwMTk8YnI+PGJyPsKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBOZXcgRW5nbGFuZCBXb3Jrc2hvcCBvbiBTb2Z0d2FyZSBE
ZWZpbmVkIFJhZGlvPGJyPjxicj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIE5pbnRoIEFubnVhbDxicj48YnI+wqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBUZWNobmljYWwgV29ya3Nob3BzPGJyPsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBUaHVyc2RheSBKdW5lIDEz
PGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
MTY6MDAgdG8gMjE6MDA8YnI+PGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIFN5bXBvc2l1bTxicj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEZyaWRheSBKdW5lIDE0PGJyPsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMDg6MDAgdG8gMTc6
MDA8YnI+PGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBVbml2ZXJzaXR5IG9mIE1h
c3NhY2h1c2V0dHMgYXQgQm9zdG9uPGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIDEwMCBXaWxsaWFtIFQgTW9ycmlzc2V5IEJsdmQ8YnI+wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBCb3N0b24sIE1BLCAwMjEyNSwgVVNBPGJyPjxi
cj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPGEgaHJlZj0iaHR0
cDovL3d3dy5zZHItYm9zdG9uLm9yZy8iPmh0dHA6Ly93d3cuc2RyLWJvc3Rvbi5vcmcvPC9hPjxi
cj48YnI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
RnJlZSBSZWdpc3RyYXRpb248YnI+PGJyPioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKjxicj7CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIElOVklUQVRJT04gVE8gUEFSVElDSVBBVEU8YnI+PGJy
PllvdSBhcmUgY29yZGlhbGx5IGludml0ZWQgdG8gdGhlIDIwMTkgTmV3IEVuZ2xhbmQgV29ya3No
b3Agb248YnI+U29mdHdhcmUgRGVmaW5lZCBSYWRpbyAoTkVXU0RSIDIwMTkpLCB3aGljaCBpcyB0
aGUgbmludGggaW5zdGFsbG1lbnQ8YnI+b2YgYW4gYW5udWFsIHNlcmllcyBvZiBzeW1wb3NpdW0g
YW5kIHdvcmtzaG9wIGV2ZW50cyBvcmdhbml6ZWQgYnk8YnI+dGhlIEJvc3RvbiBTRFIgVXNlciBH
cm91cCAoU0RSLUJvc3RvbikuPGJyPjxicj5UaGlzIHllYXIsIE5FV1NEUiB3aWxsIGJlIGhlbGQg
YXQgVW5pdmVyc2l0eSBvZiBNYXNzYWNodXNldHRzPGJyPmF0IEJvc3Rvbi4gSXQgY29uc2lzdHMg
b2YgYSBkYXktbG9uZyBzeW1wb3NpdW0gb24gRnJpZGF5LDxicj5hcyB3ZWxsIGFzIHNldmVyYWwg
aGFuZHMtb24gc2hvcnQgY291cnNlcyB0aGUgZXZlbmluZyBiZWZvcmU8YnI+b24gVGh1cnNkYXku
IFlvdSBhcmUgd2VsY29tZSB0byBhdHRlbmQgZWl0aGVyIG9yIGJvdGggZXZlbnRzLDxicj53aGlj
aCBhcmUgZW50aXJlbHkgZnJlZS48YnI+PGJyPkF0dGVuZGFuY2UgaXMgdHlwaWNhbGx5IGFib3V0
IDEwMCBwZW9wbGUsIGFuZCBhdHRlbmRlZXMgY29tZSBmcm9tPGJyPmJvdGggYWNhZGVtaWEgYW5k
IGluZHVzdHJ5Ljxicj48YnI+KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqPGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFdPUktTSE9QUzxicj48YnI+wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgVGh1cnNkYXkgSnVu
ZSAxMzxicj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIDE2OjAwIHRvIDIxOjAwPGJyPjxicj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEFnZW5kYTxicj48YnI+MTY6MDAgdG8gMTc6MDDC
oMKgIFBpenphL1NvZGEgYW5kIEF0dGVuZGVlIE5ldHdvcmtpbmc8YnI+PGJyPjE3OjAwIHRvIDIx
OjAwwqDCoCBXb3Jrc2hvcCBFdmVudHM8YnI+PGJyPlR3byB3b3Jrc2hvcHMgYXJlIGJlaW5nIG9m
ZmVyZWQgaW4gcGFyYWxsZWw6PGJyPjxicj4qICh0aXRsZSBhbmQgYWJzdHJhY3QgY29taW5nIHNv
b24hKTxicj7CoMKgIGJ5IEFuYWxvZyBEZXZpY2VzPGJyPjxicj4qICZxdW90O0ZQR0EgUHJvZ3Jh
bW1pbmcgb24gdGhlIFVTUlAgd2l0aCB0aGUgUkZOb0MgRnJhbWV3b3JrJnF1b3Q7PGJyPsKgwqAg
YnkgRXR0dXMgUmVzZWFyY2ggLyBOYXRpb25hbCBJbnN0cnVtZW50czxicj48YnI+QW5hbG9nIERl
dmljZXMgYW5kIEV0dHVzIFJlc2VhcmNoIHdpbGwgZWFjaCBydW4gYSBzaG9ydCBjb3Vyc2U8YnI+
dGhlIGV2ZW5pbmcgYmVmb3JlIHRoZSBtYWluIGV2ZW50LiBTaG9ydCBjb3Vyc2VzIGFyZSB0ZWNo
bmljYWwsPGJyPnByYWN0aWNhbCwgaGFuZHMtb24gYWN0aXZpdGllcy4gQXR0ZW5kYW5jZSBpcyBm
cmVlLCBidXQgYWR2YW5jZTxicj5yZWdpc3RyYXRpb24gaXMgcmVxdWlyZWQuIEZyZWUgcGl6emEg
YW5kIHNvZGEgd2lsbCBiZSBwcm92aWRlZC48YnI+PGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtLS0tLS0tLS0tLS0tLS0tLS0tLTxicj5UaXRsZTo8
YnI+RlBHQSBQcm9ncmFtbWluZyBvbiB0aGUgVVNSUCB1c2luZyB0aGUgUkZOb0MgRnJhbWV3b3Jr
PGJyPjxicj5BYnN0cmFjdDo8YnI+VGhlIFJGTm9DIChSRiBOZXR3b3JrLW9uLUNoaXApIHNvZnR3
YXJlIGZyYW1ld29yayBmcm9tIEV0dHVzPGJyPlJlc2VhcmNoIGlzIG1lYW50IHRvIGRlY3JlYXNl
IHRoZSBkZXZlbG9wbWVudCB0aW1lIGZvciBleHBlcmllbmNlZDxicj5GUEdBIGVuZ2luZWVycyBz
ZWVraW5nIHRvIGludGVncmF0ZSBJUCBpbnRvIHRoZSBVU1JQIHNpZ25hbDxicj5wcm9jZXNzaW5n
IGNoYWluLiBSRk5vQyBpcyB0aGUgYXJjaGl0ZWN0dXJlIGZvciBVU1JQIGRldmljZXMgdGhhdDxi
cj51c2UgWGlsaW54IDctc2VyaWVzIEZQR0FzIChFMzEwLCBFMzEyLCBFMzIwLCBYMzAwLCBYMzEw
LCBOMzEwLCBOMzIwKS48YnI+UkZOb0MgaXMgYnVpbHQgYXJvdW5kIGEgcGFja2V0aXplZCBuZXR3
b3JrIGluZnJhc3RydWN0dXJlIGluIHRoZSBGUEdBPGJyPnRoYXQgaGFuZGxlcyB0aGUgdHJhbnNw
b3J0IG9mIGNvbnRyb2wgYW5kIHNhbXBsZSBkYXRhIGJldHdlZW4gdGhlPGJyPmhvc3QgQ1BVIGFu
ZCB0aGUgcmFkaW8uIFVzZXJzIHRhcmdldCB0aGVpciBjdXN0b20gYWxnb3JpdGhtcyB0byB0aGU8
YnI+RlBHQSBpbiB0aGUgZm9ybSBvZiBDb21wdXRhdGlvbiBFbmdpbmVzIChDRSksIHdoaWNoIGFy
ZSBwcm9jZXNzaW5nPGJyPmJsb2NrcyB0aGF0IGF0dGFjaCB0byB0aGlzIG5ldHdvcmsuIENFcyBh
Y3QgYXMgaW5kZXBlbmRlbnQgbm9kZXMgb248YnI+dGhlIG5ldHdvcmsgdGhhdCBjYW4gcmVjZWl2
ZSBhbmQgdHJhbnNtaXQgZGF0YSB0byBhbnkgb3RoZXIgbm9kZTxicj4oZS5nLiwgYW5vdGhlciBD
RSwgdGhlIHJhZGlvIGJsb2NrLCBvciB0aGUgaG9zdCBDUFUpLiBVc2VycyBjYW4gY3JlYXRlPGJy
Pm1vZHVsYXIsIEZQR0EtYWNjZWxlcmF0ZWQgU0RSIGFwcGxpY2F0aW9ucyBieSBjaGFpbmluZyBD
RXMgaW50byBhIGZsb3c8YnI+Z3JhcGguIFJGTm9DIGlzIHN1cHBvcnRlZCBpbiBVSEQgYW5kIEdO
VSBSYWRpby4gSW4gdGhpcyB3b3Jrc2hvcCwgd2U8YnI+d2lsbCBwcmVzZW50IGFuIGludGVyYWN0
aXZlIGhhbmRzLW9uIHR1dG9yaWFsIG9uIFJGTm9DLCBpbmNsdWRpbmcgYTxicj5kaXNjdXNzaW9u
IG9uIGl0cyBkZXNpZ24gYW5kIGNhcGFiaWxpdGllcywgZGVtb25zdHJhdGlvbnMgb2Ygc2V2ZXJh
bDxicj5leGlzdGluZyBleGFtcGxlcywgYW5kIGEgd2Fsay10aHJvdWdoIG9uIGltcGxlbWVudGlu
ZyBhIHVzZXItZGVmaW5lZDxicj5DRSBhbmQgaW50ZWdyYXRpbmcgdGhlIENFIGludG8gYm90aCBV
SEQgYW5kIEdOVSBSYWRpby48YnI+PGJyPlByZXJlcXVpc2l0ZXM6PGJyPkF0dGVuZGVlcyBzaG91
bGQgaGF2ZSBzb21lIHByZXZpb3VzIGV4cGVyaWVuY2Ugd2l0aCBMaW51eCBhbmQgdXNpbmc8YnI+
dGhlIExpbnV4IGNvbW1hbmQgbGluZSwgYW5kIGJhc2ljIGZhbWlsaWFyaXR5IHdpdGggYSBwcm9n
cmFtbWluZzxicj5sYW5ndWFnZSBzdWNoIGFzIEMsIEMrKywgb3IgUHl0aG9uLCBhbmQgaGF2ZSBi
YXNpYyB1bmRlcnN0YW5kaW5nPGJyPm9mIGZ1bmRhbWVudGFsIGNvbmNlcHRzIGluIERTUCBhbmQg
UkYuIEF0dGVuZGVlcyBzaG91bGQgYWxzbyBoYXZlPGJyPnNvbWUgYmFzaWMgZmFtaWxpYXJpdHkg
d2l0aCBWZXJpbG9nLiBFeHRlbnNpdmUgb3IgZGVlcCBleHBlcmllbmNlPGJyPndpdGggdGhlc2Ug
dG9waWNzIGlzIG5vdCBuZWNlc3NhcnkuPGJyPjxicj5BdHRlbmRlZXMgZG8gbm90IGhhdmUgdG8g
YnJpbmcgYW55IFVTUlAgcmFkaW9zIG9yIGxhcHRvcCBjb21wdXRlcnMuPGJyPkFsbCBuZWNlc3Nh
cnkgaGFyZHdhcmUgYW5kIHNvZnR3YXJlIHdpbGwgYmUgcHJvdmlkZWQgaW4gdGhlIHdvcmtzaG9w
Ljxicj48YnI+QXR0ZW5kZWVzIG1heSBvcHRpb25hbGx5IGJyaW5nIHRoZWlyIG93biBsYXB0b3Bz
IGFuZC9vciByYWRpb3MgZm9yIHVzZTxicj5pbiB0aGUgd29ya3Nob3AuIFBsZWFzZSBjb250YWN0
ICZxdW90OzxhIGhyZWY9Im1haWx0bzpzdXBwb3J0QGV0dHVzLmNvbSI+c3VwcG9ydEBldHR1cy5j
b208L2E+JnF1b3Q7IGZvciBzcGVjaWZpYzxicj5zZXR1cCBhbmQgY29uZmlndXJhdGlvbiByZXF1
aXJlbWVudHMuPGJyPjxicj4qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKio8YnI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgU1lNUE9TSVVNPGJyPjxicj7CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEZyaWRheSBKdW5l
IDE0PGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgMDc6NDUgdG8gMTc6MDA8YnI+PGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIFRlbnRhdGl2ZSBBZ2VuZGE8YnI+wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIChjaGVjayB3ZWJzaXRlIG5leHQgd2VlayBmb3IgdXBkYXRlcyk8YnI+PGJy
PjA3OjQ1IOKAkyAwODozMMKgwqAgUmVnaXN0cmF0aW9uLCBDb2ZmZWUsPGJyPsKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBMaWdodCBCcmVha2Zhc3QsIEF0dGVuZGVlIE5ldHdvcmtpbmc8
YnI+PGJyPjA4OjMwIOKAkyAwODo0NcKgwqAgV2VsY29tZSBhbmQgSW50cm9kdWN0aW9uPGJyPjxi
cj4wODo0NSDigJMgMTA6MTXCoMKgIENvcnBvcmF0ZSBTcG9uc29yIFByZXNlbnRhdGlvbnM8YnI+
PGJyPjEwOjE1IOKAkyAxMTowMMKgwqAgTmV0d29yayBTZXNzaW9uLCBDb2ZmZWUsPGJyPsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBQb3N0ZXIgU2Vzc2lvbnMsU3BvbnNvciBFeGhpYml0
cy9EZW1vczxicj48YnI+MTE6MDAg4oCTIDEyOjAwwqDCoCBUZWNobmljYWwgUHJlc2VudGF0aW9u
IGZyb20gTWF0aFdvcmtzPGJyPjxicj4xMjowMCDigJMgMTM6MDDCoMKgIEx1bmNoLCBOZXR3b3Jr
aW5nLCBQb3N0ZXIgU2Vzc2lvbnMsPGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBT
cG9uc29yIEV4aGliaXRzL0RlbW9zPGJyPjxicj4xMzowMCDigJMgMTQ6MDDCoMKgIEludml0ZWQg
VGFsayBieSBEciBQYXUgQ2xvc2FzLCBOb3J0aGVhc3Rlcm4gVW5pdmVyc2l0eTxicj48YnI+MTQ6
MDAg4oCTIDE0OjQ1wqDCoCBQb3N0ZXIgUHJlc2VudGVyIEVsZXZhdG9yIFBpdGNoZXM8YnI+PGJy
PjE0OjQ1IOKAkyAxNTozMMKgwqAgTmV0d29yayBTZXNzaW9uLCBDb2ZmZWUsIFBvc3RlciBTZXNz
aW9ucyw8YnI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFNwb25zb3IgRXhoaWJpdHMv
RGVtb3M8YnI+PGJyPjE1OjMwIOKAkyAxNjozMMKgwqAgVGVjaG5pY2FsIFByZXNlbnRhdGlvbiBm
cm9tIE1lZGlhVGVrPGJyPjxicj4xNjozMCDigJMgMTc6MDDCoMKgIENsb3NpbmcgUmVtYXJrcyBh
bmQgUG9zdGVyIEF3YXJkczxicj48YnI+VGVjaG5pY2FsIFBvc3RlciBQcmVzZW50YXRpb25zOjxi
cj7CoCogQ292ZXJpbmcgdGhlIHJlY2VudCB3b3JrIGluIFNEUiBhbmQgY29nbml0aXZlIHJhZGlv
IHRlY2hub2xvZ3k8YnI+wqAqIFBvc3RlciBwcmVzZW50YXRpb25zIGFyZSBub3cgYmVpbmcgc29s
aWNpdGVkPGJyPsKgKiBTZWUgbGluayBhdCB0aGUgYm90dG9tIG9mIHRoaXMgZW1haWwgdG8gc3Vi
bWl0IHlvdXIgYWJzdHJhY3Q8YnI+PGJyPkNvcnBvcmF0ZSBTcG9uc29ycyAodGVudGF0aXZlKTo8
YnI+wqAqIE1hdGhXb3Jrczxicj7CoCogTWVkaWF0ZWs8YnI+wqAqIEFuYWxvZyBEZXZpY2VzPGJy
PsKgKiBFdHR1cyBSZXNlYXJjaCAvIE5hdGlvbmFsIEluc3RydW1lbnRzPGJyPsKgKiBVbml2ZXJz
aXR5IG9mIE1hc3NhY2h1c2V0dHMgYXQgQm9zdG9uLDxicj7CoMKgIENvbGxlZ2Ugb2YgU2NpZW5j
ZXMgYW5kIE1hdGhlbWF0aWNzPGJyPjxicj5UaGUgc3ltcG9zaXVtIGZlYXR1cmVzIHBsZW5hcnkg
c3BlYWtlcnMsIHRlY2huaWNhbCBwb3N0ZXI8YnI+cHJlc2VudGF0aW9uIHNlc3Npb25zLCBoYXJk
d2FyZSBhbmQgc29mdHdhcmUgZGVtb25zdHJhdGlvbnMgZnJvbSB0aGU8YnI+ZXZlbnQgc3BvbnNv
cnMsIGFuZCB3b3Jrc2hvcHMgZnJvbSB0aGUgZXZlbnQgc3BvbnNvcnMsIGFsbCBmb2N1c2luZzxi
cj5vbiByZWNlbnQgd29yayBpbiBTRFIgYW5kIGNvZ25pdGl2ZSByYWRpbyB0ZWNobm9sb2d5LiBG
cmVlIGJyZWFrZmFzdCw8YnI+bHVuY2gsIGFuZCBjb2ZmZWUgd2lsbCBiZSBwcm92aWRlZC4gQXR0
ZW5kYW5jZSBpcyBmcmVlLCBidXQgYWR2YW5jZTxicj5yZWdpc3RyYXRpb24gaXMgcmVxdWlyZWQu
PGJyPjxicj5UaGUgc3ltcG9zaXVtIHByb3ZpZGVzIGFuIGV4Y2VsbGVudCBuZXR3b3JraW5nIG9w
cG9ydHVuaXR5IGFuZCBhPGJyPnRlcnJpZmljIHZlbnVlIHRvIGV4Y2hhbmdlIHRob3VnaHRzIGFu
ZCBpZGVhcyB3aXRoIG90aGVyIHBlb3BsZTxicj53b3JraW5nIGluIHRoZSBTRFIgc3BhY2UuPGJy
Pjxicj4qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKio8YnI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBSRUdJU1RSQVRJT048YnI+PGJyPiogUmVnaXN0ZXIgZm9yIHRoZSBT
eW1wb3NpdW0sIG9yIHRoZSBXb3Jrc2hvcCwgb3IgYm90aC48YnI+PGJyPiogUmVnaXN0cmF0aW9u
IGlzIHJlcXVpcmVkIGJ1dCBpcyBjb21wbGV0ZWx5IGZyZWUsPGJyPsKgIGFuZCBpbmNsdWRlcyBm
cmVlIGZvb2QuPGJyPjxicj4qIEF0dGVuZGFuY2UgYW5kIGZvb2QgYXJlIGxpbWl0ZWQsIHNvIHBs
ZWFzZSByZWdpc3Rlcjxicj7CoCBvbmxpbmUgYXMgc29vbiBhcyBwb3NzaWJsZSB0byBzZWN1cmUg
eW91ciBzcG90Ljxicj48YnI+KiBBdHRlbmRlZSBFdmVudCBSZWdpc3RyYXRpb24gZGVhZGxpbmUg
aXMgTW9uZGF5IEp1bmUgMy48YnI+PGJyPiogUG9zdGVyIEFic3RyYWN0IFN1Ym1pc3Npb24gZGVh
ZGxpbmUgaXMgTW9uZGF5IE1heSAxMy48YnI+PGJyPiogU2VlIGxpbmtzIGJlbG93IHRvIHJlZ2lz
dGVyIG9ubGluZS48YnI+PGJyPioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKjxicj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTElOS1M8YnI+PGJyPkF0dGVu
ZGVlIEV2ZW50IFJlZ2lzdHJhdGlvbjo8YnI+PGEgaHJlZj0iaHR0cHM6Ly9mb3Jtcy5nbGUvRmRT
VjN0VHJxVkVLNmNEZzciPmh0dHBzOi8vZm9ybXMuZ2xlL0ZkU1YzdFRycVZFSzZjRGc3PC9hPjxi
cj48YnI+UG9zdGVyIEFic3RyYWN0IFN1Ym1pc3Npb246PGJyPjxhIGhyZWY9Imh0dHBzOi8vZm9y
bXMuZ2xlL3hzUnVzUFMyckpIbk5xU1hBIj5odHRwczovL2Zvcm1zLmdsZS94c1J1c1BTMnJKSG5O
cVNYQTwvYT48YnI+PGJyPioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKjxicj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgQURESVRJT05BTCBJTkZPUk1BVElPTjxicj48YnI+wqDCoMKgwqDC
oCBNb3JlIGRldGFpbHMgYW5kIGluZm9ybWF0aW9uIGNhbiBiZSBmb3VuZCBhdCBvdXIgd2Vic2l0
ZTo8YnI+PGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxhIGhyZWY9
Imh0dHA6Ly93d3cuc2RyLWJvc3Rvbi5vcmcvIj5odHRwOi8vd3d3LnNkci1ib3N0b24ub3JnLzwv
YT48YnI+PGJyPioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKjxicj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBFT0Y8YnI+KioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqPGJyPjxi
cj48YnI+PGJyPjwvc3Bhbj48L2Rpdj48L2Rpdj48L2Rpdj4NCg==
--000000000000c6b7500587ce7771--


--===============6307099520392753921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6307099520392753921==--

