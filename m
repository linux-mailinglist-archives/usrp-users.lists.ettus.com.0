Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE5667F263
	for <lists+usrp-users@lfdr.de>; Sat, 28 Jan 2023 00:50:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 04B27384486
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jan 2023 18:50:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674863411; bh=TlwFfELl7FH3ZdVx47eQKQAL3YbwxiQ46F7K+pzaKcc=;
	h=Date:From:To:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=SlcIjAV2v27WN1J1N+P7pym2MpNqeHdFFA8csHwruIDHvTpBtzi4BHC0trKuDnomc
	 XzMmx9SBa/1r0vLpjwuiXKlyRjVWh9COI3ExGc2VpPjoXwUjMNL+Xg7tARZOcbjKSH
	 6zjXriZv6+AqMZtMIiWbzqK2fYIOyBalLIgn8YKGbcRoARkgKUXtobyw0VQHwkzf/O
	 TpQ+3wzVJq25Y4qscRfhiz8W9TNWWbMWuss6ycjEHMyVkr1Omxz79231wICoH2OgH0
	 Kt1xyzaj4pSDaFvMPJ+yxc7u23uzzOpxYo3/au3Qid+iMY0MhcUCBouD3xLonchd3X
	 jFanl3sQJWDEA==
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.184])
	by mm2.emwd.com (Postfix) with ESMTPS id 2FFA538446A
	for <usrp-users@lists.ettus.com>; Fri, 27 Jan 2023 18:50:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=xs4all.nl header.i=@xs4all.nl header.b="ktR1I5jO";
	dkim-atps=neutral
X-KPN-MessageId: 55860f16-9e9d-11ed-91cc-005056994fde
Received: from smtp.kpnmail.nl (unknown [10.31.155.8])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id 55860f16-9e9d-11ed-91cc-005056994fde;
	Sat, 28 Jan 2023 00:50:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xs4all.nl; s=xs4all01;
	h=content-type:mime-version:message-id:subject:to:from:date;
	bh=zn5pvMr3recaNugBMSJ+UakYc1pmJE5K4fUrZDiXsW0=;
	b=ktR1I5jOiQeU+DLlYUBI8YXncf26u4PC1XAc6EuDcIghIosLL4Qzxm/eyI5Fx1zyzx5NWHy2ktJ9J
	 R85gGfghSAOGlig2dFg9HPurWALnvyNkppUcZZnrZYTZhaC/q2l9zx0KMwwbOTrZv5jxa2WTK7UBTr
	 G91BJGD7XqhFpNiKljk4yYRcj1K3mArWpKpGZvCU3L+WX3FGyLd14CxxQm3J1DEUYDDnoUQfiGk4Xa
	 7ScUWAfTWKI6EjS/L2TdRSvH+0YU+G5TYuuQVhAadKAfk036Pc0LwxPmnH4kWjZOZrqxPp2ggXo2Fs
	 oOE3QML/oX0wn8yhiDSq/UfDxE2ewzg==
X-KPN-MID: 33|G/x7zjKAFXcApSL37dWEkDMlMahr/L47MsvnWUgxw4o2uwFrXFmrBkbLlNtvQmo
 eiDqtwZ+oEdwqytYBcQBRLBDzFTo0gKhQbjlKIPyxtu0=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|QF231D6AWWPxol0tIeJvo8+JSlxeiYN2R/vC5I9Kpy4Q0LSyMH+ep5TC5WN66n3
 grdWG6iq5NVkwGoyhDUZTkQ==
X-Originating-IP: 185.206.232.5
Received: from vm01308.protagio.nl (shell.protagio.nl [185.206.232.5])
	by smtp.xs4all.nl (Halon) with ESMTPSA
	id 4e6bf95e-9e9d-11ed-9d31-00505699d6e5;
	Sat, 28 Jan 2023 00:49:59 +0100 (CET)
Date: Sat, 28 Jan 2023 00:49:58 +0100
From: Mark-Jan Bastian <markjan@xs4all.nl>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <Y9RjJpngR0Jhhbex@vm01308.protagio.nl>
References: <Y9Lxt1qeGzi9rym+@vm01308.protagio.nl>
 <b276bfdb-c59e-bb9f-92b1-c7ab94ad67da@gmail.com>
 <Y9NmFYlarlrd8xE/@vm01308.protagio.nl>
 <d6538422-d08d-7f9d-ae19-d2ec18c7d199@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d6538422-d08d-7f9d-ae19-d2ec18c7d199@gmail.com>
Message-ID-Hash: 4N2UMEERCTLELPO3YKREUKIOUGHAAIHJ
X-Message-ID-Hash: 4N2UMEERCTLELPO3YKREUKIOUGHAAIHJ
X-MailFrom: markjan@xs4all.nl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UBX-160 LO filtering
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4N2UMEERCTLELPO3YKREUKIOUGHAAIHJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Jan 27, 2023 at 02:37:08PM -0500, Marcus D. Leech wrote:
> On 27/01/2023 00:50, Mark-Jan Bastian wrote:
> > 
> > When generating a complex +74 MHz and -73 MHz sinewave signal and adding them,
> > I see 1 MHz spur about -30 dB @ -74 MHz, irrespective of LO frequency. Thus the
> > spur might caused by (remaining) nonlinearity in the mixer or the subsequent stages.
> > 
> > I would like to control the -30 dB spur to a lower value, or at least find out
> > what the source of this spur is.
> > Next thing could be the DAC, which supports rates up to 1600 MSPS, but is only used at
> > 200 MSPS. Perhaps there is a way to modify the waveform in this step, similar in
> > the way digital predistortion can help improve spectral output purity?
> > 
> > Mark-Jan
> > 
> > 
> Also, have you run these utilities:
> 
> https://files.ettus.com/manual_archive/release_003_010_001_000/html/page_calibration.html

I'm quite sure the problem I see is caused by IQ imbalance. I can simulate it with the respective
gnuradio block, with near identical results- asymetric spur, not symetric around a
generated signal, for a whopping 0.5 factor.
I did run the calibration tools on my new system, for rx and tx chains, but will run them 
again (iterate). If that doesnt help I might modify the sourcesignal, and
follow the signal path again.

Mark-Jan
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
