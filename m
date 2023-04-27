Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCB16F0879
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 17:37:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C86A13845C0
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 11:37:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682609850; bh=EEMfg4FgAYorTwTe0oqNvwntrFQ0UdhMaRcBQ3xcnGo=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=HWqddpRDwKI+lDyiZoTlQngDfZ3RppNDppln9MjgSkXRHtMzIVhm8OFKvwl1MwJKa
	 9n1lTVryhZjJfTxZd4nZWYOwOBIEhluTFfL0Jivlan1mwZLscSA/W4pRoncfK6AAxM
	 YJTW1EuF2GPyw3Y2vrYMlMgo2RZItHPVQRuePNdpSSyv8AIqtz8nT890BczbBEu/ll
	 mop0Nnd+cAF1fgtFgD4OFBm8xk3zmPC3JQt/XC5mt7+p48RqjcGfsvkYuikO0uapN8
	 rNORp6lgE3QyW0VJyNkS7iJjN2dYi5mAlFBE0CCWnRdLKU6qxuarYUBghFQC9Gcky1
	 8/TtD4Vt8huHQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 664AC3841D8
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 11:36:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682609811; bh=BdE7NVLe0ffpDJ50zyEQPPZ1L8W5LINctqxY4Kp8mok=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=xgvr6RQJ/1N7JGYjhIO6Yn/s77x5bL0eCLaZMoPlJrfGhixgKBspPuFgn2/HusjHc
	 aBqkJgyuLI7uNlh3b0ZWFGXBpu26s3aLVdnPbTWXJ+SvDOzDV5cp+PdivbBdScK/6P
	 JCcWjZObu4AEQgMgB5sNi/gmoikk78XaLKhauDhdxmShvORIuzb41V94vMYa4kPkg1
	 wh4Q3QALtb08QjBIENpA5feeHU1+h0fQND7CIwtJp1sJTT5ToEepkTDAUiUR8kr9HM
	 ICwx51uVlkZ6nQTEFqTg/FhNMGX4MkjBESFjMTL4hTMvmxGAgcuoR8BdNmOwqsY7gq
	 EM4PZ8K3rUvmg==
Date: Thu, 27 Apr 2023 15:36:51 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <KuusbYeOPC0uF3pwfDrygj9wwhVFmS6jDsRuNn30lr0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 8027c8e1-62a3-04bf-69a1-914037dcaf6c@gmail.com
MIME-Version: 1.0
Message-ID-Hash: CI3OW3I6QHJICXP4AZXFYFJY7K2CKJSV
X-Message-ID-Hash: CI3OW3I6QHJICXP4AZXFYFJY7K2CKJSV
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus N321 SFP streaming issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CI3OW3I6QHJICXP4AZXFYFJY7K2CKJSV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4017990537666718040=="

This is a multi-part message in MIME format.

--===============4017990537666718040==
Content-Type: multipart/alternative;
 boundary="b1_KuusbYeOPC0uF3pwfDrygj9wwhVFmS6jDsRuNn30lr0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_KuusbYeOPC0uF3pwfDrygj9wwhVFmS6jDsRuNn30lr0
Content-Type: text/plain; charset=us-ascii

I still get the same error after using "addr=192.168.10.2,mgmt_addr=192.168.1.151"

--b1_KuusbYeOPC0uF3pwfDrygj9wwhVFmS6jDsRuNn30lr0
Content-Type: text/html; charset=us-ascii

<p>I still get the same error after using "addr=192.168.10.2,mgmt_addr=192.168.1.151"</p>


--b1_KuusbYeOPC0uF3pwfDrygj9wwhVFmS6jDsRuNn30lr0--

--===============4017990537666718040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4017990537666718040==--
