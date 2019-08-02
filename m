Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8057FDC6
	for <lists+usrp-users@lfdr.de>; Fri,  2 Aug 2019 17:45:37 +0200 (CEST)
Received: from [::1] (port=41788 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1htZkM-0007N1-IR; Fri, 02 Aug 2019 11:45:34 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:44102)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <neel.pandeya@ettus.com>)
 id 1htZkJ-0007FI-LC
 for usrp-users@lists.ettus.com; Fri, 02 Aug 2019 11:45:31 -0400
Received: by mail-ot1-f46.google.com with SMTP id b7so28402063otl.11
 for <usrp-users@lists.ettus.com>; Fri, 02 Aug 2019 08:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fpvMNH1wM1bivVR8Lgf3UBss6LV5O2s+8V7kRENVo3c=;
 b=iW6eT5ZbQeyJGmHsxhSJZVtqkXwEPOl0/MXadD0XWB5PCedGdTzCdrjbJ69CrWhOpg
 HccYAu2P7p9sWPb5SAOMHAZSV2I5aewgViOBuNNPOhrCuqbvSd9TvpC6vsoKd6KagGBq
 nNlnu95I9HmegIiKKscEitFYGs4II0oCDc38M7L3iJX5AreKZsEWQJ2cKW38u3h1Z8lq
 JiMGxos1OyJdOkg4HaSrLr8Pap3nXGmpBLvty2ZHcIuPiMT9BgB12uxt5cS0fSdanEEY
 GUQgMwOtd48kFJW9nwyBW4aGQjPV21N3lnEvIoZn4GsoWbeTSNDSC6h/RYkTMoTDANuG
 KIpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fpvMNH1wM1bivVR8Lgf3UBss6LV5O2s+8V7kRENVo3c=;
 b=XeSpHCoVDUq+jSwLJxy/50kMlmRui45jedQO5SxQJhGeBHcXCQ50VAQ8NiOtcN8Sd5
 xQpAOwRBKPck89hKTwkcFtxX7wYqSDAwtttdgfD1KaWcEnPw6o85Mw2P3du8aKZzdLbd
 kG1eDya+h4b/J0Jq0BmJi1BlxFOdPaKfY0GWy5wH1gwo+Uv4shQfeqgaKycXTVZxruSm
 HnKTgZvu7yB05o2hJFo3H+Mhq+cSoEmRxhsGsTrMiAofrL+LPf7mGe9/4ahUBA7FJJgn
 lLZmXRGD90mgJaJkFxgW7akFCdAreJw445x+St6N2tYlYsdVAwn3SrXrABALExL4f9Rt
 7FkQ==
X-Gm-Message-State: APjAAAUiQVMUM+N637EPfUFskYhBODWkw/M1DmgQmaut/aG/LH36YxGG
 AIweEDRN4v3WJNevU2NPidotwyeJas7ODPHDxlldIK5s
X-Google-Smtp-Source: APXvYqzSbVecnhiXlUuqpshktGrUpgRDZmXGyOZe7Npxw5vY8GERQXlog659e14sAhagG7HCp2i7h0J9aob7Vjo+NV4=
X-Received: by 2002:a9d:5a82:: with SMTP id w2mr97897715oth.240.1564760690809; 
 Fri, 02 Aug 2019 08:44:50 -0700 (PDT)
MIME-Version: 1.0
References: <MAXPR0101MB16126AE6CB9EF13BE51CC15288DE0@MAXPR0101MB1612.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MAXPR0101MB16126AE6CB9EF13BE51CC15288DE0@MAXPR0101MB1612.INDPRD01.PROD.OUTLOOK.COM>
Date: Fri, 2 Aug 2019 10:44:34 -0500
Message-ID: <CACaXmv9Hu2hJo_S0+3jd2f=ktyq=Emo3n+npkHXU0Fv3nziBLg@mail.gmail.com>
To: Snehasish Kar <snehasish.cse@live.com>
Subject: Re: [USRP-users] Status of Rfnoc pfb channelizer
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4706339297490036728=="
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

--===============4706339297490036728==
Content-Type: multipart/alternative; boundary="000000000000226c9b058f243d74"

--000000000000226c9b058f243d74
Content-Type: text/plain; charset="UTF-8"

Hello Snehasish:

Have you seen Theseus Cores?

There is a channelizer there that might be a good match for your
application.

https://github.com/theseus-cores/theseus-cores

--Neel Pandeya



On Thu, 1 Aug 2019 at 15:04, Snehasish Kar via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello Everyone
>
> Has anyone tried the rfnoc based pfb channelizer in the ettus github
> repository(https://github.com/EttusResearch/rfnoc-pfb-channelizer). Is it
> stable and can be directly be used or some modifications are required.
>
> Regards
> Snehasish
>
> Sent from my iPad
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000226c9b058f243d74
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hello Snehasish:</div><div class=3D"gmail_default" style=3D"fon=
t-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif">Have you seen Theseus Cores?</div><div =
class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div>=
<div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">There=
 is a=C2=A0channelizer there that might be a good match for your applicatio=
n.<br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-=
serif"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif"><a href=3D"https://github.com/theseus-cores/theseus-cores">http=
s://github.com/theseus-cores/theseus-cores</a><br></div><div class=3D"gmail=
_default" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"=
gmail_default" style=3D"font-family:verdana,sans-serif">--Neel Pandeya</div=
><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br>=
</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"=
><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Thu, 1 Aug 2019 at 15:04, Snehasish Kar via USRP-users &lt;<a=
 href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">



<div dir=3D"auto">
Hello Everyone=C2=A0
<div><br>
</div>
<div>Has anyone tried the rfnoc based pfb channelizer in the ettus github r=
epository(<a href=3D"https://github.com/EttusResearch/rfnoc-pfb-channelizer=
" target=3D"_blank">https://github.com/EttusResearch/rfnoc-pfb-channelizer<=
/a>). Is it stable and can be directly be used or some
 modifications are required.</div>
<div><br>
</div>
<div>Regards</div>
<div>Snehasish=C2=A0</div>
<div><br>
<div id=3D"gmail-m_1064953400912995486AppleMailSignature" dir=3D"ltr">Sent =
from my iPad</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000226c9b058f243d74--


--===============4706339297490036728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4706339297490036728==--

