Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 00235960BEA
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2024 15:24:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E05E03855DB
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2024 09:24:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724765095; bh=mlaRLi50Q73hPxrq4BC4jAox1VG2Wcfxt3nEza0Ox5Q=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=MMes44JtjcObtN3G9r8v3AAIStc2oa7XbSXGSrQMWp82mk5VrKVdDIM5Sm4TjyIow
	 Pmj8nzSEvcSHHkSK/SNDWQ3YYOs3Obxr5XKnG3Jar/vMY2dRU0m2LIkN2qUKYDR4Ad
	 NZ/m0h9RUrxnH+7G7jlaUIl0ni0OdTvEBakCLGrt587EmErNS+8KgCAI2EzjOMA/Rc
	 /XUI0knF417kh195Sk5bDtYbo/eU5sQdDdoT7pcYKQkk+5I5yOiMVmRE2Xy2eloJgv
	 RIy57xIpRR/0whPq6GvPtkI5bmrplaZFaL1M+IbluaYqyJKa/K7y8fk3pGzOo1putA
	 wHVvZXe1s/NHA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0693F383314
	for <usrp-users@lists.ettus.com>; Tue, 27 Aug 2024 09:24:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724765052; bh=IVXPBGJ4EbcOBFJ31YDIMYbpv5aA9Y/9h0mvHUn4PW4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=BKycGGEVhaAy2h06jAyUYrhR9DxXdCeKzy841zXMCPmVsSO6y4hp23s638lmX0dGN
	 GnTalU+e8GT80VyuEXFVlNbHemqqdIVtIVZFOIoVhu8/jtp6SKxnuj2V0e9p1HzW36
	 Rq9/n8z6YB42racaLJsma3ITxLtd223NVdu3AcWGkY1/ciBWUN81Yl1dZv6J8wUFWv
	 pClo6MyTNoV2hVy9CjnxT0dnggYDtYowGDG2Btgx6eMZ8d65ThoNCiBgfXMJHFc+sY
	 w0aCqcobV6CnMsfy4rszKj7pr6vqeEj+bp6utGL0FidgxSi4mNV+yysb/Y78N2WYT6
	 AvX0b9J+ZqnDg==
Date: Tue, 27 Aug 2024 13:24:12 +0000
To: usrp-users@lists.ettus.com
Message-ID: <jLydidFkSinWpDD1Bf1E2bizPFyaZzCWNfYbSHtcKk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 2e4f73e0-30b0-4951-b81f-afc09a65a3cb@gmail.com
MIME-Version: 1.0
Message-ID-Hash: GPX63HSMACIRVNBP73K3NNPNLV3S64ST
X-Message-ID-Hash: GPX63HSMACIRVNBP73K3NNPNLV3S64ST
X-MailFrom: mhosein_attar@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why does the self-calibration utility not work?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GPX63HSMACIRVNBP73K3NNPNLV3S64ST/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Hossein  via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mhosein_attar@yahoo.com
Content-Type: multipart/mixed; boundary="===============4558842685151156427=="

This is a multi-part message in MIME format.

--===============4558842685151156427==
Content-Type: multipart/alternative;
 boundary="b1_jLydidFkSinWpDD1Bf1E2bizPFyaZzCWNfYbSHtcKk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_jLydidFkSinWpDD1Bf1E2bizPFyaZzCWNfYbSHtcKk
Content-Type: text/plain; charset=us-ascii

Yes, there are 6 calibration files (.cal) under \~/.local/share/uhd/cal for both daughterboards (tx_dc, tx_iq, and rx_iq) with serial No. of daughterboards in the file names.

Thanks for your interest!

--b1_jLydidFkSinWpDD1Bf1E2bizPFyaZzCWNfYbSHtcKk
Content-Type: text/html; charset=us-ascii

<p>Yes, there are 6 calibration files (.cal) under ~/.local/share/uhd/cal for both daughterboards (tx_dc, tx_iq, and rx_iq) with serial No. of daughterboards in the file names.</p><p>Thanks for your interest!</p>


--b1_jLydidFkSinWpDD1Bf1E2bizPFyaZzCWNfYbSHtcKk--

--===============4558842685151156427==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4558842685151156427==--
