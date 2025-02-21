Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 067C1A3EB84
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2025 04:49:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B1BDA385BCA
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2025 22:49:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740109779; bh=9mup44rcDN5KMlHHIwF6cUNw+rj8VXowiJ4v1jIDFMc=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=oJ9y+LGi064PbJQw+D81YunxZiq8vHhoxdLa8WgnjmlkPq9gx/odykjAiiCvSRD6+
	 TDipU+hFETlZCS5D0DkRUHdAVpMSvpim5kWd3MuQj7rx/8KsGzvKE4RAILc55Z07rg
	 8mMuTgoCVYKt9EaLyq5/iwVk4QL82Bm7EDt0PMrZX0T5wZpbp6Y+Z7vZd/OJUFrVgv
	 26DnK9yj0xjbWXcxZHgQ2Y8J4HwYIVimqWeSMfdfbKD92QwIa69HjSyRk1yp5HcJWT
	 ay1/Dm2TC8RzclNRXJof4aqUY+SGzAYKTsZ9zEsfJm1nlfQZOwKRXcPNE5FLT+SDC6
	 rIqlNAR/DLNuQ==
Received: from za-smtp-delivery-132.mimecast.co.za (za-smtp-delivery-132.mimecast.co.za [41.74.201.132])
	by mm2.emwd.com (Postfix) with ESMTPS id BAB18385BCA
	for <usrp-users@lists.ettus.com>; Thu, 20 Feb 2025 22:49:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vastech.co.za header.i=@vastech.co.za header.b="Z1+DC0Ti";
	dkim-atps=neutral
Received: from mail.vastech.co.za (mail.vastech.co.za [41.193.221.138]) by
 relay.mimecast.com with ESMTP id za-mta-93-jTsaMIURNt6hZi_yRyw1Wg-1; Fri,
 21 Feb 2025 05:49:28 +0200
X-MC-Unique: jTsaMIURNt6hZi_yRyw1Wg-1
X-Mimecast-MFC-AGG-ID: jTsaMIURNt6hZi_yRyw1Wg_1740109767
dkim-signature: v=1; a=rsa-sha256; d=vastech.co.za; s=dkim;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:MIME-Version:Content-Type;
	bh=jI26Feef4yk2pcXaNBZsbwFRRso00EKecBwwYt3axHg=;
	b=Z1+DC0TifypTeQ4rEk2c7F2SnAJdM0fpquiKHLsNVDEpiVkformMdYHnzJak7WlXEDcgQ5J4hcOAO+f6xIDoNt1MOJBOFFCiETgniPAXCaZ9+5tR0SBP8Rypn8XzvAyDF+45QF2L8F0ygpvgaLdW4vlUKlz0p8i5hqR9QgYS5FE=
Received: from exchange3.vastech.co.za (Unknown [172.30.81.31])
	by mail.vastech.co.za with ESMTPSA
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256)
	; Fri, 21 Feb 2025 05:49:22 +0200
Received: from exchange3.vastech.co.za (172.30.81.31) by
 exchange3.vastech.co.za (172.30.81.31) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Fri, 21 Feb 2025 05:49:22 +0200
Received: from exchange3.vastech.co.za ([172.30.81.31]) by
 exchange3.vastech.co.za ([172.30.81.31]) with mapi id 15.02.1118.040; Fri, 21
 Feb 2025 05:49:14 +0200
From: Kevin Williams <kevin.williams@vastech.co.za>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: register custom rfnoc block names
Thread-Index: AduEEnrjBmU6W07DTyePTm4DUqv42g==
Date: Fri, 21 Feb 2025 03:49:13 +0000
Message-ID: <8637a4f585a741779e8e57b01ac12f75@vastech.co.za>
Accept-Language: en-US, en-ZA
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.168.3]
MIME-Version: 1.0
Message-ID-Hash: D5GEOIJCEHTLQRQFI4HIKHDEJCWEXTK5
X-Message-ID-Hash: D5GEOIJCEHTLQRQFI4HIKHDEJCWEXTK5
X-MailFrom: kevin.williams@vastech.co.za
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] register custom rfnoc block names
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D5GEOIJCEHTLQRQFI4HIKHDEJCWEXTK5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1244757096569595559=="

--===============1244757096569595559==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_008D_01DB8424.55B27750"

------=_NextPart_000_008D_01DB8424.55B27750
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Everyone,

I think this is my last hurdle.

I have a C++ application using my custom rfnoc block drivers, but the
"LD_PRELOAD" variable does not help when resolving the block names in the
image.

I do see my rfnoc driver shared library being linked to the app binary.

Its not clear how to do this.

In the docs I see the "UHD_REGISTER_EXTENSION" macro which has left me
wondering if this is perhaps the answer.

If this is correct is there an example I could follow? (I don't see this
macro used in the UHD repo, and it doesn't appear in my web search results.)

Kind regards, Kevin


------=_NextPart_000_008D_01DB8424.55B27750
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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

------=_NextPart_000_008D_01DB8424.55B27750--

--===============1244757096569595559==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1244757096569595559==--
