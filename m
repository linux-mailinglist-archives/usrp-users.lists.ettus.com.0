Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E78162A07
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2020 17:05:18 +0100 (CET)
Received: from [::1] (port=55094 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j45N7-0000My-A0; Tue, 18 Feb 2020 11:05:17 -0500
Received: from mail-lf1-f54.google.com ([209.85.167.54]:36145)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1j45N3-00007f-9L
 for usrp-users@lists.ettus.com; Tue, 18 Feb 2020 11:05:13 -0500
Received: by mail-lf1-f54.google.com with SMTP id f24so14914660lfh.3
 for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2020 08:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xac3o7yRH/d5opq1/wpyfied8MoxVebQ40/n5cdL0BU=;
 b=ae98s8VSU4fiKoIDrlN0GZcFvzRarkJORVl/9ILN9zNK8EWej5XP1oua3EjcnqJn+B
 0kdadeTaq5yrciYogyzGTSTwCS3yW2tRtQu664TY9+IwdT9yLpFDMyXwJvxzomACayQ4
 Mq9cCGMGHoBgh72iCdGmllxNudwv8ETKLmP3XTqH3Ry8AiZXhVt9X5zUvKOOuWScxtz1
 swKj/46CA2waQFXO+xpBZSRHltD7Bn27HSfoH9EuQ0e88BR6vu1qhhN3USJR1rMfG0hp
 aby+C+f5MLbr9PMO/rJsFRt3rgQLJIlEK4T98051nVS20DsOIbWI1sg1hUxutu70tb6k
 y0kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xac3o7yRH/d5opq1/wpyfied8MoxVebQ40/n5cdL0BU=;
 b=AoQp/Pf1TApIUhVN7Tgk5jsVB8d1UPrVfFYmGQigNsA9qAwAV/pRqMk6+vxxc0Punn
 Slrt1wCXdu9NU90WMeCbPcRyIISfioPTXsQuDtB7H0G9b4TzRhDnP5+/4KhP1LL58K0B
 r5/X/ncLVM3mWiXZ1koyl+x3YcEW5t4eTqqjuB0zitHiTCdVr7e/yGigXk/PZuMuppZB
 U/m3SYnTFE3O3kdri+tSCpN/pGFccIQO41EEZ4BAwsCRlnN4W24BlHkumFwTzQ7hzrhO
 mmlhFk0l3fx0XnRhIaiCH4PyrHJK2y6nkI6tGSdclmYLFHLRkKN8/IBWSzSgHswAGJ1X
 1Saw==
X-Gm-Message-State: APjAAAWFmA5fFmvCmscydpPljE00Gg5koGK78lFYS9QnttknVCrhJzzn
 ki9qzbTiG3spjF6CsqDyrSOb5or2F4NklAmwgII8VCxG
X-Google-Smtp-Source: APXvYqw/mOmiV50/IIEkttKBxSFMj2VVaLbKr6qr4SC98mRuwmpXSvJjLIpjJMol//zQ2K2/z6DbEx8b18j3f/wLpOs=
X-Received: by 2002:a05:6512:407:: with SMTP id
 u7mr10577608lfk.146.1582041872093; 
 Tue, 18 Feb 2020 08:04:32 -0800 (PST)
MIME-Version: 1.0
References: <00ac01d5e317$a13cffa0$e3b6fee0$@sdr-radio.com>
In-Reply-To: <00ac01d5e317$a13cffa0$e3b6fee0$@sdr-radio.com>
Date: Tue, 18 Feb 2020 10:04:20 -0600
Message-ID: <CANf970a56gSVUFpCRwwdMdMa1PCRAYAGVHnuUxfdNDKx920WcA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============8408177328143322586=="
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

--===============8408177328143322586==
Content-Type: multipart/alternative; boundary="000000000000ce6369059edbd306"

--000000000000ce6369059edbd306
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Simon,

The current UHD 4 on master is not a released version, so be patient if you
run into any snags. That being said, you should be good to compile and run
on Windows. I put together a guide a little while ago for building on
Windows. It will almost certainly need some massaging for 4.0, but feel
free to message me directly at support@ettus.com if you need build
assistance. I'll try to roll that into a later version of the build
instructions:

https://kb.ettus.com/Building_and_Installing_the_USRP_Open_Source_Toolchain=
_(UHD_and_GNU_Radio)_on_Windows

All that being said, if you want to run on a released version, I'd
recommend building the 3.15.LTS branch.

Sam Reiter

On Fri, Feb 14, 2020 at 3:18 AM Simon G4ELI via USRP-users <
usrp-users@lists.ettus.com> wrote:

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
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ce6369059edbd306
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Simon,</div><div><br></div><div>The current UHD 4 on =
master is not a released version, so be patient if you run into any snags. =
That being said, you should be good to compile and run on Windows. I put to=
gether a guide a little while ago for building on Windows. It will almost c=
ertainly need some massaging for 4.0, but feel free to message me directly =
at <a href=3D"mailto:support@ettus.com">support@ettus.com</a> if you need b=
uild assistance. I&#39;ll try to roll that into a later version of the buil=
d instructions:</div><div><br></div><div><a href=3D"https://kb.ettus.com/Bu=
ilding_and_Installing_the_USRP_Open_Source_Toolchain_(UHD_and_GNU_Radio)_on=
_Windows">https://kb.ettus.com/Building_and_Installing_the_USRP_Open_Source=
_Toolchain_(UHD_and_GNU_Radio)_on_Windows<br><br></a></div><div>All that be=
ing said, if you want to run on a released version, I&#39;d recommend build=
ing the 3.15.LTS branch.<br></div><div><br></div><div><div><div dir=3D"ltr"=
 class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"l=
tr"><div><div dir=3D"ltr">Sam Reiter=C2=A0</div></div></div></div></div></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Fri, Feb 14, 2020 at 3:18 AM Simon G4ELI via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div lang=
=3D"EN-GB"><div class=3D"gmail-m_8628671299005924394WordSection1"><p class=
=3D"MsoNormal">Hi,<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u>=
</u></p><p class=3D"MsoNormal">After many years I=E2=80=99ve just got back =
into the world of Ettus. I=E2=80=99ve downloaded and compiled v4 for using =
boost 1.70 with VS2019 for 32 and 64-bit flavours of Windows.<u></u><u></u>=
</p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">I=
 do understand that Windows is a minority target for UHD users, this is con=
firming that it=E2=80=99s fine with W10.<u></u><u></u></p><p class=3D"MsoNo=
rmal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal"><span>Simon Brown, G4E=
LI<u></u><u></u></span></p><p class=3D"MsoNormal"><span><a href=3D"https://=
www.sdr-radio.com" target=3D"_blank">https://www.sdr-radio.com</a><u></u><u=
></u></span></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div></div>=
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000ce6369059edbd306--


--===============8408177328143322586==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8408177328143322586==--

