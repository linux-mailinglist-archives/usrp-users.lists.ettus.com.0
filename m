Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E111B600B98
	for <lists+usrp-users@lfdr.de>; Mon, 17 Oct 2022 11:52:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 956E1383C42
	for <lists+usrp-users@lfdr.de>; Mon, 17 Oct 2022 05:52:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666000358; bh=Nhw3lJLcsoI8aagdtuyT7OV6KXQWLZFgY//CHnI7+bM=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=VCdIoyB1VePSSYJRUjNgP+82Nf+RA5Fivm9nObnUaADDaPwfS+7LLS3Uc5q9xwI0g
	 m1OKF+jiUXBBBQfCMTi8fL2Na3Trf2YA9jOc4pRsBnrw047vWAzXnTzbgm6RsVOiOF
	 dIaT4d2TxkroWGdR2WrIc4+nP7W9AdZ5JrTTVcftCtoz91TmpoSkJ1yKLjtd4W7zNb
	 IY7DOShxEp3LTSCnVrVLMAT2tkCOHNSYhQ0spcAuddtzYSaYR93/49GbAefrFjAFK5
	 kuPcu302z9wyLGUzdLYF2o0BVwJaCXJ8VSRFXBWeGMbZvkCtliMTNFlYuCUoTHghlI
	 9BlAtuPX2XC+A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9735D383A26
	for <usrp-users@lists.ettus.com>; Mon, 17 Oct 2022 05:51:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666000312; bh=8Beeo+zFAlX8eRYt239LWwzUECGuoZgDTJkmixS4zbg=;
	h=Date:To:From:Subject:From;
	b=zf2eSgajxHcOFBvjw6POGkv7GRQ3hU2dO5T3vGi+FMTcIEhi/eY7tHuKKt66CCvOo
	 OBjUEYLhP5eq2FyPX3z7JOVAqLrQbo95Alac8ykKVQCb5MSp2NXYZgreSHy/vYHNCs
	 D6P3CmPtc3eMxBM/e/wOAVVgpUPuEr69yDhsHHWBeZRaaz0ev2cWXoa3m1eP64gqe3
	 JiPVZzw5AV+9RyqkEBV+JnC4C/xhbNHqLY21mi6SJZeGn9hEIN1UarK5P4YB2vpVCQ
	 yybbaI06bWKwOD/rhruVerDko1ZyTsjB1zLUm1+K8PeR1mXeNbUv9ORKGmT+IlizV+
	 eV9AxzfznUmoA==
Date: Mon, 17 Oct 2022 09:51:52 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <Kart9wtAGAXbzhQCC11y3wCzMfYBc7OdPhzPRAlnGI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: NHMPSGAQ74CIZB4CMFAH7XN7IW4OFQCC
X-Message-ID-Hash: NHMPSGAQ74CIZB4CMFAH7XN7IW4OFQCC
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD+DPDK - some of the old and new quirks during installation and configuration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NHMPSGAQ74CIZB4CMFAH7XN7IW4OFQCC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1214665809188434193=="

This is a multi-part message in MIME format.

--===============1214665809188434193==
Content-Type: multipart/alternative;
 boundary="b1_Kart9wtAGAXbzhQCC11y3wCzMfYBc7OdPhzPRAlnGI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Kart9wtAGAXbzhQCC11y3wCzMfYBc7OdPhzPRAlnGI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,

As promised in one of earlier posts I=E2=80=99ve written something about =
installation of UHD with DPDK support.

It is not a full tutorial. It=E2=80=99s more an extension of what was wri=
tten in currently existing tutorials and mailing-list posts (like this tu=
torial: https://files.ettus.com/manual/page_dpdk.html).

Even as a non-tutorial what I=E2=80=99ve written was a bit long for a mai=
ling list post, so I put it here:

https://ptrkrysik.github.io/dpdk.html

Some new sources of issues described there:\
\- IOMMU groups,\
\- UHD+DPDK dropping samples when UHD=E2=80=99s threads are assigned RT (=
highest) priority.

Best Regards,\
Piotr Krysik

--b1_Kart9wtAGAXbzhQCC11y3wCzMfYBc7OdPhzPRAlnGI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi all,</p><p>As promised in one of earlier posts I=E2=80=99ve written=
 something about installation of UHD with DPDK support.</p><p>It is not a=
 full tutorial. It=E2=80=99s more an extension of what was written in cur=
rently existing tutorials and mailing-list posts (like this tutorial: htt=
ps://files.ettus.com/manual/page_dpdk.html).</p><p>Even as a non-tutorial=
 what I=E2=80=99ve written was a bit long for a mailing list post, so I p=
ut it here:</p><p>https://ptrkrysik.github.io/dpdk.html</p><p>Some new so=
urces of issues described there:<br>- IOMMU groups,<br>- UHD+DPDK droppin=
g samples when UHD=E2=80=99s threads are assigned RT (highest) priority.<=
/p><p>Best Regards,<br>Piotr Krysik</p>


--b1_Kart9wtAGAXbzhQCC11y3wCzMfYBc7OdPhzPRAlnGI--

--===============1214665809188434193==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1214665809188434193==--
