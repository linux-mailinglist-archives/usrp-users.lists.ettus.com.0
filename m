Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F07513083
	for <lists+usrp-users@lfdr.de>; Thu, 28 Apr 2022 12:00:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CFFC6384700
	for <lists+usrp-users@lfdr.de>; Thu, 28 Apr 2022 06:00:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651140013; bh=b5R3owla3gmdI5UPV49ZGBDgLenKaKQcieuKl6quz8I=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=BXVe7FTWosOmjGUWTHEvEsfT4DMh040fKa8KYV3FGxxVz2PmT6yrW0GcWHh05YhMW
	 5wf60GxHYQdLwrvKRviPonFZxSONjV3insPzwsdRTqB9Rfn0xthji1z4IDCxrqCxGK
	 7p7HLSTt5IVORUF3SRtSgLAEyziVMBtmLENfJsPw2xQv3il6+Bv+GDR8CiaTNg5Hpq
	 jsIXq3e23HK4o4LbA0Vj46FiZXTRYhWH1g5PYgWH7VDJA6fPRTWkqEZcTy7GcFKXvU
	 GsFH22NzHBXP+6U+lUWyBvnBtffqWbLVnDZuSryTLHZ/ahjL6U5zW5m7dqIpiQGZ2f
	 aRy8xj2OX1NAw==
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id A45A63846BD
	for <usrp-users@lists.ettus.com>; Thu, 28 Apr 2022 05:59:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LvbTReQh";
	dkim-atps=neutral
Received: by mail-yb1-f174.google.com with SMTP id v59so8010894ybi.12
        for <usrp-users@lists.ettus.com>; Thu, 28 Apr 2022 02:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ghwQIHqy/6316T5CdLnFYSKlAEtCIzuX6d+BWmyNrdI=;
        b=LvbTReQhO6HQn8/SMFjUQzZoSctmS0fBD5IhUW4n+bQmzBdrCqC5RrDyftCo95hpND
         M2kTwBRw06V8ge27x2nvhCgecKBITMWe3V/gYAZglsVPIrESmJm1AKJB50luTcoMkqXn
         o9v80UU61ukcWJCHQxf2eshSNmJDpLoPrFBpQjEW9BBwBaW7fzhrZ0rPC5kd4T5GIklE
         1cv/RSK2H6L8ts/j/kCF/JSuN3Y8zlirtGKZKpKiLP+l9Z12jQzqc0WSJyZnSj2qZIwU
         S74E5reCsonAegDNlD9ZMZ9/6MeKYArSOComHP01fGK4RJVoBNdxzPaP9XHFRMVupHUe
         tqOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ghwQIHqy/6316T5CdLnFYSKlAEtCIzuX6d+BWmyNrdI=;
        b=zlucTMqKu/yZ3NmGBmY2E4C8YHXHjwC0d6Al2taOM8dpxR2XRozk+RzvY5ZZFplD0n
         OQHmknMhfXeNI4bpYGgsBTPmAJ1vwdZRylbG8wNQHeASXVs2NSiS/y23K708wJxS4cUk
         NA1BwZbOyfZrgAQ2B5sh2qPr/KHjkbhTOpyGDiNj6sdnaXF33adWVgSMV/F5NbAOwChC
         4pwGCOTLfYNWABVXdO+lwVzpKi93KQyRLlr1jZYGJh3aQOVfEk5z5AnalWxSUD+2nGam
         VI3VEhtFZlIuL4Oyrqm+42ZslbxyqXiCaPM04W84lD6AS2XxiKtwIn8md2pQuHF9mxq/
         55bQ==
X-Gm-Message-State: AOAM5302r3SyxzvivAzBqqekqBS0SOTCOXbEoErhJiXZC0Q7Xnuv8DVP
	6oggnn8Eerrh6WUZEkDEuScprFn5MR6O6fK8VPE=
X-Google-Smtp-Source: ABdhPJwNTenxv1HrWdwX6XfttPGLRAUrel2afSKTRBwSTWp50UrhDVc95E+YWu6ZcoOoYeTOobPZk8FkIrb1RkrxpuE=
X-Received: by 2002:a25:8f90:0:b0:648:84d1:1431 with SMTP id
 u16-20020a258f90000000b0064884d11431mr14686374ybl.483.1651139954031; Thu, 28
 Apr 2022 02:59:14 -0700 (PDT)
MIME-Version: 1.0
References: <CANzM3hzZTO6wDcketH+6iXLyr6wFO0vZF8=YwGxoozbZhz0Vpw@mail.gmail.com>
 <01dc4628-97ff-f1d5-81e6-538bb06e80b8@gmail.com> <CANzM3hzTUXtT=-pnSdbXf-FfAJhLxVgU60BaB6-ZP3PUpz1TBw@mail.gmail.com>
 <fc08b2fd-86ce-ae60-0ff7-27f45b3f0752@gmail.com> <CANzM3hzEPUtXqqf-FvynCxJEbujBb_yiR4trxhF5-aU6=M1RBg@mail.gmail.com>
 <66069968-236e-a309-13dc-14577c2fa095@gmail.com> <CANzM3hxCfMTOGuAoZELo1Un6tsLOBNoA8YMLd11m_dQkjHBEyA@mail.gmail.com>
 <a28a0150-9e4d-4b49-d5fe-dc32065ea62b@gmail.com>
In-Reply-To: <a28a0150-9e4d-4b49-d5fe-dc32065ea62b@gmail.com>
From: Arash Jafari <arash.jafari.telecom@gmail.com>
Date: Thu, 28 Apr 2022 11:59:02 +0200
Message-ID: <CANzM3hwOALSu_XK=dxbwSNy5Je1=gOmQEyGLFUOfHn5_7zxocA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: G75YBQEHUSI37F5BHY2S55MXPTQZTBAR
X-Message-ID-Hash: G75YBQEHUSI37F5BHY2S55MXPTQZTBAR
X-MailFrom: arash.jafari.telecom@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP-B200-Digital Down Conversion
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G75YBQEHUSI37F5BHY2S55MXPTQZTBAR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1542170838614918834=="

--===============1542170838614918834==
Content-Type: multipart/alternative; boundary="0000000000006f3ed205ddb3fa9c"

--0000000000006f3ed205ddb3fa9c
Content-Type: text/plain; charset="UTF-8"

Hello Marcus,

The user can apply the LO with an offset relative to the incoming RF signal
carrier frequency to get the IF signal at the output of the lowpass filter
before ADC. After ADC since AD9364 has an internal NCO on the RX path, the
user can either apply the DDC along with Halfband filters by activating
them on AD9364 or bypass the NCO and get the IF signal at the output of the
AD9364 and does the DDC on the FPGA platform.

I just want to know in which condition the USRP uses the internal NCO on
AD9364 and where it uses the DDC implemented on the FPGA side? What are the
differences in these two scenarios?

Thank you in advance!

Kind regards

Arash

On Wed, Apr 27, 2022 at 8:03 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-04-27 13:43, Arash Jafari wrote:
> > Hello Marcus,
> >
> > You can consider A and C points.
> >
> > Kind regards
> >
> > Arash
> OK, so what is it you want to accomplish that the standard setup doesn't
> accomplish?
>
>
>

--0000000000006f3ed205ddb3fa9c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Marcus,<br><br><div>The user can apply the LO with a=
n offset relative to the incoming RF signal carrier frequency to get the IF=
 signal at the output of the lowpass filter before ADC. After ADC since AD9=
364 has an internal NCO on the RX path, the user can either apply the DDC a=
long with Halfband filters by activating them on AD9364 or bypass the NCO a=
nd get the IF signal at the output of the AD9364 and does the DDC on the FP=
GA platform.</div><div><br>I just want to know in which condition the USRP =
uses the internal NCO on AD9364 and where it uses the DDC implemented on th=
e FPGA side? What are the differences in these two scenarios?</div><div><br=
>Thank you in advance!<br><br>Kind=C2=A0regards</div><div><br>Arash</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Wed, Apr 27, 2022 at 8:03 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvo=
nbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">On 2022-04-27 13:43, Arash Jafari =
wrote:<br>
&gt; Hello=C2=A0Marcus,<br>
&gt;<br>
&gt; You can consider A and C points.<br>
&gt;<br>
&gt; Kind=C2=A0regards<br>
&gt;<br>
&gt; Arash<br>
OK, so what is it you want to accomplish that the standard setup doesn&#39;=
t <br>
accomplish?<br>
<br>
<br>
</blockquote></div>

--0000000000006f3ed205ddb3fa9c--

--===============1542170838614918834==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1542170838614918834==--
