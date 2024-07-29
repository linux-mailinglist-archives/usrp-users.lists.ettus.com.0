Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DB593F2F1
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2024 12:37:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 26284385654
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2024 06:37:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722249464; bh=czbAalBYceGVTYgERLt6350mji7dEkwQqyJDsm4Zv7w=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=estFdi8QI7zdm8AvGWIqGSrWkE0OGHXJYv5LGe7KqUuVbjO/EOex9l8xc8Au5HEOb
	 0fCXElfhQhp69CXGSfvH5NwHl0jDr1yRN/VQz3RADgUkJxCBVegYfOW4IXrMqpmPUN
	 dr0Ewbz+kZaW6bM6t4UM8HznwDo6axAbbFoeZluBmzHOxUIEos5OVD6fmD0YZVCVWu
	 yAcvQyABASJK77JuD5nQ+ktZR93szTYqNh6YEwTDXHULjvM+RGky+R6ywTZPF3rv22
	 fd5CVNdc2SibjXuspU/+yj5x/dALkQNUlALTBzVZGbV2tjWDd62j83T6SHlrHnu5Wy
	 8geRvNcDpYz+A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C930738562C
	for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2024 06:37:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722249448; bh=qVedJ9nfOYj4U8ijo+1qvhWG7NiiMfg8dAFN1+DrJVU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=MXIbJjLCfBMuh7COssKqEXcUR23yt+AklZFfFTpUDsaAjP1TO5+oz4zBqddoYPsPi
	 qbQg89baMUt8mvjJ+CL1cYD74T4t/9jmLXzvsskM03GmkgQ/bmBZnadx9T0QlXEMVU
	 shOUt6+sxm9axNirABfDbKV44r88e9cVae0Fy9PC40lkdGt26fIQoMPtcBwGXjdoS1
	 c293JFC2RR/CXr+oESgwY22i+mBTkoUeGg9hQKxKY+J0d/Lfpn3cjNGH/wxG1atocF
	 dqDkIwn+jDU3O4F9oelwgUw7yg9WQSgvEWKZoAz6PHWoCH7CDqOTFy3Co0diAsP2uq
	 jMtxMhJbvIq2A==
Date: Mon, 29 Jul 2024 10:37:28 +0000
To: usrp-users@lists.ettus.com
From: sebastian.schroeder@hhi.fraunhofer.de
Message-ID: <yLeNdlzPdwHTKBQklZ249pFxxrMMvSPY7c8cahqyIc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: PA4PR10MB436769A925D27751E47DD659ACB72@PA4PR10MB4367.EURPRD10.PROD.OUTLOOK.COM
MIME-Version: 1.0
Message-ID-Hash: QVZ6R3I6NMCVG7PZSOCJ6V2M7GE5ESGQ
X-Message-ID-Hash: QVZ6R3I6NMCVG7PZSOCJ6V2M7GE5ESGQ
X-MailFrom: sebastian.schroeder@hhi.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reaching high signal bandwidth with X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QVZ6R3I6NMCVG7PZSOCJ6V2M7GE5ESGQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7759244268839065287=="

This is a multi-part message in MIME format.

--===============7759244268839065287==
Content-Type: multipart/alternative;
 boundary="b1_yLeNdlzPdwHTKBQklZ249pFxxrMMvSPY7c8cahqyIc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_yLeNdlzPdwHTKBQklZ249pFxxrMMvSPY7c8cahqyIc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello!

I tried everything with the recommended settings and I also only got 61.4=
4 MS/s with GNU Radio and the X410. It looks like the limiting factor her=
e is GNU Radio. I think it might be because of the scheduler and the one =
thread per block policy of GR.=20

The first thing you should do is check whether the UHD Benchmark is worki=
ng for you without any underflows.=20

For example, you can try this:

```
$ sudo ./benchmark_rate
```

```
--args "type=3Dx4xx,addr=3D192.168.10.2,mgmt_addr=3D<IPaddr>,master_clock=
_rate=3D250e6,use_dpdk=3D1"
```

```
--priority "high"
```

```
--multi_streamer
```

```
--duration 60
```

```
--channels --rx_rate 250e6
```

```
--rx_subdev "B:1"
```

```
--tx_rate 250e6
```

```
--tx_subdev "A:0" =20
```

A straightforward experiment that can be conducted in GNU Radio is to set=
 a Signal Source or File Source in front of a Null Sink and evaluate its =
throughput with the Probe Rate Block.=20

```

[Source] --> [Probe Rate] --> (log) [Message Debug]
         \
	  \--> [Null Sink]

```

The configuration should yield throughput of at least 250 MS/s, depending=
 on the host workstation in use. (I even achieved 618 MS/s.) Then, the nu=
ll sink was replaced with the USRP sink (use the same args as above), and=
 the benchmark was repeated with different decimations of the bandwidth. =
No more underflows were observed at the previously mentioned 61.44 MS/s. =
=20

The optimal approach may vary depending on the specific application. In s=
ome cases, it may be beneficial to pre-generate the waveform in GNU Radio=
 and transmit it using a UHD-only application.

Best regards,\
Sebastian Schr=C3=B6der

--b1_yLeNdlzPdwHTKBQklZ249pFxxrMMvSPY7c8cahqyIc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello!</p><p>I tried everything with the recommended settings and I also=
 only got 61.44 MS/s with GNU Radio and the X410. It looks like the limitin=
g factor here is GNU Radio. I think it might be because of the scheduler an=
d the one thread per block policy of GR. </p><p>The first thing you should =
do is check whether the UHD Benchmark is working for you without any underf=
lows. </p><p>For example, you can try this:</p><pre><code>$ sudo ./benchmar=
k_rate</code></pre><pre><code>--args "type=3Dx4xx,addr=3D192.168.10.2,mgmt_=
addr=3D&lt;IPaddr&gt;,master_clock_rate=3D250e6,use_dpdk=3D1"</code></pre><=
pre><code>--priority "high"</code></pre><pre><code>--multi_streamer</code><=
/pre><pre><code>--duration 60</code></pre><pre><code>--channels --rx_rate 2=
50e6</code></pre><pre><code>--rx_subdev "B:1"</code></pre><pre><code>--tx_r=
ate 250e6</code></pre><pre><code>--tx_subdev "A:0"  </code></pre><p><br></p=
><p>A straightforward experiment that can be conducted in GNU Radio is to s=
et a Signal Source or File Source in front of a Null Sink and evaluate its =
throughput with the Probe Rate Block. </p><pre><code>
[Source] --&gt; [Probe Rate] --&gt; (log) [Message Debug]
         \
=09  \--&gt; [Null Sink]

<br></code></pre><p>The configuration should yield throughput of at least 2=
50 MS/s, depending on the host workstation in use. (I even achieved 618 MS/=
s.) Then, the null sink was replaced with the USRP sink (use the same args =
as above), and the benchmark was repeated with different decimations of the=
 bandwidth. No more underflows were observed at the previously mentioned 61=
.44 MS/s.  </p><p>The optimal approach may vary depending on the specific a=
pplication. In some cases, it may be beneficial to pre-generate the wavefor=
m in GNU Radio and transmit it using a UHD-only application.</p><p>Best reg=
ards,<br>Sebastian Schr=C3=B6der</p>

--b1_yLeNdlzPdwHTKBQklZ249pFxxrMMvSPY7c8cahqyIc--

--===============7759244268839065287==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7759244268839065287==--
