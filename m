Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 328303685B4
	for <lists+usrp-users@lfdr.de>; Thu, 22 Apr 2021 19:19:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C14AF384572
	for <lists+usrp-users@lfdr.de>; Thu, 22 Apr 2021 13:19:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Xq+PyL5L";
	dkim-atps=neutral
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 73C27384335
	for <USRP-users@lists.ettus.com>; Thu, 22 Apr 2021 13:18:52 -0400 (EDT)
Received: by mail-yb1-f169.google.com with SMTP id 130so8558925ybd.10
        for <USRP-users@lists.ettus.com>; Thu, 22 Apr 2021 10:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2TYHUHIHN+KHUWqIbYDIVW+0xVSsmOuGtOuJ3novbHU=;
        b=Xq+PyL5LXW96ANcZE16fvmKr/pTGccNQX0hpAFVzdd74kvQlnl7mT7SK9cZACToFN+
         S7LRYnW648x370NOuZ1P5P8o2Y4iHkwyYu+Dswq0JTi+YGyXJc3uV0DZ2ViFaL70KJW1
         vMDNaF9oKTIHmFb2H8CUBmqlvDRdiGjrPE9akz3kydOcIhDTDkKmfX13XSofR1NtTrpC
         BxtBXzXxtAHCRK1bXAca6rSk3LnUdIo3AGzB+HE9hJ53Zj54YnBIciJJCdKX/q2I0mEV
         a7g2VVOew+o7rpdVfSTUmLsdc0Z9BxuBjUPQ2XvI9QN8Dqn4Sgw2/PJUoZiH2xVc9M/E
         aPmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2TYHUHIHN+KHUWqIbYDIVW+0xVSsmOuGtOuJ3novbHU=;
        b=LCjrtb9q26ie5pE5IVJHdxxyjgiZFVVzO6D1Zfp+LYebOlEPg6clbreeBgmKx9Z2e4
         whgkoF+gRzf5UOD93Ke31KJTXOQAGqI/7AF3ooEOCgCOBE/zjOtXjW/f9cl8FE00YF1t
         CEta5EHfqD71CtprFfMb6UX8iUUlzkXMc5KSmfsDcdLAEyaANkyP3DJjaUgiDgXTHLrL
         FAfjY5mcu8xuRkBR0Wt+6syNRAXYEZPNwb7M0RiUYlTTJJPnz4VXkBDKgsyH+jwbDGEf
         G8u640vD7OUQzO4H/YwqKchuzw2L9lQy/o9c5+nUkCuvtQSeIR11FIQWruGCAJxVAaJ7
         vQcg==
X-Gm-Message-State: AOAM532ms8o+BgeHU/Hoalpq2aYy337ZLBExCFyXdGzWSF9apsTqy3AJ
	we/WFJ2/wk8AWL7lulZnUMdOwjbzdWM+/M0H3Q8=
X-Google-Smtp-Source: ABdhPJwHIZic/zYz6sgPEEkGDVgFUKeWgIZ1oD5x3/FDIcs+cZb/wHhVUqR9DJuEsphoGQuZquOqsNgaw5jYYXQsEmM=
X-Received: by 2002:a5b:144:: with SMTP id c4mr6176446ybp.136.1619111931840;
 Thu, 22 Apr 2021 10:18:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAOR0_ujqoh33cpKzeTpBVGzzY=v2BYyVL=w9WmX8NSUfjSbKkg@mail.gmail.com>
 <6F4B55B1-6B85-4A30-8CA8-A792D5D8595A@gmail.com>
In-Reply-To: <6F4B55B1-6B85-4A30-8CA8-A792D5D8595A@gmail.com>
From: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
Date: Thu, 22 Apr 2021 13:18:41 -0400
Message-ID: <CAL0m=Nbbzwuert-QCs0FbgoATvkr4-=EnQGzvkErx5mGEqZVEA@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: LGMOPVG7O736QGLNAUP2R3EZEBIZ7EE7
X-Message-ID-Hash: LGMOPVG7O736QGLNAUP2R3EZEBIZ7EE7
X-MailFrom: huacheng.zeng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: "LLLLLL" message from USRP X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LGMOPVG7O736QGLNAUP2R3EZEBIZ7EE7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8000099435503086691=="

--===============8000099435503086691==
Content-Type: multipart/alternative; boundary="0000000000008c8be805c092dfc2"

--0000000000008c8be805c092dfc2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thank you very much for your response. I'm using GNU Radio. Is there a way
to set bursty traffic in GNU Radio Companion?

Huacheng


On Thu, Apr 22, 2021 at 1:07 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> If you set up the steam to be a continuous stream, the USRP expects
> continuous samples, and if it doesn=E2=80=99t get them, it produces error=
s.
>
> You want to configure your stream for bursts, probably timed bursts.
>
> Are you using Gnu Radio, or the UHD API directly?
>
> Sent from my iPhone
>
> > On Apr 22, 2021, at 1:01 PM, Huacheng Zeng <zenghuacheng@gmail.com>
> wrote:
> >
> > =EF=BB=BF
> > Hi all,
> >
> > I am using USRP X310 as an MIMO transmitter to send two streams from a
> computer. The sampling rate is set to 2 MSps. When the computer
> continuously sends data to USRP, it works well. When the computer sends
> data at a slow rate (e.g., 10 packets per second), USRP prints out
> "LLLLLLLLLL" message and it seems the USRP does not transmit any signal.
> >
> > I expect USRP to transmit signal when it receives data from the compute=
r
> and not transmit signal if no data comes in.
> >
> > Any advice would be appreciated!
> >
> > Best,
> > Huacheng
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008c8be805c092dfc2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marcus,<div><br></div><div>Thank you very much for your=
 response. I&#39;m using GNU Radio. Is there a way to set bursty traffic in=
 GNU Radio Companion?=C2=A0</div><div><br></div><div>Huacheng=C2=A0</div><d=
iv><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Thu, Apr 22, 2021 at 1:07 PM Marcus D Leech &lt;<a href=3D"=
mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">If you set up the st=
eam to be a continuous stream, the USRP expects continuous samples, and if =
it doesn=E2=80=99t get them, it produces errors. <br>
<br>
You want to configure your stream for bursts, probably timed bursts. <br>
<br>
Are you using Gnu Radio, or the UHD API directly?<br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Apr 22, 2021, at 1:01 PM, Huacheng Zeng &lt;<a href=3D"mailto:zengh=
uacheng@gmail.com" target=3D"_blank">zenghuacheng@gmail.com</a>&gt; wrote:<=
br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hi all,<br>
&gt; <br>
&gt; I am using USRP X310 as an MIMO transmitter to send two streams from a=
 computer. The sampling rate is set to 2 MSps. When the computer continuous=
ly sends data to USRP, it works well. When the computer sends data at a slo=
w rate (e.g., 10 packets per second), USRP prints out &quot;LLLLLLLLLL&quot=
; message and it seems the USRP does not transmit any signal. <br>
&gt; <br>
&gt; I expect USRP to transmit signal when it receives data from the comput=
er and not transmit signal if no data comes in. <br>
&gt; <br>
&gt; Any advice would be appreciated!<br>
&gt; <br>
&gt; Best,<br>
&gt; Huacheng<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000008c8be805c092dfc2--

--===============8000099435503086691==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8000099435503086691==--
