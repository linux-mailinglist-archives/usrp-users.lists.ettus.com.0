Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8B88BCD4D
	for <lists+usrp-users@lfdr.de>; Mon,  6 May 2024 14:02:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 13BCE384DB7
	for <lists+usrp-users@lfdr.de>; Mon,  6 May 2024 08:02:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714996972; bh=yhu0iEW4tVN1tZFZlZ2HsqSeaK2MGEjHCabiEi4UqQk=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=jjmp5C6ZBOARg9qhiCOp5x1xyvfZeV3jmRbu02sME4b9lzZOFGWlKR+wuVFzEqmIq
	 STV1UfIYi1gG0SDse7FakkyvrrrC1Jsy8W1IlmHWf3UWrzopqc2u/+y1+4pV8YpJzS
	 MrlKQ94dbtXfcXHytgD+guVG//LNjRaSIicqootEI9blfNfaVKf8Wbxmk7oYARciBO
	 aTeHM9mc64O06JZR3daXuTYGbFZGVCdOz5SOYslyc+DiggqKzlJny/44mObo2NpeXG
	 qRFhBqvWmsVZF1Qlk6pB2gKR7iWD5vGtkMTUjYI6OJLiVDoInEC8onNMzDsU7IxT+X
	 lzzzNKL9nefUg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 22C9E383CE5
	for <usrp-users@lists.ettus.com>; Mon,  6 May 2024 08:02:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714996942; bh=AJlryjrAbAcxJD6aK6AJL0HuFLs9wBQzHGRflKddpdY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=xh96p0PIR845Gde+woObOI7BRST04ymRAEwfStRvL6oESDgyGSorA6/vA1D+1yuKR
	 RWokTLV095FFaiK/SpH5Dj+OVY6jQ6CdFvvo/KCYuVpP7rLRMsCqL2AnT+sxlNOI2b
	 sW/NnHSGiBnFzpuMeeHCSYgy/wRSkaBS57P4tYc/y/W6GJ0v3LFz0XomnGBZC7nA92
	 YLNE6uTTL70zSs8Bhz3jpz8Kp3ceRfH7LqzpbBCeuIHv7k7l7egEp1+Vaj2Sl2gzZa
	 y6E8YCdWSUZlMwtojHaPwspZOT8xQr6DAuvewD8Uar/0DmDGWqcAHuG0lT8Rw+JPDp
	 fcdjWla+tKleg==
Date: Mon, 6 May 2024 12:02:22 +0000
To: usrp-users@lists.ettus.com
From: ettus@basti.rocks
Message-ID: <DNuSIv2syTvH2LUJuh07JV4yEakEkELPJlc6BasqQYI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: e1aa67dd-64d6-32eb-e5c1-a07d495df30f@o2.pl
MIME-Version: 1.0
Message-ID-Hash: PRKSY5DQBNVXVSZ6K6AXHV5HQUOWUQ66
X-Message-ID-Hash: PRKSY5DQBNVXVSZ6K6AXHV5HQUOWUQ66
X-MailFrom: ettus@basti.rocks
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC FFT block on X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PRKSY5DQBNVXVSZ6K6AXHV5HQUOWUQ66/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3484439819384838991=="

This is a multi-part message in MIME format.

--===============3484439819384838991==
Content-Type: multipart/alternative;
 boundary="b1_DNuSIv2syTvH2LUJuh07JV4yEakEkELPJlc6BasqQYI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_DNuSIv2syTvH2LUJuh07JV4yEakEkELPJlc6BasqQYI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Piotr, hello everybody,

i am working with the USRP X410 as well and want to get the FFT Block to =
work in RFNoC.=20

I have tried to use the yml as it is, but the Plausibility check failed, =
which i could resolve by editing the line 143 =E2=80=9Cdram=E2=80=9D -> =E2=
=80=9Cdram0=E2=80=9D. I guess this was a typo.

After 2 h or so i had a .bit file and tried to flash it. However it doesn=
=E2=80=99t work and i get the following Message:

```
[ERROR] [MPMD::MB_IFACE] Automatic clock detection requested, but no vali=
d clock index given (63). Make sure FPGA bitfile is up to date!
```

```
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Runtime=
Error: NotImplementedError: Automatic clock detection requested, but no v=
alid clock index given (63). Make sure FPGA bitfile is up to date!
```

Do you have any idea what the problem is or can you provide me your worki=
ng yml file?

Please note that i have no in depth experience with FPGA development or R=
FNoC and only tried to follow the available guides. =20

Best Regards,\
Sebastian

```
```

--b1_DNuSIv2syTvH2LUJuh07JV4yEakEkELPJlc6BasqQYI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello Piotr, hello everybody,</p><p>i am working with the USRP X410 as w=
ell and want to get the FFT Block to work in RFNoC. </p><p>I have tried to =
use the yml as it is, but the Plausibility check failed, which i could reso=
lve by editing the line 143 =E2=80=9Cdram=E2=80=9D -&gt; =E2=80=9Cdram0=
=E2=80=9D. I guess this was a typo.</p><p>After 2 h or so i had a .bit file=
 and tried to flash it. However it doesn=E2=80=99t work and i get the follo=
wing Message:</p><pre><code>[ERROR] [MPMD::MB_IFACE] Automatic clock detect=
ion requested, but no valid clock index given (63). Make sure FPGA bitfile =
is up to date!</code></pre><pre><code>[ERROR] [RFNOC::GRAPH] Caught excepti=
on while initializing graph: RuntimeError: NotImplementedError: Automatic c=
lock detection requested, but no valid clock index given (63). Make sure FP=
GA bitfile is up to date!</code></pre><p>Do you have any idea what the prob=
lem is or can you provide me your working yml file?</p><p>Please note that =
i have no in depth experience with FPGA development or RFNoC and only tried=
 to follow the available guides.  </p><p><br></p><p>Best Regards,<br>Sebast=
ian</p><pre><code><br></code></pre>

--b1_DNuSIv2syTvH2LUJuh07JV4yEakEkELPJlc6BasqQYI--

--===============3484439819384838991==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3484439819384838991==--
