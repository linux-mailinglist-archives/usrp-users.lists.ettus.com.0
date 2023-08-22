Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C0E784670
	for <lists+usrp-users@lfdr.de>; Tue, 22 Aug 2023 18:00:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8DD27384A70
	for <lists+usrp-users@lfdr.de>; Tue, 22 Aug 2023 12:00:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692720039; bh=tpofV1Wf7S4EsP7Il9tUzb9hJ9FkgtcellYwY3XfTx4=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vTtOOTbACmqSBtpxNxXoHf19HaH5GfQ9+eDm0pkDBNq/QDKlJ7v2arzcFynmP4sMz
	 hT+FrT0RC20cyFQUZR7LoM6fgDfs/R30Ph7ExVUh3zKKxBWJCC6q5dw9ZQjirHmROX
	 MjxcgLklfoQdNDzcmdcrURgksDpCKeHHNGXACfIJBiYcZ/JViGIyty4XphcOH4osNA
	 MiGHcLyndKAtDf2CJ9QUf6tBJKrOU9WEEgQiEmBgwY6C4vvPUqVSp3xb40E9DvyYnA
	 u+/8+9I5TABeSbmne/WLGY9XbGNjE9fp4TWJ8K74GphBdTQpjUk2Mff1+7vRlGpw0o
	 MkIXIc+alop+Q==
Received: from mout.web.de (mout.web.de [212.227.15.4])
	by mm2.emwd.com (Postfix) with ESMTPS id 182C2380B9E
	for <usrp-users@lists.ettus.com>; Tue, 22 Aug 2023 12:00:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=web.de header.i=theowire@web.de header.b="hmrKFsEI";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=s29768273; t=1692720023; x=1693324823; i=theowire@web.de;
 bh=qWdFiI0QEB1OK9etwWNhO9qsC4MMrQcO57+OeEr4d2A=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=hmrKFsEIsL/AGVzNh3AU+24FDP3CvrvZWimPVQYRwpMmk6HBsEIfEyjzKZlE9YYedXvK9w2
 Zl2P584Pck16QQ1JhAzSc2lLDbJiEsc6tyEPKfx7glX5mMlw70zSaooPfHMQRYbejIkpS0JEq
 +gv8UogTabMzlri3hXa+2Ogo61jgMRAWA3kL3YsTGmNrsDFb6mzjxR5CE4GnOelmMmRp44yu/
 1aiGrqDWRV0MPpad0R9QEVme4ExekL1zrsIBq37x9y7yJMDVUH9yBK5yC6ecmEumOsQEIEtRm
 qsxJJKj9GODl0TtugNSvXFbthkdmB8JtJ0HuXghGHKcyAltc9YlQ==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [109.42.179.108] ([109.42.179.108]) by web-mail.web.de
 (3c-app-webde-bs44.server.lan [172.19.170.44]) (via HTTP); Tue, 22 Aug 2023
 18:00:23 +0200
MIME-Version: 1.0
Message-ID: <trinity-9c2159d5-bdf9-46a0-a7b2-15179c76afad-1692720023650@3c-app-webde-bs44>
From: theowire@web.de
To: usrp-users@lists.ettus.com
Date: Tue, 22 Aug 2023 18:00:23 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:jrPOe2TovJRNNjR3fkFNu+OuwzAQzkmQ4fqo/YXznbZGGwPLAIfGlSkc1vW/n9TQu74Fn
 cbnNQWZZNlYX31F/B51OahCvg8tOHTZCRwj82csFEURCUG43qoeVdw8SJIUHzuYKPcptxpCaLQpy
 8EhIH8APViqff3x5lDCrJ0BYni4Uuux9WX7mHJobGUN7mV+o+Ri5KYr/vAcl9UUxtN7h01+BtuEi
 8EfBYlFWhe/mAVeQ/MzyKkCRfi56SUZ5fi8oW+AsOZt3aU6Z4bTCcwmtV1rYZhnbRUyQQk1zDhrh
 t0=
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:jwHUb7p/0qc=;A+XmXXb5BdaeAE2nPIBQEytt8DT
 /SntIrfwmSJkjqsDjrKH6GDqSdnT4UWhk7S49PZW5TeMWd5PNHysySaELFB7KEXuMYZhT/odi
 I81Y6W1sxuq5hSLL4mSJPSAmkpSwyEvhG5rexbq4I0SrKB3+pccUh6mnNfWwF/IIT06hi3mmM
 DLPZzF1dKoQbXHBFjZiJZxtP7Tx5VOae33ptuSjZmmlFNs0tfUpwUN32ZdZqrWqvo45defXV2
 NaS/AO/fxoB2KHxyICSx1oE6BsB/Q67Ac/FCmqB47dcuoWz9xjzP4+tQcPJ5CkGNzzrGmkb65
 fay4ziRvHfSixjnkdRZri2+ob3BPihoge0rAWH+AGPiKzPtlZQuVbXQ/ubYUHtSmDQSFQLTFt
 jeQCvCJTqvgR5pPvMIK67aNnA0pvwItgtTK15TNeEDqA1fbkSXc90r0x0qppuokQeHeGHv41U
 4fMPOS5ygHgM/5FjpN5AARqrejrdfdh9bFQdxbOEYSpSJ/l5uokb9WkGALTXqkvXxSXXLOCi8
 MyDtfYJG4x5/NrD0Wvc/vHh65XprxlMyyiEL5FzvaG/5t6uYx1xQbq4YGUwCf/xmOSfNrFmig
 obmMANPvi+SzhvX4uFnqNB5sMVKNOpycaeVTCXiORQb1ZDLCrosuLnAyByCGmKlnqVbIVAEWs
 FiyB6BeaNa039TmdjNdB0Dhj/avUVBq1siuZSEBsVKrZjRBpOOb9AueCav/XNurFM2n6ujG0t
 QrI6AvFVfMF1CdGhvLELdWJIElcHgwcUVrQYcUVowRYecYo2uaqW4QlZR9poJE5kWkms7dp2b
 ePbPQ/hTgDas80vkCX+PtQQQ==
Message-ID-Hash: WWGWEDDWKRBYCWUY2JCTDBYH7AIVNOLS
X-Message-ID-Hash: WWGWEDDWKRBYCWUY2JCTDBYH7AIVNOLS
X-MailFrom: theowire@web.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] timing error UHD
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WWGWEDDWKRBYCWUY2JCTDBYH7AIVNOLS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4449671943840513994=="

--===============4449671943840513994==
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div style="font-family: Verdana;font-size: 12.0px;">
<div>Dear all,</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div>I am working on a measurement setup with the USRP X410. Since we wanted a higher sampling rate, we sitched from ethernet to 10gbit/s thunderbold.&nbsp;</div>

<div>With ethernet and a sampling rate of 2MHz, the flowgraph in gnuradio worked perfectly fine. Now, with 10gibt/s, also with 2MHz sampling rate (for the beginning-&gt; will be higher later), the setup does not work well anymore.</div>

<div>GNUradio prints now</div>

<div>&quot;LLLLLLLLLLL&quot; and</div>

<div>&quot;usrp_sink :error: In the last 802 ms, 181 cmd time errors occurred.&quot;</div>

<div>I did all what the suggestions I found here: <a href="https://deref-web.de/mail/client/0e2L9R-XDUU/dereferrer/?redirectUrl=https%3A%2F%2Fkb.ettus.com%2FUSRP_Host_Performance_Tuning_Tips_and_Tricks" target="_blank">https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</a></div>

<div>E.g., MTU rates in the network configuration to 9000 etc.</div>

<div>&nbsp;</div>

<div>Is there something else which I am missing? Any other important things to keep in mind while using 10gbit/s thunderbold?</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div>Thank you very much for every little help.</div>

<div>&nbsp;</div>

<div>Best,</div>

<div>Theo</div>
</div></div></body></html>
--===============4449671943840513994==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4449671943840513994==--
