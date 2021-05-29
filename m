Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED96394C9C
	for <lists+usrp-users@lfdr.de>; Sat, 29 May 2021 17:08:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B005C383FA8
	for <lists+usrp-users@lfdr.de>; Sat, 29 May 2021 11:08:32 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 216D5383823
	for <usrp-users@lists.ettus.com>; Sat, 29 May 2021 11:07:39 -0400 (EDT)
Date: Sat, 29 May 2021 15:07:39 +0000
To: usrp-users@lists.ettus.com
From: arjan.feta@unifi.it
Message-ID: <dZH3EC5isgEcK3DuTsyplHUs0vVJdtvUB4B2WyJRI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: FULTHNKIOS54DAOTC2RW5M6AC7I5OTZT
X-Message-ID-Hash: FULTHNKIOS54DAOTC2RW5M6AC7I5OTZT
X-MailFrom: arjan.feta@unifi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD -RFNoC graph construction
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FULTHNKIOS54DAOTC2RW5M6AC7I5OTZT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6691323840669435942=="

This is a multi-part message in MIME format.

--===============6691323840669435942==
Content-Type: multipart/alternative;
 boundary="b1_dZH3EC5isgEcK3DuTsyplHUs0vVJdtvUB4B2WyJRI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_dZH3EC5isgEcK3DuTsyplHUs0vVJdtvUB4B2WyJRI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,
I'm trying to build an RFNoC graph (x300 with a TwinRX radio module):

```
import uhd

graph =3D uhd.rfnoc.RfnocGraph("addr=3D192.168.10.2")

sa =3D uhd.usrp.StreamArgs("fc32", "sc16")

rx_streamer0 =3D graph.create_rx_streamer(1, sa)
rx_streamer1 =3D graph.create_rx_streamer(1, sa)

graph.connect("0/Radio#0", 0, "0/DDC#0", 0, False)
graph.connect("0/Radio#0", 1, "0/DDC#0", 1, False)

graph.connect("0/DDC#0", 0, rx_streamer0, 0)
graph.connect("0/DDC#0", 1,  rx_streamer1, 0)

graph.commit()
```

 after the =E2=80=9C*graph.commit()*=E2=80=9D instruction, it the code co=
mplains with the following error message:

```
   [ERROR] [RFNOC::GRAPH::DETAIL] 0/DDC#0: RfnocError: ResolveError: Atte=
mpting to overwrite property `mtu@INPUT_EDGE:1' with a new value after it=
 was locked!
```

> ```
> Traceback (most recent call last):
> ```

> ```
> =C2=A0 File "script2.py", line 62, in <module>
> ```
>
> ```
> =C2=A0 =C2=A0 graph.commit()
> RuntimeError: RfnocError: ResolveError: Attempting to overwrite propert=
y `mtu@INPUT_EDGE:1' with a new value after it was locked!
> ```

Does anyone have any experience or any hints in creating an rfnoc graph u=
sing the UHD python API?

Best regads,

Arjan Feta

--b1_dZH3EC5isgEcK3DuTsyplHUs0vVJdtvUB4B2WyJRI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi all,
I'm trying to build an RFNoC graph (x300 with a TwinRX radio module):</p>=
<pre class=3D""><code>import uhd

graph =3D uhd.rfnoc.RfnocGraph("addr=3D192.168.10.2")

sa =3D uhd.usrp.StreamArgs("fc32", "sc16")

rx_streamer0 =3D graph.create_rx_streamer(1, sa)
rx_streamer1 =3D graph.create_rx_streamer(1, sa)

graph.connect("0/Radio#0", 0, "0/DDC#0", 0, False)
graph.connect("0/Radio#0", 1, "0/DDC#0", 1, False)

graph.connect("0/DDC#0", 0, rx_streamer0, 0)
graph.connect("0/DDC#0", 1,  rx_streamer1, 0)

graph.commit()
<br></code></pre><p> after the =E2=80=9C<em>graph.commit()</em>=E2=80=9D =
instruction, it the code complains with the following error message:</p><=
pre><code>   [ERROR] [RFNOC::GRAPH::DETAIL] 0/DDC#0: RfnocError: ResolveE=
rror: Attempting to overwrite property `mtu@INPUT_EDGE:1' with a new valu=
e after it was locked!</code></pre><blockquote><pre><code>Traceback (most=
 recent call last):</code></pre></blockquote><blockquote><pre><code>&nbsp=
; File "script2.py", line 62, in &lt;module&gt;</code></pre><pre><code>&n=
bsp; &nbsp; graph.commit()
RuntimeError: RfnocError: ResolveError: Attempting to overwrite property =
`mtu@INPUT_EDGE:1' with a new value after it was locked!</code></pre></bl=
ockquote><p>Does anyone have any experience or any hints in creating an r=
fnoc graph using the UHD python API?</p><p>Best regads,</p><p>Arjan Feta<=
/p>


--b1_dZH3EC5isgEcK3DuTsyplHUs0vVJdtvUB4B2WyJRI--

--===============6691323840669435942==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6691323840669435942==--
