Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B91C744728D
	for <lists+usrp-users@lfdr.de>; Sun,  7 Nov 2021 11:30:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A20EA384485
	for <lists+usrp-users@lfdr.de>; Sun,  7 Nov 2021 05:30:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=iitrpr.ac.in header.i=@iitrpr.ac.in header.b="brIpMaHh";
	dkim-atps=neutral
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 66D9E384101
	for <usrp-users@lists.ettus.com>; Sun,  7 Nov 2021 05:29:50 -0500 (EST)
Received: by mail-yb1-f181.google.com with SMTP id v7so35666077ybq.0
        for <usrp-users@lists.ettus.com>; Sun, 07 Nov 2021 02:29:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iitrpr.ac.in; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=QiZqVg+CcHBq172a814KSWu0q5xDGjT0J7MHajgCBLk=;
        b=brIpMaHhoYYIdfx5/jFMaEkbbl4b2NIibAJwUuuaGCX9eTIGbZjx/AJjaFf/q7wr7Z
         2w6c5/4OOBUhz+LmXC+B8/SXwLXB92I7T8gHtUymDTkSHSkHVMBw73jyX+D/4I1gHdkE
         Ix8oAKIQk/CrhqcmYSbryj1IVO95cGhrx8FEc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=QiZqVg+CcHBq172a814KSWu0q5xDGjT0J7MHajgCBLk=;
        b=I6DaowzARZ8BnicizmPkgX/n0RKpSn0RcjJJkpF7EhMP2IOe+zz0RZo11FeXEjSs6d
         m/m4bgKV7ZZlH7+Xl9ldEO8sjF3ushm/fHI9GZBTHVb35nPde9r8V6nPDuSr/IJH+MDc
         5F8AlwkC7xheMJTTw2syJcxkI1eJp5nP75FRMmdHMWaRO/zaYOnDB/FYb7lDqGyydLIH
         R9cW2k+F9dxJMOe8b8FNXwSqiTe0b25ei4l+MIMrDYiwBGhu02bWfCFI8IK5eiDz+cam
         yQ9+mlggQ5WHkB6WTZs5QJ1XbutjULUYlmoPgXY5jByzR+aLKlgfnDWJUXDmRzdrUuRf
         CivA==
X-Gm-Message-State: AOAM530Ikk+4XsQ5vkoQxSqW14hzsQ70FR28mIAXA6Jc45BgSXR4bAoH
	lrxvQRbppAtxzoz/LEx9a5He4/osgYpZ3k4EluPNLXGChN6MM2P0Z4bd+KNZJySK4LJxcRMuooV
	X3fqd32jzzthcRvpUJ07wHl1wA3aRjZ6I/PdxPA==
X-Google-Smtp-Source: ABdhPJzbv0oMfjqFsu0mBET/tOCOY+G8gwCXps7urYeRcfxGljzBKs+yioiIiRQbJ9WVrdLleCu4Oro/FgjYWTZW7yo=
X-Received: by 2002:a25:ba0f:: with SMTP id t15mr54128360ybg.184.1636280989771;
 Sun, 07 Nov 2021 02:29:49 -0800 (PST)
MIME-Version: 1.0
References: <CA+QP_P=XaKdpHFRSi4=iz9cnCJWyHeoNdZa1=hBP8DdNoevnUA@mail.gmail.com>
 <D6D63767-1C78-4D89-9C3D-B7F26CBFF546@gmail.com>
In-Reply-To: <D6D63767-1C78-4D89-9C3D-B7F26CBFF546@gmail.com>
Date: Sun, 7 Nov 2021 15:59:38 +0530
Message-ID: <CA+QP_Pn3CoPsrfQXM_d3w7wcR0_OabOWd7uoJw_74xpKFtwCSg@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
Message-ID-Hash: 2UCRS3VQRU3HAUIITWOVLNL3HTMEX54Q
X-Message-ID-Hash: 2UCRS3VQRU3HAUIITWOVLNL3HTMEX54Q
X-MailFrom: arhum.19eez0005@iitrpr.ac.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: HELP regarding B210 and B205mini-i
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2UCRS3VQRU3HAUIITWOVLNL3HTMEX54Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Arhum Ahmad via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Arhum Ahmad <arhum.19eez0005@iitrpr.ac.in>
Content-Type: multipart/mixed; boundary="===============2681252333509046877=="

--===============2681252333509046877==
Content-Type: multipart/alternative; boundary="00000000000026064105d0305bf7"

--00000000000026064105d0305bf7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear sir,

I am using B210 and B205mini-i. I have a few doubts. I hope you can help
me. Doubts are listed below:

1) In matlab simulink there is an option of master clock rate, but no
description can you please elaborate on that. Also it has some limit i.e.,
56e6 Hz what happens if I use more than this limit.

2) Is there any relation to select center frequency, master clock rate,
interpolation/decimation factor and gain.

3) Can you give the range of suitable gain.

4) There is an example in matlab for frequency calibration while using that
when I plot the spectrum it's the same with or without antenna which
suggest it is not working correctly. Can you suggest where the problem
might be?

5) I am trying to send a simple QPSK signal and receive(example from matlab
simulink). All blocks work fine in simulation but when I use USRP for Tx/Rx
BER is always 0.5 and I think usrp is not detecting any signal. Is there
any parameter mismatch?

On Sat, Nov 6, 2021 at 5:44 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> Yes. Just go ahead and ask your question.
>
> Sent from my iPhone
>
> On Nov 6, 2021, at 6:32 AM, Arhum Ahmad via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> =EF=BB=BF
> Respected sir,
> Is this the right email to to ask doubts?
>
> --
> *Thanks and Regards*
> *Arhum Ahmad*
> Ph.D. Scholar, Electrical Engineering Department, IIT Ropar
>
> +91- <+91-7015802356>7974897279 | arhum.19eez0005@iitrpr.ac.in
> <2016eez0009@iitrpr.ac.in>
> Lab No. 323, Communication Research Lab, J.C.Bose Building
>
> *CONFIDENTIALITY NOTICE: The contents of this email message and any
> attachments are intended solely for the addressee(s) and may contain
> confidential and/or privileged information and may be legally protected
> from disclosure. If you are not the intended recipient of this message or
> their agent, or if this message has been addressed to you in error, pleas=
e
> immediately alert the sender by reply email and then delete this message
> and any attachments. If you are not the intended recipient, you are hereb=
y
> notified that any use, dissemination, copying, or storage of this message
> or its attachments is strictly prohibited.*
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--=20
*Thanks and Regards*
*Arhum Ahmad*
Ph.D. Scholar, Electrical Engineering Department, IIT Ropar

+91- <+91-7015802356>7974897279 | arhum.19eez0005@iitrpr.ac.in
<2016eez0009@iitrpr.ac.in>
Lab No. 323, Communication Research Lab, J.C.Bose Building

--=20
**CONFIDENTIALITY NOTICE:=C2=A0The
 contents of this email message and any=20
attachments are intended solely=20
for the addressee(s) and may contain=20
confidential and/or privileged=20
information and may be legally protected=20
from disclosure. If you are not
 the intended recipient of this message or=20
their agent, or if this=20
message has been addressed to you in error, please=20
immediately alert the
 sender by reply email and then delete this message=20
and any attachments.
 If you are not the intended recipient, you are hereby=20
notified that any
 use, dissemination, copying, or storage of this message=20
or its=20
attachments is strictly prohibited.*























*

--00000000000026064105d0305bf7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear sir,<div><br></div><div>I am using B210 and B205mini-=
i. I have a few doubts. I hope you can help me. Doubts are listed below:</d=
iv><div><br></div><div>1) In matlab simulink there is an option of master c=
lock rate, but no description can you please elaborate=C2=A0on that. Also i=
t has some limit i.e., 56e6 Hz what happens if I use more than this limit.<=
/div><div><br></div><div>2) Is there any relation to select=C2=A0center fre=
quency, master clock rate, interpolation/decimation factor and gain.</div><=
div><br></div><div>3) Can you give the range of suitable=C2=A0gain.</div><d=
iv><br></div><div>4) There is an example in matlab for frequency calibratio=
n while using that when I plot the spectrum it&#39;s the same with or witho=
ut antenna which suggest it is not working correctly. Can you suggest where=
 the problem might be?</div><div><br></div><div>5) I am trying to send a si=
mple QPSK signal and receive(example from matlab simulink). All blocks work=
 fine in simulation but when I use USRP for Tx/Rx BER is always 0.5 and I t=
hink usrp is not detecting any signal. Is there any parameter mismatch?</di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Sat, Nov 6, 2021 at 5:44 PM Marcus D Leech &lt;<a href=3D"mailto:patch=
vonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Yes. Just go a=
head and ask your question.=C2=A0<br><br><div dir=3D"ltr">Sent from my iPho=
ne</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Nov 6, 2021, at 6=
:32 AM, Arhum Ahmad via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.e=
ttus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br><b=
r></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<d=
iv dir=3D"ltr">Respected sir,<div>Is this the right email=C2=A0to to ask do=
ubts?<br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"><div dir=3D"l=
tr"><div><div dir=3D"ltr"><div style=3D"color:rgb(100,100,100);font-family:=
Arial;font-size:12px;margin-bottom:5px;margin-top:0px"><b style=3D"color:rg=
b(53,28,117);font-family:Arial,Helvetica,sans-serif;font-size:small"><span =
style=3D"font-family:&quot;times new roman&quot;,serif">Thanks and Regards<=
/span></b><b><br></b></div><div style=3D"color:rgb(100,100,100);font-family=
:Arial;font-size:12px;margin-bottom:5px;margin-top:0px"><b>Arhum Ahmad</b><=
br>Ph.D. Scholar,=C2=A0Electrical Engineering Department, IIT Ropar</div><t=
able width=3D"470" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" style=
=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;width:470px;mar=
gin-top:5px"><tbody><tr><td style=3D"color:rgb(141,141,141)"><p style=3D"ma=
rgin:0px"><span style=3D"display:inline-block"><a href=3D"tel:+91-701580235=
6" style=3D"color:rgb(141,141,141);font-family:sans-serif" target=3D"_blank=
">+91-</a>7974897279</span>=C2=A0<span style=3D"color:rgb(69,102,142);displ=
ay:inline-block">|</span>=C2=A0arhum.19eez0005<span style=3D"display:inline=
-block"><a href=3D"mailto:2016eez0009@iitrpr.ac.in" style=3D"color:rgb(141,=
141,141);font-family:sans-serif" target=3D"_blank">@iitrpr.ac.in</a></span>=
</p></td></tr><tr><td style=3D"font-family:sans-serif;color:rgb(141,141,141=
)"><span style=3D"display:inline-block">Lab No. 323, Communication Research=
 Lab, J.C.Bose Building</span></td></tr></tbody></table></div></div></div><=
/div></div></div>

<br>
<b><font size=3D"1"><span><span><span><div><div dir=3D"ltr"><div dir=3D"ltr=
"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div><span><span><span><span><i>CONFIDENTIALI=
TY NOTICE:=C2=A0The
 contents of this email message and any attachments are intended solely=20
for the addressee(s) and may contain confidential and/or privileged=20
information and may be legally protected from disclosure. If you are not
 the intended recipient of this message or their agent, or if this=20
message has been addressed to you in error, please immediately alert the
 sender by reply email and then delete this message and any attachments.
 If you are not the intended recipient, you are hereby notified that any
 use, dissemination, copying, or storage of this message or its=20
attachments is strictly prohibited.<span></span></i></span></span></span></=
span></div></div></div></div></div></div></div></div></div></div></div></di=
v></div></div></div></div></div></div></div></div></div></div></div></div><=
/span></span></span></font></b><span>______________________________________=
_________</span><br><span>USRP-users mailing list -- <a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a></s=
pan><br><span>To unsubscribe send an email to <a href=3D"mailto:usrp-users-=
leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</=
a></span><br></div></blockquote></div></blockquote></div><br clear=3D"all">=
<div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div style=3D"color:rgb(100,100,100);font-fa=
mily:Arial;font-size:12px;margin-bottom:5px;margin-top:0px"><b style=3D"col=
or:rgb(53,28,117);font-family:Arial,Helvetica,sans-serif;font-size:small"><=
span style=3D"font-family:&quot;times new roman&quot;,serif">Thanks and Reg=
ards</span></b><b><br></b></div><div style=3D"color:rgb(100,100,100);font-f=
amily:Arial;font-size:12px;margin-bottom:5px;margin-top:0px"><b>Arhum Ahmad=
</b><br>Ph.D. Scholar,=C2=A0Electrical Engineering Department, IIT Ropar</d=
iv><table width=3D"470" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" st=
yle=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;width:470px;=
margin-top:5px"><tbody><tr><td style=3D"color:rgb(141,141,141)"><p style=3D=
"margin:0px"><span style=3D"display:inline-block"><a href=3D"tel:+91-701580=
2356" style=3D"color:rgb(141,141,141);font-family:sans-serif" target=3D"_bl=
ank">+91-</a>7974897279</span>=C2=A0<span style=3D"color:rgb(69,102,142);di=
splay:inline-block">|</span>=C2=A0arhum.19eez0005<span style=3D"display:inl=
ine-block"><a href=3D"mailto:2016eez0009@iitrpr.ac.in" style=3D"color:rgb(1=
41,141,141);font-family:sans-serif" target=3D"_blank">@iitrpr.ac.in</a></sp=
an></p></td></tr><tr><td style=3D"font-family:sans-serif;color:rgb(141,141,=
141)"><span style=3D"display:inline-block">Lab No. 323, Communication Resea=
rch Lab, J.C.Bose Building</span></td></tr></tbody></table></div></div></di=
v></div>

<br>
<b><font size=3D"1"><span><span><span><div><div dir=3D"ltr"><div dir=3D"ltr=
"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div><span><span><span><span><i>CONFIDENTIALI=
TY NOTICE:=C2=A0The
 contents of this email message and any attachments are intended solely=20
for the addressee(s) and may contain confidential and/or privileged=20
information and may be legally protected from disclosure. If you are not
 the intended recipient of this message or their agent, or if this=20
message has been addressed to you in error, please immediately alert the
 sender by reply email and then delete this message and any attachments.
 If you are not the intended recipient, you are hereby notified that any
 use, dissemination, copying, or storage of this message or its=20
attachments is strictly prohibited.<span></span></i></span></span></span></=
span></div></div></div></div></div></div></div></div></div></div></div></di=
v></div></div></div></div></div></div></div></div></div></div></div></div><=
/span></span></span></font></b>
--00000000000026064105d0305bf7--

--===============2681252333509046877==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2681252333509046877==--
