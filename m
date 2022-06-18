Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A527A5506A4
	for <lists+usrp-users@lfdr.de>; Sat, 18 Jun 2022 22:16:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 260E2384281
	for <lists+usrp-users@lfdr.de>; Sat, 18 Jun 2022 16:16:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655583415; bh=knG28SIP8DEA4Q6FYHPBg9a2nouazjgAR6Z7UVEBkdk=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vl39YY8mPzAL9swBLjSYHdOJpin6eRAOUnZx3cvSnKHr7sSz2ZdPjzJu+2PpbJ36e
	 ElEOBMaGBTeuUbPDgQkwaScTNtOzG0at1vwAXEq1gMh8p6duYIma+zNWltRpYyJ22J
	 m7tlPNHrrIDMJ1gmq00WgALbKRSpX7xRAS3Od+pydzVS9SlySS/xCDdvLwZ3qVq5/A
	 Mvx0yl/Ri2n51NDT1dzRTpzwx+xlb3KgBYejvqs8zcbo26rXXaS/j9nf9VeDrYzeU2
	 P1fTgwUuECBXwikOmC2JhYqwv9UCzC7ijQDjT3vCpivf9p2TDZZzgIAQ2pF7S01X92
	 iLWcQaJCz9atA==
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 3788B3841DC
	for <usrp-users@lists.ettus.com>; Sat, 18 Jun 2022 16:15:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="BCgodF/m";
	dkim-atps=neutral
Received: by mail-il1-f169.google.com with SMTP id h7so5060726ila.10
        for <usrp-users@lists.ettus.com>; Sat, 18 Jun 2022 13:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=wiJ+YZZ/kdxtf1B55SEsJiZ3p/I9ge4y6bHVHiNXOag=;
        b=BCgodF/mMP9aBIwGzvk2ZIbrHmdXZkEHjVLX0eKATwWOhvAofZ+v7z7BLw/k+hlN2w
         t6pFth2I/i1ALdb/ZG2Yn08OBfOt7SctldTwrmGo5lrjwDVcmC3l5EMnHcLu5J1hKq5j
         Soiwcwcn6VJX54909po4bwvG6E+iaAVgZsJd+CXhOfeV+yq1Qa9djTcpFBbfBw9X6EnG
         aYIr0iSUqcWGeBvLd5qsfds9I3ta4rxctFGiiOUL1hfiGGM58MsjzO7Q/I0fNMFe1dUr
         vn362CH01zJyOwJGvJbCAKkQ2XyDWzZBLhrVhYCipFkUjG5/TpgIkmIKVV+H3KZra/20
         dxGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=wiJ+YZZ/kdxtf1B55SEsJiZ3p/I9ge4y6bHVHiNXOag=;
        b=JKIAuBFtfEPV7GZfiVi7W/8cN0gXz+HrOvvB/Ydv0r8lm+fbMKCu1Sq3YZldHEKtSM
         GVTI9Z2/L6nUuCROwteFg5lLAZAfDfZ0nqj05NDSc4hrsfP2qibM5ok/5xjztep0ixJK
         kuLTypR5T7zwee38KicJ6yjPr6uFlIHgR39C/IIN2UQnC8W6R8lbPjEnXLTfOjYsRMw3
         boP1NWUUN+b0AGYspGCW512AjV7nQI4a2R0dL90JppEa9AeWvgLG4WJ4QA7sjsPj3/2Q
         FvWQg5bKaviy0cOJn6Yp2AmzO/LNOtI5MUQnLqmYDRdW4Grx+s0DHBbjhuscDImpxC55
         FFgQ==
X-Gm-Message-State: AJIora/BpmEVZXN6ia/ZTXULdJDiUHEL6jQEGtHCaVA8Y+EyKldbXPBX
	Xds2HwwJFyb3AYvx7cECx9LWtLuwfJoGvBEWx86hhQDY8NQi+XiG
X-Google-Smtp-Source: AGRyM1skAGrtfH0eWiVeOPZZNkH9oxj2Iw+NRpSCeiNNZpNnVWBkU+L0nte6eCSo/gWrJmyX3PgdwF5+IqHjiJ3/63w=
X-Received: by 2002:a05:6e02:b25:b0:2d8:eef1:ccd1 with SMTP id
 e5-20020a056e020b2500b002d8eef1ccd1mr3866663ilu.180.1655583344959; Sat, 18
 Jun 2022 13:15:44 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Sat, 18 Jun 2022 15:15:09 -0500
Message-ID: <CACaXmv97C=0NzBCH7nJH_7zYsP6KNXjkTSpeE_HyWgfbHkVP3w@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 4JLVQSSIEZEDTA6YMFJFGLHDDDPWDRHJ
X-Message-ID-Hash: 4JLVQSSIEZEDTA6YMFJFGLHDDDPWDRHJ
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] GRCon22 needs your abstracts soon!!
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4JLVQSSIEZEDTA6YMFJFGLHDDDPWDRHJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0740396306234378325=="

--===============0740396306234378325==
Content-Type: multipart/alternative; boundary="0000000000002c417805e1be8993"

--0000000000002c417805e1be8993
Content-Type: text/plain; charset="UTF-8"

GRCon22 needs your abstracts soon!!

The GNU Radio Conference 2022 (GRCon22) is just three months away! This
year we've set an earlier abstract submission date of June 27.  To submit a
short abstract of your proposed talk, paper, or other participation option,
please check out our Call for Participation page for more details:

https://events.gnuradio.org/event/18/abstracts/

We know many of our community members have a special project they'd like to
share. So we encourage you to write a summary of it and submit your
abstract. We'd love to hear about all the awesome projects involving GNU
Radio, SDR, etc. Talks and papers at GRCon don't have to directly use GNU
Radio, they just have to be of interest to the general SDR community.

Registration for GRCon22 is open. Go to
https://tickets.gnuradio.org/grcon22/ for details. There are several levels
of registration, depending on your situation. Let us know if you have
questions or need more information by contacting tickets@gnuradio.org.

As with past GRCons, we have a reduced cost for Student Registration, and
Student Presenters can get FREE registration. Please see our Student
Registration page for more details:

https://events.gnuradio.org/event/18/page/58-student-registration

This year, GRCon will be held in Washington D.C. at the Capital Hilton,
just two blocks from the National Mall. We have special room rates for the
event which are comparable to other hotels in the area. Using the GRCon
room block directly supports our conference this year and is greatly
appreciated. Please use this link to book your room at the venue:

https://book.passkey.com/go/GNU2022

If you have any questions, including ideas for how to improve GRCon, or if
you'd like to get involved with organizing, please reach out to
grcon@gnuradio.org.  Our all-volunteer organizing team would love to hear
from you!

Key Dates:
* June 27 - Call for Participation Abstract Submissions Close
* August 26 - Initial Main Track Schedule Posted
* September 26 - Conference Begins

We look forward to seeing you at GRCon22!

--0000000000002c417805e1be8993
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"verd=
ana, sans-serif">GRCon22 needs your abstracts soon!!</font></div><font face=
=3D"verdana, sans-serif"><br>The GNU Radio Conference 2022 (GRCon22) is jus=
t three months away! This year we&#39;ve set an earlier abstract submission=
 date of June 27.=C2=A0 To submit a short abstract of your proposed talk, p=
aper, or other participation option, please check out our Call for Particip=
ation page for more details:<br><br><a href=3D"https://events.gnuradio.org/=
event/18/abstracts/">https://events.gnuradio.org/event/18/abstracts/</a><br=
><br>We know many of our community members have a special project they&#39;=
d like to share. So we encourage you to write a summary of it and submit yo=
ur abstract. We&#39;d love to hear about all the awesome projects involving=
 GNU Radio, SDR, etc. Talks and papers at GRCon don&#39;t have to directly =
use GNU Radio, they just have to be of interest to the general SDR communit=
y.<br><br>Registration for GRCon22 is open. Go to <a href=3D"https://ticket=
s.gnuradio.org/grcon22/">https://tickets.gnuradio.org/grcon22/</a> for deta=
ils. There are several levels of registration, depending on your situation.=
 Let us know if you have questions or need more information by contacting <=
a href=3D"mailto:tickets@gnuradio.org">tickets@gnuradio.org</a>.<br><br>As =
with past GRCons, we have a reduced cost for Student Registration, and Stud=
ent Presenters can get FREE registration. Please see our Student Registrati=
on page for more details:<br><br><a href=3D"https://events.gnuradio.org/eve=
nt/18/page/58-student-registration">https://events.gnuradio.org/event/18/pa=
ge/58-student-registration</a><br><br>This year, GRCon will be held <span c=
lass=3D"gmail_default" style=3D"font-family:verdana,sans-serif"></span></fo=
nt><span class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><=
/span><span style=3D"font-family:verdana,sans-serif">in Washington D.C.<spa=
n class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"> </span>=
</span><font face=3D"verdana, sans-serif"><span class=3D"gmail_default" sty=
le=3D"font-family:verdana,sans-serif"></span>at the Capital Hilton, just tw=
o blocks from the National Mall. We have special room rates for the event w=
hich are comparable to other hotels in the area. Using the GRCon room block=
 directly supports our conference this year and is greatly appreciated. Ple=
ase use this link to book your room at the venue:<br><br><a href=3D"https:/=
/book.passkey.com/go/GNU2022">https://book.passkey.com/go/GNU2022</a><br><b=
r>If you have any questions, including ideas for how to improve GRCon, or i=
f you&#39;d like to get involved with organizing, please reach out to <a hr=
ef=3D"mailto:grcon@gnuradio.org">grcon@gnuradio.org</a>.=C2=A0 Our all-volu=
nteer organizing team would love to hear from you!<br><br>Key Dates:<br>* J=
une 27 - Call for Participation Abstract Submissions Close<br>* August 26 -=
 Initial Main Track Schedule Posted<br>* September 26 - Conference Begins<b=
r><br>We look forward to seeing you at GRCon22!</font><div><font face=3D"ve=
rdana, sans-serif"><br></font></div><div><font face=3D"verdana, sans-serif"=
><br></font></div></div>

--0000000000002c417805e1be8993--

--===============0740396306234378325==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0740396306234378325==--
