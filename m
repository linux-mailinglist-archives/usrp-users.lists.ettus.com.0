Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 510C357FA89
	for <lists+usrp-users@lfdr.de>; Mon, 25 Jul 2022 09:54:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F316A380C58
	for <lists+usrp-users@lfdr.de>; Mon, 25 Jul 2022 03:54:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658735652; bh=ksPkLAGboZ+9/xEGN9/vMcNZ2aNMyWr8Dj0ueiALuiU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=e8SfWGFfU+7QT/8RlU8P0zywsNLxKg+rjA3MZhOdNl81pc7owORkfaQtazT/iRSib
	 4yOJaJsV7uS8UCrfrUPC1cOzeBxvR9HA199uBpjFNNT62U3cWqykxdABSJkPZTWs8d
	 B/ZHTOjZ4lWKtPu7vxKs/N8XVYvib16XUtyAsWchrnlfLoBfhJFHwjhJVgAaODi1dy
	 lbj0bdd6WJK5MqjJ9ENhaDOkWhskRChbNE3GVtk+2oFQA2IvWaNOETa+Z3HnRNG+YQ
	 TWDtIj2FmrghmKPmX3VfkSjZbaQgGqwHnIIN6IQtkCafnDCAiX8iy7hTSpGmp9h6qC
	 9pFB60Q8JkVZg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0C480380C19
	for <usrp-users@lists.ettus.com>; Mon, 25 Jul 2022 03:52:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658735546; bh=WkA2Ne8wDE8YuqoQvIVVtuZ2XaGjsnrcUynvgnwhzmA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Ctlfy5yKMFa9RWDSLiR3FgxNHkqRuCvHd64/e9EMTTxaC5muPTjO6ctenlWgJL8Ap
	 mIT/lrbG3+lT4a5BxdDb5ukKtTaTw+7CwXl/RHKSrg5+CqFIreqn3APH3/FGDzCiz5
	 5/HcRWwDrQxn4SxovuGkobTt+IHxZIiP+l+CWY72EjpEkDYPpFzX5jGcU03KTB8Tdy
	 PL1/txk1dVUevNq96EswYR265ZAq2K/YWUvQxAILFjxRNEDEIejugDaEOqYFwm46TO
	 SeihyxSpzRDMGHgGKbn7Im7EdwCwrj5so8FlHSqrdh1eBQAa8VM53tXn10FnwObZTI
	 C6rcIS/wbM+nA==
Date: Mon, 25 Jul 2022 07:52:26 +0000
To: usrp-users@lists.ettus.com
From: ouzan_ts@hotmail.com
Message-ID: <hQFWKXwm334qvipMOneubexO9WHuPa75TTF95BOySY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 8176a1e7-31eb-efe7-ed35-fa3fa947acdc@virginia.edu
MIME-Version: 1.0
Message-ID-Hash: KUJGNR2VUGTSM4GBADBGTIFOZ3W65XBH
X-Message-ID-Hash: KUJGNR2VUGTSM4GBADBGTIFOZ3W65XBH
X-MailFrom: ouzan_ts@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Frequency Switch with USRP B200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KUJGNR2VUGTSM4GBADBGTIFOZ3W65XBH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4874177600953363803=="

This is a multi-part message in MIME format.

--===============4874177600953363803==
Content-Type: multipart/alternative;
 boundary="b1_hQFWKXwm334qvipMOneubexO9WHuPa75TTF95BOySY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_hQFWKXwm334qvipMOneubexO9WHuPa75TTF95BOySY
Content-Type: text/plain; charset=us-ascii

Hello, sir. Sorry for late answer.

I connected with USB3.0.

If I run benchmark_rate for rx_rate=16e6, tx_rate=16e6 no error occurs.

This is the limit in bechmark_rate after 16MHz error occurs. but in my program, errors starting after 4MHz

If I select rx_rate=25e6, num overruns detected = 641

for rx_rate=25e6, tx_rate=25e6, tx_otw=sc8 and rx_otw=sc8 no error occurs.

the limit for over-the-wire format is 32MHz. then, errors occur.

for rx_rate=40e6 and rx_otw=sc8, num overruns detected=629.

--b1_hQFWKXwm334qvipMOneubexO9WHuPa75TTF95BOySY
Content-Type: text/html; charset=us-ascii

<p>Hello, sir. Sorry for late answer.</p><p>I connected with USB3.0.</p><p>If I run benchmark_rate for rx_rate=16e6, tx_rate=16e6 no error occurs.</p><p>This is the limit in bechmark_rate after 16MHz error occurs. but in my program, errors starting after 4MHz</p><p>If I select rx_rate=25e6, num overruns detected = 641</p><p>for rx_rate=25e6, tx_rate=25e6, tx_otw=sc8 and rx_otw=sc8 no error occurs.</p><p>the limit for over-the-wire format is 32MHz. then, errors occur.</p><p>for rx_rate=40e6 and rx_otw=sc8, num overruns detected=629.</p><p><br></p><p><br></p>


--b1_hQFWKXwm334qvipMOneubexO9WHuPa75TTF95BOySY--

--===============4874177600953363803==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4874177600953363803==--
