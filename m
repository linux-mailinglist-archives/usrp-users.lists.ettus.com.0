Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3FD85116C
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 11:49:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F127F384886
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 05:49:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707734983; bh=16582UQYdST/tKOZxM10WnzhGVF8YJZWiPHzmDPF16s=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Mu8DUNVYIMaaTaY2PM05pWXPvHGyh+XRHZBfliQ4HPw/aMb9NA/cYMOsrYEYHoOjE
	 mmfDwGkgwEMC2eeuymY25VIHH+3TwjUJFI9x2LeWR91vKJIku7zOHGhnAVh1OvPcIl
	 5i+urrzKdHVnr26NpKGkrz8iOkqZq7QW8SfGiSPbiRUIVbMYzUTcPLCdgUn+2a/HcB
	 LtIuJtPPbyly1LYzYI3HEx1zfkVKQVFeHyEgsp9A/dpgUBmp1P6nQuqUYIizlHAmkb
	 3ZbVAAf1xkddg5+V3/xBXzwXNesIkb0D3Lz/X3iShH9n2inqm1AviaNL6Fed3hNMke
	 sRBYemy2Vum5A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 333A2383B03
	for <usrp-users@lists.ettus.com>; Mon, 12 Feb 2024 05:49:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707734968; bh=JTqTrwPrIgh+jRxYhWWkgNI/bfjuy+JW0Vi7UaeYQzY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=AabklLorCFKcqAxTCZ28te/32mxIDDdgG9AQJabb83DbNB8XNbC0vAtLdt3QLwIzt
	 GpocCqy2scVtdmL5CqhLTOoY82TFgH1dUpcYjOdRnscj6c7plphqcc+SHU2AKvOq1D
	 azkIEcSJN1bM10FTwy3iehnnliuHVky3mDGuESxjnY1NZ5vNyoZt0ygEqEm8oZbmvU
	 ciSR35iNI7rHjDnpmODmMAIfXwr9hD94QWO+tNPF3rV0/vCvC5BXzUuOjj1KVeo13k
	 9wV+QPNvvcYB9Ge6ztBprJdtDznz2vp1PeeLqPzuLkR285J/k9PhUPeRWq2kb5WDmf
	 kXK2LrpOONDdA==
Date: Mon, 12 Feb 2024 10:49:28 +0000
To: usrp-users@lists.ettus.com
From: speik@hs-bremen.de
Message-ID: <xR59jk3qywTVEmxURzeOpkcOn0g5dgwdNWDWWxER1Q@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: P6yvVNjmUeSK6Lzm17nnokGxeTv6acaF5nOAS6Ec3s@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: GUP3C6Q4MQFOX3QCPLVQLUA3JNIGKCFQ
X-Message-ID-Hash: GUP3C6Q4MQFOX3QCPLVQLUA3JNIGKCFQ
X-MailFrom: speik@hs-bremen.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310/UBX Tx tuning issue introduced UHD 4.4?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GUP3C6Q4MQFOX3QCPLVQLUA3JNIGKCFQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2712245442211798673=="

This is a multi-part message in MIME format.

--===============2712245442211798673==
Content-Type: multipart/alternative;
 boundary="b1_xR59jk3qywTVEmxURzeOpkcOn0g5dgwdNWDWWxER1Q"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_xR59jk3qywTVEmxURzeOpkcOn0g5dgwdNWDWWxER1Q
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Problem is solved. I compiled the latest 4.6 and the issue is gone.=20

```
Setting TX Freq: 915.000000 MHz...
Setting TX LO Offset: 0.000000 MHz...
Actual TX Freq: 915.000000 MHz...

Thanks=20
S=C3=B6ren=20
```

--b1_xR59jk3qywTVEmxURzeOpkcOn0g5dgwdNWDWWxER1Q
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Problem is solved. I compiled the latest 4.6 and the issue is gone. </=
p><pre><code>Setting TX Freq: 915.000000 MHz...
Setting TX LO Offset: 0.000000 MHz...
Actual TX Freq: 915.000000 MHz...

Thanks=20
S=C3=B6ren=20
<br></code></pre>


--b1_xR59jk3qywTVEmxURzeOpkcOn0g5dgwdNWDWWxER1Q--

--===============2712245442211798673==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2712245442211798673==--
