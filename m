Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E33991FE9
	for <lists+usrp-users@lfdr.de>; Sun,  6 Oct 2024 19:30:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 119A3384B9A
	for <lists+usrp-users@lfdr.de>; Sun,  6 Oct 2024 13:30:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728235801; bh=dHeNKRTiVkqqXoD5OcyI1HUJbHVTBRAGqDG7u52IL0g=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=O7rODpRGBWCDDpNCMRwgD1SINL5oew2yEIb/9XhvnP04Qf5qZpmSTzhzSJeIJJpub
	 HgC4USRGwpFHtVVBsSKMgW8He5Xu8f+QZHa/5DI72f46chL070/PRoL8R1JMibCzGC
	 NsJfo/yxJgNec6tiWls+xv62LUgFuju/6IZmJW4MUiwL/oju3+IJdYtCs6Yz9jHRvM
	 RsEpLFL8o4GaW+P0Sv0nfwFbOfVsoGC4zwxhDSGac+5XXPV0e/MI2xGfDTKBjrHUin
	 HenzC2BVQPrfIyZ8VT0nOrdsseOm60hCJV9UTBbQf4sH/TvGHe0Yag1McI1OioHJ1Z
	 h2MZ+644m39hg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C73F8385523
	for <usrp-users@lists.ettus.com>; Sun,  6 Oct 2024 13:16:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728235011; bh=cjbp5+jw4SVO7+Grm+FmmoGO8AzkT7g4isRmewu7i0s=;
	h=Date:To:From:Subject:From;
	b=nalALrWtu9cmgwoWJ7XSyCAGyPWfFGcceksspBiOeMkXxwOgKiKFT5eZMNmHTsKps
	 EQ/Nhro3Q1OIvTwI5wtW0My8XvZbwmwn2MhQ3uimZEi4h/kA93p+qp546yTB7qlaqj
	 DcqhrJM6U7+JVQUxQaG9v3yxLnaW7Tyiz4YCkFC9eTWBrcgvqtfz4PKMramBCXWVF4
	 Qk6CXhdL6sidgj5xv5YJA2OlsV1sQYNHwo8nCv8arKgpof4/sgRhcnIPNmFzVoBS4r
	 1FGQF+bM2d2i/byAaPOrYd7Tvbru+AsOVyM3oy4JIwBbOr31NtWBjhoM1k8XIrj2Ol
	 u1pTRfoL6B4jQ==
Date: Sun, 6 Oct 2024 17:16:51 +0000
To: usrp-users@lists.ettus.com
From: mgarrett@garrett-tech.com
Message-ID: <E5zKD20cBALWD9vvyl4tvnjjZe64QWzUFFIOB7DLs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: YDZNVZCPW353B77UBDPTAHB7WJID3SQ5
X-Message-ID-Hash: YDZNVZCPW353B77UBDPTAHB7WJID3SQ5
X-MailFrom: mgarrett@garrett-tech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNOC e310 block yaml and bit image file examples
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YDZNVZCPW353B77UBDPTAHB7WJID3SQ5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3057237931713352716=="

This is a multi-part message in MIME format.

--===============3057237931713352716==
Content-Type: multipart/alternative;
 boundary="b1_E5zKD20cBALWD9vvyl4tvnjjZe64QWzUFFIOB7DLs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_E5zKD20cBALWD9vvyl4tvnjjZe64QWzUFFIOB7DLs
Content-Type: text/plain; charset=us-ascii

I am looking for some e310 yaml examples to build custom fpga images, for an e310, to use python in uhd and gnu radio support for rfnoc.

Specifically Im looking for :

1x DDC, 1x DUC

usrp_e310_fpga_sg3.bit, 

usrp_e310_fpga_sg3.yaml

and

usrp_e310_fpga_RFNOC_sg3.bit, 

usrp_e310_fpga_RFNOC_sg3.yaml

fosphor, window, fft, 2x AXI FIFOs, FIR

I have a full devlopment system built up and can build the FPGA images (.bit) but am not sure

how to configure the YAML file block, staic and crossbar links. 

Thank you in advance!!

--b1_E5zKD20cBALWD9vvyl4tvnjjZe64QWzUFFIOB7DLs
Content-Type: text/html; charset=us-ascii

<p>I am looking for some e310 yaml examples to build custom fpga images, for an e310, to use python in uhd and gnu radio support for rfnoc.</p><p>Specifically Im looking for :</p><p><br></p><p>1x DDC, 1x DUC</p><p>usrp_e310_fpga_sg3.bit, </p><p>usrp_e310_fpga_sg3.yaml</p><p>and</p><p>usrp_e310_fpga_RFNOC_sg3.bit, </p><p>usrp_e310_fpga_RFNOC_sg3.yaml</p><p>fosphor, window, fft, 2x AXI FIFOs, FIR</p><p>I have a full devlopment system built up and can build the FPGA images (.bit) but am not sure</p><p>how to configure the YAML file block, staic and crossbar links. </p><p>Thank you in advance!!</p>


--b1_E5zKD20cBALWD9vvyl4tvnjjZe64QWzUFFIOB7DLs--

--===============3057237931713352716==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3057237931713352716==--
