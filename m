Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B05276D6D6C
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 21:51:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AB8253848BD
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 15:51:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680637887; bh=8hbgQmDwPOZUkPPNFIXvejq4aLw+ApxnaK3jltUZM6A=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=j95GVAUd26epRBapL2LR/hTGcNzBer5OB8dlMvAxsMoalxMI9VWJxdOJ/DaJ38N1O
	 kE04xTiSnUCK9ZF/+PQPQeeB4XH9Qo++fvZtwUCXN70/cpcWuuFWwIu1etFNwIziA6
	 3BM2JlmaSFGZd9TNbTb3g+h9PyHJi7PBdz3CzFIZvDRTErU5SHpzdSKECNkPucvGwh
	 Dap0waa/+CmBQInSuhdeqQPtn2EUA+tDzukZqBKHi4lyt0RlfP4ViDD7vs39Fv2n5k
	 VQ/1xvXilSi0hnyJqgKHrt7vOVj0r9pWQgqkZk83un65N6krH2bwMnJfqi4tQR6uvl
	 wIRF2kpUYMUbw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 101EC380989
	for <usrp-users@lists.ettus.com>; Tue,  4 Apr 2023 15:50:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680637846; bh=lnTFnfWorY6vqJiBUt8x1mKPT3GzQ2fBDGBA7n+coIM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=xUmIb8NuDaVw6d3qOrK3FkRQm8YwLoKsEO6loaa0Ch8qqplRYehZuyNKvE9bOHxpZ
	 AMxjkFJmBeiAjQca9Igeee0NKcSaJ/zlWnmFSV0OytfBPYyj97s6XNMNzfegDEzSCK
	 YYLZvYFhbUzz00MuzNEQexogeqFI59mkPTmWGY7TaGAJHVyH85iD8S8IlS2DKByopz
	 W8id9a0P16Shvv9dwLvWgrtUFX/F/+Wl8kWahqinpX6MD5Sm5Yh59nMJdS20Re/LxS
	 N2F65/S8AVgidU2HUhLXlq3QcPiyX343bAVLqXb+1M0RA82W4lNhE0+6wkCOHen9Ih
	 invzYjo/ASYdg==
Date: Tue, 4 Apr 2023 19:50:46 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <GPX3Wf5RSzJeic6dGMqhinzNWUlSuSWpvEQp6qk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTT7JCXB9V+XG_t2_fUZKxSKNuHuHoqvN1gxv1ok5H5XYw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 4FK3GIAUKNRSDGP4VMS2HB4N3IEAS54J
X-Message-ID-Hash: 4FK3GIAUKNRSDGP4VMS2HB4N3IEAS54J
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Integrate USRP-X410 with XL710 intel PCIe NIC card through QSFP ports
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4FK3GIAUKNRSDGP4VMS2HB4N3IEAS54J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2718591244081782098=="

This is a multi-part message in MIME format.

--===============2718591244081782098==
Content-Type: multipart/alternative;
 boundary="b1_GPX3Wf5RSzJeic6dGMqhinzNWUlSuSWpvEQp6qk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_GPX3Wf5RSzJeic6dGMqhinzNWUlSuSWpvEQp6qk
Content-Type: text/plain; charset=us-ascii

Hi Rob, thank you for the comments.

I checked with StarTech support team (the manufacturer of XL710 NIC, B07983NGQH). But they are saying that it does not have the functionality to set as 4\*10G. 

I was wondering what model of XL710 NIC do you have that worked or what is the utility tool you mentioned. Thank you.

--b1_GPX3Wf5RSzJeic6dGMqhinzNWUlSuSWpvEQp6qk
Content-Type: text/html; charset=us-ascii

<p>Hi Rob, thank you for the comments.</p><p>I checked with StarTech support team (the manufacturer of XL710 NIC, B07983NGQH). But they are saying that it does not have the functionality to set as 4*10G. </p><p>I was wondering what model of XL710 NIC do you have that worked or what is the utility tool you mentioned. Thank you.</p>


--b1_GPX3Wf5RSzJeic6dGMqhinzNWUlSuSWpvEQp6qk--

--===============2718591244081782098==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2718591244081782098==--
