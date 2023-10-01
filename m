Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C747B4806
	for <lists+usrp-users@lfdr.de>; Sun,  1 Oct 2023 16:24:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 43ED4384D44
	for <lists+usrp-users@lfdr.de>; Sun,  1 Oct 2023 10:24:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696170287; bh=ZquAbbKaS/dzMhjvktDvh6niDgWZpHqDT5p1jghBk+g=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=xy2eNisgxG1MrSUpUT7VZTwXkS42T+kDZezt2hwA86c6kh+n0anJWNPBaqXL4Sfeh
	 MlwCM3F9piJB2d4rT6gOwolTs51toG7324OnErAIdzWzEBay52GWLCbvun4A52iJY4
	 qfjlqvuCuWElWsOOhcJtpkV6vdEmxKxH0aFCA2BXYEoC61UZAcunzH4O4w+Sig4A7k
	 Ypxvcu2TKqxrpbJvKDsPNQVMk+7pk2a1OtoaD/9m9N0GVSLjTwGEvZWC6ku3HS9RzC
	 4gsk9PVwJ0/pFbFhLrUhM3iqZmTnBAfsRB4N++OTxc8orlh5YjzyAfe7JndsBp4QbF
	 n5SPv959nQfaA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3D363384C6B
	for <usrp-users@lists.ettus.com>; Sun,  1 Oct 2023 10:24:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696170279; bh=jOl5Hz1K06nHG2/to73YZoLaAP6Qm/av4JhRW8+KisI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=kIoUykKVC4JlmDKNw4pxarHYvgmV1MQ71OBpQauv6JINhRMd6GYTAZt3r39zqamim
	 o+/pdhz2OXelsuFwf3NA62iKrzWQrew+Tgww0jBEMRYxPi7rNf/Tf9mco6k2DJfYek
	 yEcmk4KA4v0SWWqSWWpGigqOmu+Xq2Ls4jyJ76S8LNhxR2F1t2nK5VsRV9H4NzNDEE
	 DQLcDYRQaKEtLEpiEo0/FYIUV0A7P1ToSSUjNpCDriUGH1uuzJJv0ZDqWaWpcRzkuF
	 SrXnIPIUAJ7TCe8yedSo2ipYwDdRAkK8DN4X3sshmRKoxsBlBlsHcsywd2oPvXfmjI
	 3c9bri+TwF3Tg==
Date: Sun, 1 Oct 2023 14:24:39 +0000
To: usrp-users@lists.ettus.com
From: shaneflandermeyer@gmail.com
Message-ID: <faTFNwNwGIx35kOxVMDpH7wKfRv9pOzMMOXGqQFyto@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: HAFnQ93dmfnKgATadn7mn7wYAe7yHQfRWHkSTkdlAs@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: XSAJPMLJAT5ENVAO442T4ELQMGIRTLL3
X-Message-ID-Hash: XSAJPMLJAT5ENVAO442T4ELQMGIRTLL3
X-MailFrom: shaneflandermeyer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK with X310 and Intel X520-DA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XSAJPMLJAT5ENVAO442T4ELQMGIRTLL3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1586506493466052101=="

This is a multi-part message in MIME format.

--===============1586506493466052101==
Content-Type: multipart/alternative;
 boundary="b1_faTFNwNwGIx35kOxVMDpH7wKfRv9pOzMMOXGqQFyto"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_faTFNwNwGIx35kOxVMDpH7wKfRv9pOzMMOXGqQFyto
Content-Type: text/plain; charset=us-ascii

I should also add that I added ran into the periodic underruns problem described at the bottom of the page below, but the RT_RUNTIME_SHARE solution worked.

https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD

--b1_faTFNwNwGIx35kOxVMDpH7wKfRv9pOzMMOXGqQFyto
Content-Type: text/html; charset=us-ascii

<p>I should also add that I added ran into the periodic underruns problem described at the bottom of the page below, but the RT_RUNTIME_SHARE solution worked.</p><p>https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD</p>


--b1_faTFNwNwGIx35kOxVMDpH7wKfRv9pOzMMOXGqQFyto--

--===============1586506493466052101==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1586506493466052101==--
