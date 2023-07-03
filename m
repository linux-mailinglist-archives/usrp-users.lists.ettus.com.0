Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D8F745B2B
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 13:33:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D9DE43844F7
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 07:33:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688383987; bh=rQrHUIRlCXIQf0SurZHNeBAf9XsQehbu5KJPCvHwhKs=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=g/4DE4vpW76951m/26FKolvuJyouvsQ2vqF1NVODiCdDMq7cKh5gaIZ8OhXrWKNzi
	 MGqGOGtC2FnPSa5Crkmil6tXw+qF7Fh9Wk5Sn6xjnffLSuC+0+GNSpV5QvC3dfPy6T
	 6UiQK6/DNcCfQAvC1mjwJeMHif5lyRNJ9zdgjHV/QbV7/oh/cPj7o7V3smQ0WsFmDU
	 8jn/hGs0xhnCGEfQNAy8dBRsMLTHZpYViN8t8zL4a2jN9dSn+uVvI0fT+PMWhqYZnv
	 A8941H83b6jN1GSMoWCQGUzf2nOmglB0UarKkT798Wmy5sG3bR1HRMrnhMc8EN+q8u
	 8O/HX4Sf765sA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4349F383E2D
	for <usrp-users@lists.ettus.com>; Mon,  3 Jul 2023 07:32:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688383964; bh=rchrPZAxFO6umjr07bh7zpoDcISAqEY5EbD3xJRtzME=;
	h=Date:To:From:Subject:From;
	b=SnCcK2asJ2u10Adb1n3NH48dQsEP/6mfWIJ4thfTAG3YKsjgfKsqR6ItBAgsbc6l4
	 NiqH8m/5dAd6yh+GRFA68aTXWfKIsub1esjOT8CyWtYBuwDdlh3j87Aaa1xjKzPbOl
	 jmCU1Za4dfspT3tEvzDJ+Dt5WhHtqg7Zo3aYYfhPE8ClJpOtD9+8PHai21Uov1gHtS
	 Rc7x2MMNeQTSHtiis/lVdaTEbmXjEuEiIDtDYHkpMVxVs3UX2XAATtjQPtvIHC6kCA
	 QypBJRSbXK2QO6LtyOi6FSKYP7k0+1yVJHUvwON/+E6iPuqp6bEJExTJ2Z0YnfXzof
	 AtQEc2ZW9PfwQ==
Date: Mon, 3 Jul 2023 11:32:44 +0000
To: usrp-users@lists.ettus.com
From: jnunez@cud.uvigo.es
Message-ID: <EsarLqoVOAiZnhnUTSwkNe1S6diOUbQVAUTVty5s@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: XQULIIPUCJJLLU3OZ4UZ2XENPQD23MPR
X-Message-ID-Hash: XQULIIPUCJJLLU3OZ4UZ2XENPQD23MPR
X-MailFrom: jnunez@cud.uvigo.es
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Understanding time differences in rx_time
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XQULIIPUCJJLLU3OZ4UZ2XENPQD23MPR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8625670257544688400=="

This is a multi-part message in MIME format.

--===============8625670257544688400==
Content-Type: multipart/alternative;
 boundary="b1_EsarLqoVOAiZnhnUTSwkNe1S6diOUbQVAUTVty5s"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_EsarLqoVOAiZnhnUTSwkNe1S6diOUbQVAUTVty5s
Content-Type: text/plain; charset=us-ascii

Hi USRP users!

I am using one N200 and one X310 to simultaneously capture the same signal from 2 channels. Both devices are syncronished by an external GPSDO. I am using the attached GNURadio diagram. There is some time difference between both N200 and X310 captures. When I process the files in Matlab I can check a time difference of 103.7 ms between both signals (using cross-correlation). This value matches with the value obtained by subtracting the fractional seconds part of the rx_time values of both devices.

The Tag Debug block shows following information:

Tag Debug:

Input Stream: 00

  Offset: 0  Source: usrp_source2     Key: rx_time   Value: {0 0.200122}

  Offset: 0  Source: usrp_source2     Key: rx_rate   Value: 1e+07

  Offset: 0  Source: usrp_source2     Key: rx_freq   Value: 4.98e+08

Input Stream: 01

  Offset: 0  Source: usrp_source1     Key: rx_time   Value: {4 0.0964052}

  Offset: 0  Source: usrp_source1     Key: rx_rate   Value: 1e+07

  Offset: 0  Source: usrp_source1     Key: rx_freq   Value: 4.98e+08

My simple question is, why the seconds part has a difference of 4 seconds?

--b1_EsarLqoVOAiZnhnUTSwkNe1S6diOUbQVAUTVty5s
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi USRP users!</p><p>I am using one N200 and one X310 to simultaneously =
capture the same signal from 2 channels. Both devices are syncronished by a=
n external GPSDO. I am using the attached GNURadio diagram. There is some t=
ime difference between both N200 and X310 captures. When I process the file=
s in Matlab I can check a time difference of 103.7 ms between both signals =
(using cross-correlation). This value matches with the value obtained by su=
btracting the fractional seconds part of the rx_time values of both devices=
.</p><p>The Tag Debug block shows following information:</p><p>Tag Debug:</=
p><p>Input Stream: 00</p><p>  Offset: 0  Source: usrp_source2     Key: rx_t=
ime   Value: {0 0.200122}</p><p>  Offset: 0  Source: usrp_source2     Key: =
rx_rate   Value: 1e+07</p><p>  Offset: 0  Source: usrp_source2     Key: rx_=
freq   Value: 4.98e+08</p><p>Input Stream: 01</p><p>  Offset: 0  Source: us=
rp_source1     Key: rx_time   Value: {4 0.0964052}</p><p>  Offset: 0  Sourc=
e: usrp_source1     Key: rx_rate   Value: 1e+07</p><p>  Offset: 0  Source: =
usrp_source1     Key: rx_freq   Value: 4.98e+08</p><p>My simple question is=
, why the seconds part has a difference of 4 seconds?</p><p><br></p><p><br>=
</p>

--b1_EsarLqoVOAiZnhnUTSwkNe1S6diOUbQVAUTVty5s--

--===============8625670257544688400==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8625670257544688400==--
