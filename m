Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A8884733F
	for <lists+usrp-users@lfdr.de>; Fri,  2 Feb 2024 16:34:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6D20D384BA6
	for <lists+usrp-users@lfdr.de>; Fri,  2 Feb 2024 10:34:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706888049; bh=eFHAPcF40UNAAkHjNphWPBC0x1pv1WE+ZxoaFQdK1tI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=upLEWi1JEZ2B050zXE4Q4MY551LGTWdae+P2RDeb0gi4YMvntvS/tZuemAolIoY0r
	 2KCfbTPmMUZvkMEWuhmCJsXBg/IjG6Y2UdaUV6GWHvUOBUaaLd/6acW1Sli4/tNg5N
	 5BIOr/DLrZeeiwiQtgij5AK1mOyZVs1oGtc2qzmaQQj4WuxQo8Z6EYqIVf+OkInSlb
	 xt+zdpWia3ww7hW9SGmH1L6u4WpoHwrdO0Niqu1m9S3YBoxtiDQujyLWrrrWZIMamX
	 mq2Cn70o149fRU5CZ2JgKFU27pZSQeEKFuEjN5lrbMAo0U5x/jFqUEah6aPhwOgDny
	 I7riys+TzwxnQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CF4C9384440
	for <usrp-users@lists.ettus.com>; Fri,  2 Feb 2024 10:33:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706887991; bh=4iCXZavtbivw6OR30v2Y3HJCEFlVRscBpn+1bpnbwG0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=gIGNoMYL7r4KSFJoJilnd4M4e4TSM6XVbp5nTCtJW7uWqfxQ5B9G9dnQBSo7i0qQ8
	 TizqcV+gXZFr/CwH882f4juBxUkIHqiFpn/fAEamE4btjwHjwjaa0T+Ewf7EBYw5JA
	 nzr/yN1WWuU0bmWr10Qya3vTM+mu1LnoeEK9y2ODbdqxZTGfOppz0KcLNC7oXvjWDf
	 DUy97OoOhyIaklgqMH08Xta9HMvGgjctCD9nESPD+TLVeT6wzC4m7+VPEzksBNuYWV
	 9fpUg77q+wtbpCwNSxMmvB7f1e51K6lH1sj6bTZXxmO8iFWCIUlLWBI5C5xxgUD/JK
	 jWVv6xMAiicLQ==
Date: Fri, 2 Feb 2024 15:33:11 +0000
To: usrp-users@lists.ettus.com
From: a.lapini@ifac.cnr.it
Message-ID: <gDl51suQwnMbsbrRcQHMmd2UQ8OtkbgQsdMTWS3DE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CABfZwcf5z26vaFTBVHDxh9gBTjvh28Y=Rg4oeg49n2yN0AqC7A@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: GYUYH6GAFTSIWO7K6N2DO32WBQFXB26X
X-Message-ID-Hash: GYUYH6GAFTSIWO7K6N2DO32WBQFXB26X
X-MailFrom: a.lapini@ifac.cnr.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC Python API for timed GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GYUYH6GAFTSIWO7K6N2DO32WBQFXB26X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3395782255508013352=="

This is a multi-part message in MIME format.

--===============3395782255508013352==
Content-Type: multipart/alternative;
 boundary="b1_gDl51suQwnMbsbrRcQHMmd2UQ8OtkbgQsdMTWS3DE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_gDl51suQwnMbsbrRcQHMmd2UQ8OtkbgQsdMTWS3DE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Mikio,

I read it too. I am not a Python master, but it does not seem to be the c=
ase. For instance, the following code

```
import uhd=20
from uhd import rfnoc
graph =3D rfnoc.RfnocGraph("addr=3D{},master_clock_rate=3D{}".format("192=
.168.10.2", int(5e8)))=20
radio_noc_block =3D graph.get_block("0/Radio#0")=20
radio_control_block =3D rfnoc.RadioControl(radio_noc_block)

print( hasattr(radio_noc_block, "set_command_time") )
print( hasattr(radio_control_block, "set_command_time") )
```

prints =E2=80=9CFalse=E2=80=9D for both blocks, so I conclude that there =
is no such method.

Any idea?

Best Regards,

Alessandro

--b1_gDl51suQwnMbsbrRcQHMmd2UQ8OtkbgQsdMTWS3DE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Mikio,</p><p>I read it too. I am not a Python master, but it does n=
ot seem to be the case. For instance, the following code</p><pre><code>im=
port uhd=20
from uhd import rfnoc
graph =3D rfnoc.RfnocGraph("addr=3D{},master_clock_rate=3D{}".format("192=
.168.10.2", int(5e8)))=20
radio_noc_block =3D graph.get_block("0/Radio#0")=20
radio_control_block =3D rfnoc.RadioControl(radio_noc_block)

print( hasattr(radio_noc_block, "set_command_time") )
print( hasattr(radio_control_block, "set_command_time") )
<br></code></pre><p>prints =E2=80=9CFalse=E2=80=9D for both blocks, so I =
conclude that there is no such method.</p><p>Any idea?</p><p>Best Regards=
,</p><p>Alessandro</p>


--b1_gDl51suQwnMbsbrRcQHMmd2UQ8OtkbgQsdMTWS3DE--

--===============3395782255508013352==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3395782255508013352==--
