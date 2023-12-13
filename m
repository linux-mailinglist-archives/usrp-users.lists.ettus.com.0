Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D22DC8118D0
	for <lists+usrp-users@lfdr.de>; Wed, 13 Dec 2023 17:12:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CB68E38416F
	for <lists+usrp-users@lfdr.de>; Wed, 13 Dec 2023 11:12:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702483927; bh=9ORj16SgN5wCr/PDz/Rjz0NsaxDrN1S8OCmr7HbApdw=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=wrPJ6SzBEDljvUb5PwDXcX8StFcEPLkMjADrbWGM6+MIV45YjF4rdjSGO2IBE+C1u
	 Ht09mZikQw/UAceaBbTQSNOzR5nA1+rJKMhoAfgFrw6GjREsXVaXvmOvAeb2FK3CPJ
	 /j0DWe2Rgz/Hi9trWwIl3+MZgYaS9xNo+k22DbHMb2kAbF0em7mHXMkmPork8Xe7Qo
	 xMu2f/D/Qukwzj0JSD1yLOhX42S8STW1qr3EwnwO1IS1C8zzpnYZuJnJe6lc4mMNia
	 3Mxk31Jv+G32axYJtgRzMruJ5EcrU244c2402jcQmjBQRkXOoX5mF8WfVpn8CYcDK6
	 U6YAqTGbjGpqw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4F718383E11
	for <usrp-users@lists.ettus.com>; Wed, 13 Dec 2023 11:11:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702483916; bh=Meb1Qtgh6aSEyfvPsbVItv2oghVD9mPIDOPtNxiYk8M=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=rC8WbBLMRIcJZZk6H6rfz/a6ddXL2h4JGl3tpLtCag31eUp9VX/N1exjf/IFq+Cd/
	 JVFOx/OUrgAv8SzhNoR0DF/LTimjVL18h5UW2COMhMzoDZgXhAogWEH+qJ75fkIn9P
	 cln+uGXXhmVjh4TJ7zbrGw8gBfcw7mWhDUoXrd0WCdH3uIrJb1GIWCIEo8QFQaTLso
	 8eYJSqZf03Hw2NBMpY9Uw8RhqPV2dCGYIyBTnmR5m3Lx1Wpb48p09HFoM6YnaQMnnf
	 MjezHig8o9XD8JyRFfbyM6xGYv67tqgVVxhuxJCOZcl48M/uOsjjhBK8roh+aq47yR
	 qRpE2FHb4ChfQ==
Date: Wed, 13 Dec 2023 16:11:56 +0000
To: usrp-users@lists.ettus.com
From: mamuki92@gmail.com
Message-ID: <zgmDAEz5D6J2us3THA4BvjbGwTc33wXw34506SGGPE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTRJFTobtqP6DnBmfbBkKMRfY4zQ-5AaiHepJuHnp2r1WQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: QMXO2XMVX2T2LZQDUBF2QF4H5QSRAVLT
X-Message-ID-Hash: QMXO2XMVX2T2LZQDUBF2QF4H5QSRAVLT
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Read user registers with RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QMXO2XMVX2T2LZQDUBF2QF4H5QSRAVLT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6302387599974959166=="

This is a multi-part message in MIME format.

--===============6302387599974959166==
Content-Type: multipart/alternative;
 boundary="b1_zgmDAEz5D6J2us3THA4BvjbGwTc33wXw34506SGGPE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_zgmDAEz5D6J2us3THA4BvjbGwTc33wXw34506SGGPE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Rob,

Do you mean instead of doing it across the register_property as the set_i=
nt_property does, directly call the peek function?

Now I have this in the controller:

`register_property(&_test_reg, [this]() {`

`            int test_reg =3D this->regs().peek32(REG_TEST_ADDR);`

`            this->_test_reg.set(test_reg);`

`        });`

Do you suggest changing it to something like this? (taken from uhd/host/l=
ib/rfnoc/ddc_block_control.cpp)

\
`double get_freq(const size_t chan) const`

`    {`

`        return _freq.at(chan).get();`

`    }`

=E2=80=9C_freq=E2=80=9D seems to be also a property_t class as =E2=80=9C_=
test_reg=E2=80=9D is. What=E2=80=99s the difference of doing it that way?

--b1_zgmDAEz5D6J2us3THA4BvjbGwTc33wXw34506SGGPE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Rob,</p><p>Do you mean instead of doing it across the register_prop=
erty as the set_int_property does, directly call the peek function?</p><p=
>Now I have this in the controller:<br><br></p><p><code>register_property=
(&amp;_test_reg, [this]() {</code></p><p><code>            int test_reg =3D=
 this-&gt;regs().peek32(REG_TEST_ADDR);</code></p><p><code>            th=
is-&gt;_test_reg.set(test_reg);</code></p><p><code>        });</code></p>=
<p>Do you suggest changing it to something like this? (taken from uhd/hos=
t/lib/rfnoc/ddc_block_control.cpp)</p><p><br><code>double get_freq(const =
size_t chan) const</code></p><p><code>    {</code></p><p><code>        re=
turn _freq.at(chan).get();</code></p><p><code>    }</code></p><p><br></p>=
<p>=E2=80=9C_freq=E2=80=9D seems to be also a property_t class as =E2=80=9C=
_test_reg=E2=80=9D is. What=E2=80=99s the difference of doing it that way=
?</p>


--b1_zgmDAEz5D6J2us3THA4BvjbGwTc33wXw34506SGGPE--

--===============6302387599974959166==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6302387599974959166==--
