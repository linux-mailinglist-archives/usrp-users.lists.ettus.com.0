Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B863BD8019
	for <lists+usrp-users@lfdr.de>; Tue, 15 Oct 2019 21:23:22 +0200 (CEST)
Received: from [::1] (port=54128 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iKSPh-00045G-Ti; Tue, 15 Oct 2019 15:23:21 -0400
Received: from mail-ot1-f42.google.com ([209.85.210.42]:44933)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1iKSPd-0003wn-M0
 for usrp-users@lists.ettus.com; Tue, 15 Oct 2019 15:23:17 -0400
Received: by mail-ot1-f42.google.com with SMTP id 21so17956312otj.11
 for <usrp-users@lists.ettus.com>; Tue, 15 Oct 2019 12:22:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=24XvFPNlh3+VJeeheJL88yjpKKJArZOvOx3cG/3r3d4=;
 b=vdfTEdjfsBSFjtmJlZTIqFUcOt1HBEGhH1zt+P5npCK1oA+yXGasD3C7symIFDP2/T
 RQyxFUS/5xvTIkR4PtjjmpMDgooWdlqt0ZlNYkVCAGw7Q9XrDnnEF1vd4eHKjQ0N0Sc4
 BjeLvLygqsdgImnVEOTspGKAh0djN4aC/ifq5DXD1hlQPMK6p/C2UpE+eQEl4RPA5qfV
 ZxlUYKlaRYNxAcrb0eLeerpQBOA1BezrS0q9d88hlE/ubOl4nfGlFS5PknxBtdOogRAh
 nexJ3rxTgXHKwcqMHsUsnPr7nDqIjKNfy0xIK2qVzeE4A412DfVfQUbjAIRoz+YQEXLt
 OfaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=24XvFPNlh3+VJeeheJL88yjpKKJArZOvOx3cG/3r3d4=;
 b=g9A6GmH4UBvLaXznUYYdL4GF6yZvnjXMs51hI+S8UnRGcf0kFwDnre9jeVKdl/cO2l
 QRkqhfUhxPDFnaoJLgjv4NTk2Xc1fh7W3QYaoyBCpZL1Whhwvvoh6I+313AhdwRhJ0a3
 sSj8jHgY4ka8Z2QKVis8QQXdz/tA6aO2XSmR7iuYyQVWWitoJlmdz9xnJTNdk93xobyo
 HDuhbjv8kM2rHzyEaKka6Kg53tptaQIKBVTtk30caav3aqAS8l6X3ltFynifYgMuUsLU
 bdjWkhDNuWbx7C9nG3GKR7uJs0js51jCn4cp5m8XGqgKGzyA9CTM6fMoQNt8doTSdnpQ
 KvcA==
X-Gm-Message-State: APjAAAUN1wX66s+AFnsIOdO9CNlyZuWu6IXeh8pXYcajUocwzqKvRjgs
 Sd95OAKARLMZXXN3j7cpuGAjDNYVDGoWXBMGG+UCl2SC
X-Google-Smtp-Source: APXvYqyOtxv4o2fcsYkB3m+Wxa+OWLdvqcmCVwYzTAs+JUkBy3W8KqxlfEwFKJUgNluPD+JmDSXQH7RLRRHV63rphPw=
X-Received: by 2002:a9d:3a3:: with SMTP id f32mr7844727otf.231.1571167356918; 
 Tue, 15 Oct 2019 12:22:36 -0700 (PDT)
MIME-Version: 1.0
References: <DM6PR17MB2794E450BF99E1C31CAB3255B2930@DM6PR17MB2794.namprd17.prod.outlook.com>
In-Reply-To: <DM6PR17MB2794E450BF99E1C31CAB3255B2930@DM6PR17MB2794.namprd17.prod.outlook.com>
Date: Tue, 15 Oct 2019 12:23:07 -0700
Message-ID: <CAL263izO2eWYJeDWopBjBdR_47_+O5PJQ_it4c5t_oSzP=tQ8A@mail.gmail.com>
To: Carl MacGentey <CarlMacGentey@msn.com>
Subject: Re: [USRP-users] USRP + SDR#
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5088399428442718737=="
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

--===============5088399428442718737==
Content-Type: multipart/alternative; boundary="00000000000031383b0594f7e843"

--00000000000031383b0594f7e843
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Carl,

USRP support was added with the r1595 build to SDR#.

You can most likely listen to a trunking system with a single USRP (haven't
tried it myself) as it'll have enough bandwidth to cover both the control
and voice channels.

Regards,
Nate Temple

On Tue, Oct 15, 2019 at 12:18 PM Carl MacGentey via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Might I run an Ettus USRP on a Windows 10 Pro lap top with the software
> package SDR#? Simpleton that I am I would imagine all that=E2=80=99s need=
ed is some
> kind of a dynamic link program like =E2=80=99Zadig=E2=80=99. Am I right o=
r wrong?  Suppose
> a connection might be accomplished. Would I need two USRP=E2=80=99s to de=
code
> public safety digital or could I get away with one USRP?
>
>
>
> Thanks for listening-
>
>
>
> Sent from Mail <https://go.microsoft.com/fwlink/?LinkId=3D550986> for
> Windows 10
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000031383b0594f7e843
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Carl,<br><br>USRP support was added with the r1595 b=
uild to SDR#.<br><br>You can most likely listen to a trunking system with a=
 single USRP (haven&#39;t tried it myself) as it&#39;ll have enough bandwid=
th to cover both the control and voice channels. <br><br>Regards,<br>Nate T=
emple</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Tue, Oct 15, 2019 at 12:18 PM Carl MacGentey via USRP-users &=
lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-6929783937645590817WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:14pt">Might I run an Ettus =
USRP on a Windows 10 Pro lap top with the software package SDR#? Simpleton =
that I am I would imagine all that=E2=80=99s needed is some kind of a dynam=
ic link program like =E2=80=99Zadig=E2=80=99. Am I right or
 wrong?=C2=A0 Suppose a connection might be accomplished. Would I need two =
USRP=E2=80=99s to decode public safety digital or could I get away with one=
 USRP?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:14pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:14pt">Thanks for listening-=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:14pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal">Sent from <a href=3D"https://go.microsoft.com/fwlink=
/?LinkId=3D550986" target=3D"_blank">
Mail</a> for Windows 10</p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
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

--00000000000031383b0594f7e843--


--===============5088399428442718737==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5088399428442718737==--

