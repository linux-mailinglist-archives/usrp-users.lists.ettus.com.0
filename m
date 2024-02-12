Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C15F851C5A
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 19:00:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4A41538510F
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 13:00:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707760832; bh=sBEddVmqijdR56CWFwdP6fHpvtP8yWNsWi3u3opoVw8=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=x1aiCcTBCaewkspTeBYNsOYTTnwnUdRBvHXhKP5/Bb6sjNLOc1vItB5wAK+4CD82U
	 z9WXtxXW2IqQV89MP7HKpVMuS+IcgF9jR0HCAiYXl1Y7wGXBOJIaMGo2CjgA5/4GZn
	 5Xb3dAAPk4vxU9uIxSlSu7gU/V/jdfVfbfWE7Y3hRRgXkbUPcg7lVgWr0ttMFQGqDV
	 9S3SxXTYBKF2bV9Q/7s5c0S0z/VxBeaPpY8+CG8bZQBBAnXFM3bP4vk7kbMkGLm1pT
	 A4A+7spMPHpty/ROMyo1qH7d4C3T7Uj+UxTzLJhHouLNS72bQKLK/hwzBxiiOACTix
	 Qg+5zHqNL5DQw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 095A3384D09
	for <usrp-users@lists.ettus.com>; Mon, 12 Feb 2024 13:00:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707760827; bh=wznajWQDMQnaMjmaeTj2W/ZXfrmK1IitswD+b95hgtU=;
	h=Date:To:From:Subject:From;
	b=rpNZn06Rh+awuR0UjkZyDsNRtc2Ctl/NLxeJuBpKsQuA41MLuWmAnbrcNDh5tl3pU
	 nezy2BQ7EqOPFYC2oJYh8QLWjlSxCnF4BWDtbOdLTbFDqUN81vUojwWqtIqSGwW6Ct
	 ZFjAAFRPN9LlHO9sffwxcSqZje3jniOytw6OZBlRRa8O7BPfBVj1LyLt5qlMw2A18J
	 wmtf1TAKgsc1S0GkC5nPt9j9HJ6WwLNJP67u1fjICT7ZDqdm77q+Nw0Xa5oQk3k8Bf
	 82HwNeZCXNXejMpNIWt/ansOsffVmxvv6rkHWYyaYdAVzS2Lmgx5ZpOg7DN+csAl9+
	 YKAS6hMdyRriw==
Date: Mon, 12 Feb 2024 18:00:27 +0000
To: usrp-users@lists.ettus.com
From: gaytanc4@gmail.com
Message-ID: <G1OfgKqD1VmJtYGsL6cI1YyHt0ZIlKtfbobb45yr2o@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: QTQRCHV5TE6Q7XK4VFW7RVDKGNXUWK3C
X-Message-ID-Hash: QTQRCHV5TE6Q7XK4VFW7RVDKGNXUWK3C
X-MailFrom: gaytanc4@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Adding existing RFNOC blocks in GNU Radio GUI
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QTQRCHV5TE6Q7XK4VFW7RVDKGNXUWK3C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6898951786626735416=="

This is a multi-part message in MIME format.

--===============6898951786626735416==
Content-Type: multipart/alternative;
 boundary="b1_G1OfgKqD1VmJtYGsL6cI1YyHt0ZIlKtfbobb45yr2o"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_G1OfgKqD1VmJtYGsL6cI1YyHt0ZIlKtfbobb45yr2o
Content-Type: text/plain; charset=us-ascii

All,\
gnu radio 3.8.5, UHD 4.0, X310\
\
I originally wanted to add a new rfnoc block but realize I should start smaller. \
\
I am going through the RFNOC getting started guide but not sure how I can add the existing rfnoc blocks into my gnu radio gui? \
\
Is it necessary to update the YAML files. Furthermore,  once I update my YAML files do I have to reload the FPGA image on my device if I connect blocks in different orders?\
\
Thanks

--b1_G1OfgKqD1VmJtYGsL6cI1YyHt0ZIlKtfbobb45yr2o
Content-Type: text/html; charset=us-ascii

<p>All,<br>gnu radio 3.8.5, UHD 4.0, X310<br><br>I originally wanted to add a new rfnoc block but realize I should start smaller. <br><br>I am going through the RFNOC getting started guide but not sure how I can add the existing rfnoc blocks into my gnu radio gui? <br><br>Is it necessary to update the YAML files. Furthermore,  once I update my YAML files do I have to reload the FPGA image on my device if I connect blocks in different orders?<br><br>Thanks<br><br></p><p><br></p>


--b1_G1OfgKqD1VmJtYGsL6cI1YyHt0ZIlKtfbobb45yr2o--

--===============6898951786626735416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6898951786626735416==--
