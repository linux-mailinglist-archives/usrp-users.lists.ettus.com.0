Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E5487876A
	for <lists+usrp-users@lfdr.de>; Mon, 11 Mar 2024 19:36:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 815D63856C6
	for <lists+usrp-users@lfdr.de>; Mon, 11 Mar 2024 14:36:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710182166; bh=mLMWgJhwV1OWgvSVGasJTDLWYbINelw/2M9AuppWv0w=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=oX1fYcktYnVH4xHT5MlAQ6JNc/oLwaJ9WV5XHUfq5oUsGIb09AfyesPmHCWl9/FYA
	 xLae4jztbJ7Mhyg1G6/5RshQhpLECLwdzYsYafaVMoElry1/QLf4F1+Jd3bA1iUbAy
	 j8Fb/M6RsluWRfSvKGDneFRtwEjNrAV8G3dqZvgfSPxAyD6impzdUokCpzuEtZ40MQ
	 AbcEp4J+Yh2thuqQVfsdBu9hn5Em9Fz9UtfoXO3kUFJBmDyYX2kV4k4Wu8kPpSl40c
	 4eCRG9nCqRNiLwq2AmRDSTyTh6cGR7p3tmHJcS0rtovltgwGLekYZfKnF7kAwmk8O3
	 dteYEHmwa/sHA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EAA9E3855A3
	for <usrp-users@lists.ettus.com>; Mon, 11 Mar 2024 14:34:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710182051; bh=1T8KSDhbAPqTDz6Zs1OzLHIbW8SZ5BWhdswYBHt9gv0=;
	h=Date:To:From:Subject:From;
	b=trnBUs5/8Mv/va5povoUJEGAkyVcJzVH3/UonXULpgrqjxOecezwcT2hWOG3J2wyv
	 CIzTm7+vWFe/ejXLl2KjaA40ZrFgnGtK631uGpqnzu6pwks/h69YpLAJHuc2v1bqXm
	 gBf+vlZ3J2F53DnFEzhVZQ/2Bchw7rawGPCNYJMVBIrB4nKwdILXokNBdRSNNyDP+0
	 pdi+1Y7N5GX6ZgMTOkAkDC0QfYHa/VI7UzmLxcMZN/nAUsNMvOrjDxxFX04Z08z4aU
	 3bdwBElM59khJPX+32KsoIdpnXIFHH5JXstmk+iWQEv+i9Z9X2ngE053BAJ3mNseyq
	 QMv6e+oHVDVeQ==
Date: Mon, 11 Mar 2024 18:34:10 +0000
To: usrp-users@lists.ettus.com
From: zackkomo@utexas.edu
Message-ID: <u7pPZeNZu8TmYulHiuh40RYB8R3otGiPytqWpiV0bE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: LDMIV6VW7ZBVEB7KIXVAY4N37NH5ZHY5
X-Message-ID-Hash: LDMIV6VW7ZBVEB7KIXVAY4N37NH5ZHY5
X-MailFrom: zackkomo@utexas.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Extending duration of high-rate captures with the X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LDMIV6VW7ZBVEB7KIXVAY4N37NH5ZHY5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6533051853847351538=="

This is a multi-part message in MIME format.

--===============6533051853847351538==
Content-Type: multipart/alternative;
 boundary="b1_u7pPZeNZu8TmYulHiuh40RYB8R3otGiPytqWpiV0bE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_u7pPZeNZu8TmYulHiuh40RYB8R3otGiPytqWpiV0bE
Content-Type: text/plain; charset=us-ascii

Hello!

I am having trouble using a USRP X410 to capture some high-rate data. I would appreciate any insight or help. Below is a diagram of how our x410 is connected to our host device.

```
*---------------------*                 *---------------------* 
```

```
|   | NIC QSFP Port 0 |                 | QSFP28 Port 1   |   | 
```

```
|   |    ens1f0np0    <>---------------<>       sfp1      |   | 
```

```
|   |  192.168.20.1   |                 |  192.168.20.2   |   | 
```

```
|   |-----------------|                 |-----------------|   | 
```

```
| H | NIC QSFP Port 1 |                 | QSFP28 Port 0   | X | 
```

```
| O |    ens1f1np1    <>---------------<>       sfp0      | 4 | 
```

```
| S |  192.168.10.1   |                 |  192.168.10.2   | 1 | 
```

```
| T |-----------------|  *-----------*  |-----------------| 0 | 
```

```
|   | Ethernet Port 1 |  |Router     |  |  Ethernet Port  |   | 
```

```
|   |     eno8403     <>-|192.168.1.1|-<>      eth0       |   | 
```

```
|   |  192.168.1.20   |  |           |  |  192.168.1.19   |   | 
```

```
*---------------------*  *-----------*  *---------------------*  
```

When I run $ uhd_find_devices 

```
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.6.0.HEAD-0-g50fa3baa
```

```
--------------------------------------------------
```

```
-- UHD Device 0
```

```
--------------------------------------------------
```

```
Device Address:
```

```
    serial: [serial number]
```

```
    addr: 192.168.20.2
```

```
    claimed: False
```

```
    fpga: CG_400
```

```
    mgmt_addr: 192.168.1.19
```

```
    mgmt_addr: 192.168.10.2
```

```
    mgmt_addr: 192.168.20.2
```

```
    name: [name]
```

```
    product: x410
```

```
    type: x4xx
```

I am using two images for the FPGA, each of which has different capabilities:

\- UC_200, which on the wiki lists Port 0 as "unused" and can achieve up to 250 Msps per channel.

\- CG_400, which lists both ports on the wiki as "100 GbE" and can achieve up to 500 Msps per channel.

I am using UHD's C++ API to instruct the x410. My capture process tries to call "recv" as soon as possible without waiting to write the previous buffer to a file. The psudocode is as follows:

\-  Initialize "circular" buffer of arrays. Each array is "spb" samples long, and there are N such buffers.

\-  Start a "writing" thread that writes data from a queue to a file.

\-  Set the number of samples I need (nsamps_requested), set the current number of samples to 0 (nsamps),

\-  set the current buffer index to 0 (buff_idx)

\-  set up rx_streamer to start 0.1 seconds in the future and issue STREAM_MODE_START_CONTINUOUS command.

   

   While (nsamps <= nsamps_requested || not_error)

   -Get a pointer to the buffer at buff_idx

   -num_rx_samps <- recv(buffer...)

   -check metadata returned object

   -add the buffer to the queue, increment the buffer index

   

\- stop streaming

When I use the process above, I can get very long captures using the UC_200 image, with 250 Msps, and by parsing the args "addr=192.168.20.2,mgmt_addr=192.168.1.19" when creating the multiusrp pointer.

When I switch to the CG_400 image, I can barely record a few seconds worth of data. I parse the args "addr=192.168.10.2,second_addr=192.168.20.2,mgmt_addr=192.168.1.19". I changed the logger level to get a better idea of what might be going on, below are some outputs for spb at 5000:

```
[DEBUG] [RFNOC::MGMT] Established a route from EPID=4 (SW) to EPID=3
```

```
[DEBUG] [RFNOC::MGMT] Throttling stream endpoint to 100% (0x0)
```

```
[DEBUG] [RFNOC::MGMT] Initiated RX stream setup for EPID=3
```

```
[DEBUG] [RFNOC::MGMT] Finished RX stream setup for EPID=3
```

```
[DEBUG] [0/Radio#0] spp value 2032 exceeds MTU of 8016! Coercing to 1988
```

```
....
```

```
[DEBUG] [RxStreamer#0] Received overrun message on port 0
```

After the last logger message, I catc this in my "check metadata returned object" step and stop the loop.

When this happens, I sometimes get 0 samples back, and sometimes get less than the samples per buffer I feed the recv command. I also found that while waiting for the issued command to take effect, instead of adding empty buffers to my queue, I check for ERROR_CODE_TIMEOUT and just continue the while loop.

I would imagine if I can handle half the rate at 250 Msps for minutes of continuous capture, going to 500 Msps I could get more than a couple seconds. Is this because the UC_200 image has 4GiB of DRAM and the CG_400 doesn't list any on the wiki? Is there something better I can be doing about the spb (I tried larger and smaller, with some luck around 50000 spb)? Am I properly configuring the x410 to use both QSFP28 ports for the CG_400 image?

Thanks!

Zack

--b1_u7pPZeNZu8TmYulHiuh40RYB8R3otGiPytqWpiV0bE
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello!</p><p>I am having trouble using a USRP X410 to capture some high-=
rate data. I would appreciate any insight or help. Below is a diagram of ho=
w our x410 is connected to our host device.</p><pre><code>*----------------=
-----*                 *---------------------* </code></pre><pre><code>|   =
| NIC QSFP Port 0 |                 | QSFP28 Port 1   |   | </code></pre><p=
re><code>|   |    ens1f0np0    &lt;&gt;---------------&lt;&gt;       sfp1  =
    |   | </code></pre><pre><code>|   |  192.168.20.1   |                 |=
  192.168.20.2   |   | </code></pre><pre><code>|   |-----------------|     =
            |-----------------|   | </code></pre><pre><code>| H | NIC QSFP =
Port 1 |                 | QSFP28 Port 0   | X | </code></pre><pre><code>| =
O |    ens1f1np1    &lt;&gt;---------------&lt;&gt;       sfp0      | 4 | <=
/code></pre><pre><code>| S |  192.168.10.1   |                 |  192.168.1=
0.2   | 1 | </code></pre><pre><code>| T |-----------------|  *-----------* =
 |-----------------| 0 | </code></pre><pre><code>|   | Ethernet Port 1 |  |=
Router     |  |  Ethernet Port  |   | </code></pre><pre><code>|   |     eno=
8403     &lt;&gt;-|192.168.1.1|-&lt;&gt;      eth0       |   | </code></pre=
><pre><code>|   |  192.168.1.20   |  |           |  |  192.168.1.19   |   |=
 </code></pre><pre><code>*---------------------*  *-----------*  *---------=
------------*  </code></pre><p>When I run $ uhd_find_devices </p><pre><code=
>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4=
.6.0.HEAD-0-g50fa3baa</code></pre><pre><code>------------------------------=
--------------------</code></pre><pre><code>-- UHD Device 0</code></pre><pr=
e><code>--------------------------------------------------</code></pre><pre=
><code>Device Address:</code></pre><pre><code>    serial: [serial number]</=
code></pre><pre><code>    addr: 192.168.20.2</code></pre><pre><code>    cla=
imed: False</code></pre><pre><code>    fpga: CG_400</code></pre><pre><code>=
    mgmt_addr: 192.168.1.19</code></pre><pre><code>    mgmt_addr: 192.168.1=
0.2</code></pre><pre><code>    mgmt_addr: 192.168.20.2</code></pre><pre><co=
de>    name: [name]</code></pre><pre><code>    product: x410</code></pre><p=
re><code>    type: x4xx</code></pre><p>I am using two images for the FPGA, =
each of which has different capabilities:</p><p>- UC_200, which on the wiki=
 lists Port 0 as "unused" and can achieve up to 250 Msps per channel.</p><p=
>- CG_400, which lists both ports on the wiki as "100 GbE" and can achieve =
up to 500 Msps per channel.</p><p>I am using UHD's C++ API to instruct the =
x410. My capture process tries to call "recv" as soon as possible without w=
aiting to write the previous buffer to a file. The psudocode is as follows:=
</p><p>-  Initialize "circular" buffer of arrays. Each array is "spb" sampl=
es long, and there are N such buffers.</p><p>-  Start a "writing" thread th=
at writes data from a queue to a file.</p><p>-  Set the number of samples I=
 need (nsamps_requested), set the current number of samples to 0 (nsamps),<=
/p><p>-  set the current buffer index to 0 (buff_idx)</p><p>-  set up rx_st=
reamer to start 0.1 seconds in the future and issue STREAM_MODE_START_CONTI=
NUOUS command.</p><p>   </p><p>   While (nsamps &lt;=3D nsamps_requested ||=
 not_error)</p><p>   -Get a pointer to the buffer at buff_idx</p><p>   -num=
_rx_samps &lt;- recv(buffer...)</p><p>   -check metadata returned object</p=
><p>   -add the buffer to the queue, increment the buffer index</p><p>   </=
p><p>- stop streaming</p><p>When I use the process above, I can get very lo=
ng captures using the UC_200 image, with 250 Msps, and by parsing the args =
"addr=3D192.168.20.2,mgmt_addr=3D192.168.1.19" when creating the multiusrp =
pointer.</p><p>When I switch to the CG_400 image, I can barely record a few=
 seconds worth of data. I parse the args "addr=3D192.168.10.2,second_addr=
=3D192.168.20.2,mgmt_addr=3D192.168.1.19". I changed the logger level to ge=
t a better idea of what might be going on, below are some outputs for spb a=
t 5000:</p><pre><code>[DEBUG] [RFNOC::MGMT] Established a route from EPID=
=3D4 (SW) to EPID=3D3</code></pre><pre><code>[DEBUG] [RFNOC::MGMT] Throttli=
ng stream endpoint to 100% (0x0)</code></pre><pre><code>[DEBUG] [RFNOC::MGM=
T] Initiated RX stream setup for EPID=3D3</code></pre><pre><code>[DEBUG] [R=
FNOC::MGMT] Finished RX stream setup for EPID=3D3</code></pre><pre><code>[D=
EBUG] [0/Radio#0] spp value 2032 exceeds MTU of 8016! Coercing to 1988</cod=
e></pre><pre><code>....</code></pre><pre><code>[DEBUG] [RxStreamer#0] Recei=
ved overrun message on port 0</code></pre><p>After the last logger message,=
 I catc this in my "check metadata returned object" step and stop the loop.=
</p><p>When this happens, I sometimes get 0 samples back, and sometimes get=
 less than the samples per buffer I feed the recv command. I also found tha=
t while waiting for the issued command to take effect, instead of adding em=
pty buffers to my queue, I check for ERROR_CODE_TIMEOUT and just continue t=
he while loop.</p><p>I would imagine if I can handle half the rate at 250 M=
sps for minutes of continuous capture, going to 500 Msps I could get more t=
han a couple seconds. Is this because the UC_200 image has 4GiB of DRAM and=
 the CG_400 doesn't list any on the wiki? Is there something better I can b=
e doing about the spb (I tried larger and smaller, with some luck around 50=
000 spb)? Am I properly configuring the x410 to use both QSFP28 ports for t=
he CG_400 image?</p><p>Thanks!</p><p>Zack</p>

--b1_u7pPZeNZu8TmYulHiuh40RYB8R3otGiPytqWpiV0bE--

--===============6533051853847351538==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6533051853847351538==--
