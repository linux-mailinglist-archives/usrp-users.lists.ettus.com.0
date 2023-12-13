Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6E2811A55
	for <lists+usrp-users@lfdr.de>; Wed, 13 Dec 2023 18:02:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5AFC63852B4
	for <lists+usrp-users@lfdr.de>; Wed, 13 Dec 2023 12:02:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702486920; bh=u767latE/1lmgX8NyKFu05IVVWGGBtvYHZ2dWOW3f2w=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=JVsEq7XMeP/AW3tBHV4Z5N2ud7Gao3MlEKDGRfLA3TaxSDUfuYDDH2sksaUIMvHlZ
	 WATMYThz4hsAvfQOcSDESkTC3s8SRZbvEStn9uftcdx23YEDVH5CaRoriMUc2QYk6E
	 p0y0qO+hnaR/uV3tW3rc/1PtoB2SAPscyqwqgNxhcOZTDwwRuUPnsthvwFkzJDRikA
	 Ev2lxDUGKY+WjKA0kdosUOyz5/4DiOV5J/Dcv12qmgVMdyj90cT0mDxA1zG348Q/q2
	 lKDcaNVQjTP2PEGXLzMbJOHosKVpBF4UVQNenai+oXXIaqnZsaeJY2jXbR5sP/n8BC
	 k1WgWTIm28Yow==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A99733853B5
	for <usrp-users@lists.ettus.com>; Wed, 13 Dec 2023 12:01:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702486866; bh=+uwCpMdqtMINph+QpsCkRWdLPW3Gm4GaxkAZlP9k43k=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=TbSTJJs3WuLGSrpCUVrNXqKA46D/Jbm3q0V4KzREEjg8kd4qaTTXAk7i/OW/F1CAq
	 RvQXQRbQFEJkrSzw6y6nXuskakRDi3r7PN8A41aF0gKDnmLF7GbqaiVI5jYgJQ+EHT
	 0hdXFxoPoovu8DDX1+Ftd0KE286gGJHnAKpdalD/vXK7EhiBPP4WZLKHK96LFhZVjU
	 M0AfmLv7mNnLcy7dK7tJ3lNYef5gB6X64M6ex82WGVrOL9alqONYAL8vYYda6Sl7JR
	 SF6yXMtT8is15jn1iNv4Mp4hoB2PHNlfRq5ohCIujcV2twE0pKqzqrbKcpoh3CrUO6
	 r2QaArCBqC2FQ==
Date: Wed, 13 Dec 2023 17:01:06 +0000
To: usrp-users@lists.ettus.com
From: mamuki92@gmail.com
Message-ID: <q8xGwfWEOGD9gtrGJYosRa4MwB0dAPY7rkercc98@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTT214RJSDfPEGrfPRNZeeZxq8rZ=NO1GWXg73_r3ehKaQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 53PQMAQ4OTNHKYTC4PPBUYFXYQR43DLZ
X-Message-ID-Hash: 53PQMAQ4OTNHKYTC4PPBUYFXYQR43DLZ
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Read user registers with RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/53PQMAQ4OTNHKYTC4PPBUYFXYQR43DLZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4782215223121137251=="

This is a multi-part message in MIME format.

--===============4782215223121137251==
Content-Type: multipart/alternative;
 boundary="b1_q8xGwfWEOGD9gtrGJYosRa4MwB0dAPY7rkercc98"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_q8xGwfWEOGD9gtrGJYosRa4MwB0dAPY7rkercc98
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I suspect the register property part is for Gnuradio to call that functio=
n since it sets the result of the peek to the _test_reg property, and tha=
t property is declared as:\
*`property_t<int> _test_reg{"test_reg", REG_TEST_DEFAULT, {res_source_inf=
o::USER}};`*

Then on the gnuradio code part, I use =E2=80=9Ctest_reg=E2=80=9D with the=
 get_int_property:\
\
`callbacks:`

`   set_int_property('user_reg', ${user_reg})`

`   get_int_property('test_reg')`

I get the correct value that way, but just one time.=20

As you said, I think it is better to get it to work first in UHD (as the =
example, but getting the value updated continuously) and then go back to =
gnuradio.=20

I will go back again if I discover something new. Thanks again!

--b1_q8xGwfWEOGD9gtrGJYosRa4MwB0dAPY7rkercc98
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I suspect the register property part is for Gnuradio to call that func=
tion since it sets the result of the peek to the _test_reg property, and =
that property is declared as:<br><em><code>property_t&lt;int&gt; _test_re=
g{"test_reg", REG_TEST_DEFAULT, {res_source_info::USER}};</code></em></p>=
<p>Then on the gnuradio code part, I use =E2=80=9Ctest_reg=E2=80=9D with =
the get_int_property:<br><br><code>callbacks:</code></p><p><code>   set_i=
nt_property('user_reg', ${user_reg})</code></p><p><code>   get_int_proper=
ty('test_reg')</code></p><p>I get the correct value that way, but just on=
e time. </p><p>As you said, I think it is better to get it to work first =
in UHD (as the example, but getting the value updated continuously) and t=
hen go back to gnuradio. </p><p>I will go back again if I discover someth=
ing new. Thanks again!</p>


--b1_q8xGwfWEOGD9gtrGJYosRa4MwB0dAPY7rkercc98--

--===============4782215223121137251==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4782215223121137251==--
