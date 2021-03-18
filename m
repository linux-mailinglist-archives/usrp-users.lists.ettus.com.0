Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF7A340CEF
	for <lists+usrp-users@lfdr.de>; Thu, 18 Mar 2021 19:28:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F1F3383CEE
	for <lists+usrp-users@lfdr.de>; Thu, 18 Mar 2021 14:28:51 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 56F8338393D
	for <usrp-users@lists.ettus.com>; Thu, 18 Mar 2021 14:27:46 -0400 (EDT)
Date: Thu, 18 Mar 2021 18:27:46 +0000
To: usrp-users@lists.ettus.com
From: jcasallas2019@gmail.com
Message-ID: <CPEG0Eq0Bs5v67hrLxbWOjWtit6FjasPMJeIwKkd04@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: XFGDTO5HMRXZ464MEKIG5ZACBZP2KQC5
X-Message-ID-Hash: XFGDTO5HMRXZ464MEKIG5ZACBZP2KQC5
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Disabling property_propagation_active - [ERROR] [RFNOC::GRAPH::DETAIL]
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XFGDTO5HMRXZ464MEKIG5ZACBZP2KQC5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1289765765931013406=="

This is a multi-part message in MIME format.

--===============1289765765931013406==
Content-Type: multipart/alternative;
 boundary="b1_CPEG0Eq0Bs5v67hrLxbWOjWtit6FjasPMJeIwKkd04"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_CPEG0Eq0Bs5v67hrLxbWOjWtit6FjasPMJeIwKkd04
Content-Type: text/plain; charset=us-ascii

Hi all,

I get the following error when running gnuradio with a RFNoC block created following UHD 4 guide.

`[ERROR] [RFNOC::GRAPH::DETAIL] Adding edge 0/passthrough#0:1 -> 0/DUC#0:0 without disabling property_propagation_active will lead to unresolvable graph!`

`Traceback (most recent call last):`

`  File "/home/wisp/rfnoc_ws/rfnoc-test/examples/pass_through.py", line 236, in <module>`

`    main()`

`  File "/home/wisp/rfnoc_ws/rfnoc-test/examples/pass_through.py", line 212, in main`

`    tb = top_block_cls()`

`  File "/home/wisp/rfnoc_ws/rfnoc-test/examples/pass_through.py", line 156, in __init__`

`    self.rfnoc_graph.connect(self.test_passthrough_0.get_unique_id(), 1, self.ettus_rfnoc_duc_0.get_unique_id(), 0, False)`

`  File "/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py", line 2045, in connect`

`    return _ettus_swig.rfnoc_graph_sptr_connect(self, *args)`

`RuntimeError: RfnocError: Adding edge without disabling property_propagation_active will lead to unresolvable graph!`

Has anyone run into this error before and know the reason behind?

Thanks

--b1_CPEG0Eq0Bs5v67hrLxbWOjWtit6FjasPMJeIwKkd04
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi all,</p><p>I get the following error when running gnuradio with a RFN=
oC block created following UHD 4 guide.</p><p><br></p><p><code>[ERROR] [RFN=
OC::GRAPH::DETAIL] Adding edge 0/passthrough#0:1 -&gt; 0/DUC#0:0 without di=
sabling property_propagation_active will lead to unresolvable graph!</code>=
</p><p><code>Traceback (most recent call last):</code></p><p><code>  File "=
/home/wisp/rfnoc_ws/rfnoc-test/examples/pass_through.py", line 236, in &lt;=
module&gt;</code></p><p><code>    main()</code></p><p><code>  File "/home/w=
isp/rfnoc_ws/rfnoc-test/examples/pass_through.py", line 212, in main</code>=
</p><p><code>    tb =3D top_block_cls()</code></p><p><code>  File "/home/wi=
sp/rfnoc_ws/rfnoc-test/examples/pass_through.py", line 156, in __init__</co=
de></p><p><code>    self.rfnoc_graph.connect(self.test_passthrough_0.get_un=
ique_id(), 1, self.ettus_rfnoc_duc_0.get_unique_id(), 0, False)</code></p><=
p><code>  File "/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py", =
line 2045, in connect</code></p><p><code>    return _ettus_swig.rfnoc_graph=
_sptr_connect(self, *args)</code></p><p><code>RuntimeError: RfnocError: Add=
ing edge without disabling property_propagation_active will lead to unresol=
vable graph!</code></p><p><br></p><p>Has anyone run into this error before =
and know the reason behind?</p><p><br></p><p>Thanks</p>

--b1_CPEG0Eq0Bs5v67hrLxbWOjWtit6FjasPMJeIwKkd04--

--===============1289765765931013406==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1289765765931013406==--
