Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7579A5F8F4
	for <lists+usrp-users@lfdr.de>; Thu, 13 Mar 2025 15:50:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 029A2385F27
	for <lists+usrp-users@lfdr.de>; Thu, 13 Mar 2025 10:50:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741877402; bh=8eAvBFr3+vT2qfoJi5O6jGKAUs3X10up7YQFPVZn+QA=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=QdJ1Or9REbKyI+IvVN9B4yJnr8RY5Hj7TOy158uIKIeukMyHE4RENLUYRNiUku0CY
	 q/Qxz+HwypBBnu4HOZKw/gwypYThDU5Uc2R5aOvpciwq8eLqpTKrSZdDuhdwFIBKlv
	 onP3P8OFoRTi0wH+E83Cb3k61Hx5mlBAQyes1Z2KF5WayfqZCNq/lkgjqo4VVkj0+t
	 oMbiTOVd0TQ4ubAMYmpBqibbXHxupPUMI6CP803GRNaJpS2/2piyrI9sMJ3wo3H6rZ
	 TaO8scU/7sJWC4eLi1nTYLM8NVDZnp6h299tkR4hvPoi7vIeU4TM9ak3YHM8XB46ug
	 uwchw5VmZ8u8Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C98E0385EC9
	for <usrp-users@lists.ettus.com>; Thu, 13 Mar 2025 10:49:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741877380; bh=cQOcS5xhKSO2ssRlPA85zqPBAlrtG/CL0diVucW7ESo=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=vkjMid8z9NoR873456lOzZRXuXzfXijuBvZDhaEBKcQl7C4AEHAz7jUGk9w2ULYrj
	 MWmVI1Ugdfaj0AmffUaOGIhLj9ArBU0S9c5x7sFEFcPxDPD933voIJ6AQsOrmdI/M5
	 QDStDrNbJcLNgOoneUgChc2KIlrr+UxRZaHMDk2Fp/J8vQRS4cpxTAVEDZ6nADlNkD
	 1WFjM71QxbAuttIgixgszJQQ17UQW9OUlEBsHtYxojvz1ojU4rYRER+ps35c0y0nWu
	 77iOhLC6Ddl6ywG6Jln/LJHeXeu1WFOdFP5HaHkRcXmkx8gn2syVS2zKvreT6FC1YQ
	 XLKZis+RZQbRQ==
Date: Thu, 13 Mar 2025 14:49:40 +0000
To: usrp-users@lists.ettus.com
Message-ID: <4SBHT10AR4vPsRjAR8umZc1NyQBLpVoTU7L6kRzqdo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: ABALclGCTm01LhSvp4oq33cEANscZTfK8jyEO7eQEQ@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 44IAUHPSOYFQ4KJQ5U4G3YXHHKCCCF4X
X-Message-ID-Hash: 44IAUHPSOYFQ4KJQ5U4G3YXHHKCCCF4X
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Multi-port Transmission with RFNoC Replay Block on USRP x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/44IAUHPSOYFQ4KJQ5U4G3YXHHKCCCF4X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============8412313521113569825=="

This is a multi-part message in MIME format.

--===============8412313521113569825==
Content-Type: multipart/alternative;
 boundary="b1_4SBHT10AR4vPsRjAR8umZc1NyQBLpVoTU7L6kRzqdo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_4SBHT10AR4vPsRjAR8umZc1NyQBLpVoTU7L6kRzqdo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hey,\
\
Have you tried using a single replay block?\
The replay block can be configured to have multiple ports that each can b=
e connected the radio.

For example the [x410_X4_200_rfnoc_image_core.yaml](https://github.com/Et=
tusResearch/uhd/blob/master/fpga/usrp3/top/x400/x410_X4_200_rfnoc_image_c=
ore.yml) bitfile variant should contain a 4 port replay block:

```
=C2=A0 replay0:
```

```
=C2=A0 =C2=A0 block_desc: 'replay.yml'
```

```
=C2=A0 =C2=A0 parameters:
```

```
=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 4
```

```
=C2=A0 =C2=A0 =C2=A0 MEM_DATA_W: 64
```

```
=C2=A0 =C2=A0 =C2=A0 MEM_ADDR_W: 32
```

\
There is an example that shows how to do this called tx_waveforms.\
Maybe this part of the example could be helpful for you?\
[rfnoc_dram_tx()](https://github.com/EttusResearch/uhd/blob/master/host/e=
xamples/python/tx_waveforms.py#L79 "rfnoc_dram_tx()")

This separates the dram into different regions for each channel, so you a=
re restricted to 1/4th the size of the replay blocks DRAM for each channe=
l.\
This would limits the length of the waveform that you can transmit.\
\
The RFNoC variant of the tx_waveforms python example uses an internal hel=
per class that simplifies DRAM usage, called DramTransmitter that makes u=
sing the replay block a little easier as a data source for transmission u=
sing RFNoC.\
It is defined [here in dram_utils.py](https://github.com/EttusResearch/uh=
d/blob/master/host/python/uhd/usrp/dram_utils.py#L56 "here in dram_utils.=
py")=20

\
Maybe this can already help you to implement what you need.\
\
Regarding your question about using multiple instances of the replay bloc=
k:

\
I am not sure if this is possible, as I have never tried it myself.\
It seems like the X410 has 2 different dram ports, called [\`dram0\`](htt=
ps://github.com/EttusResearch/uhd/blob/master/host/include/uhd/rfnoc/core=
/x410_bsp.yml#L133) and [\`dram1\`](https://github.com/EttusResearch/uhd/=
blob/master/host/include/uhd/rfnoc/core/x410_bsp.yml#L139) that are defin=
ed in the x410_bsp.yml. If they internally correspond to separate dram in=
stances, it might be possible to instantiate 2 replay blocks.\
\
If it works, you will probably have to specify each replay block to use i=
ts own dram port, [see the BSP connection section for an example.](https:=
//github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x400/x410_X4_20=
0_rfnoc_image_core.yml#L138)\
\
Regards,\
Niels

--b1_4SBHT10AR4vPsRjAR8umZc1NyQBLpVoTU7L6kRzqdo
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hey,<br><br>Have you tried using a single replay block?<br>The replay bl=
ock can be configured to have multiple ports that each can be connected the=
 radio.</p><p>For example the <a href=3D"https://github.com/EttusResearch/u=
hd/blob/master/fpga/usrp3/top/x400/x410_X4_200_rfnoc_image_core.yml" title=
=3D"">x410_X4_200_rfnoc_image_core.yaml</a> bitfile variant should contain =
a 4 port replay block:</p><pre><code>&nbsp; replay0:</code></pre><pre><code=
>&nbsp; &nbsp; block_desc: 'replay.yml'</code></pre><pre><code>&nbsp; &nbsp=
; parameters:</code></pre><pre><code>&nbsp; &nbsp; &nbsp; NUM_PORTS: 4</cod=
e></pre><pre><code>&nbsp; &nbsp; &nbsp; MEM_DATA_W: 64</code></pre><pre><co=
de>&nbsp; &nbsp; &nbsp; MEM_ADDR_W: 32</code></pre><p><br>There is an examp=
le that shows how to do this called tx_waveforms.<br>Maybe this part of the=
 example could be helpful for you?<br><a href=3D"https://github.com/EttusRe=
search/uhd/blob/master/host/examples/python/tx_waveforms.py#L79" title=3D"r=
fnoc_dram_tx()">rfnoc_dram_tx()</a></p><p>This separates the dram into diff=
erent regions for each channel, so you are restricted to 1/4th the size of =
the replay blocks DRAM for each channel.<br>This would limits the length of=
 the waveform that you can transmit.<br><br>The RFNoC variant of the tx_wav=
eforms python example uses an internal helper class that simplifies DRAM us=
age, called DramTransmitter that makes using the replay block a little easi=
er as a data source for transmission using RFNoC.<br>It is defined <a href=
=3D"https://github.com/EttusResearch/uhd/blob/master/host/python/uhd/usrp/d=
ram_utils.py#L56" title=3D"here in dram_utils.py">here in dram_utils.py</a>=
 </p><p><br>Maybe this can already help you to implement what you need.<br>=
<br>Regarding your question about using multiple instances of the replay bl=
ock:</p><p><br>I am not sure if this is possible, as I have never tried it =
myself.<br>It seems like the X410 has 2 different dram ports, called <a hre=
f=3D"https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/rfno=
c/core/x410_bsp.yml#L133" title=3D"">`dram0`</a> and <a href=3D"https://git=
hub.com/EttusResearch/uhd/blob/master/host/include/uhd/rfnoc/core/x410_bsp.=
yml#L139" title=3D"">`dram1`</a> that are defined in the x410_bsp.yml. If t=
hey internally correspond to separate dram instances, it might be possible =
to instantiate 2 replay blocks.<br><br>If it works, you will probably have =
to specify each replay block to use its own dram port, <a href=3D"https://g=
ithub.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x400/x410_X4_200_rfn=
oc_image_core.yml#L138" title=3D"">see the BSP connection section for an ex=
ample.</a><br><br>Regards,<br>Niels</p>

--b1_4SBHT10AR4vPsRjAR8umZc1NyQBLpVoTU7L6kRzqdo--

--===============8412313521113569825==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8412313521113569825==--
