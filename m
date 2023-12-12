Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C541A80E978
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 11:51:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8162B3841C9
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 05:51:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702378313; bh=8iP7A58FFS1cGeYLI/sFRLMmYDzzFy+WVz6/YdrC5+U=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=p11c5oZB5ByEi1xb1CE25EHwY5UhJRJRHHiQ/A129BL+hRhK1x9KtZl0I1GR8pNoW
	 xifNsDSCWbzdspnMFqiJRHfxhHvFohSjvx21TbzunwQRoTV0lv/vxtmyiEV0JdatkN
	 cbvIWlD5rzG3YMQ+RDduTaAtXncsNXTDyu6iWzMCax4oVsWBqnzL57dvaC80WDYz6z
	 qAJdxCHSLc9Pb/aXSYfsKwo8y4xJdRLo9JPHjG0vFTaYfJ89iwmdLUXIlt9TcA/vzI
	 4BRRdmCE04SUILAPimgDDSKflpiAprSBulgGaG4mArZZbzcNRMtpCK+poTVgaLQ0Xe
	 S2JoXobvtMVsQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A01AC384AB9
	for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 05:51:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702378300; bh=ByeyoxiBRxqLO9szu2cvgem3dbQyU8d7acefGVMyFcY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Vbtv7iQutenC/9UpC4LpPy7Tg1EEDnZ6atXgiDXGHfO9lnFbx9Qf+9wpyjZHmzxpB
	 WT4tO1M9fxKQiW4S0koLQA7E/2gjKhnkEvohQ08v0vjgdvV4aNNRUcil2XjW/RJNZx
	 6NSGFGaoV8791WN1LS2flPQA6FOWzY80ENFzUeJHVh351sS19mu5KOxyqP+34PTgDc
	 3oHJvAA/1v51BnLsnf4GyQ6qQS2RNWb5Lhg9NGVYXPI30yHU5x+GTMCsNWNGEWKpix
	 ZtUq1G2k+RkgWjoNPkoix4aHd7t4AYz89hDK5vxbtsMTrUIvfyKYE/fJLPtd+Txn9x
	 sFW6IFjiiUnBw==
Date: Tue, 12 Dec 2023 10:51:40 +0000
To: usrp-users@lists.ettus.com
From: purva.joshi@phd.unipi.it
Message-ID: <kqtmE1sIKX7BTG90w2D1Rr3PhEJ8tBa5mLAGfYJo4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: KWjksedPw0T3QbNxiglWvgVjJ2qdcMafp2OQ2sUIpH8@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: K5XEIHF7PHX2PD42T24VZVNEF5TF7M6E
X-Message-ID-Hash: K5XEIHF7PHX2PD42T24VZVNEF5TF7M6E
X-MailFrom: purva.joshi@phd.unipi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K5XEIHF7PHX2PD42T24VZVNEF5TF7M6E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0439007381890463499=="

This is a multi-part message in MIME format.

--===============0439007381890463499==
Content-Type: multipart/alternative;
 boundary="b1_kqtmE1sIKX7BTG90w2D1Rr3PhEJ8tBa5mLAGfYJo4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_kqtmE1sIKX7BTG90w2D1Rr3PhEJ8tBa5mLAGfYJo4
Content-Type: text/plain; charset=us-ascii

Is it possible to use mender for updating the FPGA image?

--b1_kqtmE1sIKX7BTG90w2D1Rr3PhEJ8tBa5mLAGfYJo4
Content-Type: text/html; charset=us-ascii

<p>Is it possible to use mender for updating the FPGA image? </p>


--b1_kqtmE1sIKX7BTG90w2D1Rr3PhEJ8tBa5mLAGfYJo4--

--===============0439007381890463499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0439007381890463499==--
