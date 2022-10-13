Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2115FD9E7
	for <lists+usrp-users@lfdr.de>; Thu, 13 Oct 2022 15:06:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 730AF383AB9
	for <lists+usrp-users@lfdr.de>; Thu, 13 Oct 2022 09:06:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665666404; bh=jOSPReKc9aUUr3Du7whPpiLPAewK/6fg5LVCfpG8UMA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=FIzViD2J/FGyRe1v1ZX1htTfchBSvqfMF+yD5G5VwI6OSKiYDSedtj+z9mKv/ZYas
	 HKkcTrO0o4APmLmL3/kGBhSUBCV8ttzXr3Rg5Pd3n1j/pAwIqj9Vqf0/LpTFdiY4lJ
	 QmkV0OdCWLzsjeHMg2domstC8AxWWm6fCV17wFPv6CH3j9gXoJ/14XVOD1qn4pxTLB
	 pVPzzbeUpFpNs3z56kNYhrOz8LIuLqSWWGQmJgAGVRSduN4N93SEgt3AtT6PJWPix2
	 tBCW2ASFnxHrkzn1xIMOCwOa1h7f2dQ7+GSsH506J5ViC7TYATw+XWehwEWny/ng4I
	 YpyUXYgs0m/kw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 41F3E3809B1
	for <usrp-users@lists.ettus.com>; Thu, 13 Oct 2022 09:04:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665666249; bh=rL6flwEBRS7ohn2z8U1eH7nRIUsT0ZBwyIc706vBWq4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=cIM/qgTc8GfthJP6BP0riyYiExJ+YOH9lXs7p1R3zlTx1RsuVQGJUarz8WVyX7SSA
	 +OmRgohH9TUW7jq2lNb2tIWki0y/c9tdXlfOnuFbw8JiNETi+jWRKjsFPGZ1rPKT2L
	 04EINY0lqmFLyKe5AY5Tr14KEHyVrU6gtv4zNjHN8jo+rFC4qNNZ0vfaU6X7CNWMW9
	 eG9VIYNwNGieYCwBQefKSyIbJw2lAbJtkxP+xa4zBTyG1YTSVUKmC1nMMG0LRbGoBV
	 fYZQ15+YMwHnxKWSlOBWCKhnggFSX09b/nn/kWtd6fobddiJPP91OHw+OQxAv0dbtU
	 xHzM2dszFq7lA==
Date: Thu, 13 Oct 2022 13:04:09 +0000
To: usrp-users@lists.ettus.com
From: adri96roll@gmail.com
Message-ID: <QzuK2hVi5lZhI9sSwIOdI5nIaOC03TmgussiB9WS3s@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 948601e2-432e-53ff-08cc-a43a7486efdf@gmail.com
MIME-Version: 1.0
Message-ID-Hash: XTZSYAUKUXAVPKSEDQ2S7C2GPPU27RAV
X-Message-ID-Hash: XTZSYAUKUXAVPKSEDQ2S7C2GPPU27RAV
X-MailFrom: adri96roll@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD_IMAGE_LOADER load another .bit
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XTZSYAUKUXAVPKSEDQ2S7C2GPPU27RAV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6884436688931061324=="

This is a multi-part message in MIME format.

--===============6884436688931061324==
Content-Type: multipart/alternative;
 boundary="b1_QzuK2hVi5lZhI9sSwIOdI5nIaOC03TmgussiB9WS3s"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_QzuK2hVi5lZhI9sSwIOdI5nIaOC03TmgussiB9WS3s
Content-Type: text/plain; charset=us-ascii

Hardware: e320

Command: uhd_image_loader --args "type=e3xx,mgmt_addr=ip,fpga=1G" --fpga-path usrp_e320_fpga_1G.bit

And yes, i restarted.

--b1_QzuK2hVi5lZhI9sSwIOdI5nIaOC03TmgussiB9WS3s
Content-Type: text/html; charset=us-ascii

<p>Hardware: e320</p><p>Command: uhd_image_loader --args "type=e3xx,mgmt_addr=ip,fpga=1G" --fpga-path usrp_e320_fpga_1G.bit</p><p>And yes, i restarted.</p>


--b1_QzuK2hVi5lZhI9sSwIOdI5nIaOC03TmgussiB9WS3s--

--===============6884436688931061324==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6884436688931061324==--
