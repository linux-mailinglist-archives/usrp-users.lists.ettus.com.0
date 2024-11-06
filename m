Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CCA9BE21D
	for <lists+usrp-users@lfdr.de>; Wed,  6 Nov 2024 10:15:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2B82A385C7C
	for <lists+usrp-users@lfdr.de>; Wed,  6 Nov 2024 04:15:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730884558; bh=OpI8/PjF/hGWecxP+yizcoBnZ5fiME+ADILYfB4mztA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=sjRK6Zm/q/IF4qhmnREHqhl3WHC09UN8iSQYEli4ZKT3WlDGaE6YTFnR3pJTdHuPB
	 yUNnZ+a6Q0RlCVkiL/F07Q5ykxGv0RKG6k9wDY66RmjJudEQCFLACaCS6QrKigk5Ax
	 tt74I02eaQlmYVXL3V2bmnYjGTG0OZQ/8Yipeql7TBgGkQm29TWFscZnQuBO0FinK7
	 QYis+tcAoc89E6jnkBGkqFyUm6aQzJMlZrhYPk5CuwLtX6CrxHK54prmkFgH09kZJ+
	 cOtfUUwmCwsFQVu60Ou+htvqpeoI/+N4U1sYaIzesFulZG1k4HTiJBGzWocZqQPRqZ
	 8g6LF/WAs9ing==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 0CB3338585E
	for <usrp-users@lists.ettus.com>; Wed,  6 Nov 2024 04:15:16 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="07lK8tIe";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5cec9609303so4980037a12.1
        for <usrp-users@lists.ettus.com>; Wed, 06 Nov 2024 01:15:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1730884516; x=1731489316; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vLcS/m4FOmtkYrrVc1PDeBj7AFo/RTbzAELR0JJp9/w=;
        b=07lK8tIecQnVHDAP7lGtxZiAXv3j60C3ghNg+yo/b8ylBUmUJyXkSOuJh7WUu4b4Oo
         UffzLgsGmpKiLGMZDAcV1/lMd/vUHr93RXKTMrPgiSYi7VhjiPEO7g9KUrGyGhmci71b
         /g6KDukhR5TIjU2csOO+XlsTFYCYY0JpSMVGcHFUFyNLFCq1RKcWnYvkdcBRKZIRjuqN
         RlzAGRtbVjg3d0DdvagDmQ9jU0fb269WyfX0XH4Y/LKHPHGymTuJjR+SkAb40BEGNySa
         uJgVojoPV9D0KnBQQqksEN9C3lzsKKrhiQ5ZJNQg8TEiP5amxaRUZeQ4APdqwGXlaLEq
         39yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730884516; x=1731489316;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vLcS/m4FOmtkYrrVc1PDeBj7AFo/RTbzAELR0JJp9/w=;
        b=N1w9hbAmY4cwGwKppmKE9qKvgPr5FufHSzPjHq/Nnhc66SAqCu/rimyhzCxqKM50kr
         Pe6zla993nqMQMnONRc5PzUNhV68yOmJChKLiC2PnTmAY6oHbZ3kff/S5MYFgGO1Loo3
         hO059srwQXiSZKBAIGCq+nGiybD/aGYJE09GWVY1b1O+rgE5usABSHvo6wcNGXjCdkzS
         6FuTMRx8r8X958bdwaTfTqN52b4A42Uc0tBrb4ngJvOLHt607zOcMIy2ywtqODFH1W5K
         H7GFVv+v6jRkZtQJitnGF5set4tWoR1Jc+4eWCQMFkffeYXMdfTQPR4PuvBM7QTckg5j
         jvug==
X-Gm-Message-State: AOJu0YyxSmC+qYLyoWsOEF4+m5+iCThE/shw+yXaXTFvmGm2JvSyx9VP
	q9SShrywujN0znCS+Ucda+gJHvFYVOwPtY7XXAThx9nHMxA0LuvyGxVCrmJEmIk/1ZuscDFZUJw
	h2F/vURq8SkfXiWq8bt/VSlbhQizdrx5Jc/nS6uAD
X-Google-Smtp-Source: AGHT+IFbDNXOnIrGAO84RqOnSog327Rn86r0MkDCubWCYNaPfdTpYCxvi+1lSPJIWQexX/JYA3mh0DmGGPDfXw2FeUg=
X-Received: by 2002:a05:6402:3589:b0:5c9:4b8c:b910 with SMTP id
 4fb4d7f45d1cf-5cbbf87959bmr30846548a12.2.1730884515358; Wed, 06 Nov 2024
 01:15:15 -0800 (PST)
MIME-Version: 1.0
References: <CAER1B8KWDxq2Yzq2Cr_RvT_woWMO7DL4q0Oi9yRO-7FJ2=pHmw@mail.gmail.com>
 <8820af7c-765f-4651-b4c4-3577791eef53@gmail.com>
In-Reply-To: <8820af7c-765f-4651-b4c4-3577791eef53@gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 6 Nov 2024 10:15:04 +0100
Message-ID: <CAFOi1A7C=0vYSZKN-s6-JCD4-+5Mbpk3695TwFBstxmMZk27-Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 2EK2DFVZVI3MNJLMRT6K4LRR4JRQOOJT
X-Message-ID-Hash: 2EK2DFVZVI3MNJLMRT6K4LRR4JRQOOJT
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD with DPDK minimum requirement
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2EK2DFVZVI3MNJLMRT6K4LRR4JRQOOJT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4548390498340655711=="

--===============4548390498340655711==
Content-Type: multipart/alternative; boundary="000000000000af877106263af4c9"

--000000000000af877106263af4c9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Actually, UHD 4.4 happens to support whatever DPDK version Ubuntu 18.04
ships. We support a reasonable range of DPDK versions (not too many, but
more than one) and when we released UHD 4.4, our internal test machines
were still running Ubuntu 18.04.
However, we didn't use the same NIC so there may be other incompatibilities
there.

--M

On Sat, Oct 26, 2024 at 6:22=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 26/10/2024 12:15, Mehran Memarnejad wrote:
>
> Hi,
> Following the instructions on this link
> <https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD>, I want to get
> the UHD work with DPDK so that I can transfer samples from E320 to Host.
>
> Question 1: The PC has an Intel Core i7 CPU and I don't know whether it
> can handle a 10G NIC with DPDK or not? Does DPDK support Intel Core i
> Series?
>
> Question 2: I have an Intel Core i7 CPU with Mellanox Connect-X 3 NIC.
> The OS is Ubuntu 18.04 and the UHD version is 4.4.0. Is this setup Ok for
> 10G NIC?
>
> Thanks in advance for your help
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> I'd be somewhat shocked if Ubuntu 18.04 was adequate to host any version
> of DPDK that would work with UHD 4.4.0, although
>   I don't know for sure.  I don't think DPDK, per se, cares about what CP=
U
> family it finds itself on.  Whether your computer can'
>   "handle" a 10Gig NIC depends on whether it has the appropriate PCI-e bu=
s
> width for your card, and other things that are
>   harder to definitively quantify like bus and memory bandwidth and CPU
> speed.  I run a 10G NIC on a dual-XEON server that
>   is about 10 years old.  Works just fine.  But I'm running it on Ubuntu
> 22.04.  I don't use DPDK because I don't need to
>   ingest samples at rates that would make DPDK necessary.
>
>
>
> Ubuntu 18.04 is very old at this point.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000af877106263af4c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Actually, UHD 4.4 happens to support whatever DPDK ve=
rsion Ubuntu 18.04 ships. We support a reasonable range of DPDK versions (n=
ot too many, but more than one) and when we released UHD 4.4, our internal =
test machines were still running Ubuntu 18.04.</div><div>However, we didn&#=
39;t use the same NIC so there may be other incompatibilities there.</div><=
div><br></div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Sat, Oct 26, 2024 at 6:22=E2=80=AFPM Mar=
cus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 26/10/2024 12:15, Mehran Memarnejad
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Hi,</div>
        <div>Following the instructions on this <a href=3D"https://kb.ettus=
.com/Getting_Started_with_DPDK_and_UHD" target=3D"_blank">link</a>, I want =
to get the UHD work
          with DPDK so that I can transfer samples from E320 to Host.<br>
        </div>
        <div><br>
        </div>
        <div>Question 1: The PC has an Intel Core i7 CPU and I don&#39;t
          know whether it can handle a 10G NIC with DPDK or not? Does
          DPDK support Intel Core i Series?</div>
        <div><br>
        </div>
        <div>Question 2: I have an Intel Core i7 CPU with <span>Mellanox
            Connect-X 3 NIC. The OS is Ubuntu 18.04 and the UHD version
            is 4.4.0. Is this setup Ok for 10G NIC?<br>
          </span></div>
        <div><span><br>
          </span></div>
        <div><span>Thanks
            in advance for your help<br>
          </span></div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    I&#39;d be somewhat shocked if Ubuntu 18.04 was adequate to host any
    version of DPDK that would work with UHD 4.4.0, although<br>
    =C2=A0 I don&#39;t know for sure.=C2=A0 I don&#39;t think DPDK, per se,=
 cares about
    what CPU family it finds itself on.=C2=A0 Whether your computer can&#39=
;<br>
    =C2=A0 &quot;handle&quot; a 10Gig NIC depends on whether it has the app=
ropriate
    PCI-e bus width for your card, and other things that are<br>
    =C2=A0 harder to definitively quantify like bus and memory bandwidth an=
d
    CPU speed.=C2=A0 I run a 10G NIC on a dual-XEON server that<br>
    =C2=A0 is about 10 years old.=C2=A0 Works just fine.=C2=A0 But I&#39;m =
running it on
    Ubuntu 22.04.=C2=A0 I don&#39;t use DPDK because I don&#39;t need to<br=
>
    =C2=A0 ingest samples at rates that would make DPDK necessary.<br>
    <br>
    <br>
    <br>
    Ubuntu 18.04 is very old at this point.<br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000af877106263af4c9--

--===============4548390498340655711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4548390498340655711==--
