Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1A34B079B
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 08:56:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 288F5384FBB
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 02:56:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="vJTJOh1i";
	dkim-atps=neutral
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	by mm2.emwd.com (Postfix) with ESMTPS id E1D8F3847AA
	for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 02:55:48 -0500 (EST)
Received: by mail-vs1-f51.google.com with SMTP id i26so1806079vso.9
        for <usrp-users@lists.ettus.com>; Wed, 09 Feb 2022 23:55:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RZskHV4TeTTMVFBqmIqYPpt94GyCVs5qLDQnES6O2Oo=;
        b=vJTJOh1iEFCxk4Vofzw31tWSCGKz59U8Lq38tsPDbQdoyYPEZfyN8cdWuv4Ni8SFkZ
         2wrt+bLXj00saeGgwV6RsYDCqfvaDpn6TPkJ4xgT0ft/EQEmS6OKSf7hinWgC4nlFPg1
         URe2Z/zvRK4VUeEI6yjlNU6ki0Nz+dWoScZS9Fv+r4g0ofFQ1w0piOv/fzhRECf6mD7h
         vBLWRUv8y1c3q4d8qkyOu569WSqcKFYu8xgs5NoLH3qHdSjYNfH/hZCElJYcDxXJc4D8
         O6vtNfjTFVOXwQLIdQFz+3qmgQFscQkgrRU0GUgQ9Mpr46eM67DiiLjXQNEvJRB1Pcol
         iVWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RZskHV4TeTTMVFBqmIqYPpt94GyCVs5qLDQnES6O2Oo=;
        b=hMigaygdWxESOIjwQV2GTCTQ9Gi48x51GSd4vppX6/b+5ziMcjHEk4TKvJ7/HjICmN
         znK0iaX5vq91zdXr7JVajajP+fUFpehzm1L4ZUlooOKdTgfvg2dM4CBLU9Xx4LZAgfky
         5gl/6mqyna3q48vZpMrc5li3xh3nDvt88zy4BBdMI/c2IPTVBA8LNYUcx5Alxzrhhhac
         d52KF3TA+NSzJtzSKaIIdnJxrBeUuxi5uJRh/G3idwSotxofZ8sx3BQ7ZClUolVpd4sb
         0LGsLPoMBR9BQfb3QnwrYWsUBpDAcwdQXc1ah2WSZfEG0GoRVTEgVjqY61lWHuFihVs+
         pIDQ==
X-Gm-Message-State: AOAM530ELHHg2xwC/CEGlCvJEGvIY569Ua6n/TaSPJO/9d4mHsndfRWZ
	pwV9hYbzkTX+3aMM6oO0FmSg6vRJJCgD3RksD+g0GOg/
X-Google-Smtp-Source: ABdhPJw/EubQc2wDI+6ICMItWn/h18G77G/1hUtI2ciiywGlmIe7ccADFvfCwPVIT19uyY3r3LtWw7m8zNcaaSZIbPc=
X-Received: by 2002:a67:fd86:: with SMTP id k6mr2239713vsq.0.1644479748077;
 Wed, 09 Feb 2022 23:55:48 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSyT==Q_Nfn8xgfT-FBuutZ_ieD_CKuc-PdA3xm6KHs4w@mail.gmail.com>
In-Reply-To: <CAB__hTSyT==Q_Nfn8xgfT-FBuutZ_ieD_CKuc-PdA3xm6KHs4w@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Thu, 10 Feb 2022 02:55:12 -0500
Message-ID: <CAL7q81tArWo++HCSyo_MGXpThqmdBvt94r-RJccqT3+bhh0PGw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: MOFCH5J3MEL4KHB3FTZ3OHWIAEXGH7JJ
X-Message-ID-Hash: MOFCH5J3MEL4KHB3FTZ3OHWIAEXGH7JJ
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Replay block on E320 data rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MOFCH5J3MEL4KHB3FTZ3OHWIAEXGH7JJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5993286463601814703=="

--===============5993286463601814703==
Content-Type: multipart/alternative; boundary="000000000000398f2505d7a54702"

--000000000000398f2505d7a54702
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

As long as the DRAM can keep up throughput wise, you should be fine in that
configuration. I think the E320 has a BIST you can run that reports the
throughput.

Jonathon

On Wed, Feb 9, 2022 at 3:29 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi,
> I am wondering if there are any data rate restrictions for using the
> Replay block on the E320.  I have a 4-port Replay block for simultaneously
> playing two streams to the 2-port Radio and capturing two streams from the
> 2-port Radio.  If the master_clock_rate is equal to the sample rate, does
> this imply that I will have a data throughput issue?
> Rob
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000398f2505d7a54702
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rob,<div><br></div><div>As long as the DRAM can keep up=
 throughput wise, you should be fine in that configuration. I think the E32=
0 has a BIST you can run that reports the throughput.=C2=A0</div><div><br><=
/div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, Feb 9, 2022 at 3:29 PM Rob Kossler &lt;<a h=
ref=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<br><div>=
I am wondering if there are any data rate restrictions for using the Replay=
 block on the E320.=C2=A0 I have a 4-port Replay block for simultaneously p=
laying two streams to the 2-port Radio and capturing two streams from the 2=
-port Radio.=C2=A0 If the master_clock_rate is equal to the sample rate, do=
es this imply that I will have a data throughput issue?</div><div>Rob</div>=
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000398f2505d7a54702--

--===============5993286463601814703==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5993286463601814703==--
