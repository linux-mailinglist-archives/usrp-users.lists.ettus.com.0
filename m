Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E00F35EA53
	for <lists+usrp-users@lfdr.de>; Wed, 14 Apr 2021 03:23:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0684C38446F
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 21:23:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20150623.gappssmtp.com header.i=@vectalabs-com.20150623.gappssmtp.com header.b="o5RV1YpN";
	dkim-atps=neutral
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 652D638402A
	for <USRP-users@lists.ettus.com>; Tue, 13 Apr 2021 21:22:58 -0400 (EDT)
Received: by mail-vs1-f54.google.com with SMTP id d25so2917682vsp.1
        for <USRP-users@lists.ettus.com>; Tue, 13 Apr 2021 18:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=N1xZAMxf3s6UOywiugTmYVwLWssXSMUtEVg0Sw0Qf08=;
        b=o5RV1YpNvwPE78OvVtSBgHX9WcUcjU/19PW1a/dBSH/KFYdkkGR8C/5WIHraZH/nzt
         GTKygT+5BucxDU9xtr3toU3TTRlzSTtQy2Jh7Khy+HeemMHHNOZJbMYLliOngcM/adWN
         0eDNA2y4EvhtYcxfsmFmGIF3qe43Ww3oPFkZ3iRE3PVBqJPMueUuQedHwaOm5KeXmD0V
         vx2SzQW0QE/YCR3aacGctZ/EWvYb6ZSlAgP71J1l5rYOtE859sZCNfIiInTX5rEKmJuf
         2ki/Gy+HlaakKdkztCJ5/zSdhD7N0t5Iq+uukoufiEEx0dFs6dpoPqQMSfh8n3w5oLQs
         bRtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=N1xZAMxf3s6UOywiugTmYVwLWssXSMUtEVg0Sw0Qf08=;
        b=sMy6JRVn0AiQ6SOflBCKF6FFnfF3SX07H2nStFfQQ3BMfNb3Nd5s16yB7dUYPH7lja
         eIHVVpjwwEW9tdDseBiGmjRUvf3H5yvGhstLTE7e1R5KbPlphrKZ9C7uepDe73AMI88e
         6S/WhkIRqFUoF5FDroS2TCHtHfriICKks4h7JklyzHH9ECgmjAgqv96WW1KBdHu6ZevG
         b1uYnXETDIUlFsCOalH7opv6uDyvmYvX7nyQvGXGxV45+XMjyJYjxEI63dlcfoYzFU2Z
         /SvBPLbba24iSx5msZUcnHcCzeTDt5bnl3iaAzhEWeSiqG30tf/4YbJfKF0qA7tmoFgv
         zlcQ==
X-Gm-Message-State: AOAM532vFfvKmtPmIK1bGaci2jMSGetrpyVzK0/5rEGZDId3+0wQqEWI
	ZUEuGIWW9oRZs3Gat/UqS5eLJeXDfea4t96KTHNUOg==
X-Google-Smtp-Source: ABdhPJwgXZd6RX/qdeSeq8VMvVc330UymRzj7zVTTR+Oh17aD/pcds7isuPfdov7SUcCyFoYFZKB9IheQSQN0UGDymY=
X-Received: by 2002:a67:8007:: with SMTP id b7mr25921573vsd.29.1618363377901;
 Tue, 13 Apr 2021 18:22:57 -0700 (PDT)
MIME-Version: 1.0
References: <RtZT7leRyCObeYPJIkfTMN6EQ3TDAuUZHf98J08@lists.ettus.com> <B1D3B718-A22B-434F-9F8E-A9599EAA0049@gmail.com>
In-Reply-To: <B1D3B718-A22B-434F-9F8E-A9599EAA0049@gmail.com>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Wed, 14 Apr 2021 11:22:46 +1000
Message-ID: <CALNMZ8Uu4aAWWfPOEWXE3YRRYrsd-U5dGGUecY=sJQAXc9tD5g@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: PBTQSL2CYSH7EFDNBDXP2XEME3IGH6FF
X-Message-ID-Hash: PBTQSL2CYSH7EFDNBDXP2XEME3IGH6FF
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Contradictory overflow messages when recording rx samples with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PBTQSL2CYSH7EFDNBDXP2XEME3IGH6FF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5915637310206961094=="

--===============5915637310206961094==
Content-Type: multipart/alternative; boundary="00000000000041f8ae05bfe496e8"

--00000000000041f8ae05bfe496e8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

I have run some comparison tests between the C++ and Python versions of
"benchmark_rate", using a high sampling rate in order to force some
overruns.

It appears that both versions are detecting & reporting overrun events
correctly.  However, when it comes to the number of dropped samples, the
Python version always returns zero for the number of dropped samples.

Do you have any idea why this is the case?  Is the resolution of the timer
less fine-grained in the Python implementation perhaps?

Thanks,
Brendan.




On Tue, Apr 13, 2021 at 11:05 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

>
>
> Sent from my iPhone
>
> On Apr 13, 2021, at 3:05 AM, brendan.horsfield@vectalabs.com wrote:
>
> =EF=BB=BF
>
> Hi All,
>
> I am using a Python script to capture a short burst of rx samples from my
> B210. The script is based heavily on the Ettus example =E2=80=9Cbenchmark=
_rate.py=E2=80=9D,
> with a couple of additional tweaks I took from the Ettus GitHub repo (
> https://github.com/EttusResearch/uhd/blob/master/host/python/uhd/usrp/mul=
ti_usrp.py
> ).
>
> In my script I am calling my rx sampling function repeatedly using a =E2=
=80=9Cfor"
> loop. Any errors that occur during sampling are stored in a
> uhd.types.RXMetadata() object, just like in the original Ettus script.
>
> Here=E2=80=99s the strange part:
>
> While the script is running, the letter =E2=80=98O=E2=80=99 is printed on=
 the screen about
> 50% of the time, which I believe is an overflow warning from the Fastpath
> logger. However, the number of errors being detected by the RXMetadata()
> object is almost zero. How can this be?
>
> Some questions:
>
>    -
>
>    How seriously should I take the Fastpath =E2=80=98O=E2=80=99 warning? =
What does it
>    actually mean? Does it mean that this burst of samples will be
>    corrupted/incomplete?
>
> It absolutely means that samples were lost.
>
> The metadata should include time stamps that will allow you to compute ho=
w
> much was lost.
>
>
>    -
>
>    Why is the RXMetadata object not returning an error every single time
>    that the Fastpath logger does?
>
> This I=E2=80=99m not certain of.
>
> Thanks,
>
> Brendan.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--00000000000041f8ae05bfe496e8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marcus,<div><br></div><div>I have run some comparison=
=C2=A0tests between the C++ and Python versions of &quot;benchmark_rate&quo=
t;, using a high sampling rate in order to force some overruns.</div><div><=
br></div><div>It appears that both versions are detecting &amp; reporting o=
verrun events correctly.=C2=A0 However, when it comes to the number of drop=
ped samples, the Python version always returns zero for the number of dropp=
ed samples.</div><div><br></div><div>Do you have=C2=A0any idea why this is =
the case?=C2=A0 Is the resolution of the timer less fine-grained in the Pyt=
hon implementation perhaps?</div><div><br></div><div>Thanks,</div><div>Bren=
dan.</div><div><br></div><div><br></div><div>=C2=A0=C2=A0</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr =
13, 2021 at 11:05 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gma=
il.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"auto"><br><br><div dir=3D"ltr"=
>Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On=
 Apr 13, 2021, at 3:05 AM, <a href=3D"mailto:brendan.horsfield@vectalabs.co=
m" target=3D"_blank">brendan.horsfield@vectalabs.com</a> wrote:<br><br></bl=
ockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<p>Hi Al=
l,</p><p>I am using a Python script to capture a short burst of rx samples =
from my B210.  The script is based heavily on the Ettus example =E2=80=9Cbe=
nchmark_rate.py=E2=80=9D, with a couple of additional tweaks I took from th=
e Ettus GitHub repo (<a href=3D"https://github.com/EttusResearch/uhd/blob/m=
aster/host/python/uhd/usrp/multi_usrp.py" target=3D"_blank">https://github.=
com/EttusResearch/uhd/blob/master/host/python/uhd/usrp/multi_usrp.py</a>).<=
/p><p>In my script I am calling my rx sampling function repeatedly using a =
=E2=80=9Cfor&quot; loop.  Any errors that occur during sampling are stored =
in a uhd.types.RXMetadata() object, just like in the original Ettus script.=
   </p><p>Here=E2=80=99s the strange part:</p><p>While the script is runnin=
g, the letter =E2=80=98O=E2=80=99 is printed on the screen about 50% of the=
 time, which I believe is an overflow warning from the Fastpath logger.  Ho=
wever, the number of errors being detected by the RXMetadata() object is al=
most zero.  How can this be?</p><p>Some questions:</p><ul><li><p>How seriou=
sly should I take the Fastpath =E2=80=98O=E2=80=99 warning?  What does it a=
ctually mean?  Does it mean that this burst of samples will be corrupted/in=
complete?</p></li></ul></div></blockquote>It absolutely means that samples =
were lost.=C2=A0<div><br></div><div>The metadata should include time stamps=
 that will allow you to compute how much was lost.=C2=A0</div><div><br></di=
v><div><blockquote type=3D"cite"><div dir=3D"ltr"><ul><li><p>Why is the RXM=
etadata object not returning an error every single time that the Fastpath l=
ogger does? </p></li></ul></div></blockquote>This I=E2=80=99m not certain o=
f.=C2=A0<br><blockquote type=3D"cite"><div dir=3D"ltr"><p>Thanks, </p><p>Br=
endan.</p>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div></div></blockquote></div>

--00000000000041f8ae05bfe496e8--

--===============5915637310206961094==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5915637310206961094==--
