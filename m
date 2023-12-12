Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA6580F3B5
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 17:56:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4C8FA385487
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 11:56:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702400183; bh=JDAqxUaf/cAkD0a40FQOzP0pmI1bvnnTLm/Hwevpk8E=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=pxjig46gKb00g9atxnOT7FgSa2ib6uowtaI0FQc2MFUTLJptx3vg13ebDtXn9wDn6
	 tHn9JH5NHW+xdI/UD8seZ9xRMqzU9yjIP2gkZZh0FxDiIsVdNVBUEp6m7xZiBFhGYh
	 TGZWhuaM7IknjN1rsQSodeUVdu+4nG+xSdh1n9NWpSZhToH9nndHyeM3byWSWjy5Tl
	 nDNUYRePpne9ttCVdurX4D6ma/XE2pqtWBlNYw9g/9E6MYZpr3aMcnXoVpkQYXwmkW
	 rDeQxRzWPlLOJyL7oGmKCvOOEUR2SGjPjAwu4p9NvYIF36bTE2irNXfiP0VeXYwprL
	 sbAYFAZvc3nWg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 05F02384EDE
	for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 11:55:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702400130; bh=TdNFTiAx/czzwRc1mCSzP8lJZVojKH+e+DlLkiSOlBg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=nniLETwlGJ7kf4Bwk8CRraJWbLBVPd4/t5kEk+y5jZNFWg8IFPdQ7+ZTIMktfYVyu
	 MwNJg/x1RgY2kDSCMs79qP6WDMw1jPzC9nnyX4rvMfsfwO+e7Q+4Sf7Z82SL6qEP65
	 OmQI0w8iWBVx96mo/qkdtOQr8F6GwhWfg5enWL6k7VxVAD6RPTgFoMl+9V7iOoFEXy
	 5avfRhwyKB5LHfgg3wRJRFgB3K+mFrNYpLPwq9tYKvHboHAwx5sxwLW62v/pLFWoAH
	 YxctTrwF6SE+yGAqdfDSVoZbwHgSdL+UNTgoqxBx2n54xlEFd716vNlVApgnSrxvDp
	 /IDi+7Aecch3A==
Date: Tue, 12 Dec 2023 16:55:30 +0000
To: usrp-users@lists.ettus.com
From: mamuki92@gmail.com
Message-ID: <d5wLWbtyVjlMPaXu8gg1CdxcANAH6cK6ipECboGVS10@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTQX1GaYou93Ea_zeFn54+HMFvvM=aJUKMu3+0dgNpjsaw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: GS3RWFNIFRJHINSZZOJW6AKZFIRFXFFH
X-Message-ID-Hash: GS3RWFNIFRJHINSZZOJW6AKZFIRFXFFH
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Read user registers with RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GS3RWFNIFRJHINSZZOJW6AKZFIRFXFFH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6401497672432710628=="

This is a multi-part message in MIME format.

--===============6401497672432710628==
Content-Type: multipart/alternative;
 boundary="b1_d5wLWbtyVjlMPaXu8gg1CdxcANAH6cK6ipECboGVS10"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_d5wLWbtyVjlMPaXu8gg1CdxcANAH6cK6ipECboGVS10
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Rob,

Thanks for your answer.

I=E2=80=99m not 100% sure but what I think is that the get_int_property f=
unction in python/gnuradio calls the peek function in c++/UHD as I have t=
o write that on my block controller:

\
`register_property(&_test_reg,=C2=A0`[`this`](https://lists.ettus.com/emp=
athy/thread/63G6RSRBYHD666IP2PG6OOFSZC47ZQX6)`=C2=A0{=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 `\
`int test_reg =3D this->regs().peek32(REG_TEST_ADDR);`\
`this->_test_reg.set(test_reg);=C2=A0 =C2=A0 =C2=A0 =C2=A0 })`

But as you said, probably do it through the get_int_property does not upd=
ate the value.

I will try the workaround you suggest and see.

Kind regards,

Maria

--b1_d5wLWbtyVjlMPaXu8gg1CdxcANAH6cK6ipECboGVS10
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Rob,</p><p>Thanks for your answer.</p><p>I=E2=80=99m not 100% sure =
but what I think is that the get_int_property function in python/gnuradio=
 calls the peek function in c++/UHD as I have to write that on my block c=
ontroller:</p><p><br><code>register_property(&amp;_test_reg,&nbsp;</code>=
<a href=3D"https://lists.ettus.com/empathy/thread/63G6RSRBYHD666IP2PG6OOF=
SZC47ZQX6"><code>this</code></a><code>&nbsp;{&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; <br>int test_reg =3D this-&gt;regs().peek32(REG_TEST_ADDR);=
<br>this-&gt;_test_reg.set(test_reg);&nbsp; &nbsp; &nbsp; &nbsp; })</code=
><br><br></p><p>But as you said, probably do it through the get_int_prope=
rty does not update the value.</p><p>I will try the workaround you sugges=
t and see.</p><p>Kind regards,</p><p>Maria</p>


--b1_d5wLWbtyVjlMPaXu8gg1CdxcANAH6cK6ipECboGVS10--

--===============6401497672432710628==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6401497672432710628==--
