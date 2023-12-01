Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A8014800E7B
	for <lists+usrp-users@lfdr.de>; Fri,  1 Dec 2023 16:21:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 83D3038535C
	for <lists+usrp-users@lfdr.de>; Fri,  1 Dec 2023 10:21:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701444096; bh=LMVb21uDyLyz/x1F4DPXeesaJ9R36Py0ZZJmLDhM0us=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=edGGZjmy7OMEOzGtJGJe44RHyjXZQN0xdJsOooJNtKlNvJ4KJEuIh1gPfZ8PlKZzY
	 LhYgeeZ3JITzuP5iE0z97yMwiWTxBIOs6IB0f3/2KjErZJecn4kUlc7X4cr3f5+nNN
	 KdwlxwS81BhzFSmLJyNyV8jS63IrvrbbCMdbTPDuglhF2Y1WkzHyKIzBC75oQjkLxT
	 JZkq+jE8PqWnG/MZ0ND9m6BmXf+pHROCc/n42a7eo2hoHZkFRicEsAojqm6K/QHIOT
	 YwPAcnotHND4f51qh+p/Q6H2S8Eod6dknh1pbRJ7bKAt9NfZRAOZ0HUkpa2NXRyKo0
	 Rr0XpwCANwgHw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 36DE638506C
	for <usrp-users@lists.ettus.com>; Fri,  1 Dec 2023 10:21:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701444060; bh=rG0Mg7oRC5Iq2XmVnOfQOLt0cJEPRENEkzo4ffiRKIY=;
	h=Date:To:From:Subject:From;
	b=ZcAMYjUmHYJCCmEDdmILC5TQSnpuiiuS2n9i8hFC0PUYTkZeG7VPmKGX6KYNTFhu2
	 0flYyIfReo71/0WH/yT9RrmyyNS/7TpqhcHMR/at+zt+O4Z4awepdBIkuiiAeW8TsR
	 oirG74mSdXaLT8BkDEEiR4CNJaWrJ7duyWGAj81gmReUYEsJDBw3coQM/x+TNiMvrl
	 0LVG6OD9Xvu2g0QqPocJgynn2LvR3dozY55VMxZJ0hs/WuZn/i0AqaUQq5SeAh3WWi
	 u5HSDhCz6K6miaR+gESDsEJBFGYnHBzj750rCZENtVXogyZcslzxesO5ZObw/eSqSQ
	 kDkjug4Yz0yaA==
Date: Fri, 1 Dec 2023 15:21:00 +0000
To: usrp-users@lists.ettus.com
From: enrico.petraglio@heig-vd.ch
Message-ID: <RQcMoxvYw4gARGFxJfWdMtDr5m2XjAbl0WAq4e4bj4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: HZNCJHHWZYUKXFPIV57W6DNLQECPHGSF
X-Message-ID-Hash: HZNCJHHWZYUKXFPIV57W6DNLQECPHGSF
X-MailFrom: enrico.petraglio@heig-vd.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] rfnoc_image_builder error with uhd4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HZNCJHHWZYUKXFPIV57W6DNLQECPHGSF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4149121892493154473=="

This is a multi-part message in MIME format.

--===============4149121892493154473==
Content-Type: multipart/alternative;
 boundary="b1_RQcMoxvYw4gARGFxJfWdMtDr5m2XjAbl0WAq4e4bj4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_RQcMoxvYw4gARGFxJfWdMtDr5m2XjAbl0WAq4e4bj4
Content-Type: text/plain; charset=us-ascii

Hi, 

I have UHD version 4.6 installed and am currently trying to follow the [RFNOC tutorial](https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0 "RFNOC tutorial"). I managed to install everything correctly and then tried to create a bitstream as shown in the documentation. 

*$ cd <repo>/fpga/usrp3/top/x300/*

*$ rfnoc_image_builder -y ./x310_rfnoc_image_core.yml -t X310_XG*

First I get this message:

*\[ERR\] FPGA path not found. Specify with --fpga-dir argument.*

I then modified the command as follows:

*$ rfnoc_image_builder -F <repo>/fpga -y ./x310_rfnoc_image_core.yml -t X310_XG*

At this point I get the following output:

*\[INF\] Using FPGA directory <repo>/fpga*

*\[INF\] Selected device x310*

*\[INF\] Using io_signatures.yml from /usr/local/share/uhd/rfnoc/core.*

*\[INF\] Using x310_bsp.yml from /usr/local/share/uhd/rfnoc/core.*

*\[INF\] Adding block description from duc.yml (/usr/local/share/uhd/rfnoc/blocks).*

*\[INF\] Adding block description from keep_one_in_n.yml (/usr/local/share/uhd/rfnoc/blocks).*

*\[INF\] Adding block description from axi_ram_fifo.yml (/usr/local/share/uhd/rfnoc/blocks).*

*\[INF\] Adding block description from radio_1x64.yml (/usr/local/share/uhd/rfnoc/blocks).*

*Traceback (most recent call last):*

  *File "/usr/local/bin/rfnoc_image_builder", line 240, in <module>*

    *sys.exit(main())*

  *File "/usr/local/bin/rfnoc_image_builder", line 219, in main*

    *image_builder.build_image(*

  *File "/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py", line 922, in build_image*

    *blocks = read_block_descriptions(signatures_conf, \*block_paths)*

  *File "/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py", line 609, in read_block_descriptions*

    *blocks\[filename\] = IOConfig(block, signatures)*

  *File "/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py", line 152, in __init__*

    *expand_io_port_desc(getattr(self, "io_ports"), signatures)*

  *File "/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py", line 115, in expand_io_port_desc*

    *for signature in signatures\[io_port\["type"\]\]\["ports"\]:*

*KeyError: 'ctrl_port'*

Is anyone aware of any issues with RFNOC and UHD 4.6 (note that I get the same result with UHD 4.5)?

Thanks in advance for the help.

Enrico

--b1_RQcMoxvYw4gARGFxJfWdMtDr5m2XjAbl0WAq4e4bj4
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi, </p><p>I have UHD version 4.6 installed and am currently trying to f=
ollow the <a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD=
_4.0" title=3D"RFNOC tutorial">RFNOC tutorial</a>. I managed to install eve=
rything correctly and then tried to create a bitstream as shown in the docu=
mentation. </p><p><em>$ cd &lt;repo&gt;/fpga/usrp3/top/x300/</em></p><p><em=
>$ rfnoc_image_builder -y ./x310_rfnoc_image_core.yml -t X310_XG</em></p><p=
>First I get this message:</p><p><em>[ERR] FPGA path not found. Specify wit=
h --fpga-dir argument.</em></p><p>I then modified the command as follows:</=
p><p><em>$ rfnoc_image_builder -F &lt;repo&gt;/fpga -y ./x310_rfnoc_image_c=
ore.yml -t X310_XG</em></p><p>At this point I get the following output:</p>=
<p><em>[INF] Using FPGA directory &lt;repo&gt;/fpga</em></p><p><em>[INF] Se=
lected device x310</em></p><p><em>[INF] Using io_signatures.yml from /usr/l=
ocal/share/uhd/rfnoc/core.</em></p><p><em>[INF] Using x310_bsp.yml from /us=
r/local/share/uhd/rfnoc/core.</em></p><p><em>[INF] Adding block description=
 from duc.yml (/usr/local/share/uhd/rfnoc/blocks).</em></p><p><em>[INF] Add=
ing block description from keep_one_in_n.yml (/usr/local/share/uhd/rfnoc/bl=
ocks).</em></p><p><em>[INF] Adding block description from axi_ram_fifo.yml =
(/usr/local/share/uhd/rfnoc/blocks).</em></p><p><em>[INF] Adding block desc=
ription from radio_1x64.yml (/usr/local/share/uhd/rfnoc/blocks).</em></p><p=
><em>Traceback (most recent call last):</em></p><p><em>  File "/usr/local/b=
in/rfnoc_image_builder", line 240, in &lt;module&gt;</em></p><p><em>    sys=
.exit(main())</em></p><p><em>  File "/usr/local/bin/rfnoc_image_builder", l=
ine 219, in main</em></p><p><em>    image_builder.build_image(</em></p><p><=
em>  File "/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builde=
r.py", line 922, in build_image</em></p><p><em>    blocks =3D read_block_de=
scriptions(signatures_conf, *block_paths)</em></p><p><em>  File "/usr/local=
/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py", line 609, in r=
ead_block_descriptions</em></p><p><em>    blocks[filename] =3D IOConfig(blo=
ck, signatures)</em></p><p><em>  File "/usr/local/lib/python3/dist-packages=
/uhd/imgbuilder/image_builder.py", line 152, in __init__</em></p><p><em>   =
 expand_io_port_desc(getattr(self, "io_ports"), signatures)</em></p><p><em>=
  File "/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.p=
y", line 115, in expand_io_port_desc</em></p><p><em>    for signature in si=
gnatures[io_port["type"]]["ports"]:</em></p><p><em>KeyError: 'ctrl_port'</e=
m></p><p><br></p><p>Is anyone aware of any issues with RFNOC and UHD 4.6 (n=
ote that I get the same result with UHD 4.5)?</p><p>Thanks in advance for t=
he help.</p><p><br></p><p>Enrico</p>

--b1_RQcMoxvYw4gARGFxJfWdMtDr5m2XjAbl0WAq4e4bj4--

--===============4149121892493154473==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4149121892493154473==--
