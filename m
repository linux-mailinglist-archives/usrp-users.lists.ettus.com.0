Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A96BB810EBE
	for <lists+usrp-users@lfdr.de>; Wed, 13 Dec 2023 11:44:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F062C38508B
	for <lists+usrp-users@lfdr.de>; Wed, 13 Dec 2023 05:44:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702464261; bh=NC48svhv/2j5nXwZhc2oJdvRl4i1gg/s1lDlb4mSSBA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=J+rSD4nWJUfZexylRmve5ySed9BwwGzh58xJh2UfjjVa+B7SKzaDZt6aTx1658zGf
	 dIgp7zyhf64IJyiYTkePxHgus1vB05rQD6AXkdiLgszPUJHxZchhzi4Xj9vuBVGZAM
	 +YNz1YWEfLsO0D88o4n+s48xMKaIdlut01e76BebxppZ/xZBenfx/p21+bumMq3fuw
	 G5aMl82S5pTcvKdVPUKVLee7L0YzGpblYGQT7Mf8GKLeTkiP1So7S4wzjdVMU0VxhD
	 DvTD9zZC/3WmblxtT+o9uoa+JwmeWHR2MI1TkAXBEfxTv6Pub3r6heKDr3IwB6L2E9
	 jUvQewBD0RYdQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 56917384E43
	for <usrp-users@lists.ettus.com>; Wed, 13 Dec 2023 05:43:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702464209; bh=/72A82sCdlAxCs9BTVNFJI0Jn6oPUa2RjjKbO/w+ogk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=MqC9W2XOwe+kY4yJKXtzdYwPhc0zmfZ/pFupApnCu1WkxP2JtWPNEKMJ4FIhkUe5z
	 puFVc1Vaw4LApCbGtq3mXrBcGQUG4zBfyARRWZ7q92S6QZd0E5MxkazOpx/AhomRGR
	 61mEQE1VXkZevJUcPqhT1EHOXbSqGzdJTaoUbsYtZ/XIXge9tnutY6vGgRLIa6acbb
	 Zp3TsJvDQwJVKTlbs+hmvJvS7t1u8ba55wcoe9WZd5pLiOEJ1GlVxonxNIDAlS+QnI
	 c9127kBW1FGNj9QxfLHlzQbXAh5fUuPG14qIm9bXMHfh90uQ0Qcg7WEcDvKr/wnH9g
	 JkzeA+7gb83+g==
Date: Wed, 13 Dec 2023 10:43:29 +0000
To: usrp-users@lists.ettus.com
From: mamuki92@gmail.com
Message-ID: <xODq8MoWmgt3YF3OXpYjXXKt7LdOnF7ekvbthlVJZY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTTFF0xMaCZAQY6UwQ88mhgUCR3D-uePYnpnvhBuwSwOYA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 7TALKVG7SR6Z4UTSA7PEUADSZ3BW53JA
X-Message-ID-Hash: 7TALKVG7SR6Z4UTSA7PEUADSZ3BW53JA
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Read user registers with RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7TALKVG7SR6Z4UTSA7PEUADSZ3BW53JA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1890106332273531700=="

This is a multi-part message in MIME format.

--===============1890106332273531700==
Content-Type: multipart/alternative;
 boundary="b1_xODq8MoWmgt3YF3OXpYjXXKt7LdOnF7ekvbthlVJZY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_xODq8MoWmgt3YF3OXpYjXXKt7LdOnF7ekvbthlVJZY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Rob,

Thanks for the clarification. I tried to set the test_reg value by callin=
g the set_int_property with a random value from the python script but I g=
ot this error:

`Traceback (most recent call last):`

`  File "registro_gain.py", line 360, in <module>`

`    main()`

`  File "registro_gain.py", line 338, in main`

`    tb.start()`

`  File "/usr/local/lib/python3/dist-packages/gnuradio/gr/top_block.py", =
line 111, in start`

`    top_block_start_unlocked(self._impl, max_noutput_items)`

`  File "/usr/local/lib/python3/dist-packages/gnuradio/gr/runtime_swig.py=
", line 4832, in top_block_start_unlocked`

`    return _runtime_swig.top_block_start_unlocked(r, max_noutput_items)`

`` RuntimeError: RuntimeError: AccessError: Attempting to write to proper=
ty `test_reg' without access privileges! ``

I thought that occurred because I hadn=E2=80=99t defined the set_int_prop=
erty function inside my block controller. So I included the method and no=
w I have the following error:

`[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Runtim=
eError: Attempting to double-register property: test_reg[USER:0]`

I don=E2=80=99t know any other mechanism to change that signal in GNURadi=
o so I will try to translate my graph to use the uhd API directly

Kind Regards,

Maria

--b1_xODq8MoWmgt3YF3OXpYjXXKt7LdOnF7ekvbthlVJZY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Rob,</p><p>Thanks for the clarification. I tried to set the test_reg =
value by calling the set_int_property with a random value from the python s=
cript but I got this error:</p><p><code>Traceback (most recent call last):<=
/code></p><p><code>  File "registro_gain.py", line 360, in &lt;module&gt;</=
code></p><p><code>    main()</code></p><p><code>  File "registro_gain.py", =
line 338, in main</code></p><p><code>    tb.start()</code></p><p><code>  Fi=
le "/usr/local/lib/python3/dist-packages/gnuradio/gr/top_block.py", line 11=
1, in start</code></p><p><code>    top_block_start_unlocked(self._impl, max=
_noutput_items)</code></p><p><code>  File "/usr/local/lib/python3/dist-pack=
ages/gnuradio/gr/runtime_swig.py", line 4832, in top_block_start_unlocked</=
code></p><p><code>    return _runtime_swig.top_block_start_unlocked(r, max_=
noutput_items)</code></p><p><code>RuntimeError: RuntimeError: AccessError: =
Attempting to write to property `test_reg' without access privileges!</code=
></p><p>I thought that occurred because I hadn=E2=80=99t defined the set_in=
t_property function inside my block controller. So I included the method an=
d now I have the following error:</p><p><code>[ERROR] [RFNOC::GRAPH] Caught=
 exception while initializing graph: RuntimeError: Attempting to double-reg=
ister property: test_reg[USER:0]</code></p><p>I don=E2=80=99t know any othe=
r mechanism to change that signal in GNURadio so I will try to translate my=
 graph to use the uhd API directly</p><p><br></p><p>Kind Regards,</p><p>Mar=
ia</p><p><br></p>

--b1_xODq8MoWmgt3YF3OXpYjXXKt7LdOnF7ekvbthlVJZY--

--===============1890106332273531700==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1890106332273531700==--
