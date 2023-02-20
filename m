Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BF669D287
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 19:06:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CD204381231
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 13:06:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676916367; bh=VcDjhZEWca57zHFRJdRDWrI/F5ShJOn8McXmiixFhdU=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=xLUnM2t/ytfMwHcQ8kPXYLg4909OvKIkzMlcoQDKWWhYVLjex6PFelgYRfPuPJ1zo
	 qCSYKtBv7feI2jIYzHGOFBe8qmlX9hoMlDmape+axRoysZCg4DO1X8w9AvVciythoh
	 s9tXT9T/lBAIo/7MEmXaPnQdaCebt0soJWPNZp3c+5T0l20gkVzvAToVrlAkJVqV/t
	 ojevzsTmeoQrJbhtgkxsvLXBUcWjLYqnjeus/wbYewe3Cn++AndlCrplBMGsO/W/Xf
	 PEbkmr0g+YvIjbhnvA/lOSpnio9ziqC60igLzqdsS0MtH2oPm9wLPbxi4XNTYiOJ+V
	 7mjJmgEfCeC+w==
Received: from lahtoruutu.iki.fi (lahtoruutu.iki.fi [185.185.170.37])
	by mm2.emwd.com (Postfix) with ESMTPS id DBCD93810CF
	for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 13:05:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=iki.fi header.i=@iki.fi header.b="e7EhEUAN";
	dkim-atps=neutral
Received: from [192.168.1.99] (91-158-166-60.elisa-laajakaista.fi [91.158.166.60])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: ville.eerola)
	by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 822241B001AF
	for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 20:05:16 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu;
	t=1676916316;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=rv4nwe9hsaJFd5ejoxLWy9ASMNX2ipXZhpUtUowBap0=;
	b=e7EhEUANfi8qenxRMdy0AVXQJ35igwIcdKGAMOdilh4f+SAuSMb6JYeiIHenY/b7fTfWGf
	w0g8ySj+e7zawZtp2NIf5cfmg25Yw1FcfyaTXgIQzlEBu+NLip1OoVpQKHGD6SwKwwZmYp
	lo5kOforIMuoYng7GVyxn7zxC6h7JNECQGWo3QfM6Q3zqUK5QGI+e/lxyhcD1wGUkWfxrh
	DP450HekSKOCzjTzdF1/dA1X6sUi+5GtiS99hrLCw4ndcRw6LLKw9ACx2ylb5XzFUbkqAf
	hAPtWPQrjzKjJAW2hq2LjL/K5tzra6H1MtjBguf6NXakoW8Uu0A8zKEUYZy62Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
	s=lahtoruutu; t=1676916316;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=rv4nwe9hsaJFd5ejoxLWy9ASMNX2ipXZhpUtUowBap0=;
	b=OA4mbXJHxWbDNd+pwDhFEbpavFhFn+yotQPiBppyo6P39h7y5YrgGaTuxJol+wHhdfsrGJ
	NkYkY8yGF7BY1fHU2Th2XGGCl7gbxfNGphzKpWeP6JLibcF2KwEUmHHQ+Zt4e2mrCYbxNV
	6kwedjfoMb31x8Ku+qLt4Usn4Hi6uqcxMQD08vkUes02W8aXB90PYE2ym4NStDGdD/8nDH
	Q9soiQ58iwn7QiZx3s2l+GGQQvDGW7tj0kmD2g2KuLqX6kSq0ntSIsSs24TXZuZgy/w/KA
	nKS9nxZk1aHc5cMFV1h2VODeFGhBHEivK5qOIum0YUiWeNHS6PmIKbSsyRubFA==
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1676916316; a=rsa-sha256;
	cv=none;
	b=n8AXzTA+Rmd1J1OijqrosbaZKR505EehkMSS3tjTR67FTtcBp79eHlazVtL91YU4UTXxDf
	p3xiCNgG6azR1rnQTy767wP2Ncx05xvIxT8AY56ZrC28x3ChTW4OOlLs/U2oKDIK22jm6L
	RYwYDXgeZ+Jkzno3T53pSj+9mP+M8Q3lWef2QmJKUmQXrZAPoOwW8hNE1HwC8eoPwRK1dj
	Z/P2/Xzxqa94I59y4OX8pzILrI1WIiqjiTjP6RI7JDGtp9l6laU+BELn76DsgCIAw7zCPr
	4xopWZiFPN7Qu6O+LaaDJbv4vBEf39sLIZSRzmdX6PDTyjNTrT28qj7zDoaRrQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=ville.eerola smtp.mailfrom=ville.eerola@iki.fi
Message-ID: <e446dd9a-d5b5-34fe-049e-612e233fb9eb@iki.fi>
Date: Mon, 20 Feb 2023 20:05:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
To: usrp-users@lists.ettus.com
Content-Language: en-US
From: Ville Eerola <ville.eerola@iki.fi>
Message-ID-Hash: NNE35CQTBSALX2L6O7FMY66DHQJ6F3PL
X-Message-ID-Hash: NNE35CQTBSALX2L6O7FMY66DHQJ6F3PL
X-MailFrom: ville.eerola@iki.fi
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] GNU Radio, UHD, and AGC with USRP B205mini-i
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NNE35CQTBSALX2L6O7FMY66DHQJ6F3PL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1056823311745742029=="

This is a multi-part message in MIME format.
--===============1056823311745742029==
Content-Type: multipart/alternative;
 boundary="------------kkQsidSM6GjujF5Nw6epWzTm"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------kkQsidSM6GjujF5Nw6epWzTm
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I'm trying to figure out how the AGC operates in my setup of GNU radio 
(3.10.5.1), gr-uhd (UHD4.3), and USRP B205-mini-i, but it seems to too 
complex to figure out.
My application is to receive signals from a multitude of bursty 
transmissions. The default AGC seems to generate large peaks at the 
beginning of frames, which is not so good. So, I was trying to look for 
ways to make it work better.

I have been looking at the source code for the gr-uhd, uhd library, and 
AD9364 documentation, but it is not so easy to find out how it works, 
since gr uses the usrp-multi interface, which hides the details of 
accessing the actual radio interface.

First of all, it seems that it is impossible to find the current gain of 
the RX if AGC is enabled, even though according to the IC document, the 
gain settings should be available even in the AGC mode. So, maybe this 
is a shortcoming of the gr-uhd implementation, which does not query the 
IC for the gain setting. This would allow me to use the knowledge about 
the gain values in further processing.

Secondly, the seems to IC support advanced configurability of the AGC 
from choosing between fast and slow AGC and manual gain settings to 
tuning the parameters of the AGC function inside the IC. But 
unfortunately none of this seem to be exposed in the UHD library. This 
could allow tuning the AGC to behave better for my signals.

I could try to work out something myself, but I was unable to find any 
documentation about how the UHD library is layered, and how the 
high-level functions eventually interface with the different radio IC:s. 
It is certainly possible to find out all of it from the source, but 
having some documentation or pointers to the right direction would make 
it all much easier.

It is always possible to implement the AGC function in GR by setting the 
gr-uhd to use manual gain, but I'm a bit afraid that the loop could be 
too slow.


Regards, Ville

-- 
Ville Eerola
ville.eerola@iki.fi
050-4804435

--------------kkQsidSM6GjujF5Nw6epWzTm
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Hello,<br>
    <br>
    I'm trying to figure out how the AGC operates in my setup of GNU
    radio (3.10.5.1), gr-uhd (UHD4.3), and USRP B205-mini-i, but it
    seems to too complex to figure out.<br>
    My application is to receive signals from a multitude of bursty
    transmissions. The default AGC seems to generate large peaks at the
    beginning of frames, which is not so good. So, I was trying to look
    for ways to make it work better.<br>
    <br>
    I have been looking at the source code for the gr-uhd, uhd library,
    and AD9364 documentation, but it is not so easy to find out how it
    works, since gr uses the usrp-multi interface, which hides the
    details of accessing the actual radio interface. <br>
    <br>
    First of all, it seems that it is impossible to find the current
    gain of the RX if AGC is enabled, even though according to the IC
    document, the gain settings should be available even in the AGC
    mode. So, maybe this is a shortcoming of the gr-uhd implementation,
    which does not query the IC for the gain setting. This would allow
    me to use the knowledge about the gain values in further processing.<br>
    <br>
    Secondly, the seems to IC support advanced configurability of the
    AGC from choosing between fast and slow AGC and manual gain settings
    to tuning the parameters of the AGC function inside the IC. But
    unfortunately none of this seem to be exposed in the UHD library.
    This could allow tuning the AGC to behave better for my signals.<br>
    <br>
    I could try to work out something myself, but I was unable to find
    any documentation about how the UHD library is layered, and how the
    high-level functions eventually interface with the different radio
    IC:s. It is certainly possible to find out all of it from the
    source, but having some documentation or pointers to the right
    direction would make it all much easier. <br>
    <br>
    It is always possible to implement the AGC function in GR by setting
    the gr-uhd to use manual gain, but I'm a bit afraid that the loop
    could be too slow.<br>
    <br>
    <br>
    Regards, Ville<br>
    <br>
    <pre class="moz-signature" cols="72">-- 
Ville Eerola
<a class="moz-txt-link-abbreviated" href="mailto:ville.eerola@iki.fi">ville.eerola@iki.fi</a>
050-4804435</pre>
  </body>
</html>

--------------kkQsidSM6GjujF5Nw6epWzTm--

--===============1056823311745742029==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1056823311745742029==--
