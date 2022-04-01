Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E90A94EFB9A
	for <lists+usrp-users@lfdr.de>; Fri,  1 Apr 2022 22:28:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D6E9C384A7B
	for <lists+usrp-users@lfdr.de>; Fri,  1 Apr 2022 16:28:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648844919; bh=lhZEXdF2s/L3ZOqLAoKp/QJh62ztF/rIRlR94kthX6Q=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=GNUUOEp01h59rTdRkXbV976VEd1GmFyjn0f6aIWpuVP52t9/1LJvCuj/zjjnEvVbA
	 HgL4Mli3BYAARnyytGjfkn3YuTYmT10Pg3d1gSx805dFm6uBjKwrwZxMPDkZsSf0fo
	 UE2JY3x+03Ve2hkAicPilXauiFvhTHi/KFJbmG0ofI2vkl5A6lrWiCEXs8zXjdfcbd
	 h7/uGflGI/OuBPBLgGUdmNLe+Ffx8rbUsAAZvXOVabwPSqiT7bAvIZrR8ZSxz5ASfw
	 jiHR12oeAmBLaTbPJjbWBIjKaces9YkId3ROamw4EQ76t58lNBkSWyNsb41nK7B1Rb
	 D0//XjHwKX1FQ==
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mm2.emwd.com (Postfix) with ESMTPS id BEBA8384940
	for <usrp-users@lists.ettus.com>; Fri,  1 Apr 2022 16:27:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Bq0x8Xxb";
	dkim-atps=neutral
Received: by mail-yb1-f175.google.com with SMTP id y142so6950226ybe.11
        for <usrp-users@lists.ettus.com>; Fri, 01 Apr 2022 13:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=YLOM7nd5vjw0ZJFMLAw/xSChiwU5lVNDKNUHXmRcpAE=;
        b=Bq0x8XxbhcbHTDVXtwCA1vqV0tZIxF8ycwV/1A0fegC40pX6caPRWYotcL557PMEFn
         QA5ES/vGNMZwtQ3L9+p3U+7C/ZwpCm6pSf953jL3VBBcfAqTE/LO0rbAU0ojkzDRjlmD
         fbC1KAHxURvlR53kFtUEjnOogjdTrGYNoLcS3iW8hGHf6k12P1xSZgsW1iYgtBkVRSh+
         4gQxnw9K2txq6FmHR2go++WBi/7UkLEhZvtnMNsKd2pzQqCPJfX5wX4lNM0hqha86jo/
         JO3O/I1RHdjC4EyPsL9+LgwlSIBAqzPdaRk/VEiC8t73OqtwxfQGUZn6iQEcIjPZ/N2T
         kWQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=YLOM7nd5vjw0ZJFMLAw/xSChiwU5lVNDKNUHXmRcpAE=;
        b=jnpZOrxak6VMyb+0EVdw4y8qTG4sVL41t7joOVI0Fr56J3peSMrW8oTUNhuctSVLl2
         g2WFDf1QIJO+lApDQlwVCOPmvHvwAQGueFVfHfkssoLPG1QW5o0GwCORcsvLg02Y1zaD
         nHb0F327HRaONlpNGmfpz7wakUTWuucPdNrWdJOG9ha3gd1zjd6+zHTulFBfbmo4vxve
         YuS4E9VtuHkxNcoEktE+8PJwV1aNv73vKSn14zgIRNlwpYBMKWAZIyZwlBE+4SiaDssF
         2isgLKNwBvZFcJsD1Pg4n6GyoBXOP/sPCoiZuO/wtZHUNbBv9yyTDyEATmRni6DazBhk
         vZew==
X-Gm-Message-State: AOAM5337fpPXuyqsK7yrbJCMOR3hsStVaBWGt1JWG6/Spo3U8KES+Tmy
	2pNooncugkFBzmmcG3SgBIqC7InFAezD5bx8Npd81RevW/9dEg==
X-Google-Smtp-Source: ABdhPJxjmZ7PTbl093m94o+kQMRTzxGogYTx43mG8ZDEduP+Qxz4r2wcyFjUo4n+Hza+NzH2ZiFthjG2VObyrdahX3E=
X-Received: by 2002:a05:6902:52b:b0:619:52e6:9f9b with SMTP id
 y11-20020a056902052b00b0061952e69f9bmr7272030ybs.447.1648844867798; Fri, 01
 Apr 2022 13:27:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTSB8LGZSM2NzwmYXSZhSR_x4+dDWP=0VKizwMAJ+Y8_DA@mail.gmail.com>
 <20220401165020.kdzbyckz7xrxhk5o@barbe>
In-Reply-To: <20220401165020.kdzbyckz7xrxhk5o@barbe>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 1 Apr 2022 16:27:37 -0400
Message-ID: <CAB__hTTF4xa=bdJ3QwOySCiNYDG_RZWaCebETCS7bvA=ORDwEQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: E2WQ4KMZG6YD3CCMW24ZR3PWTBQJHA4P
X-Message-ID-Hash: E2WQ4KMZG6YD3CCMW24ZR3PWTBQJHA4P
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Copy file from N310 to host, slow transfer rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E2WQ4KMZG6YD3CCMW24ZR3PWTBQJHA4P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5624151882945061239=="

--===============5624151882945061239==
Content-Type: multipart/alternative; boundary="000000000000a2df0205db9d9c2c"

--000000000000a2df0205db9d9c2c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks C=C3=A9dric,
Yes, the CPU is at 100%. I am unfortunately not fluent in python and so I'm
confused about your suggested non-encrypted transfer.  What would I run on
the N310 and what on the host in order to transfer the file?
Rob

On Fri, Apr 1, 2022 at 12:50 PM C=C3=A9dric Hannotier <cedric.hannotier@ulb=
.be>
wrote:

> Hi Rob,
>
> On 01/04/22 10:40, Rob Kossler wrote:
> > I am trying to copy some large files (~500MB) from the N310 to the host=
.
> > The transfer rate I get using scp or sshfs (mounting in either directio=
n)
> > is about 12MB/s. Given that the interface itself can do >100MB/s, I'm
> > wondering if there is a faster method. One thing I tried was to setup a
> RAM
> > file system on both the N310 and the host and copy from one RAM file
> system
> > to the other. But, still no better than 12 MB/s. Any ideas on faster
> > transfers?
>
> Could it be the N310's CPU that cannot encrypt faster than 12 MB/s?
> There should be a process with almost 100% CPU in "top -o +%CPU" in that
> case.
> If this is the case and it is a direct connection,
> you could drop the need of encryption to speed up the transfer
> (eg. python -m http.server, tar + nc).
>
> Regards
> --
>
> C=C3=A9dric Hannotier
>

--000000000000a2df0205db9d9c2c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Thanks C=C3=A9dric,</div><div>Yes, the CP=
U is at 100%. I am unfortunately not fluent in python and so I&#39;m confus=
ed=C2=A0about=C2=A0your suggested non-encrypted transfer.=C2=A0 What would =
I run on the N310 and what on the host in order to transfer the file?=C2=A0=
=C2=A0</div><div>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Fri, Apr 1, 2022 at 12:50 PM C=C3=A9dric Hannotier &=
lt;<a href=3D"mailto:cedric.hannotier@ulb.be">cedric.hannotier@ulb.be</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Rob=
,<br>
<br>
On 01/04/22 10:40, Rob Kossler wrote:<br>
&gt; I am trying to copy some large files (~500MB) from the N310 to the hos=
t.<br>
&gt; The transfer rate I get using scp or sshfs (mounting in either directi=
on)<br>
&gt; is about 12MB/s. Given that the interface itself can do &gt;100MB/s, I=
&#39;m<br>
&gt; wondering if there is a faster method. One thing I tried was to setup =
a RAM<br>
&gt; file system on both the N310 and the host and copy from one RAM file s=
ystem<br>
&gt; to the other. But, still no better than 12 MB/s. Any ideas on faster<b=
r>
&gt; transfers?<br>
<br>
Could it be the N310&#39;s CPU that cannot encrypt faster than 12 MB/s?<br>
There should be a process with almost 100% CPU in &quot;top -o +%CPU&quot; =
in that case.<br>
If this is the case and it is a direct connection,<br>
you could drop the need of encryption to speed up the transfer<br>
(eg. python -m http.server, tar + nc).<br>
<br>
Regards<br>
-- <br>
<br>
C=C3=A9dric Hannotier<br>
</blockquote></div></div>

--000000000000a2df0205db9d9c2c--

--===============5624151882945061239==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5624151882945061239==--
