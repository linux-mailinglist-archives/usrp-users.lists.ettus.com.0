Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CB793828E
	for <lists+usrp-users@lfdr.de>; Sat, 20 Jul 2024 20:53:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 43E2D3855E8
	for <lists+usrp-users@lfdr.de>; Sat, 20 Jul 2024 14:53:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721501619; bh=/XxIHE2NcIW5cGhJVPwrGMN9yTugo/SS1IjeJsT/zRw=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=e4O5ZRLMsnCkYvbMYQpcjiO2zCjMIrc1H8VkkJy8pHB8Aj3oNwnLLYX+9uwHPZN/X
	 BOZq1iZBHo7EouMcFF4HknhTXu4Yw0J5IdCUKSoESsMkkZ3PnXPzrppBuB8yvNLZzT
	 l2fn3uBoUk5gue0BbltKYQRF0A7IYFwdePCOsz452PD4GhHADdojMrZfozBMOaph+B
	 F/qEDaZXlOyyWUPkrewPerRX1zcXRHWRDU9LVmelGWpVOZ1zAsb3j4CjQEzpoxeokH
	 Ml9hPPajxaXRIvmvgwvWf52f9qXVklvYaXwboehup+Qnt5PZFKyOUsgpdFDBHt9myL
	 bA8maCJ3SoSBw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9C4DF385453
	for <usrp-users@lists.ettus.com>; Sat, 20 Jul 2024 14:37:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721500676; bh=pzK9yKs6X6vOPi51i6Nia7if3BjZ/trDAEOc8dE4Fok=;
	h=Date:To:From:Subject:From;
	b=N1hbkpAp4TWn+FplVvV6u80/GiLb30rhREVstzCBj9FRgV/mtGINp+KslBvwAfj0L
	 /HRKUQ35xz66+armYvlyCfJu2VSh9N20+eMAr474qwd3zyJIhl1DKsbPQXNOakz0Kf
	 mWypewr8oOiTY0ACAB4HYaa4POf/9YCOKj6B4gAh4B36s+wgAEF7xjBO9mS9TSbHDY
	 HloDnVQlDYcAoloe+J+aqO6FlRBMNrqACd+Fqq4562nUrmINX+0X9382mFiRy61S6x
	 D4tBAO5uddPtcxjjWpIij3TYYRzqG9tGEMD3c5EGl6id0igNPM7abvw57g6DcM2ttJ
	 D7vEeDZzggakQ==
Date: Sat, 20 Jul 2024 18:37:55 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <QIyvCHwp8kBVi1TvJgnrcn2x06Y6cMIemA86rwFCOyE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: TU2NMQX726N4QK5U53I4XDCQLPSNRPU5
X-Message-ID-Hash: TU2NMQX726N4QK5U53I4XDCQLPSNRPU5
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 Buffers - 200Msps
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TU2NMQX726N4QK5U53I4XDCQLPSNRPU5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1368568378085138086=="

This is a multi-part message in MIME format.

--===============1368568378085138086==
Content-Type: multipart/alternative;
 boundary="b1_QIyvCHwp8kBVi1TvJgnrcn2x06Y6cMIemA86rwFCOyE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_QIyvCHwp8kBVi1TvJgnrcn2x06Y6cMIemA86rwFCOyE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear Ettus Support Team,

I hope this message finds you well. We are currently using the X310 (FPGA=
 39.2) with a 10GigE interface, handling 1996 samples (4 bytes each) per =
packet. Despite following all recommended setup tips and tricks for the U=
SRP and our Linux box, we occasionally encounter =E2=80=9CU=E2=80=9D (und=
erflow) indicators. Below are additional setup notes for your reference.

### Our Questions and Requests:

1. **FPGA Rx Buffer Size:**

   * What is the FPGA Rx buffer size on the X310?

   * I understand that this value cannot be set from the host side and re=
quires changes to the FPGA source. Could you confirm this understanding?

2. **Setting and Getting Host Parameters:**

   * We are interested in setting and getting the values of three specifi=
c host parameters: `num_send_frames`, `send_frame_size`, and `send_buff_s=
ize`.

   * The Ettus documentation for "Transport Notes" mentions that values c=
an be specified using device arguments, which configure the transport, ov=
erriding the default values chosen by UHD.

   * How do we properly set and verify these values? The UHD API does not=
 provide a direct method to retrieve these parameters, making it unclear =
if they are set correctly.

   * For example, using `stream_args.args["foo"] =3D "512";` does not ind=
icate an error, so setting `num_send_frames` in the same way does not gua=
rantee that the value is applied. How can we ensure these settings are co=
rrectly applied?

3. **Suggestions for Mitigating Underflow ("U") Issues:**

   * Could you provide suggestions on how to adjust our configuration or =
other potential fixes to eliminate the "U" indicators?

### Setup Notes:

* **Operating System:** Ubuntu 20.04 Linux with Real Time scheduler at a =
very high priority (-81).

* **Hardware Specifications:**

  * 64 cores / 4 GPUs / >250GB RAM running at 3.5 GHz.

  * Example analysis for CPU 63:

    ```
    yamlCopy codedriver: intel_cpufreq
    CPUs which run at the same hardware frequency: 63
    CPUs which need to have their frequency coordinated by software: 63
    maximum transition latency: 20.0 us.
    hardware limits: 800 MHz - 3.50 GHz
    available cpufreq governors: conservative, ondemand, userspace, power=
save, performance, schedutil
    current policy: frequency should be within 800 MHz and 3.50 GHz.
                    The governor "performance" may decide which speed to =
use within this range.
    current CPU frequency is 3.50 GHz.
   =20
    ```


* **Software Settings:**

  * Based on your recommendations, we=20

  * See thread https://lists.ettus.com/empathy/thread/P5LALBA6HSLEDTND4Z6=
IGTSZTEG3P5GX

  * =E2=80=9CFor the first version can you try setting has_time_spec to f=
alse after the\
    first packet is sent, and don't bother to set the time_spec on subseq=
uent\
    packets within a burst? The time_spec should really only be for the f=
irst\
    packet. The radio will ignore the timestamp on the subsequent packets=
\
    within a burst, and I noticed we set has_time_spec to false after the=
 first\
    packet in our benchmark_rate example.=E2=80=9D

  * https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks , n=
ot using DPDK.

Thank you for your assistance and support. We look forward to your guidan=
ce on these issues.

--b1_QIyvCHwp8kBVi1TvJgnrcn2x06Y6cMIemA86rwFCOyE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Dear Ettus Support Team,</p><p>I hope this message finds you well. We ar=
e currently using the X310 (FPGA 39.2) with a 10GigE interface, handling 19=
96 samples (4 bytes each) per packet. Despite following all recommended set=
up tips and tricks for the USRP and our Linux box, we occasionally encounte=
r =E2=80=9CU=E2=80=9D (underflow) indicators. Below are additional setup no=
tes for your reference.</p><h3>Our Questions and Requests:</h3><ol><li><p><=
strong>FPGA Rx Buffer Size:</strong></p><ul><li><p>What is the FPGA Rx buff=
er size on the X310?</p></li><li><p>I understand that this value cannot be =
set from the host side and requires changes to the FPGA source. Could you c=
onfirm this understanding?</p></li></ul></li><li><p><strong>Setting and Get=
ting Host Parameters:</strong></p><ul><li><p>We are interested in setting a=
nd getting the values of three specific host parameters: <code>num_send_fra=
mes</code>, <code>send_frame_size</code>, and <code>send_buff_size</code>.<=
/p></li><li><p>The Ettus documentation for "Transport Notes" mentions that =
values can be specified using device arguments, which configure the transpo=
rt, overriding the default values chosen by UHD.</p></li><li><p>How do we p=
roperly set and verify these values? The UHD API does not provide a direct =
method to retrieve these parameters, making it unclear if they are set corr=
ectly.</p></li><li><p>For example, using <code>stream_args.args["foo"] =3D =
"512";</code> does not indicate an error, so setting <code>num_send_frames<=
/code> in the same way does not guarantee that the value is applied. How ca=
n we ensure these settings are correctly applied?</p></li></ul></li><li><p>=
<strong>Suggestions for Mitigating Underflow ("U") Issues:</strong></p><ul>=
<li><p>Could you provide suggestions on how to adjust our configuration or =
other potential fixes to eliminate the "U" indicators?</p></li></ul></li></=
ol><h3>Setup Notes:</h3><ul><li><p><strong>Operating System:</strong> Ubunt=
u 20.04 Linux with Real Time scheduler at a very high priority (-81).</p></=
li><li><p><strong>Hardware Specifications:</strong></p><ul><li><p>64 cores =
/ 4 GPUs / &gt;250GB RAM running at 3.5 GHz.</p></li><li><p>Example analysi=
s for CPU 63:</p><pre><code>yamlCopy codedriver: intel_cpufreq
CPUs which run at the same hardware frequency: 63
CPUs which need to have their frequency coordinated by software: 63
maximum transition latency: 20.0 us.
hardware limits: 800 MHz - 3.50 GHz
available cpufreq governors: conservative, ondemand, userspace, powersave, =
performance, schedutil
current policy: frequency should be within 800 MHz and 3.50 GHz.
                The governor "performance" may decide which speed to use wi=
thin this range.
current CPU frequency is 3.50 GHz.
<br></code></pre></li></ul></li></ul><ul><li><p><strong>Software Settings:<=
/strong></p><ul><li><p>Based on your recommendations, we </p></li><li><p>Se=
e thread https://lists.ettus.com/empathy/thread/P5LALBA6HSLEDTND4Z6IGTSZTEG=
3P5GX</p></li><li><p>=E2=80=9CFor the first version can you try setting has=
_time_spec to false after the<br>first packet is sent, and don't bother to =
set the time_spec on subsequent<br>packets within a burst? The time_spec sh=
ould really only be for the first<br>packet. The radio will ignore the time=
stamp on the subsequent packets<br>within a burst, and I noticed we set has=
_time_spec to false after the first<br>packet in our benchmark_rate example=
.=E2=80=9D</p></li><li><p>https://kb.ettus.com/USRP_Host_Performance_Tuning=
_Tips_and_Tricks , not using DPDK.</p></li></ul></li></ul><p>Thank you for =
your assistance and support. We look forward to your guidance on these issu=
es.</p><p><br></p>

--b1_QIyvCHwp8kBVi1TvJgnrcn2x06Y6cMIemA86rwFCOyE--

--===============1368568378085138086==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1368568378085138086==--
