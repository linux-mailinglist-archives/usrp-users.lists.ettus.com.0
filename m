Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C46FB762D55
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jul 2023 09:27:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 84797384B50
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jul 2023 03:26:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690356419; bh=RpM7Q3Bj5DI1kQRZWpEUelHL/1oMdJk7mVPEsnlaT/8=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=lzlvXKV0+HDMPos2lfBCO4GNpoumn0TxKw4GJ7FijSehsGFkSp66btayGaGi+3a+N
	 kj0JSDdlrX6iFBSyUlr1A5Keex1CZgh3VJTREPRXTHXAdx+IrQsch3ux2w/YiXKFgz
	 UrOYlPDl2PO8SRKiVYs0cH+QS5HAdosefXkBN4GEFnEEIFbG2iH22ILh7yFJ/WBX/z
	 7sFQLqHYrrJsCqH8S3W40/1PkqNoEfqyKWPt97X48tFU/DtkhclAQp79BwS3yP4P1X
	 IVj/lQLQ/wUus06K8ft9JIwRR81WFm8rU259x6k2IlosnOJBXXj7S7rDnjfOxawwje
	 jnP40vMW11FnQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 18927380CB9
	for <usrp-users@lists.ettus.com>; Wed, 26 Jul 2023 03:26:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690356384; bh=/vXURZ2R1owJTtTlm4fUGsjZtGVVSp0/Fc9EL03sYkg=;
	h=Date:To:From:Subject:From;
	b=kIR+2Aq0uwLalCu+GJJMSBNGP26gtjnyrqzIjiHYadG+1pvq4pTZRPskEyVPKnaOq
	 eYg9oGweUBudrz6H7NSoAn8ahJ2f9s67RqKJMAfK0OUrlRscJFnPqz3DWkX500gDtU
	 Wxu8ZpmpgH46oi7qCohwp2FlMdYULWEptoMadv0Hhxn6ETsQCW6z2WIGeY/+sJW5wI
	 fzpHpMt0Vt88LerMB5yVwHZg0YA6Qz8sfEobQhpBX1/VCbko2Hw1nznhw/Tu33HsA4
	 tzc8+J3g2CPVtX7ptDQd7Gs+GNO6zRpYg/Y8JvMDXQrk5J2rVO4eQilU9qK2Z5v5zJ
	 hGt1/OuQDPtEA==
Date: Wed, 26 Jul 2023 07:26:24 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <CdyUR2j2lqtJS1JiipoVzRdKDjTIBu5FMO9YTXXyCQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: XZHDLRZQKSPZ366VYNFFKKC6VIWEB5EP
X-Message-ID-Hash: XZHDLRZQKSPZ366VYNFFKKC6VIWEB5EP
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Which optical transceivers are compatible with X410?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XZHDLRZQKSPZ366VYNFFKKC6VIWEB5EP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2819587588845518395=="

This is a multi-part message in MIME format.

--===============2819587588845518395==
Content-Type: multipart/alternative;
 boundary="b1_CdyUR2j2lqtJS1JiipoVzRdKDjTIBu5FMO9YTXXyCQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_CdyUR2j2lqtJS1JiipoVzRdKDjTIBu5FMO9YTXXyCQ
Content-Type: text/plain; charset=us-ascii

Hello all,

Did anybody use USRP X410 with optical transceivers and optical fiber instead of QSFP28 cable?

If yes - could you share model of those optical transceivers?

Best Regards,\
Piotr Krysik

--b1_CdyUR2j2lqtJS1JiipoVzRdKDjTIBu5FMO9YTXXyCQ
Content-Type: text/html; charset=us-ascii

<p>Hello all,</p><p>Did anybody use USRP X410 with optical transceivers and optical fiber instead of QSFP28 cable?</p><p>If yes - could you share model of those optical transceivers?</p><p><br></p><p>Best Regards,<br>Piotr Krysik</p>


--b1_CdyUR2j2lqtJS1JiipoVzRdKDjTIBu5FMO9YTXXyCQ--

--===============2819587588845518395==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2819587588845518395==--
