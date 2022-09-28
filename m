Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BF47C5ED2F2
	for <lists+usrp-users@lfdr.de>; Wed, 28 Sep 2022 04:20:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3843D3841A7
	for <lists+usrp-users@lfdr.de>; Tue, 27 Sep 2022 22:20:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1664331649; bh=J44j8bjHa6ezUEyCRKbqJi3gBH7b3WWI9PYfPw+43b8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ngVwhoZYAh6KlvqgNeFIKyIQi9+6N7+zmrINzmmE6ACJwuFCRgsp0HH1OJoTEZehD
	 +QIEQ/7O0kUp5wj9eVJw5oKGFT7bB0ul9mRsSbnJf0qcNjZsq1b9S5tCF4pLnD2Wbm
	 myxaj7QF6a+BpgVSgBUcmwjZ0CAPGDvWvP4jHeC5vdxvq7NyfWK4qEX+AplmFUpCj2
	 rbQs7G/6P4Zb60cB/WsMJ2CQFQIB8X0g6DgMdSS9VhWFrg0hofSExNLnx8XXzG1NIm
	 vEOZVnZ0oR/zvPL7VTJyy2g/PgiBxzxrlSoTFDuA2cfguf/0B+YA4wwDxYlAGOcNdv
	 P9Vly6Nb3Cu0A==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 3B5C93840E9
	for <usrp-users@lists.ettus.com>; Tue, 27 Sep 2022 22:19:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="pCeOx3C6";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id a41so15489722edf.4
        for <usrp-users@lists.ettus.com>; Tue, 27 Sep 2022 19:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=ZQWBtqp2HlWZwDeurE6EzJ3APNdR9orK2jLqCMCBfBA=;
        b=pCeOx3C6bSR6Pj6C5FrV2trF8z4xc8tUDQnL0H2FbT80KQjy9xAYrclNyOcaBQWeLy
         mtn5vxtYzeo5BptMzZLtuKGTm9cAx9WMRvX7Ru6DQTQHeykqLDVdHqUBbx1sdqFcrv2H
         wT6MDUYZTbS/9j/KiK8bRUPRtasNij+E5Cm9EJeC17Ny+lSW41h6EZvVWCvaRZ97cX74
         yg/wpFNEHR06Iir3Cot14NGHXQ1oBRxrEAKVGxWPILuNd3EOHasnmrhXTxwLSLQMOmY3
         fV/Jm9UHFoFEPSvI/POPmSFMqsJ0J5phRFE4UGDPxmYIS1umC105ogDGc4omrguCy/VQ
         Op1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=ZQWBtqp2HlWZwDeurE6EzJ3APNdR9orK2jLqCMCBfBA=;
        b=Cfy3ftTct2Dy8svwlUcOha/97DqZmU++rOdIsqgYtqXMes2e9jplkHE8NuLgzH0lgF
         muhRLiDaXouRN/LfiTGaN03PRM7oAwdqLlghN903Q1RP0pf48wpClR9p599D1ls9PpHZ
         1qB7VV0LRqDlD93GVNuJTA/EyABSnFCR9jTBclYTQHYc9Gn8loZam2n0mG9gh9Z01OrH
         gyvJ5OvJ6dxjN60wDOzKKiV4IqTg1dnPdCr0Y6Z0qw5XbvRyA/A1TlgsV6KinXQ5fsXO
         LLVrv0f41mWHLhpM0MD5+q2/WgdmjtWiC6zp0FzCWfmtwjWnusW2b40CZFFLzJm2qnfe
         IHHA==
X-Gm-Message-State: ACrzQf0hb8Cd7b/0syHNnqHYS2X5LVfKpBIQ5CinNj0c4lkP7rcDIeL1
	0SLx2z0Fa5eWakOcpQuf+BBSvVMXxjf6Hyh3BMafPRPa
X-Google-Smtp-Source: AMsMyM7YdBoOB5+bkgkciAzis40Lw9RE9reisjAc0i9nXwkUO5PsDy4eS9F3gl+MYmt8HJxWMjUGF+tU6FRFhCfpJC8=
X-Received: by 2002:aa7:cb83:0:b0:443:3f15:84fe with SMTP id
 r3-20020aa7cb83000000b004433f1584femr31191227edt.17.1664331576126; Tue, 27
 Sep 2022 19:19:36 -0700 (PDT)
MIME-Version: 1.0
References: <bFBy3jWM1DzU7ow6eKGnqIAMT4zW4he9qBkwhU9fro@lists.ettus.com> <CAEXYVK7f-nyQXPDo6WkVm3SCYM2EvzNVuDeQ4+k-7wqc7Oa=bQ@mail.gmail.com>
In-Reply-To: <CAEXYVK7f-nyQXPDo6WkVm3SCYM2EvzNVuDeQ4+k-7wqc7Oa=bQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 27 Sep 2022 21:19:19 -0500
Message-ID: <CAFche=hVgtfh8+ThZT23p1DdRM+3MRiNX2W-jYwgC1TAHJYqPg@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: 5UUXYTCCG4QV3ESGL2G2YKI3KAE2AFDU
X-Message-ID-Hash: 5UUXYTCCG4QV3ESGL2G2YKI3KAE2AFDU
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: adri96roll@gmail.com, "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reset Timing Violation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5UUXYTCCG4QV3ESGL2G2YKI3KAE2AFDU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0103076188416943400=="

--===============0103076188416943400==
Content-Type: multipart/alternative; boundary="000000000000624bcd05e9b36488"

--000000000000624bcd05e9b36488
Content-Type: text/plain; charset="UTF-8"

There's not enough information in the screen shot, but I think the output
of the double synchronizer is on a different clock domain than flop flop
(dato_entrada) being reset by it.

The reset signal needs to be driven by the same clock as the flip flop
being reset, otherwise Vivado can't ensure that the requirements of the FF
will be met, resulting in this timing violation.

Make sure you're using the right clock and reset signal for your
dato_entrada register.

Wade

On Tue, Sep 27, 2022 at 9:10 AM Brian Padalino <bpadalino@gmail.com> wrote:

> On Tue, Sep 27, 2022 at 7:21 AM <adri96roll@gmail.com> wrote:
>
>> Hi every one!
>>
>>
>> I am facing some problems with reset timing violations. This is is one
>> for example, and i have a fews. I tried to instantiate the reset signal but
>> it didn work. I don know how to fix it. On the other side, i have seen a
>> reset generation in a noc shell and i was wondering if i have to generate a
>> new one from a previous one.
>>
> I can't see much other than the names of the signals and the negative
> slack, but the hierarchy seems to indicate it's part of a synchronizer
> that's been double flopped, so maybe there should be a false path
> associated with it in your constraints?
>
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000624bcd05e9b36488
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>There&#39;s not enough information in the screen shot=
, but I think the output of the double synchronizer is on a different clock=
 domain than flop flop (dato_entrada) being reset by it.<br></div><div><br>=
</div><div>The reset signal needs to be driven by the same clock as the fli=
p flop being reset, otherwise Vivado can&#39;t ensure that the requirements=
 of the FF will be met, resulting in this timing violation.</div><div><br><=
/div><div>Make sure you&#39;re using the right clock and reset signal for y=
our dato_entrada register.<br></div><div><br></div><div>Wade<br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tu=
e, Sep 27, 2022 at 9:10 AM Brian Padalino &lt;<a href=3D"mailto:bpadalino@g=
mail.com">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Tue, Sep =
27, 2022 at 7:21 AM &lt;<a href=3D"mailto:adri96roll@gmail.com" target=3D"_=
blank">adri96roll@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quo=
te"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi every one!</p><=
p><br></p><p>I am facing some problems with reset timing violations. This i=
s is one for example, and i have a fews. I tried to instantiate the reset s=
ignal but it didn work. I don know how to fix it. On the other side, i have=
 seen a reset generation in a noc shell and i was wondering if i have to ge=
nerate a new one from a previous one.</p></blockquote><div>I can&#39;t see =
much other than the names of the signals and the negative slack, but the hi=
erarchy seems to indicate it&#39;s part of a synchronizer that&#39;s been d=
ouble flopped, so maybe there should be a false path associated with it in =
your constraints?</div><div><br></div><div>Brian</div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000624bcd05e9b36488--

--===============0103076188416943400==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0103076188416943400==--
