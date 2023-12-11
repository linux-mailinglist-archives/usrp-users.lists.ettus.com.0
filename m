Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 353E980D32D
	for <lists+usrp-users@lfdr.de>; Mon, 11 Dec 2023 18:03:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 47BB63852FB
	for <lists+usrp-users@lfdr.de>; Mon, 11 Dec 2023 12:03:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702314234; bh=YL/oN2KJJfriMz0ksxs0VGWn7igwQvqZUZouksq07Xs=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=cFl44F4HV55dEPROmPv3HODKdNc1X9jP2JRNjvaEc9vj5FxNQuBrnDV6i5Rz2vZ7G
	 I8etda84orSw37+Z+ZlDpU+NvPWGIQg+7hhk9uGyjuMIfyvPBR2Qe4WE0vhf/tuWvh
	 JaNw0napFj2OHR+ec3vOwQ/btLr7JoZc6yaGfzD8/sg0MIh3bVdWKya/fNp66WwSLd
	 mI8cJLoJwN1RCoaO1jChrA0pS+xT79aZDmgJ2+xhPNYiVlBlM+A9/xnM2+dmVLqeSM
	 3Y/IJSj5hS+kXGTSa5rZZ7kQpfZFqHCtBRdISWA/+ZS/byJ9AArX2tHtW6wwcZMxZ2
	 6SOGa0YIPE+yQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C5CD384D57
	for <usrp-users@lists.ettus.com>; Mon, 11 Dec 2023 12:03:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702314180; bh=cooJJS4NmltCTeWYH67p3hgLlcSVlFaUqyrW1MHWtWg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=M+TFEPHkBFMQZoe38+19YFbYrlzU2sygw2oJZ0V2vIrDRi2novDIBioMwFuMdOIOM
	 9/zukwU9RQpo4x+GLRK0O7EoH/kqP3wWRKXKG3oz7jqK2gJ56E7fH/eqKk+9YJZ1se
	 rkgZfsbH1wQhG9sJI/HOkH/Ay6wi1ki+1B85y9iEco7Rd27pKREn9ig2V+QRKF8V2h
	 LLQ3QKyjZtoUTDvGBnYPIGvP56EfLloQF07W/Rj8cB1TM3PguwzrnCe2jUD++Behra
	 g8GL9IkpX8SHR3wfLcTkU7Xlxc4cgiomYRZo9YFDX04FjZnRl5gFcDNRdGOPF+aq2p
	 yk7bsMSMkIkRQ==
Date: Mon, 11 Dec 2023 17:03:00 +0000
To: usrp-users@lists.ettus.com
From: purva.joshi@phd.unipi.it
Message-ID: <KWjksedPw0T3QbNxiglWvgVjJ2qdcMafp2OQ2sUIpH8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 6d5bf4fd-0a27-4872-a09b-7342f5613f71@gmail.com
MIME-Version: 1.0
Message-ID-Hash: HNDCP2NGUSQRIGOBIOM4D6JO4WXY7LXK
X-Message-ID-Hash: HNDCP2NGUSQRIGOBIOM4D6JO4WXY7LXK
X-MailFrom: purva.joshi@phd.unipi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HNDCP2NGUSQRIGOBIOM4D6JO4WXY7LXK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6118978212398111977=="

This is a multi-part message in MIME format.

--===============6118978212398111977==
Content-Type: multipart/alternative;
 boundary="b1_KWjksedPw0T3QbNxiglWvgVjJ2qdcMafp2OQ2sUIpH8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_KWjksedPw0T3QbNxiglWvgVjJ2qdcMafp2OQ2sUIpH8
Content-Type: text/plain; charset=us-ascii

Okay Marcus. But can you tell me by this?

dmesg | tail

\[16455.386469\] usb 1-2: USB disconnect, device number 6

\[16455.719386\] usb 2-2: new SuperSpeed USB device number 2 using xhci_hcd

\[16455.740149\] usb 2-2: LPM exit latency is zeroed, disabling LPM.

\[16455.741072\] usb 2-2: New USB device found, idVendor=2500, idProduct=0020, bcdDevice= 0.00

\[16455.741085\] usb 2-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3

\[16455.741091\] usb 2-2: Product: USRP B200

\[16455.741095\] usb 2-2: Manufacturer: Ettus Research LLC

\[16455.741099\] usb 2-2: SerialNumber: 3107355

\[16810.242150\] cfg80211: Loading compiled-in X.509 certificates for regulatory database

\[16810.242413\] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'

--b1_KWjksedPw0T3QbNxiglWvgVjJ2qdcMafp2OQ2sUIpH8
Content-Type: text/html; charset=us-ascii

<p>Okay Marcus. But can you tell me by this?</p><p>dmesg | tail</p><p>[16455.386469] usb 1-2: USB disconnect, device number 6</p><p>[16455.719386] usb 2-2: new SuperSpeed USB device number 2 using xhci_hcd</p><p>[16455.740149] usb 2-2: LPM exit latency is zeroed, disabling LPM.</p><p>[16455.741072] usb 2-2: New USB device found, idVendor=2500, idProduct=0020, bcdDevice= 0.00</p><p>[16455.741085] usb 2-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3</p><p>[16455.741091] usb 2-2: Product: USRP B200</p><p>[16455.741095] usb 2-2: Manufacturer: Ettus Research LLC</p><p>[16455.741099] usb 2-2: SerialNumber: 3107355</p><p>[16810.242150] cfg80211: Loading compiled-in X.509 certificates for regulatory database</p><p>[16810.242413] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'</p><p><br></p>


--b1_KWjksedPw0T3QbNxiglWvgVjJ2qdcMafp2OQ2sUIpH8--

--===============6118978212398111977==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6118978212398111977==--
