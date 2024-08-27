Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DAC961585
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2024 19:32:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BA6C0385805
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2024 13:32:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724779961; bh=ArCIBgky4Z6mvsMfQxssGYq8yL9XeUdSUPa9fwSoSps=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=iKd48EOjQ9wXTI2YCXSA+nGfPL2P8RLwjPNKQCb11giyN9WAUXk+rg+ya3DjUmUSp
	 Cj5Y0ROad+jKAayxg6rpt7c4Hxfn7Vg99gdPV/nMDRSaZZZL+eUzcW0zBxZxz4X5HZ
	 ZwiSv1cjMEzxJRthIxHaU7zBOcJ/4ve/+tsdWkPEZUdvit7576lrP9yXxDLjB/Vg+o
	 onri49MNLXGugwIheiwBjeubhSNc5UIDRP3uP+Kb74ZFd12yashhRuGH/dUAXFnriA
	 uqacH4D7waFZ5bxavgPMjvbcHWXeGgXwvkoc45ga+djSqnbEJAROINlPkwVSPw/n6F
	 Uxmh5s0y8xq/g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D01A4383C4E
	for <usrp-users@lists.ettus.com>; Tue, 27 Aug 2024 13:31:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724779914; bh=20U3+xUpp/8ethzpDp9Cj/Xi6bNhgWr1hfsqQMj2iXM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=xtq36k//fB08iCBaadSuWTjvcX0N9LZP26wrTzF1VQ5eNtjYTmryaJaLNQhb4rtVo
	 NCgH+DWVOhGiJmqh13ulRFa5m90q1COZSgaSH317tXAFvXVVTAnlrjcuQL2jkuIxTP
	 bM1HGNF0F//DO8LOKPcXp3n1Tc3njiYq67s6/ZguVAwGRanAU9xkkn4yabUGByWYAc
	 Z9/SEMITAsZzL1oDI5JGKH02nV9M1OWcFzCtwNeMwOwe4Fq9i6Hl+8PBkCs36AYw77
	 i90DYZ760ltI2kfsrCPGVTbf6ZDrYYSFfMw8Qh2fkCdZPfhBG04sXhfM/J8is/JOTs
	 mdEQMarAGcRWQ==
Date: Tue, 27 Aug 2024 17:31:54 +0000
To: usrp-users@lists.ettus.com
Message-ID: <K8FSwvOlK2rfjZMpoii2QHXxx6ULW4oJXRydfwaQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: c5523231-6e48-4c4f-9ef2-ec6c4528028d@gmail.com
MIME-Version: 1.0
Message-ID-Hash: FL7UHGBHNOYOYNP4CP4O65D3T6FX2MRE
X-Message-ID-Hash: FL7UHGBHNOYOYNP4CP4O65D3T6FX2MRE
X-MailFrom: mhosein_attar@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why does the self-calibration utility not work?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FL7UHGBHNOYOYNP4CP4O65D3T6FX2MRE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Hossein  via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mhosein_attar@yahoo.com
Content-Type: multipart/mixed; boundary="===============4661050807773541381=="

This is a multi-part message in MIME format.

--===============4661050807773541381==
Content-Type: multipart/alternative;
 boundary="b1_K8FSwvOlK2rfjZMpoii2QHXxx6ULW4oJXRydfwaQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_K8FSwvOlK2rfjZMpoii2QHXxx6ULW4oJXRydfwaQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Usually, I generate signals by MATLAB and convert it to binary data. Then=
, I use =E2=80=9Crfnoc_replay_samples_from_file=E2=80=9D utility like the=
 following:

./rfnoc_replay_samples_from_file --args =E2=80=98type=3Dx300,addr=3D192.1=
68.20.2,second_addr=3D192.168.40.2,master_clock_rate=3D200e6,ignore-cal-f=
ile=3D1=E2=80=99 --freq 2.3e9 --file tx_singleTone.dat --rate 100e6 --ant=
 =E2=80=98TX/RX=E2=80=99

As to the OFDM signal, I upconvert the baseband signal to a low IF freque=
ncy by MATLAB, not with the UHD driver.![](/home/attar/Downloads/singleTo=
ne_ignore-cal-file.jpg)

--b1_K8FSwvOlK2rfjZMpoii2QHXxx6ULW4oJXRydfwaQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Usually, I generate signals by MATLAB and convert it to binary data. T=
hen, I use =E2=80=9Crfnoc_replay_samples_from_file=E2=80=9D utility like =
the following:</p><p>./rfnoc_replay_samples_from_file --args =E2=80=98typ=
e=3Dx300,addr=3D192.168.20.2,second_addr=3D192.168.40.2,master_clock_rate=
=3D200e6,ignore-cal-file=3D1=E2=80=99 --freq 2.3e9 --file tx_singleTone.d=
at --rate 100e6 --ant =E2=80=98TX/RX=E2=80=99</p><p>As to the OFDM signal=
, I upconvert the baseband signal to a low IF frequency by MATLAB, not wi=
th the UHD driver.<img src=3D"/home/attar/Downloads/singleTone_ignore-cal=
-file.jpg" alt=3D"" title=3D"" contenteditable=3D"false" draggable=3D"tru=
e"><br></p>


--b1_K8FSwvOlK2rfjZMpoii2QHXxx6ULW4oJXRydfwaQ--

--===============4661050807773541381==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4661050807773541381==--
