Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C912524AD1D
	for <lists+usrp-users@lfdr.de>; Thu, 20 Aug 2020 04:58:36 +0200 (CEST)
Received: from [::1] (port=36474 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8amf-0005Yb-Ae; Wed, 19 Aug 2020 22:58:33 -0400
Received: from mail-ua1-f50.google.com ([209.85.222.50]:35945)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1k8amb-0005UY-Ll
 for usrp-users@lists.ettus.com; Wed, 19 Aug 2020 22:58:29 -0400
Received: by mail-ua1-f50.google.com with SMTP id e20so154033uav.3
 for <usrp-users@lists.ettus.com>; Wed, 19 Aug 2020 19:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jiWD/JpthgWJawHYZqLiD4W/CW6dXqoOXBs4WvoAILQ=;
 b=F2/IV47SOJSngiMJBd0Y+LEvxzF2uujzb5bFUGHNiLidKgSHv1py0D035jka1HqW8Y
 HAXxNdUYGuAtipfcFyd8aoi/0BKk8PmMOaiW98FE1M+sJzfCJTlmVcgO/CVqUN15Ps8e
 9WgcRqCsmFHVy+ey0HIfoWQQZi2z6CLq+gE2+RdKpOmvHXCsw8ixJqQIBjWuPZTC8Zb2
 Y2rv1AdakGfVDlkWWokCK9sPnRlfT0TXQvGtetI0lna5uTwkSQCmHI2wwa5MoO9qm55n
 hKCAagOvO+/1uN7HxEGfp/5AXDtfIgt+OKc/oZAif/a1d9uvN5nX92EVissRLf09aeGF
 9krg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jiWD/JpthgWJawHYZqLiD4W/CW6dXqoOXBs4WvoAILQ=;
 b=ZTaIIor6ofZbENVg2XvPyJL9pVqJyN/uE7CS24rJy3WIC6N3ORK5UUC/fnDJGCNG2H
 cfK4OdrcgVHEXUR5mHK3PR1EslLx4hZqrwE8S006NhC5pFqqioOhGy/tkyZgtrpILb9g
 Fo6nND0NvsTytGeJeNJyoaTKGUeE8KSZRGDKer6icQjAC1hbJxBzjW5Ljq3h4zRbEAtb
 vjIptiZgTwxLH758jrp1qws4lR3KsXYyHgofSnbf5pOWf2viVgyf/uMgH36FlfezmHt0
 ZYgYeqpvKdHqSe9QT/F1pnf4UyI9sl1nxe0U4zIyxmFgdw4DFlUfj+tSIaPRKJ/LUSce
 sLZg==
X-Gm-Message-State: AOAM532uJtGEdFeWlZEnpq/yXT/ygGs77KUPoRCS6EXU4C03x7Rg2k6U
 kJJNLPF5nJM1mXDKuGBrv/ZBiyxxeB5XQz78j/EyoKLY
X-Google-Smtp-Source: ABdhPJz3Wz/fJF1Q5RFJEFzVG7360z1+2i9qNlDy4tOX/PfpIIWWFjC7eDnDc5HP2h5q6SPa9GoEeTnAKwHm3h10E7k=
X-Received: by 2002:a9f:252a:: with SMTP id 39mr403284uaz.44.1597892268997;
 Wed, 19 Aug 2020 19:57:48 -0700 (PDT)
MIME-Version: 1.0
References: <24ea3a0f1617438687b7ae32d37d5e66@ES05AMSNLNT.srn.sandia.gov>
In-Reply-To: <24ea3a0f1617438687b7ae32d37d5e66@ES05AMSNLNT.srn.sandia.gov>
Date: Wed, 19 Aug 2020 22:57:13 -0400
Message-ID: <CAL7q81vu0QcrQueh0BU_qPyF8ZQqyey1Y+ThNcDg5xQJTBkWqA@mail.gmail.com>
To: "Carey, Samuel Craig" <sccarey@sandia.gov>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] gr-ettus / GNU Radio 3.8
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============6593765807547238108=="
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

--===============6593765807547238108==
Content-Type: multipart/alternative; boundary="00000000000015602505ad464946"

--00000000000015602505ad464946
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sam,

That branch is still a work in progress.

Jonathon

On Sun, Aug 9, 2020 at 6:12 PM Carey, Samuel Craig via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Howdy,
>
>
>
> I see there=E2=80=99s a gr-ettus maint-3.8 branch for adding GNU Radio 3.=
8
> support, which seems to be finished as of this commit:
>
>
> https://github.com/EttusResearch/gr-ettus/commit/b69260655e974786ea6e611b=
d91ab578b13ec72a
>
>
>
> Is this branch good to go?
>
> Are there any known drawbacks?
>
> Will I theoretically be able to use this in the context of rfnoc/e310
> cross-compiling, etc.?
>
>
>
> I ask because there are a couple open issue about 3.8 without any replies
> (#37, #46), so I=E2=80=99m wary of investing time if it=E2=80=99s not rea=
dy.
>
>
>
> Thanks,
>
> Sam
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000015602505ad464946
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Sam,<div><br></div><div>That branch is still a work in =
progress.</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Aug 9, 2020 at 6:1=
2 PM Carey, Samuel Craig via USRP-users &lt;<a href=3D"mailto:usrp-users@li=
sts.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_3711773533637986752WordSection1">
<p class=3D"MsoNormal">Howdy,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I see there=E2=80=99s a gr-ettus maint-3.8 branch fo=
r adding GNU Radio 3.8 support, which seems to be finished as of this commi=
t:<u></u><u></u></p>
<p class=3D"MsoNormal"><a href=3D"https://github.com/EttusResearch/gr-ettus=
/commit/b69260655e974786ea6e611bd91ab578b13ec72a" target=3D"_blank">https:/=
/github.com/EttusResearch/gr-ettus/commit/b69260655e974786ea6e611bd91ab578b=
13ec72a</a><u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Is this branch good to go? <u></u><u></u></p>
<p class=3D"MsoNormal">Are there any known drawbacks?<u></u><u></u></p>
<p class=3D"MsoNormal">Will I theoretically be able to use this in the cont=
ext of rfnoc/e310 cross-compiling, etc.?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I ask because there are a couple open issue about 3.=
8 without any replies (#37, #46), so I=E2=80=99m wary of investing time if =
it=E2=80=99s not ready.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal">Sam<i><span style=3D"font-family:&quot;Courier New&q=
uot;"><u></u><u></u></span></i></p>
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

--00000000000015602505ad464946--


--===============6593765807547238108==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6593765807547238108==--

