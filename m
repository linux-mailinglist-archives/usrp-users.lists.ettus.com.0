Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE02162F97
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2020 20:15:37 +0100 (CET)
Received: from [::1] (port=45838 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j48LF-00037g-J8; Tue, 18 Feb 2020 14:15:33 -0500
Received: from mail-lj1-f181.google.com ([209.85.208.181]:41981)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1j48LC-0002y2-9W
 for usrp-users@lists.ettus.com; Tue, 18 Feb 2020 14:15:30 -0500
Received: by mail-lj1-f181.google.com with SMTP id h23so24303605ljc.8
 for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2020 11:15:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+kLDxPMSaParJaqNBw92y20/DWcpeEgLsI17qJ+1eo4=;
 b=UyIWWV7T4Dp9tz6PXpABycpMP9zi51W0QEmXIpF2FA9GuBIuV3/tfwsfFYbLS7ccOW
 qwpgmnsRP7hlJGyv6b4w5jIPHrCx/zcocfxiSO1f3a/DnEB/CD8OFfcMeRBtztDt1L4S
 LvWgAEJNwe8jPBc2jp5QS/UZISqkj269HTQMOuGPsluRH6x4Nlc8dnoo0QKdEPmjJQj/
 fFWYaoLJ4PS1KCuVjFGZnIrc9NINdplp7lB7Zp+idKMnRnedaOXqz/rPmV1CD4RY2Dy3
 VTOsn3bhP4m5efmIuntnVefPMstPXK7g3b/aW7s7MSE2LqUpLZicwq55+YQNOIFdOHIO
 oAEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+kLDxPMSaParJaqNBw92y20/DWcpeEgLsI17qJ+1eo4=;
 b=Xy12hEOIhbhPbOhwK/97D3DmJw5aXl0AYevSAHmh6rU1fbIEvYb4HrWM5xgrcHLTpj
 cMcCBpspBIzRelcmF05s8Vs3Eap5JzevkhScMAUw8KHNY37/EahlRpHSVLFqWoUWFAeE
 n97RCVfa3xb03a2KRMMPx9ZyACGI9HEjRewFhDStLP8xQoGM26ksQaxGkFA0BEcZ7gZV
 97KqNVPeTYpSALsjpdz4iKHzBiF1vUS87OKeHz2bt3sQEWW3BKOi1XilZP6HMYNItFQ4
 YY5pDwahLkvSMhkB7ybCwr4f9aAsFwT+qxTQii5R2n66VWl7q7e0Ie3kpV9gVXskVaOL
 uX8g==
X-Gm-Message-State: APjAAAVDuqn3h456KJ0pQ6f+IPOyoIClJtf0VIZrez27CzEFK214lppA
 5xWkKvksQetqxj+CQRutpQNAVNe01wrQIjYZB4Ye0xR87ac=
X-Google-Smtp-Source: APXvYqzDxFOP6ACRSoaKQAL5DELFSy71rE0asEY2VZrD+/cu7O8Zn2eZz71ohzLy1Nfu2no6Z11vmJ5NL2eOrcHZffU=
X-Received: by 2002:a2e:7005:: with SMTP id l5mr12760108ljc.230.1582053288928; 
 Tue, 18 Feb 2020 11:14:48 -0800 (PST)
MIME-Version: 1.0
References: <00ac01d5e317$a13cffa0$e3b6fee0$@sdr-radio.com>
 <CANf970a56gSVUFpCRwwdMdMa1PCRAYAGVHnuUxfdNDKx920WcA@mail.gmail.com>
 <178901d5e67e$f1d566e0$d58034a0$@sdr-radio.com>
 <186401d5e682$882daf50$98890df0$@sdr-radio.com>
In-Reply-To: <186401d5e682$882daf50$98890df0$@sdr-radio.com>
Date: Tue, 18 Feb 2020 13:14:37 -0600
Message-ID: <CANf970agMvdW_5=to-Nz7H5xjjx4o-SXbfbhJpPqZ3o_UtyRGQ@mail.gmail.com>
To: simon@sdr-radio.com
Subject: Re: [USRP-users] UHD v4 Compiled
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1275555811683741254=="
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

--===============1275555811683741254==
Content-Type: multipart/alternative; boundary="0000000000004d7a51059ede7cfd"

--0000000000004d7a51059ede7cfd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You got it.

3.9 is older and relatively simple (pre-RFNoC). It also has some latency
advantages compared to modern UHD / FPGA architectures. But all things
considered, 3.15.LTS is your best bet for getting started.

Sam

On Tue, Feb 18, 2020 at 11:40 AM <simon@sdr-radio.com> wrote:

> Ah,
>
>
>
> I now assume 3.15 is more recent than 3.9, was thinking 3.15 and 3.90 =F0=
=9F=98=8A .
>
>
>
> Simon Brown, G4ELI
>
> https://www.sdr-radio.com
>
>
>
> *From:* simon@sdr-radio.com <simon@sdr-radio.com>
> *Sent:* 18 February 2020 17:15
> *To:* 'Sam Reiter' <sam.reiter@ettus.com>
> *Cc:* 'usrp-users' <usrp-users@lists.ettus.com>
> *Subject:* RE: [USRP-users] UHD v4 Compiled
>
>
>
> Hi Sam,
>
>
>
> This really is confusing for a simple person such as myself. Anyway, all
> is good with v4 except the X310 and E310, maybe I=E2=80=99ll wait for the=
 v4 code
> to catch up.
>
>
>
> You suggest 3.15 LTS, why not 3.9 LTS?
>
>
>
> The build info is somewhat out of date but I=E2=80=99m happy.
>
>
>
> Simon Brown, G4ELI
>
> https://www.sdr-radio.com
>
>
>
> *From:* Sam Reiter <sam.reiter@ettus.com>
> *Sent:* 18 February 2020 16:04
> *To:* simon@sdr-radio.com
> *Cc:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] UHD v4 Compiled
>
>
>
> Simon,
>
>
>
> The current UHD 4 on master is not a released version, so be patient if
> you run into any snags. That being said, you should be good to compile an=
d
> run on Windows. I put together a guide a little while ago for building on
> Windows. It will almost certainly need some massaging for 4.0, but feel
> free to message me directly at support@ettus.com if you need build
> assistance. I'll try to roll that into a later version of the build
> instructions:
>
>
>
>
> https://kb.ettus.com/Building_and_Installing_the_USRP_Open_Source_Toolcha=
in_(UHD_and_GNU_Radio)_on_Windows
>
> All that being said, if you want to run on a released version, I'd
> recommend building the 3.15.LTS branch.
>
>
>
> Sam Reiter
>
>
>
> On Fri, Feb 14, 2020 at 3:18 AM Simon G4ELI via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hi,
>
>
>
> After many years I=E2=80=99ve just got back into the world of Ettus. I=E2=
=80=99ve
> downloaded and compiled v4 for using boost 1.70 with VS2019 for 32 and
> 64-bit flavours of Windows.
>
>
>
> I do understand that Windows is a minority target for UHD users, this is
> confirming that it=E2=80=99s fine with W10.
>
>
>
> Simon Brown, G4ELI
>
> https://www.sdr-radio.com
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--0000000000004d7a51059ede7cfd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You got it. <br></div><div><br></div><div>3.9 is olde=
r and relatively simple (pre-RFNoC). It also has some latency advantages co=
mpared to modern UHD / FPGA architectures. But all things considered, 3.15.=
LTS is your best bet for getting started.<br></div><div><br></div><div><div=
><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signatu=
re"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam<br></div></div></div></div><=
/div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Tue, Feb 18, 2020 at 11:40 AM &lt;<a href=3D"mailto:simon@sdr=
-radio.com">simon@sdr-radio.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div lang=3D"EN-GB"><div class=3D"gmail-m_=
855870681101413672WordSection1"><p class=3D"MsoNormal"><span>Ah,<u></u><u><=
/u></span></p><p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p><=
p class=3D"MsoNormal"><span>I now assume 3.15 is more recent than 3.9, was =
thinking 3.15 and 3.90 </span><span style=3D"font-family:&quot;Segoe UI Emo=
ji&quot;,sans-serif">=F0=9F=98=8A</span><span> .<u></u><u></u></span></p><p=
 class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p><div><p class=3D"=
MsoNormal">Simon Brown, G4ELI<u></u><u></u></p><p class=3D"MsoNormal"><a hr=
ef=3D"https://www.sdr-radio.com" target=3D"_blank">https://www.sdr-radio.co=
m</a><u></u><u></u></p></div><p class=3D"MsoNormal"><span><u></u>=C2=A0<u><=
/u></span></p><div><div style=3D"border-color:rgb(225,225,225) currentcolor=
 currentcolor;border-style:solid none none;border-width:1pt medium medium;p=
adding:3pt 0cm 0cm"><p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</s=
pan></b><span lang=3D"EN-US"> <a href=3D"mailto:simon@sdr-radio.com" target=
=3D"_blank">simon@sdr-radio.com</a> &lt;<a href=3D"mailto:simon@sdr-radio.c=
om" target=3D"_blank">simon@sdr-radio.com</a>&gt; <br><b>Sent:</b> 18 Febru=
ary 2020 17:15<br><b>To:</b> &#39;Sam Reiter&#39; &lt;<a href=3D"mailto:sam=
.reiter@ettus.com" target=3D"_blank">sam.reiter@ettus.com</a>&gt;<br><b>Cc:=
</b> &#39;usrp-users&#39; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
 target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br><b>Subject:</b> RE=
: [USRP-users] UHD v4 Compiled<u></u><u></u></span></p></div></div><p class=
=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal"><span>Hi Sam,=
<u></u><u></u></span></p><p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u><=
/span></p><p class=3D"MsoNormal"><span>This really is confusing for a simpl=
e person such as myself. Anyway, all is good with v4 except the X310 and E3=
10, maybe I=E2=80=99ll wait for the v4 code to catch up.<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p><p class=
=3D"MsoNormal"><span>You suggest 3.15 LTS, why not 3.9 LTS?<u></u><u></u></=
span></p><p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p><p cla=
ss=3D"MsoNormal"><span>The build info is somewhat out of date but I=E2=80=
=99m happy.<u></u><u></u></span></p><p class=3D"MsoNormal"><span><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal">Simon Brown, G4ELI<u></u><u></u=
></p><p class=3D"MsoNormal"><a href=3D"https://www.sdr-radio.com" target=3D=
"_blank">https://www.sdr-radio.com</a><u></u><u></u></p><p class=3D"MsoNorm=
al"><span><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><b><span la=
ng=3D"EN-US">From:</span></b><span lang=3D"EN-US"> Sam Reiter &lt;<a href=
=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">sam.reiter@ettus.com</a>=
&gt; <br><b>Sent:</b> 18 February 2020 16:04<br><b>To:</b> <a href=3D"mailt=
o:simon@sdr-radio.com" target=3D"_blank">simon@sdr-radio.com</a><br><b>Cc:<=
/b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt;<br><b>Subject:</b> Re: [USRP-use=
rs] UHD v4 Compiled<u></u><u></u></span></p><p class=3D"MsoNormal"><u></u>=
=C2=A0<u></u></p><div><div><p class=3D"MsoNormal">Simon,<u></u><u></u></p><=
/div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><div><p clas=
s=3D"MsoNormal">The current UHD 4 on master is not a released version, so b=
e patient if you run into any snags. That being said, you should be good to=
 compile and run on Windows. I put together a guide a little while ago for =
building on Windows. It will almost certainly need some massaging for 4.0, =
but feel free to message me directly at <a href=3D"mailto:support@ettus.com=
" target=3D"_blank">support@ettus.com</a> if you need build assistance. I&#=
39;ll try to roll that into a later version of the build instructions:<u></=
u><u></u></p></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></di=
v><div><p class=3D"MsoNormal"><a href=3D"https://kb.ettus.com/Building_and_=
Installing_the_USRP_Open_Source_Toolchain_(UHD_and_GNU_Radio)_on_Windows" t=
arget=3D"_blank">https://kb.ettus.com/Building_and_Installing_the_USRP_Open=
_Source_Toolchain_(UHD_and_GNU_Radio)_on_Windows<br><br></a><u></u><u></u><=
/p></div><div><p class=3D"MsoNormal">All that being said, if you want to ru=
n on a released version, I&#39;d recommend building the 3.15.LTS branch.<u>=
</u><u></u></p></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></=
div><div><div><div><div><div><div><p class=3D"MsoNormal">Sam Reiter=C2=A0<u=
></u><u></u></p></div></div></div></div></div></div></div><p class=3D"MsoNo=
rmal"><u></u>=C2=A0<u></u></p><div><div><p class=3D"MsoNormal">On Fri, Feb =
14, 2020 at 3:18 AM Simon G4ELI via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; =
wrote:<u></u><u></u></p></div><blockquote style=3D"border-color:currentcolo=
r currentcolor currentcolor rgb(204,204,204);border-style:none none none so=
lid;border-width:medium medium medium 1pt;padding:0cm 0cm 0cm 6pt;margin:5p=
t 0cm 5pt 4.8pt"><div><div><p class=3D"MsoNormal">Hi,<u></u><u></u></p><p c=
lass=3D"MsoNormal">=C2=A0<u></u><u></u></p><p class=3D"MsoNormal">After man=
y years I=E2=80=99ve just got back into the world of Ettus. I=E2=80=99ve do=
wnloaded and compiled v4 for using boost 1.70 with VS2019 for 32 and 64-bit=
 flavours of Windows.<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0<u></u>=
<u></u></p><p class=3D"MsoNormal">I do understand that Windows is a minorit=
y target for UHD users, this is confirming that it=E2=80=99s fine with W10.=
<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p><p class=
=3D"MsoNormal">Simon Brown, G4ELI<u></u><u></u></p><p class=3D"MsoNormal"><=
a href=3D"https://www.sdr-radio.com" target=3D"_blank">https://www.sdr-radi=
o.com</a><u></u><u></u></p><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p><=
/div></div><p class=3D"MsoNormal">_________________________________________=
______<br>USRP-users mailing list<br><a href=3D"mailto:USRP-users@lists.ett=
us.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br><a href=3D"http=
://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_=
blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</=
a><u></u><u></u></p></blockquote></div></div></div></blockquote></div>

--0000000000004d7a51059ede7cfd--


--===============1275555811683741254==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1275555811683741254==--

