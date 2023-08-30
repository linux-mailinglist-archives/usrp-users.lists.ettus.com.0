Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B48C778D796
	for <lists+usrp-users@lfdr.de>; Wed, 30 Aug 2023 18:23:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 119E63851BD
	for <lists+usrp-users@lfdr.de>; Wed, 30 Aug 2023 12:23:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693412611; bh=V+anMYWG1ib24Iq9NRhh/5zzxq5IguQB4RmFCVEzZas=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=uyV1deveSKQeIwoyCxAKS3xSbM604LH4ov4QJp3Pwlop73xUz4N7iTUAXJNR3xgWn
	 OskgrQJBbpQDRorIzcpw/LCoxcbV9UpLR/oAnT1Szofcwf/GzRfHuLJ7N2OZsrWQA3
	 gGYU2D56BBtW7ratG1drJdubHW801Tm69hd+VNMRVZlwafPbJatHARmT01Atk9rwbs
	 +RdnWE22N9ZyVbC7giSyXV+0TQprQ+j7JtjiCjm8Wevs44SpxnEOkbewVAJ2mr7Fof
	 b+ci/dBFgtWdBFfBQpqytZlKoItgn9dMmcaRP3DllpuPFAemzSW14wElKGNijjsI++
	 fxBW9DD0kOUOg==
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 590C938500D
	for <usrp-users@lists.ettus.com>; Wed, 30 Aug 2023 12:22:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="WeuRM14q";
	dkim-atps=neutral
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-26fe4997871so3132998a91.3
        for <usrp-users@lists.ettus.com>; Wed, 30 Aug 2023 09:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1693412578; x=1694017378; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=odSudvygQgJCq/odjUmFqRbkjaKZPCbClIKI09zdWUE=;
        b=WeuRM14qQYbDeeg3CMLU4H7Fkxjczryd1f3ML8deKgv2JMG8j9iVmjePC5pKLCwdlN
         wYG0erpP2vWb0WGob/BaAJyNSkaM2xIxmyij5zfCM7j1LHANSfRbQH1lCZ8krP65HHVG
         OTWsgptszTfcRY6YdBV5DSXjpb3syfs0iTS8JymH8bBuSavfozfNInwL0B8v9+1qOLoR
         PyiqDpmLsNZecl5cgCTp99Fosi0ZsMFrmi7fIIPwzKxeiKefSJIQKFVOXMPYC6DePyJT
         /ChG+bSsev9jgl1JZFpdQEQvgBZup35ExnicCxlqWHgvp/DX3lbbWd3uYPyGcES1yXK0
         GRcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693412578; x=1694017378;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=odSudvygQgJCq/odjUmFqRbkjaKZPCbClIKI09zdWUE=;
        b=HHkgQBpS8k/z1/FAW0aOry09Vmi8qFlb3snRufd45mlTBDpujobruYfbpLg7E5ZCEi
         Lf7wD+9xLvSRBTdG3eMUafMMEICBhHBs4n6ASLjoAWdy9hMVCsr1/drkOjtY6l6ovAfb
         2RSXWj+cqkndWF3B7yDrj8VoW+TrOUbi4QiOihr3sD6rEakhqcFEt+f6zj3bYDSyoBsj
         p2oVUQSQ8hAR2H4HGUtNpVOKHF249AEw2Kjg9io1arqriYxdjQxu9LMRyDeHxlsFh7FL
         dTtrz14NP0gadyoYLHSh9GfuPsqBMsShsV9DWKO60U/JbcCHY3ifMLN1hdzE9oIQsftY
         1SeA==
X-Gm-Message-State: AOJu0Yx6bhEbg0VHUQ5q1nB41CTctJKyI2EkOOxl2joscZu8z4LeipA/
	gpj4Nj0/s77s03to2lvFw9zTx7tQBnUKC0ta80CCiReI
X-Google-Smtp-Source: AGHT+IFr13ygf+lTP0mlmAFejycj+p4AsRupdotlEaYasmIO9fvRvzy9AER1uHnd4YlW/XmLPGPZqp4iswk848cJdr8=
X-Received: by 2002:a17:90a:8d05:b0:26d:2b42:cdae with SMTP id
 c5-20020a17090a8d0500b0026d2b42cdaemr2294439pjo.3.1693412578178; Wed, 30 Aug
 2023 09:22:58 -0700 (PDT)
MIME-Version: 1.0
References: <584480455.3301411.1693407472738.ref@mail.yahoo.com>
 <584480455.3301411.1693407472738@mail.yahoo.com> <300125d8-60a1-339e-128e-ebe4faed86b1@gmail.com>
In-Reply-To: <300125d8-60a1-339e-128e-ebe4faed86b1@gmail.com>
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Wed, 30 Aug 2023 11:22:21 -0500
Message-ID: <CACaXmv8Ovea93sKjnG75o-7J9UmS2peJmCibPV_BHvjM3GL8-A@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, djtandrea@yahoo.it
Message-ID-Hash: VX6JBIREQ554N6STXJGSYBSBR5ANT632
X-Message-ID-Hash: VX6JBIREQ554N6STXJGSYBSBR5ANT632
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 problem with LLLLL
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VX6JBIREQ554N6STXJGSYBSBR5ANT632/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5567733509697953439=="

--===============5567733509697953439==
Content-Type: multipart/alternative; boundary="0000000000002e5388060426576c"

--0000000000002e5388060426576c
Content-Type: text/plain; charset="UTF-8"

Your CPU might not be powerful enough, or your system may not be
sufficiently performance-tuned, or the MTU value is not correct for your 10
Gbps Ethernet connections (you would want to use an MTU value of 8000 or
9000).  Also make sure that the two 10 Gbps Ethernet interfaces are
connected correctly with the right IP addresses between the host computer
and the radio.

https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks

--Neel Pandeya
+1-512-683-8076 (office)
+1-512-413-5696 (mobile)



On Wed, 30 Aug 2023 at 11:15, Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 30/08/2023 10:57, Andrea De Jesus Torres via USRP-users wrote:
>
> Hi everyone,
>
> i am working with openairinterface, and i am experiencing a strange
> behavior with the X310 (branded USRP-2954R before flashing).
> When i run a code with a certain configuration file using a B210
> everything works as expected, while when using an X310 i almost always end
> seeing a flood of LLL on the screen.
> That happens, for those who have familiarity with openairinterface, either
> running the gNB or the UE.
>
> The X310 is flashed with the XG firmware using uhd 4.4 (but also with
> other 4.x versions happens the same) and connected to an Ubuntu 22.04
> machine with an ethernet cable.
> The USRP an the network interface are configured according to the Ettus
> guide
> https://kb.ettus.com/Getting_Started_with_4G_LTE_using_Eurecom_OpenAirInterface_(OAI)_on_the_USRP_2974
>
>
> Though, with the uhd test utilities, like benchmark_rate, no issue appear.
>
> Do you have any idea on how i could debug this situation?
> Already asked the OpenAirInterface, but no reply yet.
>
> thanks,
> andrea
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> Well, 'L' is "late packet".  It's likely that the software is asking for a
> packet time that is too "tight" given whatever latency is
>   produced by your systems network stack.
>
> OAI probably needs to investigate this.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002e5388060426576c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:verdana,sans-serif">Your CPU might not be powerful enough, or your=
 system may not be sufficiently performance-tuned, or the MTU value is not =
correct for your 10 Gbps Ethernet connections (you would want to use an MTU=
 value of 8000 or 9000).=C2=A0 Also make sure that the two 10 Gbps Ethernet=
 interfaces are connected correctly with the right IP addresses between the=
 host=C2=A0computer and the radio.</div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" =
style=3D"font-family:verdana,sans-serif"><a href=3D"https://kb.ettus.com/US=
RP_Host_Performance_Tuning_Tips_and_Tricks">https://kb.ettus.com/USRP_Host_=
Performance_Tuning_Tips_and_Tricks</a><br></div><div class=3D"gmail_default=
" style=3D"font-family:verdana,sans-serif"><br></div><div><div dir=3D"ltr" =
class=3D"gmail_signature"><div dir=3D"ltr"><div><div><font face=3D"verdana,=
 sans-serif">--Neel Pandeya</font></div><div><font face=3D"verdana, sans-se=
rif">+1-512-683-8076 (office)</font><br></div><div><font face=3D"verdana, s=
ans-serif">+1-512-413-5696 (mobile)</font></div></div><div><font face=3D"ve=
rdana, sans-serif"><br></font></div></div></div></div><br></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 30 Aug 20=
23 at 11:15, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
>patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 30/08/2023 10:57, Andrea De Jesus
      Torres via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,=
sans-serif;font-size:16px">
        <div dir=3D"ltr">Hi everyone,</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">i am working with
          openairinterface, and i am experiencing a strange behavior
          with the X310 (branded USRP-2954R before flashing).</div>
        <div dir=3D"ltr">When i run a code with a
          certain configuration file using a B210 everything works as
          expected, while when using an X310 i almost always end seeing
          a flood of LLL on the screen.</div>
        <div dir=3D"ltr">That happens, for those who
          have familiarity with openairinterface, either running the gNB
          or the UE.<br>
          <br>
          The X310 is flashed with the XG firmware using uhd 4.4 (but
          also with other 4.x versions happens the same) and connected
          to an Ubuntu 22.04 machine with an ethernet cable.<br>
          The USRP an the network interface are configured according to
          the Ettus guide=C2=A0<a href=3D"https://kb.ettus.com/Getting_Star=
ted_with_4G_LTE_using_Eurecom_OpenAirInterface_(OAI)_on_the_USRP_2974" rel=
=3D"nofollow" target=3D"_blank">https://kb.ettus.com/Getting_Started_with_4=
G_LTE_using_Eurecom_OpenAirInterface_(OAI)_on_the_USRP_2974</a><br>
          <br>
          <br>
          Though, with the uhd test utilities, like benchmark_rate, no
          issue appear.<br>
          <br>
          Do you have any idea on how i could debug this situation?<br>
          Already asked the OpenAirInterface, but no reply yet.<br>
          <br>
          thanks,<br>
          andrea<br>
          <br>
        </div>
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
    Well, &#39;L&#39; is &quot;late packet&quot;.=C2=A0 It&#39;s likely tha=
t the software is asking
    for a packet time that is too &quot;tight&quot; given whatever latency =
is<br>
    =C2=A0 produced by your systems network stack.<br>
    <br>
    OAI probably needs to investigate this.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000002e5388060426576c--

--===============5567733509697953439==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5567733509697953439==--
