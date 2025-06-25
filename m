Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E999AE902D
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jun 2025 23:25:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D006F385A2B
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jun 2025 17:25:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750886706; bh=emPZ8TroIq2O0j4C00eHslpqbdsEkhTniMJ9LxLAdYk=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=WM7fjIfiDTa4ffhrvPWJYV8F5cEUimDZhudyXctaqRZtvNjOLaEK5zwzo0sRamjQ1
	 bZn9rmQd2AK5x/Je8k4SXgnom7E8jWCD/3z/2BdNOyY3gicAroA0GE6y7xacgyGlhe
	 XmYYAG7IFuwjElLWSPsWTKZniFElmLb3HB1v20pvOvsmQrlRbSb4myqyMTOc0uoeqX
	 k2zlJu8GxWZPhF9jYL8bsZoKbWNEgqFHbsrEbjoa8dRj91YPCe47l59J4so6yqh0lt
	 GKCkEEN4japF4PK/WeSBt4ABmbU+hoRaP5SULEtUzTLTQndVsuo6Rx+5dw7gbyBRfQ
	 q2HqxYIi8IgbA==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 5A4A6385597
	for <usrp-users@lists.ettus.com>; Wed, 25 Jun 2025 17:24:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="GC9al6G9";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-60c60f7eeaaso503280a12.0
        for <usrp-users@lists.ettus.com>; Wed, 25 Jun 2025 14:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1750886650; x=1751491450; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ijUtaPCQ64jt5caUA+Ce04V22UT3bx3TiAn8Fza1LeE=;
        b=GC9al6G9pnwTW5z63lweU5a0MWriDrqVcY4pa3Nk3dSPsoqE2YxqLcYDnWDcVa8nYv
         +UXNoCQ2LK0wyoqskWpN4N87YFvnPyAm9cGhc0CLhbWCjNFnKyTfh1yv6XWfZPeYXPyf
         c5LYNxj+oQshQXE6fqGQHyPZVRFgvpy1wM1BFGiWOGDsWp2FMlSXQosBPSfhePzb4iWG
         +KF1RtrErKYh5r28x9snoAh30LfxUGDzJeYr2rtz7baA+xadH2hrV0RhvlitmYUH8CyP
         DStbnkYfzhbtnKVo8R91HapsDunrcBUb4c7Yooqp6UDXLI3TIV0kqSXmus7eY3OLpvUp
         SmQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750886650; x=1751491450;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ijUtaPCQ64jt5caUA+Ce04V22UT3bx3TiAn8Fza1LeE=;
        b=P8SOdOEKE3Uzbga0bc1uFwsSCd4nwgbzqNfy+JTp9ce53rpUm3TRsKBS1GdifoF2kV
         MXsNO+uhelq3Nu8++JKxv+p3c/w+IFIaKfC1qbi0qPpcCK/qYJYjPAUXKC0qY7A80BRG
         ef166ifoENqiTNSu0+2AbrnZnj4/0qqqKCyT+1SBL5VgzwZVL9B1iHPT7sEsG2HjUC6n
         wgcJjl1reDveU21RJAemt45XichTLmrlA8nsBbUc8FFOxxE7f4U3JsCXv6lpJZY3UYhl
         Oxm06WMzdzLlwlEvTd3iPLVNLpvqIW5p2RA1DhT8Q3hU0X2F2Gau3F/OjkLVzp7cdbAQ
         w8YA==
X-Gm-Message-State: AOJu0Yz8FenbW2xeBU7KXURMUR/zHL4qeE01NGOo8nbJ0zfzkH24rjKU
	YeHxKC/2YpMoey7bisB0p3dSI7fkkq78TkyNwAcqm51NxknV8dkOnDh7qvkVFbxcbt2o3UG359x
	rR/sk7ouS1/Bu4t/oSDr+gS6/jHKsqfRFcTPMqzJjMgnpHnhoKvU=
X-Gm-Gg: ASbGncsON82sk/7N0aGXvOgRFWery7sQbhrmNcsNPp0tkvjHwfFmmO9caItESOITnfZ
	abrZKUA6K8YaJdAC8wcauWtUBN8craykT1HkQmhD35ZOVfK/S704laA5oWtVZGVAz8K2MwSuMbp
	MXnXU+SpLzHTAYDQdEPqsqrliPjto8FZ8EBP95Qstmot8rF98z/MnbgxivZIrSeL196HsDJiweA
	zB2
X-Google-Smtp-Source: AGHT+IGbaG7eKvJED5fkP0zunphlH0r7vQ3kSDdQkuqZFh1Ts9r8h/wW+4AT3bi2/Eoy+GP338JSVlWXN4gMEtOfVsQ=
X-Received: by 2002:a05:6402:84f:b0:60c:397d:d638 with SMTP id
 4fb4d7f45d1cf-60c4dcc3406mr4511223a12.14.1750886649740; Wed, 25 Jun 2025
 14:24:09 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 25 Jun 2025 17:23:58 -0400
X-Gm-Features: Ac12FXzGcMIKIdAu1bFHApeip7jtK1RKS06xRIRaFETy0Tc2ZjU5rc0TNGAdxDk
Message-ID: <CAB__hTQB0JjEKNk0=SFDREonEeCVavhWpUR_-hcwy0-adDv8Cg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: ODZ6OVILX44AOB62ICE4DWMUBTE7HJNE
X-Message-ID-Hash: ODZ6OVILX44AOB62ICE4DWMUBTE7HJNE
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 SPI clock rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ODZ6OVILX44AOB62ICE4DWMUBTE7HJNE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1277508943783988448=="

--===============1277508943783988448==
Content-Type: multipart/alternative; boundary="000000000000ccdea606386c10d1"

--000000000000ccdea606386c10d1
Content-Type: text/plain; charset="UTF-8"

Hi,
The equation in the UHD manual for the X410 SPI clock rate is:
  SPI_clk = Radio_clk / (divider + 1)
However, I'm seeing half of that rate if I use the function:
  Radio_clk = usrp->get_radio_control()->get_rate();
Note that this returns the sample rate.  I'm wondering if maybe the radio
clock rate is half of the sample rate because it processes multiple samples
per clock cycle.

So, basically, my question is: what function or functions should I call to
determine the Radio clock rate needed for the equation above? Or is the
equation wrong?

Thanks.
Rob

--000000000000ccdea606386c10d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>The equation in the UHD manual for the X410 SP=
I clock rate is:</div><div>=C2=A0 SPI_clk =3D Radio_clk / (divider=C2=A0+ 1=
)</div><div>However, I&#39;m seeing half of that rate if I use the function=
:</div><div>=C2=A0 Radio_clk =3D usrp-&gt;get_radio_control()-&gt;get_rate(=
);</div><div>Note that this returns the sample rate.=C2=A0 I&#39;m wonderin=
g if maybe the radio clock rate is half of the sample rate because it proce=
sses multiple samples per clock cycle.=C2=A0</div><div><br></div><div>So, b=
asically, my question is: what function or functions should I call to deter=
mine the Radio clock rate needed for the equation above? Or is the equation=
 wrong?</div><div><br></div><div>Thanks.</div><div>Rob</div><div><br></div>=
</div>

--000000000000ccdea606386c10d1--

--===============1277508943783988448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1277508943783988448==--
