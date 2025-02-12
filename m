Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 815F5A32102
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 09:26:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 50EFA385F1E
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 03:26:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739348789; bh=o2SfZNWG62p9s/TsGN8yWBFd+BFH2pEVIaEI8nW6Ja4=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=HBpjpmMo++vfsptht5zZvchIIzxwUUcu5rff/4tq1gJ/8JOFOZ1I4WNjenBpMln8e
	 tx5rYYtnk5p8YTIeNJCBK8O1JlAHQI4OvOhw7x48kP6olqB8v9ZQOh8NBDDtCeHE2V
	 tNC3aglxxlpzDMz1Pk58WYzlJWxMC2TFMo+qeTJOiaIszTsU7JNf7cEA/exgYFH2J7
	 dZOEPmfbIAJZQtKrzsES8tHZKGXjs7vKv69DXhroMGR6hEvf6RGtARBlUlHAd1X3IG
	 lKlm8o5fIE3/47nP3w96umxdZrEyUop3LRWYgyvxTopq3DJoQHENAz0ib2jXysRIhY
	 GwdHm+enK9EDw==
Received: from za-smtp-delivery-132.mimecast.co.za (za-smtp-delivery-132.mimecast.co.za [41.74.205.132])
	by mm2.emwd.com (Postfix) with ESMTPS id CAF10385CB2
	for <usrp-users@lists.ettus.com>; Wed, 12 Feb 2025 03:25:39 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vastech.co.za header.i=@vastech.co.za header.b="LDc6KtE6";
	dkim-atps=neutral
Received: from mail.vastech.co.za (mail.vastech.co.za [41.193.221.138]) by
 relay.mimecast.com with ESMTP id za-mta-122-k8Q1-sSPMNu_ucjT2wq3mA-1; Wed,
 12 Feb 2025 10:25:35 +0200
X-MC-Unique: k8Q1-sSPMNu_ucjT2wq3mA-1
X-Mimecast-MFC-AGG-ID: k8Q1-sSPMNu_ucjT2wq3mA_1739348735
dkim-signature: v=1; a=rsa-sha256; d=vastech.co.za; s=dkim;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:MIME-Version:Content-Type;
	bh=HxtMx0m7kF84YMAT06wgAAaqjfc956T/EjzjiSvet8s=;
	b=LDc6KtE6C8SuRtw1JqdqyyRilhEIMYePOwweDGRxbl4oLqmQalicnqzo05/It5fcjUDPLT3FWIHjBqifDs6pCkWG5gezFBM3dMffDAVFF2j7SXMiw6hcmNrlRu5YWWQDbJll7VkTvZfZZiv72V5FKWwYKbgUA1hHgm+vLXT3KAk=
Received: from EXCHANGE2.vastech.co.za (Unknown [172.30.81.30])
	by mail.vastech.co.za with ESMTPSA
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256)
	; Wed, 12 Feb 2025 10:25:30 +0200
Received: from exchange3.vastech.co.za (172.30.81.31) by
 EXCHANGE2.vastech.co.za (172.30.81.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Wed, 12 Feb 2025 10:25:30 +0200
Received: from exchange3.vastech.co.za ([172.30.81.31]) by
 exchange3.vastech.co.za ([172.30.81.31]) with mapi id 15.02.1118.040; Wed, 12
 Feb 2025 10:25:30 +0200
From: Kevin Williams <kevin.williams@vastech.co.za>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N300 HG image being built instead of XG
Thread-Index: Adt9JuyIFEa/twULSxiMfyYUl8y2Cw==
Date: Wed, 12 Feb 2025 08:25:29 +0000
Message-ID: <4e95c77a811c4299832c8b67977488d3@vastech.co.za>
Accept-Language: en-US, en-ZA
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.64.54]
MIME-Version: 1.0
Message-ID-Hash: KQ5Y5IVM5RYVJGSIUMRIEH3QOXLBK44T
X-Message-ID-Hash: KQ5Y5IVM5RYVJGSIUMRIEH3QOXLBK44T
X-MailFrom: kevin.williams@vastech.co.za
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N300 HG image being built instead of XG
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KQ5Y5IVM5RYVJGSIUMRIEH3QOXLBK44T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8733063728329277131=="

--===============8733063728329277131==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0175_01DB7D38.701A3D50"

------=_NextPart_000_0175_01DB7D38.701A3D50
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Everyone,

The header of my N300 yaml file is shown below, but this results in an HG
image being built, not the XG. (I am building this with UHD-4.8.)

The HG image does contain my new RFNoC block, with the right endpoints etc.,
so I believe the yaml config should be (mostly) correct?

I find it strange because the bit file that is generated also has the name
"usrp_n300_fpga_XG.bit".

When loaded, "usrp_find_devices" returns:

--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: XXXXXXX
    claimed: False
    fpga: HG
    mgmt_addr: 127.0.0.1
    name: ni-n3xx-XXXXXXX
    product: n300
    type: n3xx

Is there something I might be missing somewhere?

Many thanks, Kevin

schema: rfnoc_imagebuilder_args         # Identifier for the schema used to
validate this file
copyright: >-                           # Copyright information used in file
headers
  Copyright 2023 Ettus Research, a National Instruments Brand
license: >-                             # License information used in file
headers
  SPDX-License-Identifier: LGPL-3.0-or-later
version: '1.0'                          # File version
chdr_width: 64                          # Bit width of the CHDR bus for this
image
device: 'n300'
default_target: 'N300_XG'
image_core_name: 'usrp_n300_fpga_XG'

------=_NextPart_000_0175_01DB7D38.701A3D50
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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

------=_NextPart_000_0175_01DB7D38.701A3D50--

--===============8733063728329277131==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8733063728329277131==--
