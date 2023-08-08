Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 062937749F7
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 22:08:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4D76F3830B0
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 16:08:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691525316; bh=DdRzk//jO+vcOLh35XDV6tNSLmV3RGsf1/tJ8d0K+jM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0gZ3SWGuvt2RD2jYoWlNf7OVBTfpwaDEOibBSiY7vZv+UzcpS1bogExzab5yoDvm0
	 jrOW5VdI/1HTcqntVc0JPsg7jKqqvNf9XVSj38WAU0kq55MbxuGaj6sGJvPDMQImgp
	 qOOAtK+LhaHqTz2jl5wpWMuZG7MyatVsAnRni0y110WAxwBcL1TYGyVd6qIT5pWmkO
	 EnlsbENKEruHzSzCWWgqvt/fv8nkppjbWGaUKrJOl29DDE276qR4HmJCzMBSaU0xCc
	 Nbd5MgKh+OflhzFOxQ7C8Ml/9L3CGftMpusHv9LrrmsOBtW6SRn9segYoOvTNdWQ4c
	 d4y87bU1ggOIw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BE63E3812D7
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 16:08:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691525283; bh=OhWz4ajwGeUS3/uQkdUBT8Exvsx/yPxCtbYONG9dD6E=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=K9L0DFOWLWfpXCWj1pbOPTAJZtOlKV1/ZQ+iBodk5QSTmLenKxaxxHK/yN32pT5se
	 jfX2xK1TCZaRWL8/wPUuXiif9NTWo5bW6hiL1X1i3epGY+GcZyIpqDY9NiUHMuehs0
	 rZL0i6/pxVeq0N61MNR6XoEO1/o+BpNkwnEdprRhaHG2tvg6PDgq/Ejgwbrr5d9QiU
	 9Ta8fnLebJExK6MdKOABZQsNUrZLIWReCGxrK5iyZftFLNAHHBX6vy/O7oA0UcUfga
	 IGsIMv/7SKa7Ho1Tu026WSTFlzMg4ECcvh+66yH80EPdAV4VYSweQrd0aORJWcL/Zg
	 FpSpBQPPs8xtw==
Date: Tue, 8 Aug 2023 20:08:03 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <SLRc4VMWbMWIdHRvFhWMISWYLBim1mxqIZSXn2VC8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: a171d061-16c9-f4ee-d368-1c7821f48bdd@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 7FRGK4RSFL2ZF33G47POO3IULIBRKLU4
X-Message-ID-Hash: 7FRGK4RSFL2ZF33G47POO3IULIBRKLU4
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Device Serial, Name and Product ID Corruption Issue on Misusage of b2xx_fx3_utils for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7FRGK4RSFL2ZF33G47POO3IULIBRKLU4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1324287824641794209=="

This is a multi-part message in MIME format.

--===============1324287824641794209==
Content-Type: multipart/alternative;
 boundary="b1_SLRc4VMWbMWIdHRvFhWMISWYLBim1mxqIZSXn2VC8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_SLRc4VMWbMWIdHRvFhWMISWYLBim1mxqIZSXn2VC8
Content-Type: text/plain; charset=us-ascii

I am currently only using the default FPGA images for my B210 that are, I think, downloaded with the uhd_images_downloaded, is installed to the device with the b2xx_fx3_utils tool.

It is installed to the same directory as above, install_path/uhd/share/images/.

Regards,

Eden.

--b1_SLRc4VMWbMWIdHRvFhWMISWYLBim1mxqIZSXn2VC8
Content-Type: text/html; charset=us-ascii

<p>I am currently only using the default FPGA images for my B210 that are, I think, downloaded with the uhd_images_downloaded, is installed to the device with the b2xx_fx3_utils tool.</p><p>It is installed to the same directory as above, install_path/uhd/share/images/.</p><p>Regards,</p><p>Eden.</p>


--b1_SLRc4VMWbMWIdHRvFhWMISWYLBim1mxqIZSXn2VC8--

--===============1324287824641794209==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1324287824641794209==--
