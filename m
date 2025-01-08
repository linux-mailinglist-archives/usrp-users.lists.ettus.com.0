Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B28FFA055D2
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 09:53:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AA1B8385C13
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 03:53:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736326438; bh=XhYukdnhQBladA6oWkjK45KkEqiMqFDDHu0D6LqKmRw=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=psmrMMfV5GZDW7AvnV4j85vkgQxY/jBfye8xSx6SeJ8CZeKTEtBA+QNd6xIkH+/lv
	 63WSiqOIBusWcwgKrHz2/KDZKQM7s09dH+BTCJ9K5mD2z2YjaLExbLUk39kI1B8lK9
	 kaYjjZLi4Qmzducp4FwpZt/1or8duB2+U76edyo6J6jV2A8hRwCOzdmGgcYzBKSPwA
	 Cn9d/r+Qr5A58czwRwms9u2QoqZ5Qk+xn7Dl/V4uR2prOtH6pwKEVlugAsrMW8++Nl
	 ednhgRzbnwnjCIE3InF/YzfJ3U/YRZ2sd1DJi1cGEtT02pE6y9c+bAGzBWIH1KwXAG
	 05Dz4eQILe5iA==
Received: from smtp1-g21.free.fr (smtp1-g21.free.fr [212.27.42.1])
	by mm2.emwd.com (Postfix) with ESMTPS id A6FDC38550B
	for <usrp-users@lists.ettus.com>; Wed,  8 Jan 2025 03:53:16 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=free.fr header.i=@free.fr header.b="fArUrTgn";
	dkim-atps=neutral
Received: from zimbra-e1-03.priv.proxad.net (unknown [172.20.243.151])
	by smtp1-g21.free.fr (Postfix) with ESMTP id A9FEEB00563
	for <usrp-users@lists.ettus.com>; Wed,  8 Jan 2025 09:53:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
	s=smtp-20201208; t=1736326395;
	bh=885e3gdjTsRnJG0ZkQnsK03lu00XhyYpzicL9//hlFI=;
	h=Date:From:To:Subject:From;
	b=fArUrTgnSKPQe7yoBjt5y3TG00mxR0XDX9dVgYVTD7bjTj12T6netLohegx7dMbjz
	 cpwLnsbrBIXY+3VCooOygsWBmd+AfVucdzj2wRci8N1k57kxRIKjEwo5SJHnCPn7Kd
	 DnimrD9FUQsve85NMcxsZord90FdUkeROO2s2c83/QSAjAwXKoMWg2eD+WkG6smEMR
	 2wWs+o5YGHe4XqPCAZouyU/ZJZ5aUOulAOCPKicJTyMc0+1s9SefAGQeTRmQxgzevF
	 KPNrtpDZ0yFHMcmypVZ2FVw11faQhss2WjU+NBSmSynj9+NUzKh8OKffh32g+Pg8uK
	 UzV0MeGFLJhVA==
Date: Wed, 8 Jan 2025 09:53:15 +0100 (CET)
From: friedtj@free.fr
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <1487597562.849112921.1736326395639.JavaMail.zimbra@free.fr>
MIME-Version: 1.0
X-Originating-IP: [194.167.45.227]
X-Mailer: Zimbra 9.0.0_GA_1337 (ZimbraWebClient - FF133 (Linux)/9.0.0_GA_1337)
Thread-Index: GeiK1pEiEgw6NSh4Gzbh571PmuMWbw==
Thread-Topic: X310 clock signal for aliasing (BasicRX daughter board)
Message-ID-Hash: V4JRIOMAISRKBB4WFDENX452VUKN6LIT
X-Message-ID-Hash: V4JRIOMAISRKBB4WFDENX452VUKN6LIT
X-MailFrom: friedtj@free.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 clock signal for aliasing (BasicRX daughter board)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V4JRIOMAISRKBB4WFDENX452VUKN6LIT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> My guess is that the basic_rx host-side driver turns it off, because the
> basic_rx doesn't actually use it, so it would be floating, and
>    thus potentially radiating and causing an issue at both the
> fundamental and odd harmonics.

Very good advice: 
https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/dboard/db_basic_and_lf.cpp#L269
states
    // disable TX dboard clock by default
    this->get_iface()->set_clock_enabled(dboard_iface::UNIT_TX, false);

Will have to recompile libuhd then, better than generating a new gateware though.

Thank you.
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
