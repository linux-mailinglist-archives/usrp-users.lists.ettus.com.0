Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5F654E5BD
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jun 2022 17:11:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 729CA384701
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jun 2022 11:11:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655392279; bh=ZWCOnOpX+TZeN51n4G/4cQONWbvmD0a/mS9SZImuruo=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Zf4yaeZThiS3C188/G/7xP+Lsjq7GI+aznUJDo42uAx1FpBCIfEvI34+2cy4YrGw+
	 SDc9RRh0ImvH9JW0Rbv+DS/n+dcLmzplV8Nf2tZLPgM6Dhuh9qTQMcVsOY6uWDy4Yj
	 xPBUVnJiOtD9MtzCtnpJZD03knqvV/hMh1qiAm+oxKNTYD4o/i0W4adjhDuGbx+kk2
	 cbKe1hW097lYRQWipLGMpo/BvcXmHmAE2wpKwejIKaE+ys5HMzm06X4zgDwOYAOh3H
	 oPXzwlr2H/eIG87sjrw3aeJuME2I/Odo8t+/yylMG5DQO9oMTU7cPp5mzKf4bq9p2Q
	 bdGytXqgRlBlA==
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	by mm2.emwd.com (Postfix) with ESMTPS id E92B5384665
	for <usrp-users@lists.ettus.com>; Thu, 16 Jun 2022 11:10:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="tPY1ssEP";
	dkim-atps=neutral
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-31756c8143aso16609697b3.12
        for <usrp-users@lists.ettus.com>; Thu, 16 Jun 2022 08:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GURCAb7gkZHuH3v+p5qtVgyC1Pxn94LRxU/HgScWitU=;
        b=tPY1ssEP8JO/RekSSrD4zQH189BDQUHAPyMN7AD6SkcpWjuIPv4Y0TTmnTDI4wujI0
         Gjt3D8VmSaqZa+dYO+A5MNcTHG6N6i6byWLxU2bmFmBx0UU+wSQEPXrhPsD2X2ayYcqH
         GC/4KvBcPm5J8C/87rdusMQBv8zvQ2xgnNVlqN4EqptyVYSrvBbdTEGVTmiSvQ9JBaKw
         2lRXsVw3U1RQnAAoH/jTSxhOQAuB/9I0qAfx0sOr6pzr2TxiBEN+VWu4LDQRzK6z7PsG
         xsINHs6xc6mRopIqYoOQ1NbAFa1RqzbKgrAr0q5dkVwJBcftmHzWakJELEoxnbeYl6g6
         JzLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GURCAb7gkZHuH3v+p5qtVgyC1Pxn94LRxU/HgScWitU=;
        b=g0nOc7pIsDeJgsod/nHa0uAp3bVfXccpsS18J9k1pS3fe/PN95qLjOtmQnIhRcmX6Z
         f61/7IfjeBdlmArx6QAL+vFQzTrHps3TDttlUmHzCUzwjlITmW2h0/tNWiY34/8xM23B
         M7F4eMxmlC0A8hD4vEIjfObcOOtBMSMT04tbhayP8QHxyo1dnlKrcJzfgHhLpfiQLTGU
         DKqynsp8YCtyMxwDQaixqeW1UYZpmxK81Un+gxHw47rcDISL/CF88O6w2vE5tNOz3Yfm
         iQw4Qwt+SYh/28zW9CcJW4LCR42qbxbu0fmyfATRxo3fkEQPg1z9jbW5/YQ5y6vSW7hc
         IGqQ==
X-Gm-Message-State: AJIora+enrd3oLEoHClN/XLPTpOZLb9UJfviwFjijQPmWvtYvbp73InB
	QTxDifn5w2R28TNfQXyOYRaO2CgDsuZgPOnmRt/r6pvgJOrZByuy
X-Google-Smtp-Source: AGRyM1sXR+2VBzK2PoQs8+oglDIk6AGPAmeg/SbDKAk8j9RTkXiEuY6WryjGcNQrv9VJWwzD1Z/bQ9sbJIPmNQoHcFE=
X-Received: by 2002:a81:4d08:0:b0:313:40b7:29fd with SMTP id
 a8-20020a814d08000000b0031340b729fdmr6337874ywb.272.1655392217337; Thu, 16
 Jun 2022 08:10:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3Pt6kf=hep=6QguqVka-sqZLgJjABTtxTfAk9_pOziLoFQ@mail.gmail.com>
 <CAA=S3PszO8rk7CvU3jw6bgDoY=QcrbAL19kJ1gOWHHp8g90mHA@mail.gmail.com>
In-Reply-To: <CAA=S3PszO8rk7CvU3jw6bgDoY=QcrbAL19kJ1gOWHHp8g90mHA@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 16 Jun 2022 10:10:01 -0500
Message-ID: <CAFche=hsGuwB1yqQRaUZ8QSOg286U=Wy=CB-AqLoH=0GGFmS-A@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: GVHU6VPDAIFFWPWNNLMF7UE6OIQAYRIL
X-Message-ID-Hash: GVHU6VPDAIFFWPWNNLMF7UE6OIQAYRIL
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: When I added ce clock domain to RFNOC gain block and I synthesized it, in Gnuradio it generates OOOO
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GVHU6VPDAIFFWPWNNLMF7UE6OIQAYRIL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6988526387555349027=="

--===============6988526387555349027==
Content-Type: multipart/alternative; boundary="00000000000014296d05e19209a7"

--00000000000014296d05e19209a7
Content-Type: text/plain; charset="UTF-8"

Hi sp,

Simulation is the best way to debug issues like this. I suggest you modify
the provided gain testbench to test your block. That's the best way to
debug HDL code. After it's working in simulation, then you should try
running it on the FPGA.

Looking at your noc_shell_gain.v, it looks like you hand-modified this
file? I suggest you run rfnoc_create_verilog.py to regenerate it from the
YAML file. See the getting started guide for instructions on how to use
rfnoc_create_verilog.
https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0

After you've generated a fresh noc_shell, do a diff between yours and the
newly generated one to see what's different. Of course, this assumes you
updated the YAML file correctly.

Wade


On Thu, Jun 16, 2022 at 4:52 AM sp h <stackprogramer@gmail.com> wrote:

> I examine all of the code again and again but my problem is not solved
> yet...
> any RFNOC  developer can not guide me?
> thanks in advance
>
> On Tue, Jun 14, 2022 at 11:21 AM sp h <stackprogramer@gmail.com> wrote:
>
>> When I added ce clock domain to gain block and synthesized it, in
>> Gnuradio it generates OOOO
>> I attached my source code in below, can anyone guide me?  I emphasize
>> that I read the RFNOC FFT and replay blocks and according to them, I added
>> ce clocks...
>> FFT and replay block work successfully but for the gain block, it does
>> not work ....Any idea? any offer?
>> Thanks in advance
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000014296d05e19209a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi sp,</div><div><br></div><div>Simulation is the bes=
t way to debug issues like this. I suggest you modify the provided gain tes=
tbench to test your block. That&#39;s the best way to debug HDL code. After=
 it&#39;s working in simulation, then you should try running it on the FPGA=
.<br></div><div><br></div><div>Looking at your noc_shell_gain.v, it looks l=
ike you hand-modified this file? I suggest you run rfnoc_create_verilog.py =
to regenerate it from the YAML file. See the getting started guide for inst=
ructions on how to use rfnoc_create_verilog. <a href=3D"https://kb.ettus.co=
m/Getting_Started_with_RFNoC_in_UHD_4.0">https://kb.ettus.com/Getting_Start=
ed_with_RFNoC_in_UHD_4.0</a></div><div><br></div><div>After you&#39;ve gene=
rated a fresh noc_shell, do a diff between yours and the newly generated on=
e to see what&#39;s different. Of course, this assumes you updated the YAML=
 file correctly.</div><div><br></div><div>Wade</div><div><br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, =
Jun 16, 2022 at 4:52 AM sp h &lt;<a href=3D"mailto:stackprogramer@gmail.com=
">stackprogramer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr">I examine all of the code again =
and again but my problem is not solved yet...<div>any=C2=A0RFNOC=C2=A0=C2=
=A0developer can not guide me?</div><div>thanks in advance</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun=
 14, 2022 at 11:21 AM sp h &lt;<a href=3D"mailto:stackprogramer@gmail.com" =
target=3D"_blank">stackprogramer@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">When I added ce =
clock domain to gain block and synthesized it, in Gnuradio it generates OOO=
O<br><div>I attached my source code in below, can anyone guide me?=C2=A0 I =
emphasize that I read the RFNOC FFT and replay blocks and according to them=
, I added ce clocks...</div><div>FFT and replay block work successfully but=
 for the gain block, it does not work ....Any idea? any offer?</div><div>Th=
anks in advance</div></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000014296d05e19209a7--

--===============6988526387555349027==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6988526387555349027==--
