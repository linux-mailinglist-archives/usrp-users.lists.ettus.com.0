Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C82E342720
	for <lists+usrp-users@lfdr.de>; Fri, 19 Mar 2021 21:48:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3DA34383988
	for <lists+usrp-users@lfdr.de>; Fri, 19 Mar 2021 16:48:02 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 17E6B383843
	for <usrp-users@lists.ettus.com>; Fri, 19 Mar 2021 16:47:52 -0400 (EDT)
Date: Fri, 19 Mar 2021 20:47:52 +0000
To: usrp-users@lists.ettus.com
From: jcasallas2019@gmail.com
Message-ID: <FUcaf1mlodlwRBWLsAbYL3Ch7jPE803adsIrofQPBA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: HHU4MA6D5RQRYL5HHOQX6USY7QSNOATC
X-Message-ID-Hash: HHU4MA6D5RQRYL5HHOQX6USY7QSNOATC
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Adding DmaFIFO block like FFT block in UHD 4 guide.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HHU4MA6D5RQRYL5HHOQX6USY7QSNOATC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0439462653602417295=="

This is a multi-part message in MIME format.

--===============0439462653602417295==
Content-Type: multipart/alternative;
 boundary="b1_FUcaf1mlodlwRBWLsAbYL3Ch7jPE803adsIrofQPBA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_FUcaf1mlodlwRBWLsAbYL3Ch7jPE803adsIrofQPBA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

hi all,

I am trying to add DmaFIFO block following UHD 4 Getting started guide in=
 the same way the FFT block was added, but when looking into gr-ettus/grc=
/ folder, I did not find any ettus_rfnoc_dmaFIFO  yaml  file like the res=
t of default blocks..

This is what I found in /usr/local/share/=E2=80=A6 and did not see any rf=
noc DmaFIFO block.=20

 `-rw-r--r-- 1 root root    166 Mar  2 14:58 ettus_fpga_clk.domain.yml`

`-rw-r--r-- 1 root root    171 Mar  2 14:58 ettus_fpga_ctrl.domain.yml`

`-rw-r--r-- 1 root root    168 Mar  2 14:58 ettus_fpga_data.domain.yml`

`-rw-r--r-- 1 root root    618 Mar  2 14:58 ettus_fpga_ddc.block.yml`

`-rw-r--r-- 1 root root    617 Mar  2 14:58 ettus_fpga_duc.block.yml`

`-rw-r--r-- 1 root root    131 Mar  2 14:58 ettus_fpga_fft.block.yml`

`-rw-r--r-- 1 root root    200 Mar  2 14:58 ettus_fpga_io_ctrl_port.domai=
n.yml`

`-rw-r--r-- 1 root root    181 Mar  2 14:58 ettus_fpga_io_radio.domain.ym=
l`

`-rw-r--r-- 1 root root    205 Mar  2 14:58 ettus_fpga_io_time_keeper.dom=
ain.yml`

`-rw-r--r-- 1 root root    820 Mar  2 14:58 ettus_fpga_radio.block.yml`

`-rw-r--r-- 1 root root    811 Mar  2 14:58 ettus_fpga_sep.block.yml`

`-rw-r--r-- 1 root root    663 Mar  2 14:58 ettus_fpga_x310.block.yml`

`-rw-r--r-- 1 root root   1056 Mar  2 14:58 ettus_rfnoc_ddc.block.yml`

`-rw-r--r-- 1 root root   1022 Mar  9 13:36 ettus_rfnoc_duc.block.yml`

`-rw-r--r-- 1 root root   2174 Mar  2 14:58 ettus_rfnoc_fft.block.yml`

`-rw-r--r-- 1 root root   3990 Mar  2 14:58 ettus_rfnoc_fosphor.block.yml=
`

`-rw-r--r-- 1 root root   4842 Mar  2 14:58 ettus_rfnoc_graph.block.yml`

`-rw-r--r-- 1 root root   1950 Mar  2 14:58 ettus_rfnoc_rx_radio.block.ym=
l`

`-rw-r--r-- 1 root root   1266 Mar  2 14:58 ettus_rfnoc_rx_streamer.block=
.yml`

`-rw-r--r-- 1 root root   1580 Mar  2 14:58 ettus_rfnoc_tx_radio.block.ym=
l`

`-rw-r--r-- 1 root root   1187 Mar  2 14:58 ettus_rfnoc_tx_streamer.block=
.yml`

`-rw-r--r-- 1 root root    675 Mar  2 14:58 ettus.tree.yml`

I wonder if I am missing a step to make the DmaFIFO works with gnuradio l=
ike the FFT block example.

Thanks

--b1_FUcaf1mlodlwRBWLsAbYL3Ch7jPE803adsIrofQPBA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>hi all,</p><p>I am trying to add DmaFIFO block following UHD 4 Getting s=
tarted guide in the same way the FFT block was added, but when looking into=
 gr-ettus/grc/ folder, I did not find any ettus_rfnoc_dmaFIFO  yaml  file l=
ike the rest of default blocks..</p><p>This is what I found in /usr/local/s=
hare/=E2=80=A6 and did not see any rfnoc DmaFIFO block. </p><p><br></p><p> =
<code>-rw-r--r-- 1 root root    166 Mar  2 14:58 ettus_fpga_clk.domain.yml<=
/code></p><p><code>-rw-r--r-- 1 root root    171 Mar  2 14:58 ettus_fpga_ct=
rl.domain.yml</code></p><p><code>-rw-r--r-- 1 root root    168 Mar  2 14:58=
 ettus_fpga_data.domain.yml</code></p><p><code>-rw-r--r-- 1 root root    61=
8 Mar  2 14:58 ettus_fpga_ddc.block.yml</code></p><p><code>-rw-r--r-- 1 roo=
t root    617 Mar  2 14:58 ettus_fpga_duc.block.yml</code></p><p><code>-rw-=
r--r-- 1 root root    131 Mar  2 14:58 ettus_fpga_fft.block.yml</code></p><=
p><code>-rw-r--r-- 1 root root    200 Mar  2 14:58 ettus_fpga_io_ctrl_port.=
domain.yml</code></p><p><code>-rw-r--r-- 1 root root    181 Mar  2 14:58 et=
tus_fpga_io_radio.domain.yml</code></p><p><code>-rw-r--r-- 1 root root    2=
05 Mar  2 14:58 ettus_fpga_io_time_keeper.domain.yml</code></p><p><code>-rw=
-r--r-- 1 root root    820 Mar  2 14:58 ettus_fpga_radio.block.yml</code></=
p><p><code>-rw-r--r-- 1 root root    811 Mar  2 14:58 ettus_fpga_sep.block.=
yml</code></p><p><code>-rw-r--r-- 1 root root    663 Mar  2 14:58 ettus_fpg=
a_x310.block.yml</code></p><p><code>-rw-r--r-- 1 root root   1056 Mar  2 14=
:58 ettus_rfnoc_ddc.block.yml</code></p><p><code>-rw-r--r-- 1 root root   1=
022 Mar  9 13:36 ettus_rfnoc_duc.block.yml</code></p><p><code>-rw-r--r-- 1 =
root root   2174 Mar  2 14:58 ettus_rfnoc_fft.block.yml</code></p><p><code>=
-rw-r--r-- 1 root root   3990 Mar  2 14:58 ettus_rfnoc_fosphor.block.yml</c=
ode></p><p><code>-rw-r--r-- 1 root root   4842 Mar  2 14:58 ettus_rfnoc_gra=
ph.block.yml</code></p><p><code>-rw-r--r-- 1 root root   1950 Mar  2 14:58 =
ettus_rfnoc_rx_radio.block.yml</code></p><p><code>-rw-r--r-- 1 root root   =
1266 Mar  2 14:58 ettus_rfnoc_rx_streamer.block.yml</code></p><p><code>-rw-=
r--r-- 1 root root   1580 Mar  2 14:58 ettus_rfnoc_tx_radio.block.yml</code=
></p><p><code>-rw-r--r-- 1 root root   1187 Mar  2 14:58 ettus_rfnoc_tx_str=
eamer.block.yml</code></p><p><code>-rw-r--r-- 1 root root    675 Mar  2 14:=
58 ettus.tree.yml</code></p><p><br></p><p>I wonder if I am missing a step t=
o make the DmaFIFO works with gnuradio like the FFT block example.</p><p><b=
r></p><p>Thanks</p>

--b1_FUcaf1mlodlwRBWLsAbYL3Ch7jPE803adsIrofQPBA--

--===============0439462653602417295==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0439462653602417295==--
