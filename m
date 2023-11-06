Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD077E1B72
	for <lists+usrp-users@lfdr.de>; Mon,  6 Nov 2023 08:42:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C48FD385120
	for <lists+usrp-users@lfdr.de>; Mon,  6 Nov 2023 02:42:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699256568; bh=6d/ibAl0YiwL9URcZ2vrVnCopyqzQz5tp0s+px/yAGA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=KjCVF7kaESfA1xd18yss5gH7/8lNDBvtMlRz9iXFj+D4jOH6Yaur9WFz6r7rJt8Aj
	 iNjJH2XGA0c4vZbCF0NkemaSCqEu1SOtbMJb/eYbHmpLrqRq2lbeFOsV7OFb7PR+pE
	 Pi9ViZh114RpQRFZ6koxeeXOa9iDFEinYGBZUVNNjolAdAWsP5waAr2abADF1SfFCt
	 PVRRiAsOwXjHCUnTSn3foLuHhj7Zrr0FZLXSUwBMHdHaTFca/1ADfBqEln8lkL8vVv
	 T6NEksni94Xq2R0naA+PHLgzIAvDsCgUZt/BX8+5kFzPRrxcv2xjKRNC6i6+vlW8LU
	 hBlOmWM4vSoqw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0C9FF385053
	for <usrp-users@lists.ettus.com>; Mon,  6 Nov 2023 02:42:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699256529; bh=ITFQUMBOIWzv7UX1VY0NizO0R8ugZZIa9MEoPG8qSRw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=WrhzBEYUKR6EAzP2rPlmq9E13s3VjCtnFxXnJxxycv55VWln1DsqUNX1x6yBHBtWK
	 fvACy5SpAUxy6nwLbzkxbXa60tiPReD8zUPYVPryXbvan3/fru9pbX0PLagfVFj0iC
	 zU896HGc2xRdPdpBWGo2pVoj7IVNd+GopEo6MzpqWUXBnTM574qzgULCRBPiJVZ5WC
	 fOrb3Sjkeetd4e5dVQnn3SQz7gqFTuoYU95lXJ+M1hFMJmDNYCQnWJniQFVUIqnbAm
	 5unSXuYo1aGhAFuTmfi0xAl0MTfOSMb1wrQmrWM6URClHeFnDwnAyDYy0fBxoA4J71
	 PqjR5qvRPzCEw==
Date: Mon, 6 Nov 2023 07:42:09 +0000
To: usrp-users@lists.ettus.com
From: adri96roll@gmail.com
Message-ID: <ySJ0SEdbAkclVJD9ZRCyXRxRFGjhQT49HQhKOn8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: w1EYesAHnAd40HiIxfVVye37szEeK2ing4zZGWM9fc@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: AFA3IJGHRBUHGY27QJ25D7ATKJNRUA2B
X-Message-ID-Hash: AFA3IJGHRBUHGY27QJ25D7ATKJNRUA2B
X-MailFrom: adri96roll@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC TB
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AFA3IJGHRBUHGY27QJ25D7ATKJNRUA2B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2880937323306980361=="

This is a multi-part message in MIME format.

--===============2880937323306980361==
Content-Type: multipart/alternative;
 boundary="b1_ySJ0SEdbAkclVJD9ZRCyXRxRFGjhQT49HQhKOn8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ySJ0SEdbAkclVJD9ZRCyXRxRFGjhQT49HQhKOn8
Content-Type: text/plain; charset=us-ascii

Sorry, my mistake. I emptied the send_samples before sending it. Now it is working. 

Thanks!

--b1_ySJ0SEdbAkclVJD9ZRCyXRxRFGjhQT49HQhKOn8
Content-Type: text/html; charset=us-ascii

<p>Sorry, my mistake. I emptied the send_samples before sending it. Now it is working. </p><p><br></p><p>Thanks!</p>


--b1_ySJ0SEdbAkclVJD9ZRCyXRxRFGjhQT49HQhKOn8--

--===============2880937323306980361==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2880937323306980361==--
