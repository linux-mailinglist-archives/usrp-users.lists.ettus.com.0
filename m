Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A14B96E81C1
	for <lists+usrp-users@lfdr.de>; Wed, 19 Apr 2023 21:17:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 17CA4384031
	for <lists+usrp-users@lfdr.de>; Wed, 19 Apr 2023 15:17:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681931826; bh=+NY2MLH6Ab2xI/YiO5CaLy5o+toirNgqdMxbMRUwWV0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=C7NZAZVB1zFWiLld8Cd+L1CMHqT57KGNe2vruLoWGhY4p3SYLoTx8FgSlK/1WjoG0
	 +ZiYYu5PfY7RDhuhEc2DfoBmErODnnfql/S/63k4LVG0hXRDDY2G4OK47yGbBqV8ep
	 D9Z4NkGhFKxHg7+a/l1sZ1Goh1a6DPPR27VH5W2e9sfI2hU3zFi928zLcP2qug0rnV
	 qzeKd5f10ZJGbF9+pXBZmVE6kT06NVS9BmfeWeGqKoG/FK33cVLOCisljilRPPxjfg
	 AmmTqNlkNrTDCUb74yK7rFqA0U0bYBDYv2EwlkzL4kEdekMES9tyaDDw1/1x2nw8zx
	 OE9y3vntr3R+Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 972CE380D15
	for <usrp-users@lists.ettus.com>; Wed, 19 Apr 2023 15:16:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681931784; bh=3gn/dHg7BmSV0VF8Sd1wMXM4G7JModHs7kQVXTI6tsI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=S+ldN5Q/Z81paRGQUrArpkGjTBvvW7Ajh4xKcxcUGBJ0Z93fn4bRM8ADEeDY5qs8L
	 wTfVNttmzW4SfqIane3wT4AwRDaqIlJ1ME8oj2FPm3pebC3zrNA9K7k3khDrosnsML
	 FMMNInDodNiTSZcyBo0S56CJjZvU7GD0FAGihNctoa8X46y7V2cQ74BB0MTK+nChyR
	 MEqKSO8Wn0RMlbCdPnasW3SzOXnguoms1a79qsPmlU5GSe63gbPdR2n8vM+0Lpb+YY
	 ymxjB6dGGKWj3xxOVuvcEabaEoUQNwjQpeAQDwXm6gTtpK58U9JH11gGZ+Owfemfdb
	 OfXxIE2WBGclA==
Date: Wed, 19 Apr 2023 19:16:24 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <qtazufOQZjlKneHY1kTvBmyNVPcxArTl5Q7KwLdZbAc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTSouNeh+X3JeS-Ad7S0RWzgr3d_bwzt_d=Qj1178r2b1w@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 4W2IY5FISS6HHVB454EE665S3HHUXT3B
X-Message-ID-Hash: 4W2IY5FISS6HHVB454EE665S3HHUXT3B
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble recieving data from antenna
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4W2IY5FISS6HHVB454EE665S3HHUXT3B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5383371957146668250=="

This is a multi-part message in MIME format.

--===============5383371957146668250==
Content-Type: multipart/alternative;
 boundary="b1_qtazufOQZjlKneHY1kTvBmyNVPcxArTl5Q7KwLdZbAc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_qtazufOQZjlKneHY1kTvBmyNVPcxArTl5Q7KwLdZbAc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I am currently using C++. For now, the custom image I am using for the RX=
 chain is Radio -> KeepOneInN -> KeepOneInN -> Rxstreamer, which are all =
included in the UHD 4.4.0, whilst still having the same issue. Specifical=
ly, here is the output when I print active connections

```
* 0/Radio#0:0-->0/KeepOneInN#1:0
```

```
* 0/KeepOneInN#1:0-->0/KeepOneInN#0:0
```

```
* 0/KeepOneInN#0:0-->RxStreamer#0:0
```

I currently have all my blocks dynamically linked(i.e no static connectio=
ns). My guess is there is the radio block is not being properly connected=
 to the antenna on the front end. However, when I ask for it to report th=
e antenna using radio_ctrl->get_rx_antenna, It tells me it is connected t=
o =E2=80=9CRX1=E2=80=9D.

Essentially my goal right now is to store the values directly from the ad=
c onto the host computer. One KeepOneIn N block is in packet mode, and th=
e other in sample mode.

--b1_qtazufOQZjlKneHY1kTvBmyNVPcxArTl5Q7KwLdZbAc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I am currently using C++. For now, the custom image I am using for the=
 RX chain is Radio -&gt; KeepOneInN -&gt; KeepOneInN -&gt; Rxstreamer, wh=
ich are all included in the UHD 4.4.0, whilst still having the same issue=
. Specifically, here is the output when I print active connections</p><pr=
e><code>* 0/Radio#0:0--&gt;0/KeepOneInN#1:0</code></pre><pre><code>* 0/Ke=
epOneInN#1:0--&gt;0/KeepOneInN#0:0</code></pre><pre><code>* 0/KeepOneInN#=
0:0--&gt;RxStreamer#0:0</code></pre><p>I currently have all my blocks dyn=
amically linked(i.e no static connections). My guess is there is the radi=
o block is not being properly connected to the antenna on the front end. =
However, when I ask for it to report the antenna using radio_ctrl-&gt;get=
_rx_antenna, It tells me it is connected to =E2=80=9CRX1=E2=80=9D.</p><p>=
<br></p><p>Essentially my goal right now is to store the values directly =
from the adc onto the host computer. One KeepOneIn N block is in packet m=
ode, and the other in sample mode.</p>


--b1_qtazufOQZjlKneHY1kTvBmyNVPcxArTl5Q7KwLdZbAc--

--===============5383371957146668250==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5383371957146668250==--
