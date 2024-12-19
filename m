Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 682B09F79E4
	for <lists+usrp-users@lfdr.de>; Thu, 19 Dec 2024 11:55:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0D6163858E4
	for <lists+usrp-users@lfdr.de>; Thu, 19 Dec 2024 05:55:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734605712; bh=keDR9IiSUno1xFVj+WtB71M33rnqiEQaI/5DvJfCppQ=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=UukYp0b3ymhYhzL1DWvQGKLS8PDysquy0NeYwMX5H7STPNVpuGXwyQMSF0d0Wsh7m
	 mU+d2Z3O4BFeujU6vqrhnnwtnPp0PWMYV/rcDPupgws6DlaHl3GSt5VfIuiAzoJl1Q
	 DMvTpaFWCX59tOPKT/7TbSk1i/JkR2lskOo2c2ruCbm2W/hIee2j0YuiMLc9Vic/TW
	 ON3R7WY9O/0PM0WyoTHztAqCBdybk5sqDNuWsTNJcrU2bgHtBq9/Ez9M7wkND4+okP
	 vo0gypdFYKDB/HMZ3bQ+Ww/mfkHNlSDxFNTk5QzFmyp5SgW35V7ULv5Evhiwcz+zxB
	 epeBgqqaH/ohw==
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AA9E338584B
	for <usrp-users@lists.ettus.com>; Thu, 19 Dec 2024 05:54:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734605693; bh=qAUgKqVVmhiMhJ5UQ+BLvF8u+KT09N7cB/2NoD1sjuk=;
	h=Date:To:From:Subject:From;
	b=i96NpjRHE9a2E9xvXyQXRHaMAD8cLtLsqKasaLk0QE6EQmat8Mlu4j+5xeF5s5cNS
	 VUckhs0Qq0Xx1PKW0m3V88TXx8pPlGkfW6oRYV3FsbXfuYNNHvjLWoiSoo4l04lbCB
	 QRr/VlB/ImO44B50uNkJ9pmyv4ERz2POVQCf1zTiWP27xfcKusXsFQls0LI7iOzGbJ
	 lDX4F8gnGeyQGObb3rJNNkG1IFY9dm/E8dSfQciA65Db+4F9dExOYP/1m8zGFCqavy
	 KW+843qmq1P6k8r71r06WNLTWZUa/a0WhtLcz1pVjZJIofYHrQtVdieI4PelhnZgeS
	 0PfvSp/Tu09Rg==
Date: Thu, 19 Dec 2024 10:54:53 +0000
To: usrp-users@lists.ettus.com
From: elkana443@gmail.com
Message-ID: <FpiZFSFLeTmvTyAWZLWpENvZiMf2IQr6KGrBO2aBkzU@mm2.emwd.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: LSR2WMARJRGASGTDBSBOB6VSN57OFR7B
X-Message-ID-Hash: LSR2WMARJRGASGTDBSBOB6VSN57OFR7B
X-MailFrom: elkana443@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Help Needed: Issues Implementing RFNoC Example with UHD 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LSR2WMARJRGASGTDBSBOB6VSN57OFR7B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6659628504691284738=="

This is a multi-part message in MIME format.

--===============6659628504691284738==
Content-Type: multipart/alternative;
 boundary="b1_FpiZFSFLeTmvTyAWZLWpENvZiMf2IQr6KGrBO2aBkzU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_FpiZFSFLeTmvTyAWZLWpENvZiMf2IQr6KGrBO2aBkzU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I'm new to RFNoC and have been trying to implement the example described =
in "Getting Started with RFNoC in UHD 4.0." Unfortunately, all my attempt=
s have failed. Here's what I've done so far:

```
$ cp -r <repo>/host/examples/rfnoc-example ~/
$ mv ~/rfnoc-example ~/rfnoc-demo
$ mkdir ~/rfnoc-demo/build
$ cd ~/rfnoc-demo/build
$ cmake -DUHD_FPGA_DIR=3D<repo>/fpga/ ../
$ make
$ make install
$ make x310_rfnoc_image_core
```

However, I encountered an error right at the beginning of the process, wh=
ich seems to be related to the clocks. I've tried modifying `gain.yml` an=
d `x310_rfnoc_image_core.yml` files, but nothing has worked.

I am using UHD 4.6, and I couldn't find any updated documentation for thi=
s version. Here's a summary of the errors I face:

1. **If I run the command without changing file parameters:**

   ```
   ERROR: [Synth 8-448] named port connection 'gtrefclk' does not exist f=
or instance 'core_support_i' of module 'one_gig_eth_pcs_pma_support'
   ERROR: [Synth 8-448] named port connection 'gtrefclk_bufg' does not ex=
ist for instance 'core_support_i' of module 'one_gig_eth_pcs_pma_support'
   ERROR: [Synth 8-6156] failed synthesizing module 'one_gige_phy'
   ERROR: [Synth 8-6156] failed synthesizing module 'x300_sfpp_io_core'
   ERROR: [Synth 8-6156] failed synthesizing module 'x300'
   ERROR: [Common 17-69] ...
  =20
   ```

2. **If I change `clk_domains` and add:**

   ```
   codesrcblk: _device_, srcport: ce, dstblk: gain0, dstport: ce
  =20
   ```

   I get:

   ```
   [ERR] 1 Unresolved clk domain(s)
   [ERR] (_device_-> gain0-ce)
   [ERR] Source or destination domain not found
  =20
   ```

3. **If I change the `clk_domains` from `ce` to `rfnoc_chdr`:**

   ```
   ERROR: [synth 8-1031] gain0_rfnoc_chdr_clk is not declared [../../x310=
_rfnoc_image_core.v:1216]
   ERROR: [Common 17-69] Command failed ...
  =20
   ```

I=E2=80=99ve also tried other configurations, but none seem to work. Inte=
restingly, I can build images for RFNoC blocks (FFT, FIR, etc.), but not =
for out-of-tree (OOT) blocks.

Any guidance or advice would be greatly appreciated.

Thank you!

--b1_FpiZFSFLeTmvTyAWZLWpENvZiMf2IQr6KGrBO2aBkzU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I'm new to RFNoC and have been trying to implement the ex=
ample described in "Getting Started with RFNoC in UHD 4.0." Unfortunately=
, all my attempts have failed. Here's what I've done so far:</p><pre><cod=
e>$ cp -r &lt;repo&gt;/host/examples/rfnoc-example ~/
$ mv ~/rfnoc-example ~/rfnoc-demo
$ mkdir ~/rfnoc-demo/build
$ cd ~/rfnoc-demo/build
$ cmake -DUHD_FPGA_DIR=3D&lt;repo&gt;/fpga/ ../
$ make
$ make install
$ make x310_rfnoc_image_core
<br></code></pre><p>However, I encountered an error right at the beginnin=
g of the process, which seems to be related to the clocks. I've tried mod=
ifying <code>gain.yml</code> and <code>x310_rfnoc_image_core.yml</code> f=
iles, but nothing has worked.</p><p>I am using UHD 4.6, and I couldn't fi=
nd any updated documentation for this version. Here's a summary of the er=
rors I face:</p><ol><li><p><strong>If I run the command without changing =
file parameters:</strong></p><pre><code>ERROR: [Synth 8-448] named port c=
onnection 'gtrefclk' does not exist for instance 'core_support_i' of modu=
le 'one_gig_eth_pcs_pma_support'
ERROR: [Synth 8-448] named port connection 'gtrefclk_bufg' does not exist=
 for instance 'core_support_i' of module 'one_gig_eth_pcs_pma_support'
ERROR: [Synth 8-6156] failed synthesizing module 'one_gige_phy'
ERROR: [Synth 8-6156] failed synthesizing module 'x300_sfpp_io_core'
ERROR: [Synth 8-6156] failed synthesizing module 'x300'
ERROR: [Common 17-69] ...
<br></code></pre></li><li><p><strong>If I change <code>clk_domains</code>=
 and add:</strong></p><pre><code>codesrcblk: _device_, srcport: ce, dstbl=
k: gain0, dstport: ce
<br></code></pre><p>I get:</p><pre><code>[ERR] 1 Unresolved clk domain(s)
[ERR] (_device_-&gt; gain0-ce)
[ERR] Source or destination domain not found
<br></code></pre></li><li><p><strong>If I change the <code>clk_domains</c=
ode> from <code>ce</code> to <code>rfnoc_chdr</code>:</strong></p><pre><c=
ode>ERROR: [synth 8-1031] gain0_rfnoc_chdr_clk is not declared [../../x31=
0_rfnoc_image_core.v:1216]
ERROR: [Common 17-69] Command failed ...
<br></code></pre></li></ol><p>I=E2=80=99ve also tried other configuration=
s, but none seem to work. Interestingly, I can build images for RFNoC blo=
cks (FFT, FIR, etc.), but not for out-of-tree (OOT) blocks.</p><p>Any gui=
dance or advice would be greatly appreciated.</p><p>Thank you!</p>


--b1_FpiZFSFLeTmvTyAWZLWpENvZiMf2IQr6KGrBO2aBkzU--

--===============6659628504691284738==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6659628504691284738==--
