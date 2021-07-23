Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AB03D3DB5
	for <lists+usrp-users@lfdr.de>; Fri, 23 Jul 2021 18:37:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 50F4F38513C
	for <lists+usrp-users@lfdr.de>; Fri, 23 Jul 2021 12:37:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KQVJQ/fG";
	dkim-atps=neutral
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 9D183385121
	for <usrp-users@lists.ettus.com>; Fri, 23 Jul 2021 12:37:08 -0400 (EDT)
Received: by mail-ed1-f41.google.com with SMTP id k15so2442138edq.13
        for <usrp-users@lists.ettus.com>; Fri, 23 Jul 2021 09:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=iL/hUzrNAZkiCbcJ324efZjZ8aOAb8Ip03SKa7JUBS8=;
        b=KQVJQ/fGQQPFMHGYBgBWil3M7vrglY4T7Bxf0s4HtpR+7fVvmsRdYgpyF/tj7WdtDL
         X9iuM7jiEMT91p5T1syfoAMrLsJx5UwRl13LRbRIvSQ6V5Fhr9VMBX6aznOK19yzB2U7
         WQTqN3EnxjjTgpXW2lRUSqKnNgGRKxI5Ecw0lg3lUhzP8V2wSs6nxCbmIUzbjjOaIZq1
         e/qxQlsvDP48Q1KfYoPVDx7AV3QMZCrWYTG9kBn38docSIjFuU1WBIqp0FdfYo3VV4GI
         fBRRxMAzMCMaDlozMdcRFQGqsMl9FQezgDicen+nw9Pj6ldWYQ1Hyyl+imeFGcdMQMlY
         s68Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=iL/hUzrNAZkiCbcJ324efZjZ8aOAb8Ip03SKa7JUBS8=;
        b=hIwjxoe2Fp2OAC+nZHacQiO58YPZkYMqc2IlOkXC1l1xArsP2STogFvl6F7LIb88xa
         ewFoWo0k6zye5LGV190nsJ6HMteQfKTN6IDXWDVKjhuPnr67Kbf57vD8Ls/qwzXJmYX2
         nSxVdXkDuPFqKxbpZH3oSs26Dbfm74Y0OaclntGQuSYAZ70E1x+/ZKDQ6Z6kZ/xeiX5S
         d/1t3GGPysD0icvSsKKGTpThVaLofZvHuVMVzqwDzRpOwpbTMaAYHr3zLhC7wsbQkazt
         T3QwWDSJcD8orwRS7Y2SJ+oFYa2WzBd6K+PgRDYud9Vl9E2Rvppu3SxqUNoyDqQAr9UT
         s8gw==
X-Gm-Message-State: AOAM530FeJ9OcyBfKAcxl0S1JhEP/etoAs6WPIEoGcDSGFIw+218KDvr
	0+tsvkBRuN9mS5PWj+W+v/bbnioWzmVR9dfReOCyOMwsv5s=
X-Google-Smtp-Source: ABdhPJxoaAtktDhPqDDFgPGK7XT1fVua0nVAnQEICZgUPnCWjgB5wm3lX6BxnQPpE5ACup487sg955ES3nS/szm72VU=
X-Received: by 2002:a05:6402:517c:: with SMTP id d28mr6687933ede.299.1627058227348;
 Fri, 23 Jul 2021 09:37:07 -0700 (PDT)
MIME-Version: 1.0
From: southindian sdrusergroup <southindiansdrusergroup@gmail.com>
Date: Fri, 23 Jul 2021 22:06:56 +0530
Message-ID: <CA+ZVCtVSfSW3ikD188JmDbh=Fq2Sk6B6TNcw5t-oXLK=shsvmg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="000000000000abec0c05c7cd0324"
Message-ID-Hash: PZDJC5INJENGJUE7SK5LVXUCXJDYWKQB
X-Message-ID-Hash: PZDJC5INJENGJUE7SK5LVXUCXJDYWKQB
X-MailFrom: southindiansdrusergroup@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Announcing the Inaugural Event of the South Indian SDR User Group (SI-SDR-UG) tomorrow July 24th!
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PZDJC5INJENGJUE7SK5LVXUCXJDYWKQB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--000000000000abec0c05c7cd0324
Content-Type: multipart/alternative; boundary="000000000000abec0b05c7cd0322"

--000000000000abec0b05c7cd0322
Content-Type: text/plain; charset="UTF-8"

We would like to announce the inaugural event of the South Indian SDR
User Group (SI-SDR-UG)!

The South Indian SDR User Group (SI-SDR-UG) was founded in January
2021, and is a community of people, from novices to experts, spanning
industry, academia, and government, who are interested in the design
and implementation of Software-Defined Radio (SDR) technology and
systems. This includes such diverse areas such as RF, digital signal
processing (DSP), wireless communications, operating systems, computer
networking, software development and optimization, machine learning,
and radio hardware. The mission of our community is to facilitate the
exchange of ideas and enable greater collaboration within the SDR
community in India. We host regular technical workshops and
gatherings, and we also run a dedicated Slack workspace for the
community. We have a YouTube channel for recordings of past events,
and a GitHub page for any relevant code. Our Twitter feed contains
announcements about events and other news relevant to the community.
We are not focused or tied to any one single software tool, hardware
platform, commercial vendor, or specific technology. The SI-SDR-UG is
non-profit, and the people on the organizing committee are all
volunteers. We are based in Bangalore, but we invite people from all
throughout India, as well as from outside India, to join our
community.

*Our first event will be held on Saturday July 24 at 19:00 (India
time)*, and will be streamed live on our YouTube account.

*We still have an open slot for one more presentation in the event*,
and we would like to offer it to the community.  You can reply to this
email with an abstract of your talk, it should not exceed 30 minutes
of duration followed by a 15 minute Q&A section. If you would be
interested in speaking at the event, on Saturday July 24, sometime
between 19:00 and 23:00 (India time), then please get in touch with
us, we would be very interested in having you.

Please see our website for more information about the event agenda, as
well as links to our Slack workspace and YouTube account.

https://www.softwaredefinedradio.in/

You can watch our first event on our YouTube channel at:
https://www.youtube.com/channel/UCy04XwXPMDVUucWYYvwg-Yg

Join our Slack workspace to ask questions and interact with other attendees:
http://si-sdr-ug.slack.com/

We look forward to seeing you all on Saturday July 24!

Thanks and regards,

Rohan Sundar

Organizing Committee SI-SDR-UG

--000000000000abec0b05c7cd0322
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre style=3D"white-space:pre-wrap;box-sizing:inherit;marg=
in-top:4px;margin-bottom:4px;padding:8px;font-size:12px;line-height:1.50001=
;font-variant-ligatures:none;word-break:normal;border-radius:4px;color:rgb(=
29,28,29)"><font face=3D"tahoma, sans-serif">We would like to announce the =
inaugural event of the South Indian SDR User Group (SI-SDR-UG)!<br><br>The =
South Indian SDR User Group (SI-SDR-UG) was founded in January 2021, and is=
 a community of people, from novices to experts, spanning industry, academi=
a, and government, who are interested in the design and implementation of S=
oftware-Defined Radio (SDR) technology and systems. This includes such dive=
rse areas such as RF, digital signal processing (DSP), wireless communicati=
ons, operating systems, computer networking, software development and optim=
ization, machine learning, and radio hardware. The mission of our community=
 is to facilitate the exchange of ideas and enable greater collaboration wi=
thin the SDR community in India. We host regular technical workshops and ga=
therings, and we also run a dedicated Slack workspace for the community. We=
 have a YouTube channel for recordings of past events, and a GitHub page fo=
r any relevant code. Our Twitter feed contains announcements about events a=
nd other news relevant to the community. We are not focused or tied to any =
one single software tool, hardware platform, commercial vendor, or specific=
 technology. The SI-SDR-UG is non-profit, and the people on the organizing =
committee are all volunteers. We are based in Bangalore, but we invite peop=
le from all throughout India, as well as from outside India, to join our co=
mmunity.<br><br><b>Our first event will be held on Saturday July 24 at 19:0=
0 (India time)</b>, and will be streamed live on our YouTube account.<br><b=
r><b>We still have an open slot for one more presentation in the event</b>,=
 and we would like to offer it to the community.=C2=A0 You can reply to thi=
s email with an abstract of your talk, it should not exceed 30 minutes of d=
uration followed by a 15 minute Q&amp;A section. If you would be interested=
 in speaking at the event, on Saturday July 24, sometime between 19:00 and =
23:00 (India time), then please get in touch with us, we would be very inte=
rested in having you.<br><br>Please see our website for more information ab=
out the event agenda, as well as links to our Slack workspace and YouTube a=
ccount.<br><br><a href=3D"https://www.softwaredefinedradio.in/" target=3D"_=
blank">https://www.softwaredefinedradio.in/</a><br><br>You can watch our fi=
rst event on our YouTube channel at:<br><a href=3D"https://www.youtube.com/=
channel/UCy04XwXPMDVUucWYYvwg-Yg" target=3D"_blank">https://www.youtube.com=
/channel/UCy04XwXPMDVUucWYYvwg-Yg</a><br><br>Join our Slack workspace to as=
k questions and interact with other attendees:<br><a href=3D"http://si-sdr-=
ug.slack.com/" target=3D"_blank">http://si-sdr-ug.slack.com/</a><br><br>We =
look forward to seeing you all on Saturday July 24!<br><br>Thanks and regar=
ds,<br><br>Rohan Sundar<br><br>Organizing Committee SI-SDR-UG</font></pre><=
/div>

--000000000000abec0b05c7cd0322
Content-Type: text/calendar; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

BEGIN:VCALENDAR
VERSION:2.0
PRODID:SI-SDR-UG
BEGIN:VTIMEZONE
TZID:Asia/Kolkata
BEGIN:STANDARD
TZNAME:IST
TZOFFSETFROM:+0200
TZOFFSETTO:+0100
END:STANDARD
BEGIN:EVENING
TZNAME:IST
TZOFFSETFROM:+0100
TZOFFSETTO:+0200
END:EVENING
END:VTIMEZONE
BEGIN:VEVENT
UID:SI-SDR-UG
DTSTART;TZID=3DAsia/Kolkata:20210724T190000
DTEND;TZID=3DAsia/Kolkata:20210724T221500
DESCRIPTION:The South Indian SDR User Group (SI-SDR-UG) was founded in Janu=
ary 2021, and is a community of people, from novices to experts, spanning i=
ndustry, academia, and government, who are interested in the design and imp=
lementation of Software-Defined Radio (SDR) technology and systems. This in=
cludes such diverse areas such as RF, digital signal processing (DSP), wire=
less communications, operating systems, computer networking, software devel=
opment and optimization, machine learning, and radio hardware. The mission =
of our community is to facilitate the exchange of ideas and enable greater =
collaboration within the SDR community in India. We host a regular technica=
l workshops and gatherings, and we also run a dedicated Slack workspace for=
 the community. We have a YouTube channel for recordings of past events, an=
d a GitHub page for any relevant code. Our Twitter feed contains announceme=
nts about events and other news relevant to the community. We are not focus=
ed or tied to any one single software tool, hardware platform, commercial v=
endor, or specific technology. The SI-SDR-UG is non-profit, and the people =
on the organizing committee are all volunteers. We are based in Bangalore, =
but we invite people from all throughout India, as well as from outside Ind=
ia, to join our community. Please reach out to us on Slack or by email if y=
ou have any questions or comments. Thank you!
DTSTAMP:20210724T190000Z
LOCATION:https://www.youtube.com/channel/UCy04XwXPMDVUucWYYvwg-Yg
SUMMARY:19:00 - 19:15 -- Opening Remarks, Introductions, Community Announce=
ments
19:15 - 20:00 -- "Introduction to GNU Radio Series, Part 1" by Neel Pandeya
20:00 - 20:45 -- "Introduction to ML Series, Part 1" by Rohan Sundar
20:45 - 21:30 -- "Silice, a language for hardcoding algorithms into FPGA ha=
rdware" by Sylvain Lefebvre
21:30 - 22:15 -- Closing Remarks
URL:https://www.softwaredefinedradio.in/events
END:VEVENT
END:VCALENDAR

--000000000000abec0b05c7cd0322--

--000000000000abec0c05c7cd0324
Content-Type: text/calendar; charset="US-ASCII"; name="invite.ics"
Content-Disposition: attachment; filename="invite.ics"
Content-Transfer-Encoding: base64
Content-ID: <f_krgkg66k0>
X-Attachment-Id: f_krgkg66k0

QkVHSU46VkNBTEVOREFSDQpWRVJTSU9OOjIuMA0KUFJPRElEOlNJLVNEUi1VRw0KQkVHSU46VlRJ
TUVaT05FDQpUWklEOkFzaWEvS29sa2F0YQ0KQkVHSU46U1RBTkRBUkQNClRaTkFNRTpJU1QNClRa
T0ZGU0VURlJPTTorMDIwMA0KVFpPRkZTRVRUTzorMDEwMA0KRU5EOlNUQU5EQVJEDQpCRUdJTjpF
VkVOSU5HDQpUWk5BTUU6SVNUDQpUWk9GRlNFVEZST006KzAxMDANClRaT0ZGU0VUVE86KzAyMDAN
CkVORDpFVkVOSU5HDQpFTkQ6VlRJTUVaT05FDQpCRUdJTjpWRVZFTlQNClVJRDpTSS1TRFItVUcN
CkRUU1RBUlQ7VFpJRD1Bc2lhL0tvbGthdGE6MjAyMTA3MjRUMTkwMDAwDQpEVEVORDtUWklEPUFz
aWEvS29sa2F0YToyMDIxMDcyNFQyMjE1MDANCkRFU0NSSVBUSU9OOlRoZSBTb3V0aCBJbmRpYW4g
U0RSIFVzZXIgR3JvdXAgKFNJLVNEUi1VRykgd2FzIGZvdW5kZWQgaW4gSmFudWFyeSAyMDIxLCBh
bmQgaXMgYSBjb21tdW5pdHkgb2YgcGVvcGxlLCBmcm9tIG5vdmljZXMgdG8gZXhwZXJ0cywgc3Bh
bm5pbmcgaW5kdXN0cnksIGFjYWRlbWlhLCBhbmQgZ292ZXJubWVudCwgd2hvIGFyZSBpbnRlcmVz
dGVkIGluIHRoZSBkZXNpZ24gYW5kIGltcGxlbWVudGF0aW9uIG9mIFNvZnR3YXJlLURlZmluZWQg
UmFkaW8gKFNEUikgdGVjaG5vbG9neSBhbmQgc3lzdGVtcy4gVGhpcyBpbmNsdWRlcyBzdWNoIGRp
dmVyc2UgYXJlYXMgc3VjaCBhcyBSRiwgZGlnaXRhbCBzaWduYWwgcHJvY2Vzc2luZyAoRFNQKSwg
d2lyZWxlc3MgY29tbXVuaWNhdGlvbnMsIG9wZXJhdGluZyBzeXN0ZW1zLCBjb21wdXRlciBuZXR3
b3JraW5nLCBzb2Z0d2FyZSBkZXZlbG9wbWVudCBhbmQgb3B0aW1pemF0aW9uLCBtYWNoaW5lIGxl
YXJuaW5nLCBhbmQgcmFkaW8gaGFyZHdhcmUuIFRoZSBtaXNzaW9uIG9mIG91ciBjb21tdW5pdHkg
aXMgdG8gZmFjaWxpdGF0ZSB0aGUgZXhjaGFuZ2Ugb2YgaWRlYXMgYW5kIGVuYWJsZSBncmVhdGVy
IGNvbGxhYm9yYXRpb24gd2l0aGluIHRoZSBTRFIgY29tbXVuaXR5IGluIEluZGlhLiBXZSBob3N0
IGEgcmVndWxhciB0ZWNobmljYWwgd29ya3Nob3BzIGFuZCBnYXRoZXJpbmdzLCBhbmQgd2UgYWxz
byBydW4gYSBkZWRpY2F0ZWQgU2xhY2sgd29ya3NwYWNlIGZvciB0aGUgY29tbXVuaXR5LiBXZSBo
YXZlIGEgWW91VHViZSBjaGFubmVsIGZvciByZWNvcmRpbmdzIG9mIHBhc3QgZXZlbnRzLCBhbmQg
YSBHaXRIdWIgcGFnZSBmb3IgYW55IHJlbGV2YW50IGNvZGUuIE91ciBUd2l0dGVyIGZlZWQgY29u
dGFpbnMgYW5ub3VuY2VtZW50cyBhYm91dCBldmVudHMgYW5kIG90aGVyIG5ld3MgcmVsZXZhbnQg
dG8gdGhlIGNvbW11bml0eS4gV2UgYXJlIG5vdCBmb2N1c2VkIG9yIHRpZWQgdG8gYW55IG9uZSBz
aW5nbGUgc29mdHdhcmUgdG9vbCwgaGFyZHdhcmUgcGxhdGZvcm0sIGNvbW1lcmNpYWwgdmVuZG9y
LCBvciBzcGVjaWZpYyB0ZWNobm9sb2d5LiBUaGUgU0ktU0RSLVVHIGlzIG5vbi1wcm9maXQsIGFu
ZCB0aGUgcGVvcGxlIG9uIHRoZSBvcmdhbml6aW5nIGNvbW1pdHRlZSBhcmUgYWxsIHZvbHVudGVl
cnMuIFdlIGFyZSBiYXNlZCBpbiBCYW5nYWxvcmUsIGJ1dCB3ZSBpbnZpdGUgcGVvcGxlIGZyb20g
YWxsIHRocm91Z2hvdXQgSW5kaWEsIGFzIHdlbGwgYXMgZnJvbSBvdXRzaWRlIEluZGlhLCB0byBq
b2luIG91ciBjb21tdW5pdHkuIFBsZWFzZSByZWFjaCBvdXQgdG8gdXMgb24gU2xhY2sgb3IgYnkg
ZW1haWwgaWYgeW91IGhhdmUgYW55IHF1ZXN0aW9ucyBvciBjb21tZW50cy4gVGhhbmsgeW91IQ0K
RFRTVEFNUDoyMDIxMDcyNFQxOTAwMDBaDQpMT0NBVElPTjpodHRwczovL3d3dy55b3V0dWJlLmNv
bS9jaGFubmVsL1VDeTA0WHdYUE1EVlV1Y1dZWXZ3Zy1ZZw0KU1VNTUFSWToxOTowMCAtIDE5OjE1
IC0tIE9wZW5pbmcgUmVtYXJrcywgSW50cm9kdWN0aW9ucywgQ29tbXVuaXR5IEFubm91bmNlbWVu
dHMNCjE5OjE1IC0gMjA6MDAgLS0gIkludHJvZHVjdGlvbiB0byBHTlUgUmFkaW8gU2VyaWVzLCBQ
YXJ0IDEiIGJ5IE5lZWwgUGFuZGV5YQ0KMjA6MDAgLSAyMDo0NSAtLSAiSW50cm9kdWN0aW9uIHRv
IE1MIFNlcmllcywgUGFydCAxIiBieSBSb2hhbiBTdW5kYXINCjIwOjQ1IC0gMjE6MzAgLS0gIlNp
bGljZSwgYSBsYW5ndWFnZSBmb3IgaGFyZGNvZGluZyBhbGdvcml0aG1zIGludG8gRlBHQSBoYXJk
d2FyZSIgYnkgU3lsdmFpbiBMZWZlYnZyZQ0KMjE6MzAgLSAyMjoxNSAtLSBDbG9zaW5nIFJlbWFy
a3MNClVSTDpodHRwczovL3d3dy5zb2Z0d2FyZWRlZmluZWRyYWRpby5pbi9ldmVudHMNCkVORDpW
RVZFTlQNCkVORDpWQ0FMRU5EQVINCg==
--000000000000abec0c05c7cd0324
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--000000000000abec0c05c7cd0324--
