Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 308DB4C5D6F
	for <lists+usrp-users@lfdr.de>; Sun, 27 Feb 2022 17:33:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 96E3A384BE5
	for <lists+usrp-users@lfdr.de>; Sun, 27 Feb 2022 11:33:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nU2v4b+y";
	dkim-atps=neutral
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 927393800B7
	for <USRP-users@lists.ettus.com>; Sun, 27 Feb 2022 11:32:35 -0500 (EST)
Received: by mail-pl1-f169.google.com with SMTP id c9so8802963pll.0
        for <USRP-users@lists.ettus.com>; Sun, 27 Feb 2022 08:32:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fyegwHnoOHHuEBtDgxw5sT4vJrRCmGMxNqVlixZoX/o=;
        b=nU2v4b+ysk52NTYbQIoqnq5PUtmGNzEfHLhq3dHdKfDM9w4x5VbAdBcGNLFqckoVWp
         LC3UNXOQzqjTkis8OaTiruk5qSfkVmnSTxdoBDCnOepfD1wDElmJisffEtEnr/dyjn1H
         AwrYw0MVg2ZrURKQTPABhngTbp2SOOwPLuUF4E0JaoizLhKZvJ9wWz+QuKPi0Cr5MVts
         jPTrJJwffLKrCdUfA6X55ijRKPFZJp5O4iDts369libWxk7npbsYzpxJVohEVkVDYxlS
         U6iGISlDJPwoT2vhX8wIbcwKycAE34ZIANyGK+eCAJe7cWDMMWwGRhYwOVa+xN0w2xzg
         M6FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fyegwHnoOHHuEBtDgxw5sT4vJrRCmGMxNqVlixZoX/o=;
        b=y/HO8h4+wI9Y0v90PANjMrhzW8KHEdK5xOwV649t80DmF6pejerzxwCBwev6ruredr
         PO6XCmrmJB30s+T0Fa6u7RnjXyDzDWdg5sjzfMdsGmJE3QIyGXsqNOqGUGYnVjDi4M1W
         0miCssFH4Ts8kr+B3UYJGpqHXSJn5gaRgmh8nJFXExh1GwGdmLmj2O/+Dots1J4qLV4z
         7P9BTLKg/IGIZiqfNwhGmbFMjFZ+V1Ar/tOPkRMljJJXFf5lG25ORJTZh0aKNQ4FuuG6
         tLpnavGd3xX8j+pMSbGtMzlls7HgHQHestufyzKD9HhYcFZ5uMeW/cfwWA5Oti/PM0KN
         XJlg==
X-Gm-Message-State: AOAM532aEZiKXHCVcJHF6ed5BQPt831U/n/RJ5BAtE3tu8HAkqsHsn0U
	Mnt4Jw/CJO7I+l6Pz5pRC59CHWvH8qeeZ0uP08g=
X-Google-Smtp-Source: ABdhPJzjBaSGX09QWFWJKvm1RUrjYKtI/jDA7gdCcxOuIjRx8TrisyW4TecXibTu97GS8GsQLrh/qJvpcRu8b2FFDF8=
X-Received: by 2002:a17:90a:ccb:b0:1bc:e520:2284 with SMTP id
 11-20020a17090a0ccb00b001bce5202284mr12861172pjt.66.1645979554497; Sun, 27
 Feb 2022 08:32:34 -0800 (PST)
MIME-Version: 1.0
References: <CAD8PmbpSBj74xXqkDd_otMdQXuX1-iWbDy6V+m-JpHm_WAug_A@mail.gmail.com>
 <D6F17993-DEE3-4A71-A88C-BBD178DC0E1E@gmail.com>
In-Reply-To: <D6F17993-DEE3-4A71-A88C-BBD178DC0E1E@gmail.com>
From: Kevin Hung <cykhung@gmail.com>
Date: Sun, 27 Feb 2022 11:32:23 -0500
Message-ID: <CAKU1+bjmSFQZv3wgsr3Qf4BM8p1Jrk51MfNYzb-MRQpLsGXFbw@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: ZKCPMAAGOPMGCMQEMP7J4R6NMJMQFOLX
X-Message-ID-Hash: ZKCPMAAGOPMGCMQEMP7J4R6NMJMQFOLX
X-MailFrom: cykhung@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sadiq Iqbal <sadiq.zahid73@gmail.com>, Usrp-users <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to estimate wireless channel using Matlab and ni USRP 2920
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZKCPMAAGOPMGCMQEMP7J4R6NMJMQFOLX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3252434243191942747=="

--===============3252434243191942747==
Content-Type: multipart/alternative; boundary="000000000000a7488905d9027ac5"

--000000000000a7488905d9027ac5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

But be careful, that link is for OFDM system (not the general QPSK system).

On Sun, Feb 27, 2022 at 11:25 AM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> https://www.mathworks.com/help/lte/ug/channel-estimation.html
>
> Really the radio is part of the channel, so estimation algorithms I would
> think would be hardware agnostic.
>
> You might do better asking on a MatLab forum rather than here.
>
> Sent from my iPhone
>
> On Feb 27, 2022, at 7:08 AM, Sadiq Iqbal <sadiq.zahid73@gmail.com> wrote:
>
> =EF=BB=BF
> Hi everyone,
>
> I am using matlab 2019 and NI USRP 2920 to implement a wireless network
> which consists of two Txs and two Rxs. I am using the general QPSK code
> which is available on the matlab website. But the thing is I can not find
> the channel estimation required when using a USRP. Therefore, can anybody
> guide me on this or point me in the right direction? or Provide a source
> code for channel estimation using USRP 2920.
>
> Thank you.
> Regards
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a7488905d9027ac5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">But be careful, that link is for OFDM system (not the gene=
ral QPSK system).</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Sun, Feb 27, 2022 at 11:25 AM Marcus D Leech &lt;<a hre=
f=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"aut=
o"><a href=3D"https://www.mathworks.com/help/lte/ug/channel-estimation.html=
" target=3D"_blank">https://www.mathworks.com/help/lte/ug/channel-estimatio=
n.html</a><div><br></div><div>Really the radio is part of the channel, so e=
stimation algorithms I would think would be hardware agnostic.=C2=A0</div><=
div><br></div><div>You might do better asking on a MatLab forum rather than=
 here.=C2=A0</div><div><br><div dir=3D"ltr">Sent from my iPhone</div><div d=
ir=3D"ltr"><br><blockquote type=3D"cite">On Feb 27, 2022, at 7:08 AM, Sadiq=
 Iqbal &lt;<a href=3D"mailto:sadiq.zahid73@gmail.com" target=3D"_blank">sad=
iq.zahid73@gmail.com</a>&gt; wrote:<br><br></blockquote></div><blockquote t=
ype=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Hi everyone,=C2=A0<=
div><br></div><div>I am using matlab 2019 and NI USRP 2920 to implement a w=
ireless network which consists of two Txs and two Rxs. I am using the gener=
al QPSK code which is available on the matlab website. But the thing is I c=
an not find the channel estimation required when using a USRP. Therefore, c=
an anybody guide me on this or point=C2=A0me in the right direction? or Pro=
vide a source code for channel estimation using USRP 2920.=C2=A0</div><div>=
<br></div><div>Thank you.=C2=A0</div><div>Regards</div></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a7488905d9027ac5--

--===============3252434243191942747==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3252434243191942747==--
