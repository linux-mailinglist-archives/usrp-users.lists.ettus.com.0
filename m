Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EE9D9909
	for <lists+usrp-users@lfdr.de>; Wed, 16 Oct 2019 20:19:59 +0200 (CEST)
Received: from [::1] (port=40138 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iKnts-0008DI-Md; Wed, 16 Oct 2019 14:19:56 -0400
Received: from mail-qk1-f179.google.com ([209.85.222.179]:46053)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <cuervonicolas@gmail.com>)
 id 1iKnto-00083D-Hr
 for usrp-users@lists.ettus.com; Wed, 16 Oct 2019 14:19:52 -0400
Received: by mail-qk1-f179.google.com with SMTP id z67so23640459qkb.12
 for <usrp-users@lists.ettus.com>; Wed, 16 Oct 2019 11:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=CuJWzMGM7iyUMMT9jOJ3l+jXTwWHn8PlhQplOoSzZuk=;
 b=ZxEUcevIB7Qckwi0Uz9tEKOyYkOUBPkakhJ1cSV3PZ7jnaDHMSb3R9Dlx8LOUsQ1fQ
 gZL1ecN74LQFAG9lQpUDuCUqqHiY0iOpFxlhMVOkKMSqr9cZLr4Wn8Zd5cbPXLQq8EPM
 LJTMIHYSSYARZXXXaljarMyZoKNe4R8fNE+Sxl5P+afRN0poOTiJhK9BQTGebrrEawy9
 6B741bbd/ua6XyYPsD0pJyph6i7DPhH0oxVMlukBTqR2hFp4ev/2N0l/y/p7k+cDaM9l
 QdfDuEk7ESxhWDso+uiHWeGVyggB2gHTnQcAL0ai8QUaK5yR5ww+iIvKuckafa2Dxlol
 EVIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=CuJWzMGM7iyUMMT9jOJ3l+jXTwWHn8PlhQplOoSzZuk=;
 b=aI9bTicVbDtTwQ50e4IhwUOqyhbEII+IKlEAMDylzMRkB/cp6D6Ipl7fp2g7RMGVkk
 LL5zC42cTVp4rU8ZU5/1hZCnayQLA82HqaH2y4fbyTSWlh0T2p3NkYBtixN0n9mFN21L
 ORteZMPTGx32oBYM61kfbPrjfVyAUWyRstvzzCoqKuCbbywKErxDK0s/dtOOKc6RrBSE
 xoZuzfNQJlmyGlk65K0jmOmxa6nZRXsXqMklnAW59Bo1v07ujsiimu8BSFYK1wp9hAmu
 P4t7oPhxu4jPn6zoBry/gx1MtS6SIJJdWSy+JIm+A+pcjyBmx28OdMLH50A1YomJiaQC
 5nSw==
X-Gm-Message-State: APjAAAXHieMtiwfwr+2gkqlOstjbW/LEuwf2CvlljMxxEYcBziY2I5Jd
 /KxY+IWIK66GuiDl1vdN8ETZ//nAVpjlA7U1r7c=
X-Google-Smtp-Source: APXvYqxQzGPkoo/jo1xFsncAaxgGTHB0Y1YU0ZIhpnpp0QY1uIMcIf8xwPHMa2l2r7OdwiulWn5LlmItCS9e5/aFWcE=
X-Received: by 2002:ae9:ec11:: with SMTP id h17mr40740986qkg.485.1571249951717; 
 Wed, 16 Oct 2019 11:19:11 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 16 Oct 2019 20:19:00 +0200
Message-ID: <CAG-BkhYSJvb4TvVR+nMRzZqW+6pew4ArFHCiCviifVoAQp4LLQ@mail.gmail.com>
To: discuss-gnuradio <discuss-gnuradio@gnu.org>, 
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] FOSDEM 2020: Free Software Radio Devroom CfP
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
From: Nicolas Cuervo Benavides via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nicolas Cuervo Benavides <cuervonicolas@gmail.com>
Content-Type: multipart/mixed; boundary="===============4759145027836784550=="
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

--===============4759145027836784550==
Content-Type: multipart/alternative; boundary="00000000000039bf1705950b23bf"

--00000000000039bf1705950b23bf
Content-Type: text/plain; charset="UTF-8"

Dear friends and fans of software-defined radio and free/open-source radio
topics in general,

FOSDEM 2020 (the free and open-source developer's meeting in Brussels,
Europe) will, once again, feature a track on Software Defined Radio, and
any other radio-related topics in the (now known as) *Free Software
Radio* devroom.
Therefore, we invite developers and users from the free software radio
community to join us for this track and present your talks or demos.


Software Radio has become an important tool to allow anyone to access the
EM spectrum. Using free software radio libraries and applications and cheap
hardware, anyone can now start hacking on wireless communications, remote
sensing, radar, fun hacks of all sorts, or other applications. At FOSDEM,
we hope to network all these projects and improve collaboration, bring new
ideas forward and get more people involved.


The track's web site resides at the link below. The final schedule will be
available through Pentabarf and the official FOSDEM website.

https://fosdem.org/2020/schedule/track/free_software_radio/


Additional Information will be also available at:
https://wiki.gnuradio.org/index.php/FOSDEM_2020


** Submit your presentations

To suggest a talk, go to https://penta.fosdem.org/submission/FOSDEM20 and
follow the instructions (you need an account, but can use your account from
last year if you have one). You need to create an 'Event'; make sure it's
in the Free Software Radio track! Lengths aren't fixed, but give a
realistic estimate and please don't exceed 30 minutes unless you have
something special planned (in that case, contact one of us). Also, don't
forget to include time for Q&A.
We will typically go for 30-minute slots -- shorter talks, unless they're
really short, usually tend to screw up the schedule too much.

You aren't limited to slide presentations, of course. Be creative. However,
FOSDEM is an open-source conference, therefore we ask you to stay clear of
marketing presentations and present something relevant to free/open
software. We like nitty-gritty technical stuff.

Topics discussed in this devroom include:

* SDR Frameworks + Tools
* Cellular/telecoms software
* Free/Open SDR hardware
* Wireless security
* Random fun wireless hacks
* SDR in education
* Satellite/spacecraft communication
* Ham radio related topics


** Important Dates

FOSDEM is February 1st and 2nd, 2020. The Free Software Radio devroom is
happening on Sunday, the 2nd of February.

The submission deadline is Friday, December 6th. A complete schedule for
the presentations in the devroom will be available on the 15th of December.


In the last years we were always full to the brim with presentations, so if
you want to present, please make sure to submit your abstracts soon!

** Steering Committee
The track committee consists of:

* Phil Balister - "Crofton"
* Sylvain Munaut -"tnt"
* Derek Kozel - "dkozel"
* Nicolas Cuervo - "primercuervo"
* Martin Braun - "mbr0wn"  (Emeritus)


Hope to hear from you soon! And please forward this announcement.

--00000000000039bf1705950b23bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear friends and fans of software-defined radio and free/o=
pen-source radio topics in general,<br><div><br></div><div><p style=3D"marg=
in:0.5em 0px;line-height:inherit;color:rgb(37,37,37);font-family:sans-serif=
">FOSDEM 2020 (the free and open-source developer&#39;s meeting in Brussels=
, Europe) will, once again, feature a track on Software Defined Radio, and =
any other radio-related topics in the (now known as)=C2=A0<i>Free Software =
Radio</i>=C2=A0devroom. Therefore, we invite developers and users from the =
free software radio community to join us for this track and present your ta=
lks or demos.</p><p style=3D"margin:0.5em 0px;line-height:inherit;color:rgb=
(37,37,37);font-family:sans-serif"><br></p><p style=3D"margin:0.5em 0px;lin=
e-height:inherit;color:rgb(37,37,37);font-family:sans-serif">Software Radio=
 has become an important tool to allow anyone to access the EM spectrum. Us=
ing free software radio libraries and applications and cheap hardware, anyo=
ne can now start hacking on wireless communications, remote sensing, radar,=
 fun hacks of all sorts, or other applications. At FOSDEM, we hope to netwo=
rk all these projects and improve collaboration, bring new ideas forward an=
d get more people involved.</p><p style=3D"margin:0.5em 0px;line-height:inh=
erit;color:rgb(37,37,37);font-family:sans-serif"><br></p><p style=3D"margin=
:0.5em 0px;line-height:inherit;color:rgb(37,37,37);font-family:sans-serif">=
The track&#39;s web site resides at the link below<span style=3D"font-famil=
y:Arial,Helvetica,sans-serif;color:rgb(34,34,34)">. The final schedule will=
=C2=A0</span><span style=3D"font-family:Arial,Helvetica,sans-serif;color:rg=
b(34,34,34)">be available through Pentabarf and the official FOSDEM website=
.</span></p><p style=3D"margin:0.5em 0px;line-height:inherit;color:rgb(37,3=
7,37);font-family:sans-serif"><a href=3D"https://fosdem.org/2020/schedule/t=
rack/free_software_radio/" target=3D"_blank">https://fosdem.org/2020/schedu=
le/track/free_software_radio/</a><br></p><p style=3D"margin:0.5em 0px;line-=
height:inherit;color:rgb(37,37,37);font-family:sans-serif"><br></p><p style=
=3D"margin:0.5em 0px;line-height:inherit;color:rgb(37,37,37);font-family:sa=
ns-serif">Additional Information will be also available at:=C2=A0<a href=3D=
"https://wiki.gnuradio.org/index.php/FOSDEM_2020" target=3D"_blank" style=
=3D"font-family:Arial,Helvetica,sans-serif">https://wiki.gnuradio.org/index=
.php/FOSDEM_2020</a></p><p style=3D"margin:0.5em 0px;line-height:inherit;co=
lor:rgb(37,37,37);font-family:sans-serif"><br>** Submit your presentations<=
br></p><p style=3D"margin:0.5em 0px;line-height:inherit;color:rgb(37,37,37)=
;font-family:sans-serif">To suggest a talk, go to=C2=A0<a href=3D"https://p=
enta.fosdem.org/submission/FOSDEM20" target=3D"_blank">https://penta.fosdem=
.org/submission/FOSDEM20</a>=C2=A0and follow the instructions (you need an =
account, but can use your account from last year if you have one). You need=
 to create an &#39;Event&#39;; make sure it&#39;s in the Free Software Radi=
o track! Lengths aren&#39;t fixed, but give a realistic estimate and please=
 don&#39;t exceed 30 minutes unless you have something special planned (in =
that case, contact one of us). Also, don&#39;t forget to include time for Q=
&amp;A.<br>We will typically go for 30-minute slots -- shorter talks, unles=
s they&#39;re really short, usually tend to screw up the schedule too much.=
<br></p><p style=3D"margin:0.5em 0px;line-height:inherit;color:rgb(37,37,37=
);font-family:sans-serif">You aren&#39;t limited to slide presentations, of=
 course. Be creative. However, FOSDEM is an open-source conference, therefo=
re we ask you to stay clear of marketing presentations and present somethin=
g relevant to free/open software. We like nitty-gritty technical stuff.<br>=
<br>Topics discussed in this devroom include:<br><br>* SDR Frameworks + Too=
ls<br>* Cellular/telecoms software<br>* Free/Open SDR hardware<br>* Wireles=
s security<br>* Random fun wireless hacks<br>* SDR in education<br>* Satell=
ite/spacecraft communication<br>* Ham radio related topics<br><br><br>** Im=
portant Dates<br></p><p style=3D"margin:0.5em 0px;line-height:inherit;color=
:rgb(37,37,37);font-family:sans-serif">FOSDEM is February 1st and 2nd, 2020=
. The Free Software Radio devroom is happening on Sunday, the 2nd of Februa=
ry.</p><p style=3D"margin:0.5em 0px;line-height:inherit;color:rgb(37,37,37)=
;font-family:sans-serif">The submission deadline is Friday, December 6th. A=
 complete schedule for the presentations in the devroom will be available o=
n the 15th of December.</p><p style=3D"margin:0.5em 0px;line-height:inherit=
;color:rgb(37,37,37);font-family:sans-serif"><br></p><p style=3D"margin:0.5=
em 0px;line-height:inherit;color:rgb(37,37,37);font-family:sans-serif">In t=
he last years we were always full to the brim with presentations, so if you=
 want to present, please make sure to submit your abstracts soon!<br><br>**=
 Steering Committee<br>The track committee consists of:<br><br>* Phil Balis=
ter -=C2=A0&quot;Crofton&quot;<br>* Sylvain Munaut -&quot;tnt&quot;<br>* De=
rek Kozel - &quot;dkozel&quot;<br>* Nicolas Cuervo - &quot;primercuervo&quo=
t;<br>* Martin Braun -=C2=A0&quot;mbr0wn&quot;=C2=A0 (Emeritus)<br></p><p s=
tyle=3D"margin:0.5em 0px;line-height:inherit;color:rgb(37,37,37);font-famil=
y:sans-serif"><br></p><p style=3D"margin:0.5em 0px;line-height:inherit;colo=
r:rgb(37,37,37);font-family:sans-serif">Hope to hear from you soon! And ple=
ase forward this announcement.<span class=3D"gmail-HOEnZb"><font color=3D"#=
888888"><br></font></span></p></div></div>

--00000000000039bf1705950b23bf--


--===============4759145027836784550==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4759145027836784550==--

