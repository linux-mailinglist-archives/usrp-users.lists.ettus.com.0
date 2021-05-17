Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD66386B5A
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 22:25:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F39C13848AF
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 16:25:44 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 74D5B383EC1
	for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 16:24:54 -0400 (EDT)
Date: Mon, 17 May 2021 20:24:54 +0000
To: usrp-users@lists.ettus.com
From: jcasallas2019@gmail.com
Message-ID: <iOnYx8VUB2BvKDk3dLygbykG6qc0tkzPCKujK37Eblk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: e4cb0c74-95a3-25d6-d334-4d75406c8ab7@verizon.net
MIME-Version: 1.0
Message-ID-Hash: MOEO347BWGC2ZXREHMFLKH4SG6NUXNP4
X-Message-ID-Hash: MOEO347BWGC2ZXREHMFLKH4SG6NUXNP4
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: setting up gr-fosphor on uhd 4
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MOEO347BWGC2ZXREHMFLKH4SG6NUXNP4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1555716945293184341=="

This is a multi-part message in MIME format.

--===============1555716945293184341==
Content-Type: multipart/alternative;
 boundary="b1_iOnYx8VUB2BvKDk3dLygbykG6qc0tkzPCKujK37Eblk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_iOnYx8VUB2BvKDk3dLygbykG6qc0tkzPCKujK37Eblk
Content-Type: text/plain; charset=us-ascii

Hi all,

I tried the same configuration but I got the following error:INFO\] \[UHD\] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-50-ge520e3ff

`[INFO] [X300] X300 initialization sequence...`

`[INFO] [X300] Maximum frame size: 8000 bytes.`

`[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a`

`[INFO] [X300] Radio 1x clock: 200 MHz`

`Traceback (most recent call last):`

`  File "/home/wisp/rfnoc_ws/rfnoc-test/examples/rfnoc_gain.py", line 354, in <module>`

`    main()`

`  File "/home/wisp/rfnoc_ws/rfnoc-test/examples/rfnoc_gain.py", line 330, in main`

`    tb = top_block_cls()`

`  File "/home/wisp/rfnoc_ws/rfnoc-test/examples/rfnoc_gain.py", line 93, in __init__`

`    self.ettus_rfnoc_rx_streamer_1 = ettus.rfnoc_rx_streamer(`

`  File "/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py", line 1423, in make`

`    return _ettus_swig.rfnoc_rx_streamer_make(graph, num_chans, stream_args, vlen, issue_stream_cmd_on_start)`

`RuntimeError: ValueError: [rx_stream] Must provide a otw_format!`

Do you guys have any idea?

Thanks

--b1_iOnYx8VUB2BvKDk3dLygbykG6qc0tkzPCKujK37Eblk
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi all,</p><p><br></p><p>I tried the same configuration but I got the fo=
llowing error:INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4=
.0.0.0-50-ge520e3ff</p><p><code>[INFO] [X300] X300 initialization sequence.=
..</code></p><p><code>[INFO] [X300] Maximum frame size: 8000 bytes.</code><=
/p><p><code>[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929=
a</code></p><p><code>[INFO] [X300] Radio 1x clock: 200 MHz</code></p><p><co=
de>Traceback (most recent call last):</code></p><p><code>  File "/home/wisp=
/rfnoc_ws/rfnoc-test/examples/rfnoc_gain.py", line 354, in &lt;module&gt;</=
code></p><p><code>    main()</code></p><p><code>  File "/home/wisp/rfnoc_ws=
/rfnoc-test/examples/rfnoc_gain.py", line 330, in main</code></p><p><code> =
   tb =3D top_block_cls()</code></p><p><code>  File "/home/wisp/rfnoc_ws/rf=
noc-test/examples/rfnoc_gain.py", line 93, in __init__</code></p><p><code> =
   self.ettus_rfnoc_rx_streamer_1 =3D ettus.rfnoc_rx_streamer(</code></p><p=
><code>  File "/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py", l=
ine 1423, in make</code></p><p><code>    return _ettus_swig.rfnoc_rx_stream=
er_make(graph, num_chans, stream_args, vlen, issue_stream_cmd_on_start)</co=
de></p><p><code>RuntimeError: ValueError: [rx_stream] Must provide a otw_fo=
rmat!</code></p><p><br></p><p>Do you guys have any idea?</p><p><br></p><p>T=
hanks</p>

--b1_iOnYx8VUB2BvKDk3dLygbykG6qc0tkzPCKujK37Eblk--

--===============1555716945293184341==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1555716945293184341==--
