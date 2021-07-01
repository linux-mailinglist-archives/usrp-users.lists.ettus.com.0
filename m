Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9553B936B
	for <lists+usrp-users@lfdr.de>; Thu,  1 Jul 2021 16:34:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0ED453847EF
	for <lists+usrp-users@lfdr.de>; Thu,  1 Jul 2021 10:34:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="zvTXYpW8";
	dkim-atps=neutral
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 3E1203847E1
	for <usrp-users@lists.ettus.com>; Thu,  1 Jul 2021 10:33:49 -0400 (EDT)
Received: by mail-ej1-f52.google.com with SMTP id hc16so10717699ejc.12
        for <usrp-users@lists.ettus.com>; Thu, 01 Jul 2021 07:33:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=45sCZedgM2GL0kUgGecDRdzcZ0UlEoEIajBHPcJVqwI=;
        b=zvTXYpW8oZPq+hPJijeX0eA87/hqr20jnqc0JrbC90nxXcy/caMlZqPGxllJgacKYS
         u05tQ0+tNqNO2EqIykRQLyGlzxzaCg4tw4e9XriuURIMhQvn7fZdayO5iUZoZFZOZFLI
         jzGaeSmceh8d9KUe7GDbcRR7zKL3sn/IM5K/h9qKjNgsopX0MDBGLTElDAljguLFL52X
         P2wl/DZfZTj96lpYGheGcAS8fYeVyCULpeS72S1NMDfHhgde+lTn/sxRfo2HE/S9dYZy
         sicyeaZWCq1a53u2X6FP7V5bInnFTm6/DQK4DdPdwZroImz12deehfOVAyRwC5V+ljf9
         FeSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=45sCZedgM2GL0kUgGecDRdzcZ0UlEoEIajBHPcJVqwI=;
        b=evYkfx6HFwBQJYGnrRtCptnhs7cR1bft/tt6FRCR070DhTOEgoKc452YYWL0U9PsXU
         j+3IHVZNwDu9tTOQhkiv53PwWzru5ok4WdaHHykA8GRw/dq6vqUmI26L9ke4Ea31g2G3
         r8geFISyk4wDxSl/zrfXFGb+xvjLg8+gcohcpHub6CLN5HYTR1vtbxQO4XZSdXJzEaiy
         1ewXJNWS+5lU6YYoTu/yBHhO6HAEfWC428YH43d/76JL0GgWIR+ekpX12R2yJMo5z8RJ
         AfN/4hWRKgzAOV8CQV18Ndks9+Vd31ASbMjfySapfvKdi8JmDCvFX9AEvZBZLnPpMfOf
         +DhQ==
X-Gm-Message-State: AOAM5317E5pHqJBw9R7Z5W46EGmuyhhDA2e1gRbKXLxfQBEUfArBDo0x
	Q8fiCfXJNNo9aCklHg684S/ZoHVRdy6r8eEbt9a1kLmqHDXEfA==
X-Google-Smtp-Source: ABdhPJzxHL2dYBGA2oKBsIT7e3lSbzABwZztWMnXWuy8VCW1m/HIDmWZoEeEzGpCeVukgqQcLSyg0rQnwpKTuJPzi8w=
X-Received: by 2002:a17:906:852:: with SMTP id f18mr157621ejd.346.1625150028080;
 Thu, 01 Jul 2021 07:33:48 -0700 (PDT)
MIME-Version: 1.0
From: Aaron Rossetto <aaron.rossetto@ettus.com>
Date: Thu, 1 Jul 2021 09:33:37 -0500
Message-ID: <CAAg5+Mx13UALQeVb1mYs71NREpXHnJ3s5cMW--3FL9Ox81PWHA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: PVB74N4Y6QUHSV7CFXU5VT22AL5LTLWV
X-Message-ID-Hash: PVB74N4Y6QUHSV7CFXU5VT22AL5LTLWV
X-MailFrom: aaron.rossetto@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 4.1.0.0 released!
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PVB74N4Y6QUHSV7CFXU5VT22AL5LTLWV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3852753665666693153=="

--===============3852753665666693153==
Content-Type: multipart/alternative; boundary="000000000000217b5505c610bae2"

--000000000000217b5505c610bae2
Content-Type: text/plain; charset="UTF-8"

Hello USRP community,

On behalf on everyone at NI/Ettus Research, I am very proud to announce the
release of UHD 4.1, the latest version of the USRP Hardware Driver! As my
colleague Haydn Nelson posted to the list earlier in the week, UHD 4.1
offers support for the newest member of the USRP family, the NI Ettus USRP
X410. This new generation of USRP provides the highest performance of any
USRP to date, sporting 4x4 TX/RX channels, 400 MHz instantaneous bandwidth
per channel, and a tunable range from 1 MHz to 7.2 GHz, to name just a few
of its best-in-class features. Check out the Ettus Research website[1] to
learn more about the X410. Beyond support for the X410, however, UHD 4.1
also provides numerous bug fixes and stability improvements benefitting the
entire stable of USRP devices. See the changelog associated with the
v4.1.0.0 tag[2] for a more comprehensive list of changes.

While we strive to ensure the highest quality of UHD releases, it is
possible that some gremlins may have found their way into the process. We
appreciate your patience and understanding as we shake out any remaining
bugs. If you encounter problems, please let us know by filing a issue
against UHD on the GitHub repo[3] or by posting to the USRP-users mailing
list so that we can get it resolved.

Finally, we hope to see you in person or virtually at GNU Radio Conference
2021[4], taking place 20-24 September 2021.

With best regards,
Aaron Rossetto

[1]
https://www.ettus.com/introducing-the-most-advanced-sdr-the-ni-ettus-usrp-x410/
[2] https://github.com/EttusResearch/uhd/releases/tag/v4.1.0.0
[3] https://github.com/EttusResearch/uhd/issues/
[4] https://events.gnuradio.org/event/8/

--000000000000217b5505c610bae2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"font-family:arial,sans-serif" class=3D"gmail=
_default"></div><div class=3D"gmail_default" style=3D"font-family:arial,san=
s-serif">Hello USRP community,</div><div class=3D"gmail_default" style=3D"f=
ont-family:arial,sans-serif"><br></div><div class=3D"gmail_default" style=
=3D"font-family:arial,sans-serif">On behalf on everyone at NI/Ettus Researc=
h, I am very proud to announce the release of UHD 4.1, the latest version o=
f the USRP Hardware Driver! As my colleague Haydn Nelson posted to the list=
 earlier in the week, UHD 4.1 offers support for the newest member of the U=
SRP family, the NI Ettus USRP X410. This new generation of USRP provides th=
e highest performance of any USRP to date, sporting 4x4 TX/RX channels, 400=
 MHz instantaneous bandwidth per channel, and a tunable range from 1 MHz to=
 7.2 GHz, to name just a few of its best-in-class features. Check out the E=
ttus Research website[1] to learn more about the X410. Beyond support for t=
he X410, however, UHD 4.1 also provides numerous bug fixes and stability im=
provements benefitting the entire stable of USRP devices. See the changelog=
 associated with the v4.1.0.0 tag[2] for a more comprehensive list of chang=
es.<br></div><div class=3D"gmail_default" style=3D"font-family:arial,sans-s=
erif"><br></div><div><span class=3D"gmail_default" style=3D"font-family:ari=
al,sans-serif">While</span><span class=3D"gmail_default" style=3D"font-fami=
ly:arial,sans-serif">=C2=A0we strive to ensure the highest quality of UHD r=
eleases, it is possible that some gremlins may have found their way into th=
e process. We appreciate your patience and understanding as we shake out an=
y remaining bugs. If you encounter problems, please let us know by filing a=
 issue against UHD on the GitHub repo[3] or by posting to the USRP-users ma=
iling list so that we can get it resolved.<br></span></div><div><span class=
=3D"gmail_default" style=3D"font-family:arial,sans-serif"><br></span></div>=
<div><span class=3D"gmail_default" style=3D"font-family:arial,sans-serif">F=
inally, we hope to see you in person or virtually at GNU Radio Conference 2=
021[4], taking place 20-24 September 2021.<br></span></div><div><span class=
=3D"gmail_default" style=3D"font-family:arial,sans-serif"><br></span></div>=
<div class=3D"gmail_default" style=3D"font-family:arial,sans-serif">With be=
st regards,</div><div class=3D"gmail_default" style=3D"font-family:arial,sa=
ns-serif">Aaron Rossetto<br></div><br><div class=3D"gmail_default" style=3D=
"font-family:arial,sans-serif">[1] <a href=3D"https://www.ettus.com/introdu=
cing-the-most-advanced-sdr-the-ni-ettus-usrp-x410/">https://www.ettus.com/i=
ntroducing-the-most-advanced-sdr-the-ni-ettus-usrp-x410/</a></div><div clas=
s=3D"gmail_default" style=3D"font-family:arial,sans-serif">[2] <a href=3D"h=
ttps://github.com/EttusResearch/uhd/releases/tag/v4.1.0.0">https://github.c=
om/EttusResearch/uhd/releases/tag/v4.1.0.0</a></div><div class=3D"gmail_def=
ault" style=3D"font-family:arial,sans-serif">[3] <a href=3D"https://github.=
com/EttusResearch/uhd/issues/">https://github.com/EttusResearch/uhd/issues/=
</a></div><div class=3D"gmail_default" style=3D"font-family:arial,sans-seri=
f">[4] <a href=3D"https://events.gnuradio.org/event/8/">https://events.gnur=
adio.org/event/8/</a></div></div>

--000000000000217b5505c610bae2--

--===============3852753665666693153==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3852753665666693153==--
