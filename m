Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 133DF78AF3C
	for <lists+usrp-users@lfdr.de>; Mon, 28 Aug 2023 13:46:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E14C3384BB9
	for <lists+usrp-users@lfdr.de>; Mon, 28 Aug 2023 07:46:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693223216; bh=ahQ7r6eigBDId16qtAEFwdf89gQMj4YtG3rrzJTkpbc=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=g4h8oS+12F44vBkd9/3ySvZ7ng3IffzRgTremo5269dzDELt0dA8oEfmCOupshTpz
	 m8CZ63YsNzqMohqUkuyHLsL789Jef078uJl2PKwqMs0kh9hxqMz1fzwVWwTQ5atn4K
	 E1DiMxJHIQSvm7kyHFmCSLEu+ZrNWXelF09sGnkrztT+58BrSJzOlFiRbwnnmn9Qbs
	 b4FCdQ3xl9VdesWEFvWewhZjx0mQ+X5koe9Z+xi4uao1nHc1T2AGqcTUL+IsVCo8GW
	 cj5hADO7yscXl8rVePTloTnjsAqn4C0uB4t42Lk7lGod4kTGLf+KnCa/VDHWisU8jT
	 zISw7GW85gPlw==
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com [66.111.4.230])
	by mm2.emwd.com (Postfix) with ESMTPS id 87578384B3D
	for <usrp-users@lists.ettus.com>; Mon, 28 Aug 2023 07:46:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=murdoch.is header.i=@murdoch.is header.b="MxzEeftD";
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.b="RG7hw7Ny";
	dkim-atps=neutral
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailnew.nyi.internal (Postfix) with ESMTP id 2F28E5811BB
	for <usrp-users@lists.ettus.com>; Mon, 28 Aug 2023 07:46:04 -0400 (EDT)
Received: from imap43 ([10.202.2.93])
  by compute6.internal (MEProxy); Mon, 28 Aug 2023 07:46:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=murdoch.is; h=cc
	:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1693223164; x=1693230364; bh=Za
	FbZSld/1R8as0UC5NsuubJYkkEhWRpx0779NQVi68=; b=MxzEeftDyWeZ0dCvI9
	daBMfczTPZAedc78YC7D8qUPDpO34kGI+FnDH+n5byFhrEA/2JjyFiJDbIoZkg+Q
	etEW4I0XRmGZZnY/cQORt07b9VtF/sHd34jI7s0bWXqvuuOG3ygQEKjU5WZcnQaS
	fPjC9CmMAeLkTCEAPW/sUmNjq+N1yu9/S3lZUApsyWFbVDdlbTX9Ifvn97N2ASYa
	zFkbfNzj6NevpIopBevG6DuStih0u6icZc1roVKDxWPz4O0UdlgyOfZ7auft/Fyg
	KlYnOD+jehFsdZyprEdxBUeEav2KJQfDjcGYWnPszY+9h8+Cu68sgbtMrYwu7kg2
	S6cg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1693223164; x=1693230364; bh=ZaFbZSld/1R8a
	s0UC5NsuubJYkkEhWRpx0779NQVi68=; b=RG7hw7NyaRQ66vpqdwpDjbP84Wq2M
	ftBg7Nw2g4i5ZLuSnx2PXN7YplPrkXKxONOy++C2GhaLF3ccqyqepTlCZ/pfQjqm
	/29aeqkPkWwbqCk6biWZm8QCAbVY2c744XFJdtnx1lqNvnD4BGPahBCSEcCt3giF
	Xm5bj42con0b3jZqdK7MtXSIairG8XGcko18blLYEmVHiw5AM9Cx6P+IQu1Yzmsc
	veB8bqWGt9E5iO9Cf3R+2jOyq6oFPK+3bzFbHYINp0XCdHMR32ERIicOBLm/o2CC
	z/FmX5iDi4ahC6JPbqTTjVcikXIYLNldsxVgLuTj4c3x/yVF/LEiF2loA==
X-ME-Sender: <xms:-4jsZJUmBjNSIMHdtzQMXOEQQaouIvHAIVjvRmyUkyIvSK5K5HCHgA>
    <xme:-4jsZJlnmk-lJCYuuB4qP6vMV19QcDPc_YLjSvWG4K_icIJEq35meUE9j-ADXqh0O
    _XT3bRpUA8R6knuTw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrudefgedggedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtgfesthhqre
    dtreerjeenucfhrhhomhepfdfuthgvvhgvnhcuofhurhguohgthhdfuceoshhtvghvvghn
    sehlihhsthhsrdhmuhhrughotghhrdhisheqnecuggftrfgrthhtvghrnhepteehgefhje
    eludegudduudekveffheevjeetudekkeeukeekieffhfdujeefffdvnecuvehluhhsthgv
    rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepshhtvghvvghnsehlihhsth
    hsrdhmuhhrughotghhrdhish
X-ME-Proxy: <xmx:-4jsZFbqPcQL4HLQInL9vJGy1MeAmfmXSyzS02u2Ax1fCFT2gMD7xQ>
    <xmx:-4jsZMV2EQ8ZC5zMpXihPvX3wj1QBbrNj7DRK6_3hFGrYiLBDly-VA>
    <xmx:-4jsZDlUBKsX8b1QPMlUWs5sBumvrwYBg4OhYkxVTngadVI0V-eLxw>
    <xmx:_IjsZNmoRIPyF5NVkrKh-VjBZFlUyY6V5aITM_-N8y6K2pXPa4gXBw>
Feedback-ID: i4ee842c9:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 5023F2D40092; Mon, 28 Aug 2023 07:46:03 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-647-g545049cfe6-fm-20230814.001-g545049cf
Mime-Version: 1.0
Message-Id: <378ef88c-9528-4b60-90ff-a1cf8ee0dd60@app.fastmail.com>
Date: Mon, 28 Aug 2023 12:45:42 +0100
From: "Steven Murdoch" <steven@lists.murdoch.is>
To: usrp-users@lists.ettus.com
Message-ID-Hash: A3TI26Z2EJAG5ZQHK4QJACCA3UPRFAJ7
X-Message-ID-Hash: A3TI26Z2EJAG5ZQHK4QJACCA3UPRFAJ7
X-MailFrom: steven@lists.murdoch.is
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Powering an active antenna from B205mini-i 
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A3TI26Z2EJAG5ZQHK4QJACCA3UPRFAJ7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNClBlcmhhcHMgSeKAmW0gbWlzc2luZyBzb21ldGhpbmcgb2J2aW91cyBidXQgSSBo
YXZlbuKAmXQgYmVlbiBhYmxlIHRvIGZpbmQgYW4gZXhwbGljaXQgc3RhdGVtZW50IHdoZXRoZXIg
b3Igbm90IHRoZSBVU1JQIEIyMDVtaW5pLWkgcmVjZWl2ZXIgaGFzIGEgYmlhcy1UIHRvIHN1cHBs
eSBwb3dlciB0byBhbiBhY3RpdmUgYW50ZW5uYS4gRG9lcyBhbnlvbmUga25vdyB3aGV0aGVyIGl0
IGRvZXMsIGFuZCBpZiBzbyBob3cgdG8gZW5hYmxlIGl0IGFuZCBpdHMgc3BlY2lmaWNhdGlvbnM/
DQoNCklmIGl0IGRvZXMgbm90LCBkb2VzIGFueW9uZSBoYXZlIGFueSByZWNvbW1lbmRhdGlvbnMg
Zm9yIGEgZ29vZCB2YWx1ZSBiaWFzLVQsIGlkZWFsbHkgc21hbGwgYW5kIHdpdGhvdXQgbmVlZGlu
ZyBhIHNlcGFyYXRlIHBvd2VyIHN1cHBseSAod2hpY2ggd291bGQgZGVmZWF0IHRoZSBjb252ZW5p
ZW5jZSBvZiBhIGJ1cy1wb3dlcmVkIGRldmljZSkuIA0KDQpUaGlzIGlzIGZvciB1c2Ugd2l0aCBh
IEwxICgxLDU3NSBNSHopIGFjdGl2ZSBHUFMgYW50ZW5uYSB3aGljaCBuZWVkcyAyLjPigJM1LjVW
IDE2LjZtQS4gDQoNClRoYW5rcyBpbiBhZHZhbmNlIQ0KDQpCZXN0IHdpc2hlcywNClN0ZXZlbgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
