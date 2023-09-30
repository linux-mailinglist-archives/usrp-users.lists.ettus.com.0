Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DDC07B3DFC
	for <lists+usrp-users@lfdr.de>; Sat, 30 Sep 2023 06:21:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AE59C384D1B
	for <lists+usrp-users@lfdr.de>; Sat, 30 Sep 2023 00:21:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696047711; bh=m0xlI98AkRnb+jIrWOrddaD8p2YItADRdw6IckP7hDo=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=dZEjCTsM6tSU8UMnJD4b6g8MRRI7queHLA+4u2oAR6dOTftvpexfU+iWt5yzjPjFT
	 yT9NGSEFJLA7jZGS6KOZ9JaiwzK5qNflh6GNPtayMSqxB9LuOVxfPdciCqiAXqZNYv
	 yl6GpTU+nO+C8tcSDSg/IqQQgK07ivCVkgrzKdNM3mk5Ymm508UB54/17YYHYJdJwu
	 cj+FO05W34cWJTlS/5h2pUX7Oh6WhTUCnziN3OcB5mkpxODKSEV0gvUMAKZoGfsors
	 onTvdOrDGP6cOoXTLDRQjd914YLsiQsdZ29sOPT8cvJwfFdX1JrjsJWqq87JpQ3BND
	 ORzw0CBsd4Ffw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 26CE6384D1B
	for <usrp-users@lists.ettus.com>; Sat, 30 Sep 2023 00:21:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696047707; bh=7bNtlQZfBS+YDI1il8sZV1Z+R0Xn6cN62pCJ7zMCEs0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=FYEF09QbTOKqaBibvdYPvml236PPQZHHWHVjCV1tRESu7OTbIjXLCiyTgrjRwe2vE
	 XEAyOmxdjs/8aFQI+VjT4l5iNAZ2C/jMUbgwcG45QUhBi7urHoMER58tr0dX31UBK+
	 S5d8drtR9QCvDNrB97i/Ga95KVSMJ88L8MyYNRzQ86LhHD8CETHjLtX2uG9zF7VsE/
	 TRen+G1HAj9ngTNf4SWzvY2g/FVqkISnSrtpLG/A6Yw5QaepRDVpK3jWaCdG31uZwH
	 ZLfZtlBPb5+cEm/bBqz9IFJKTzBRsLg+vRcRq6SrumJHkbTFuWfXKYDM3VchRuSv6Y
	 On0knuqIArtHg==
Date: Sat, 30 Sep 2023 04:21:47 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <jhibP6pgtx52sT9pjMS9B3IFBkLkv8D3jsrSo8PNRk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTQezo8LVmsi=W929OP6ML6qSnRV1oNff7HuV+Es8vyv3g@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: CCOAI4L3A7Y2RXO6UHC3KDXS72X5SGLK
X-Message-ID-Hash: CCOAI4L3A7Y2RXO6UHC3KDXS72X5SGLK
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Appears Laggy Using UHD 4.5
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CCOAI4L3A7Y2RXO6UHC3KDXS72X5SGLK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4355335831174062154=="

This is a multi-part message in MIME format.

--===============4355335831174062154==
Content-Type: multipart/alternative;
 boundary="b1_jhibP6pgtx52sT9pjMS9B3IFBkLkv8D3jsrSo8PNRk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_jhibP6pgtx52sT9pjMS9B3IFBkLkv8D3jsrSo8PNRk
Content-Type: text/plain; charset=us-ascii

Hi Rob,

RFNoC_Replay as you mentioned is great without any underrun even with higher sample rate. 

1- I have a same radar application and I implemented the TX/RX code with two methods in GNU Radio: with RFNoC_Replay and also with simple USRP sink/source blocks.

\-with USRP sink/source blocks, while it transmits and receive radar waveform, I can save both of those TX and RX signals that needed for post processing.

\-but when I use RFNoC_Replay, radar waveform first loaded to the DRAM in USRP and then transmitted directly from there to the antenna, so while the echo signals from targets can be received and save to file, but how can I save the transmitted waveform?

2- also here is the other question, while I am saving these TX and RX signals to file, how can I save timing information, like when each sample received. it is important because of the underurn and overflow happen during TX and RX. any suggestions?

Thank you.

--b1_jhibP6pgtx52sT9pjMS9B3IFBkLkv8D3jsrSo8PNRk
Content-Type: text/html; charset=us-ascii

<p>Hi Rob,</p><p>RFNoC_Replay as you mentioned is great without any underrun even with higher sample rate. </p><p>1- I have a same radar application and I implemented the TX/RX code with two methods in GNU Radio: with RFNoC_Replay and also with simple USRP sink/source blocks.</p><p>-with USRP sink/source blocks, while it transmits and receive radar waveform, I can save both of those TX and RX signals that needed for post processing.</p><p>-but when I use RFNoC_Replay, radar waveform first loaded to the DRAM in USRP and then transmitted directly from there to the antenna, so while the echo signals from targets can be received and save to file, but how can I save the transmitted waveform?</p><p>2- also here is the other question, while I am saving these TX and RX signals to file, how can I save timing information, like when each sample received. it is important because of the underurn and overflow happen during TX and RX. any suggestions?</p><p>Thank you. </p>


--b1_jhibP6pgtx52sT9pjMS9B3IFBkLkv8D3jsrSo8PNRk--

--===============4355335831174062154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4355335831174062154==--
