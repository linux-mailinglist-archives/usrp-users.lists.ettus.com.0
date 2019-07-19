Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 614B16E35F
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jul 2019 11:25:49 +0200 (CEST)
Received: from [::1] (port=35080 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hoP97-0004th-8o; Fri, 19 Jul 2019 05:25:45 -0400
Received: from mail-io1-f52.google.com ([209.85.166.52]:33576)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sammywelschen@gmail.com>)
 id 1hoP94-0004p8-8Y
 for usrp-users@lists.ettus.com; Fri, 19 Jul 2019 05:25:42 -0400
Received: by mail-io1-f52.google.com with SMTP id z3so57079508iog.0
 for <usrp-users@lists.ettus.com>; Fri, 19 Jul 2019 02:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=euU8DwGVbXRY+6l/vjdime3jh5/pYfS5Pibt+sDHRNU=;
 b=Bg6l3c8zSl/62EhlQak5Aj6cM7CSY0hA0VP+D9BdwSMcHnFBRkLNrThTQ5zPBVRJSh
 UrFvgfQ9USml1RIeX5I8Pnu5TtTckc+O8ts+Ywqqz4KLorOqFMJtGfqpfInevOsWkl07
 wfNLQz1pRRujYvDxiIw8jgp1yO0NDAa3YRxXLWSvDebWPnF7PW5t3B0WB+KOVXItlysc
 luI20V1+B4bRGged8qK0vRgNzsEkFOTE7B79xa5ImNuI/xr/b9V6oy0g9Y8oPzL6I/M+
 z3Zre4sZSZXJk6/YC5j+mYPBzMlX8pAYhcO0VZGTbw3T7TE12bfci5x81B0zvJlNkDJ5
 g3NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=euU8DwGVbXRY+6l/vjdime3jh5/pYfS5Pibt+sDHRNU=;
 b=VLr1vXMmCG89OBIR6EkrNDBnq5TloUt1LfKC+TxUP1w6Maks+kcJcOi8FFCaXEMtqx
 CJcBbhi0bk2JPt4fHkh32GnK7k4cSKJdJuU+/A/6NUBxM/NVgwL08B+rSP5yoft4rSuG
 16m0lklM6gYrl9baKMspL7J0c6Epz1XQ0XkO1RDDRMVsy9uIQIWc8Q0Z2ez9Y+Wfpn9M
 mXm9yKL2ZESME0LM4OSiv8ruZHq/abpC8n9ErukOfd5+Zcju9V+/jEDjoqgw9yhhX1GB
 FqVwqwWPenI0srjLb8w8rBL2Z48yfm38egLPpbbeRZf0UN/ElJ0ebQ7WqLO0X4qlbAk7
 /h0g==
X-Gm-Message-State: APjAAAWweaKEY+PhbVvWAza+7XWuuykmhp4qyhEmXuXSOINFwZtNTndv
 xIj4c6FeNa05Avl4adOiJ3jUxmmEWHg8PWMReTa/izPY
X-Google-Smtp-Source: APXvYqxnmGbr1+Lts+eSvp8odvwFTlfcXXaC7E0E3h8YY5JulVf94ueEvcddTg6RzZOS94RpvxXgG7tW7+MzoyDfdl0=
X-Received: by 2002:a02:7a5c:: with SMTP id z28mr54078958jad.40.1563528301126; 
 Fri, 19 Jul 2019 02:25:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAKJyDkKyb2H0gi_Kcy_5=YE0NTqLguMVfeWnGT6gXiQDe=3ppA@mail.gmail.com>
 <D975AAE1-4B39-430E-B0AB-C3A996368FB3@gmail.com>
In-Reply-To: <D975AAE1-4B39-430E-B0AB-C3A996368FB3@gmail.com>
Date: Fri, 19 Jul 2019 11:24:50 +0200
Message-ID: <CAE6G02-D9-HFhk8ZW-CRhK93UTew8CfKthp9mBuo5x+cLKGzWA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Fwd: Phase coherency for low RX frequencies
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
From: Sammy Welschen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sammy Welschen <sammywelschen@gmail.com>
Content-Type: multipart/mixed; boundary="===============6398988906401023039=="
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

--===============6398988906401023039==
Content-Type: multipart/alternative; boundary="000000000000fc29cc058e054c88"

--000000000000fc29cc058e054c88
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for your reply.

I am a bit confused now. Since the LO for this stage is derived from the
sample clock, wouldn't I be in the same situation as if I only shared 10
MHz reference and PPS signals?
Quote from https://files.ettus.com/manual/page_usrp_n3xx.html:

----------------------

Reasons to use an external LO include:
Improving phase alignment: The N310 itself has no way of aligning phase
between channels, and phase will be random between runs. By applying an
external LO, the phase ambiguity is reduced to 180 degrees, produced by a
by-2 divider in the AD9371 transceiver IC.
Improving phase noise: The quality of the onboard LO depends on the
external reference clock, among other things. By providing a custom LO
signal, it is possible to more accurately tune, assuming the externally
generated LO signal is coming from a high-quality oscillator.
----------------------

I would still have a certain fixed phase relation between channels, but
with more fluctuations and a phase difference that changes on every turn on
of the devices (i.e. the same situation as when sharing 10 Mhz and PPS
signals). See for example the plots on pages 24-25 of
https://forums.ni.com/ni/attachments/ni/grp-1008/110/1/Fundamentals%20of%20=
Phase-Coherent%20RF%20Measurements.pdf
for an illustration of what I mean.

Am Do., 18. Juli 2019 um 19:25 Uhr schrieb Marcus D Leech via USRP-users <
usrp-users@lists.ettus.com>:

>
>
>
> I have just been corrected by one of my colleagues at Ettus.
>>
>> While there is an up conversion stage for frequencies below 450Mhz, the
>> LO for that stage is fixed frequency, and derived from the sample clock =
and
>> coherent across channels.
>>
>> So there should be no random phase offset among channels even below
>> 450Mhz when LO sharing.
>>
>> This is correct as far as I know. Although I don=E2=80=99t have an N320 =
in my
>> lab, it uses an up conversion scheme for lower frequencies. That scheme
>> does not participate in the LO sharing.
>>
>> Sent from my iPhone
>>
>>
>> On Jul 18, 2019, at 11:17 AM, Sammy Welschen via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> I have to acquire phase coherent data on multiple channels using USRP
>> N310/320 devices.
>>
>>
>>
>> Am I correct in assuming that for frequencies below 450 MHz, there is no
>> way to remove random phase differences between channels due to the
>> additional frequency shift involved (shown for example in the block
>> diagram
>> http://www.ettus.com/wp-content/uploads/2019/03/N320BlockDiagram.png
>> <https://urldefense.com/v3/__http:/www.ettus.com/wp-content/uploads/2019=
/03/N320BlockDiagram.png__;!fqWJcnlTkjM!9UAjRx1UqNGGgw_MyGxeNp4dcd08afk3Ijp=
bsIlbrDYEk9H2AfliCLM52OcRdC4$>)?
>> As I understand it, by using the same LO signal for all channels I could
>> remove the differences for frequencies above 450 MHz, but this is of no =
use
>> for frequencies below 450 MHz due to this the additional stage.
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> <https://urldefense.com/v3/__http:/lists.ettus.com/mailman/listinfo/usrp=
-users_lists.ettus.com__;!fqWJcnlTkjM!9UAjRx1UqNGGgw_MyGxeNp4dcd08afk3Ijpbs=
IlbrDYEk9H2AfliCLM5ZdVPAfg$>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> <https://urldefense.com/v3/__http:/lists.ettus.com/mailman/listinfo/usrp=
-users_lists.ettus.com__;!fqWJcnlTkjM!9UAjRx1UqNGGgw_MyGxeNp4dcd08afk3Ijpbs=
IlbrDYEk9H2AfliCLM5ZdVPAfg$>
>>
>> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000fc29cc058e054c88
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><font face=3D"arial, sans-serif">Thanks for your reply.=C2=
=A0</font><div><font face=3D"arial, sans-serif"><br></font></div><div><font=
 face=3D"arial, sans-serif">I am a bit confused now. Since the LO for this =
stage is derived from the sample clock, wouldn&#39;t I be in the same situa=
tion as if I only shared 10 MHz reference and PPS signals?=C2=A0</font></di=
v><div><font face=3D"arial, sans-serif">Quote from=C2=A0<a href=3D"https://=
files.ettus.com/manual/page_usrp_n3xx.html" target=3D"_blank">https://files=
.ettus.com/manual/page_usrp_n3xx.html</a>:</font></div><div><font face=3D"a=
rial, sans-serif"><br></font></div><div><font face=3D"arial, sans-serif">--=
--------------------</font></div><div><p style=3D"font-variant-numeric:norm=
al;font-variant-east-asian:normal;font-stretch:normal;font-size:14px;line-h=
eight:22px;color:rgb(0,0,0)"><font face=3D"arial, sans-serif">Reasons to us=
e an external LO include:</font></p><font face=3D"arial, sans-serif"><span =
style=3D"color:rgb(0,0,0);font-size:14px">Improving phase alignment: The N3=
10 itself has no way of aligning phase between channels, and phase will be =
random between runs. By applying an external LO, the phase ambiguity is red=
uced to 180 degrees, produced by a by-2 divider in the AD9371 transceiver I=
C.</span><br><span style=3D"color:rgb(0,0,0);font-size:14px">Improving phas=
e noise: The quality of the onboard LO depends on the external reference cl=
ock, among other things. By providing a custom LO signal, it is possible to=
 more accurately tune, assuming the externally generated LO signal is comin=
g from a high-quality oscillator.</span></font></div><div><font face=3D"ari=
al, sans-serif">----------------------=C2=A0=C2=A0<br></font></div><div><fo=
nt face=3D"arial, sans-serif"><br></font></div><div><font face=3D"arial, sa=
ns-serif">I would still have a certain fixed phase relation between channel=
s, but with more fluctuations and a phase difference that changes on every =
turn on of the devices (i.e. the same situation as when sharing 10 Mhz and =
PPS signals). See for example the plots on pages 24-25 of=C2=A0<a href=3D"h=
ttps://forums.ni.com/ni/attachments/ni/grp-1008/110/1/Fundamentals%20of%20P=
hase-Coherent%20RF%20Measurements.pdf" target=3D"_blank">https://forums.ni.=
com/ni/attachments/ni/grp-1008/110/1/Fundamentals%20of%20Phase-Coherent%20R=
F%20Measurements.pdf</a>=C2=A0 for an illustration of what I mean.</font></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Am=
 Do., 18. Juli 2019 um 19:25=C2=A0Uhr schrieb Marcus D Leech via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"auto"><br><br><blockquote type=3D"cite"><div dir=
=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"><=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto=
">I have just been corrected by one of my colleagues at Ettus.=C2=A0<div><b=
r></div><div>While there is an up conversion stage for frequencies below 45=
0Mhz, the LO for that stage is fixed frequency, and derived from the sample=
 clock and coherent across channels.=C2=A0</div><div><br></div><div>So ther=
e should be no random phase offset among channels even below 450Mhz when LO=
 sharing.=C2=A0</div><div><br><blockquote type=3D"cite"><div dir=3D"ltr"><d=
iv class=3D"m_4109572153054765750gmail-m_-766200740446686168gmail-m_8464511=
976241383310WordSection1"><div><div><div><p class=3D"MsoNormal" style=3D"ma=
rgin-bottom:12pt">This is correct as far as I know. Although I don=E2=80=99=
t have an N320 in my lab, it uses an up conversion scheme for lower frequen=
cies. That scheme does not participate in the LO sharing.=C2=A0<u></u><u></=
u></p>
<div id=3D"m_4109572153054765750gmail-m_-766200740446686168gmail-m_84645119=
76241383310m_-2455621878214780349AppleMailSignature">
<p class=3D"MsoNormal">Sent from my iPhone<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><br>
On Jul 18, 2019, at 11:17 AM, Sammy Welschen via USRP-users &lt;<a href=3D"=
mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus=
.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<div>
<div>
<p class=3D"MsoNormal">I have to acquire phase coherent data on multiple ch=
annels using USRP N310/320 devices.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<p class=3D"MsoNormal">Am I correct in assuming that for frequencies below =
450 MHz, there is no way to remove random phase differences between channel=
s due to the additional frequency shift involved (shown for example in the =
block diagram=C2=A0
<a href=3D"https://urldefense.com/v3/__http:/www.ettus.com/wp-content/uploa=
ds/2019/03/N320BlockDiagram.png__;!fqWJcnlTkjM!9UAjRx1UqNGGgw_MyGxeNp4dcd08=
afk3IjpbsIlbrDYEk9H2AfliCLM52OcRdC4$" target=3D"_blank">
http://www.ettus.com/wp-content/uploads/2019/03/N320BlockDiagram.png</a>)? =
As I understand it, by using the same LO signal for all channels I could re=
move the differences for frequencies above 450 MHz, but this is of no use f=
or frequencies below 450 MHz due
 to this the additional stage.<u></u><u></u></p>
</div>
</div>
</blockquote>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"https://urldefense.com/v3/__http:/lists.ettus.com/mailman/listin=
fo/usrp-users_lists.ettus.com__;!fqWJcnlTkjM!9UAjRx1UqNGGgw_MyGxeNp4dcd08af=
k3IjpbsIlbrDYEk9H2AfliCLM5ZdVPAfg$" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><u></u><u></u></p>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"https://urldefense.com/v3/__http:/lists.ettus.com/mailman/listin=
fo/usrp-users_lists.ettus.com__;!fqWJcnlTkjM!9UAjRx1UqNGGgw_MyGxeNp4dcd08af=
k3IjpbsIlbrDYEk9H2AfliCLM5ZdVPAfg$" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><u></u><u></u></p>
</div>
</div>
</div>


</div></blockquote></div></div></blockquote></div>
</div></blockquote></div>_______________________________________________<br=
>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000fc29cc058e054c88--


--===============6398988906401023039==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6398988906401023039==--

