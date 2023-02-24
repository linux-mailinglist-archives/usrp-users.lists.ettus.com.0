Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 003036A1F4E
	for <lists+usrp-users@lfdr.de>; Fri, 24 Feb 2023 17:05:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EC393383C28
	for <lists+usrp-users@lfdr.de>; Fri, 24 Feb 2023 11:05:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677254757; bh=vc5SJDaxMYd68InKa90oVcYK0v/EkH4m1IpJBO6/hdE=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=gh4Ussvs7IU4uZHdSrX9kkCnHg820pOYZKklkakzWt7V0UNm2BctkNU1j4fGEf4aL
	 9Vl9QbyGxICqdguAR13zw0teSEuwvf5WbUiP+HO3WROuJrDON6TkMLOnQycXNGZD17
	 jzuVOAcw8sQxrQIcIiz986lDRd8/1p8Ii6TwXFKa//XUGsf9Bh0yw49jw+8nmOlo5X
	 1/YJ/pTCRPb5wuPyYYzZrCrzK1KB2N3wS1eN0bmoJccUgXr1qw4JTgrK3QoTE0+JKn
	 ZzELJuLZ3cv++Pmsik2Sw5hp7J87xf+c83492jhthk6MFbBSAi8wXYP4EnATMLpRbA
	 QzOQpP7t36UXA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7DEA9383C28
	for <usrp-users@lists.ettus.com>; Fri, 24 Feb 2023 11:05:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677254752; bh=gm+UC/8WG6bNUfhq+QZvRDYkq9wShnb/do8b1Kt6+sw=;
	h=Date:To:From:Subject:From;
	b=Sal+vXLB/PK+Yv2RiYxZPUpAOaqjmysS2VpJ7SyeGM3wHPpC3LShIDfuYpWx32vgN
	 vhYO3Q9PNFrHgNXo8lADpWU0wNzZMNa7Z6Ol8lA58sZg9gYsoUQHmJvMDcj0dmD016
	 xtYA4oX+4Znf/rHeLg05zIbwl6/nbVxVSvgSo7kLx4vNO9Sniuder7i6ln4+omcc93
	 eYccqZKse9LYYVDLXOpBAmeIklTYCJZppiPTeuzKSrI8zHGq0B50a8Mm1gBv2sG8fu
	 ZFA+JXU+l9otbKYGxXHEqAkDqhVLhvorBarmaa4Wkyk5DElNB+gj36ztU+4GA9Memp
	 vGphmmy6cLpPQ==
Date: Fri, 24 Feb 2023 16:05:52 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <CjcUDMlFhJtAsV42npogDjBbyYWiqrUy7kZzMXYhkG0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 6MQPBK7TOBMOSLERMTM6BOJWH7JFWKKE
X-Message-ID-Hash: 6MQPBK7TOBMOSLERMTM6BOJWH7JFWKKE
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] using rfnoc_graph and usrp
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6MQPBK7TOBMOSLERMTM6BOJWH7JFWKKE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3356083209627788752=="

This is a multi-part message in MIME format.

--===============3356083209627788752==
Content-Type: multipart/alternative;
 boundary="b1_CjcUDMlFhJtAsV42npogDjBbyYWiqrUy7kZzMXYhkG0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_CjcUDMlFhJtAsV42npogDjBbyYWiqrUy7kZzMXYhkG0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am currently getting the following error, but I am lost as to how to wo=
rk around it=E2=80=A6

`[ERROR] [RPC] Someone tried to claim this device again (From: 192.168.10=
.1)`

`[WARNING] [MPM.RPCServer] Someone tried to claim this device again (From=
: 192.168.10.1)`

It appears the problem comes from instantiating an object uhd::rfnoc_grap=
h, then, when this object already exists, I try to create a uhd::usrp::mu=
lti_usrp object. For example=E2=80=A6

`auto graph =3D uhd::rfnoc::rfnoc_graph::make(args);`

`uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make("addr0=3D=
192.168.10.2");`

It appears that trying to create both causes the error above to happen. H=
owever, I want to be able to create an rfnoc_graph and use multi_usrp to =
get and set the TOD on the ettus N321. How exactly can I work around this=
? I saw the rfnoc_graph has a function called =E2=80=9Csynchronize_device=
s()=E2=80=9D, however, it does not seem this function can get and set the=
 TOD as I need.

Thanks,

Joe

--b1_CjcUDMlFhJtAsV42npogDjBbyYWiqrUy7kZzMXYhkG0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I am currently getting the following error, but I am lost a=
s to how to work around it=E2=80=A6</p><p><code>[ERROR] [RPC] Someone tried=
 to claim this device again (From: 192.168.10.1)</code></p><p><code>[WARNIN=
G] [MPM.RPCServer] Someone tried to claim this device again (From: 192.168.=
10.1)</code></p><p>It appears the problem comes from instantiating an objec=
t uhd::rfnoc_graph, then, when this object already exists, I try to create =
a uhd::usrp::multi_usrp object. For example=E2=80=A6</p><p><code>auto graph=
 =3D uhd::rfnoc::rfnoc_graph::make(args);</code></p><p><code>uhd::usrp::mul=
ti_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make("addr0=3D192.168.10.2");=
</code></p><p>It appears that trying to create both causes the error above =
to happen. However, I want to be able to create an rfnoc_graph and use mult=
i_usrp to get and set the TOD on the ettus N321. How exactly can I work aro=
und this? I saw the rfnoc_graph has a function called =E2=80=9Csynchronize_=
devices()=E2=80=9D, however, it does not seem this function can get and set=
 the TOD as I need.</p><p>Thanks,</p><p>Joe</p>

--b1_CjcUDMlFhJtAsV42npogDjBbyYWiqrUy7kZzMXYhkG0--

--===============3356083209627788752==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3356083209627788752==--
