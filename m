Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CA68893A09F
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 14:52:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 70A6E38585E
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 08:52:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721739167; bh=6Z8VkzOxOKk3RnLGRhIDx5PggdbGlS1313Gio72L0r0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ddursjc3zz6NtcUrvKJaoEPGnbQ8gdObzn2iOMUubbyo47+oOrQMVVCdgHCFiyp8p
	 DHOQih4np9vJOIPxencFmE2NnCqfpaalIVre2m9H1xnT46e0++b6DometIH4gRFS+/
	 6Dp0rWAMoeFB8ZESdM0Jew86ybBhXn3vpeeHOxgzMxV1Fa4h3sTwb/gqrjWLKdHe32
	 xjiWi6b3uiMJKI/0DDM00Tz9FOAxZHxf/6GvxzBaHgtmijiJ3HZ8RvWZsugnCh/L0J
	 PFDmoDJ/yBr8ZlaiXmq9a4+X2EcRtT0+DBbkkn4NqJSmgZd0lfR6N+oskm0FLKpRFB
	 W465Jyvp4rYcg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 05CF238557B
	for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 08:51:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721739115; bh=Qj4vJR2dvNWh9LGAAPKpq328TjWClhcg9U0TBXvBAyA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=antKtrahsJxIOGA6LUmuhuRzEF03bvgrthyIfyPtjiwsLpqhEvDCZrrmGG8CHIfg3
	 iwgN4YWtqg2Ik52L3Khb+3grmYTw67yQ2TimKl2CxaZdrF7W86Z0Iezo0CI+Efi+wy
	 3xpJVsa7GwH+zB7ZQCKF80bTdl7Xx666AFQ/+ULJZC9WUNbkW09EscIvspAluX39IU
	 S32niOFn2iJFS4JNoRZqugArS29QkD3Ojg7AiasMaDxliXyXVh/wiyIGZyfs+NrDqy
	 FUuXD0gGaF7n78DkTVILkkUdUsJRONywugf6Z46iCs7fwLoSZGr/TxvKQzgbwPNCpE
	 QNglxHPaQ5R6Q==
Date: Tue, 23 Jul 2024 12:51:55 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <lOEkT98COKl0mHPm5pf2byDTKzhN1BGKPzbFBaOmY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A5RG1fvdvakrMF5ac3zVNSkpyj9=qiYrT-s1vS9DK02QA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: EV4BE67M54PH7EMEP4YIRXOV3IBYRS5S
X-Message-ID-Hash: EV4BE67M54PH7EMEP4YIRXOV3IBYRS5S
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building rfnoc-example FPGA - UHD 4.7
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EV4BE67M54PH7EMEP4YIRXOV3IBYRS5S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9168522200841541955=="

This is a multi-part message in MIME format.

--===============9168522200841541955==
Content-Type: multipart/alternative;
 boundary="b1_lOEkT98COKl0mHPm5pf2byDTKzhN1BGKPzbFBaOmY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_lOEkT98COKl0mHPm5pf2byDTKzhN1BGKPzbFBaOmY
Content-Type: text/plain; charset=us-ascii

Hi Martin,

I tried that switch and was a bit worried that. Thanks for confirming it is OK for the time being.

--b1_lOEkT98COKl0mHPm5pf2byDTKzhN1BGKPzbFBaOmY
Content-Type: text/html; charset=us-ascii

<p>Hi Martin,</p><p>I tried that switch and was a bit worried that. Thanks for confirming it is OK for the time being.</p><p><br></p>


--b1_lOEkT98COKl0mHPm5pf2byDTKzhN1BGKPzbFBaOmY--

--===============9168522200841541955==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9168522200841541955==--
