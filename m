Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C0014752408
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jul 2023 15:39:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DC618384ADE
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jul 2023 09:39:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689255567; bh=oYK7JU0m13sJ1LGMEkp/FCh+4gNhyKkMngGYKU9GHfo=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=m9ohSNDCyqtYco9V+wzMHUN5WqgoR5ZFzp6FO933ReXfOB5kjDmxLFZ3eYGogD3dw
	 g0tyAh6a1FQItS90xsUHdChDO/Zfia50tutmW2QPt6Phm+s8OwEf6jddK/8/ZnEygt
	 TyMkSkEqWiKe1RJ2qdQWQIB6Uy5bJHq/cWQW5MWHw10e6XJ5SUnzMVTN90iaBEzfD3
	 4OJNhBx3g59w6emPz7XHq7DUnMEXqBFmEtQpCPv6DTKs8urO4OiVftQvnd//rfQU6d
	 pdOaedm1qpUYag8Xj+8ebVZPiPGZxFzgn5CSKF7tpNVVS5tikmPuShttoNUNpVCz0v
	 T9t3oTPKFfWVA==
Received: from onera.onera.fr (onera.onera.fr [144.204.65.4])
	by mm2.emwd.com (Postfix) with ESMTPS id 014AD384A73
	for <usrp-users@lists.ettus.com>; Thu, 13 Jul 2023 09:38:49 -0400 (EDT)
Received: from [134.212.225.188] (wdtis881h.onecert.fr [134.212.225.188])
	by onera.onera.fr  with ESMTP id 36DDcmWC029210
	for <usrp-users@lists.ettus.com>; Thu, 13 Jul 2023 15:38:48 +0200
Message-ID: <e18ab752-9e5f-3f1a-b557-d269d6fea0a0@onera.fr>
Date: Thu, 13 Jul 2023 15:38:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: fr
To: usrp-users@lists.ettus.com
From: Remi Letellier <remi.letellier@onera.fr>
Message-ID-Hash: WN4BTHB2B4PFRQLR5YL7TMRC3H2UNI7X
X-Message-ID-Hash: WN4BTHB2B4PFRQLR5YL7TMRC3H2UNI7X
X-MailFrom: remi.letellier@onera.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP E312 - Problem with no-OS, no TX output
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WN4BTHB2B4PFRQLR5YL7TMRC3H2UNI7X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2926270767261477343=="

This is a multi-part message in MIME format.
--===============2926270767261477343==
Content-Type: multipart/alternative;
 boundary="------------qyncyLYKVdkh4bE7ZjVWGOhe"
Content-Language: fr

This is a multi-part message in MIME format.
--------------qyncyLYKVdkh4bE7ZjVWGOhe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello everyone,

*Presentation*: I'm trying to use the URSP E312 to do real-time=20
acquisition/processing of LTE signals in the PL part.


*Software: *

*=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 - *Vivado 2023.1

 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 -=C2=A0 Vitis 2023.1

 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 - Ubuntu 20.04 / Kernel: 5.10.102.=
1

 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 -=C2=A0 hdl master branch https://=
github.com/analogdevicesinc/hdl=20
*BUILD: *https://wiki.analog.com/resources/fpga/docs/build

 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 -=C2=A0 no-OS master branch=20
https://github.com/analogdevicesinc/no-OS *BUILD*:=20
https://wiki.analog.com/resources/no-os/build


*Problem: *Using these codes, I had a problem initializing the AD9361=20
without touching the code. Here's what I had in the serial port:

/=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 cf-ad9361-lpc: Status errors//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 SAMPL CLK: 61440000 tuning: RX//
//=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 0:1:2:3:4:5:6:7:8:9:a:b:c:d:e:f:/=
/
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0:# # # # # # # # # # # # # # # #=
//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 1:# # # # # # # # # # # # # # # #=
//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ad9361_dig_tune_delay: Tuning RX =
FAILED/

So I made a post on ADI Engineer Zone:=20
https://ez.analog.com/microcontroller-no-os-drivers/f/q-a/571320/usrp-e31=
2-ad9361---ad9361_dig_tune_delay-tuning-rx-failed

And someone suggested this commit to solve the problem:=20
https://github.com/analogdevicesinc/no-OS/compare/master...usrp_e310_work=
/
/

I now have on the serial port:

 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cf-ad9361-lpc: Successfully i=
nitialized (61439514 Hz)
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ad9361_init : AD936x Rev 2 su=
ccessfully initialized
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Sampling frequency is: 307200=
00
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 New sampling frequency is: 15=
360000
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 LO frequency of TX is: 900000=
00
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cf-ad9361-dds-core-lpc: Succe=
ssfully initialized (30718994 Hz)
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 DMA_EXAMPLE: address=3D0x1410=
50 samples=3D65536 channels=3D4 bits=3D16
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Done

I still don't see any output signals on TX when using a high-frequency=20
oscilloscope.


How do I fix this?

Do you need further informations?

Are there any other code possibilities for embedded LTE signal=20
processing on the PL part?


Thank you very much for your help.

Regards,


R=C3=A9mi LETELLIER

--------------qyncyLYKVdkh4bE7ZjVWGOhe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hello everyone,</p>
    <p><b>Presentation</b>: I'm trying to use the URSP E312 to do
      real-time acquisition/processing of LTE signals in the PL part. <br=
>
    </p>
    <p><br>
    </p>
    <p><b>Software: </b><br>
    </p>
    <p><b>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 - </b>Vivado 2023.1</p>
    <p>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 -=C2=A0 Vitis 2023.1</p>
    <p>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 - Ubuntu 20.04 / Kernel: 5.1=
0.102.1<br>
    </p>
    <p>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 -=C2=A0 hdl master branch
      <a class=3D"moz-txt-link-freetext" href=3D"https://github.com/analo=
gdevicesinc/hdl">https://github.com/analogdevicesinc/hdl</a>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0=C2=A0 <b>BUIL=
D:
      </b><a class=3D"moz-txt-link-freetext" href=3D"https://wiki.analog.=
com/resources/fpga/docs/build">https://wiki.analog.com/resources/fpga/doc=
s/build</a><br>
    </p>
    <p>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 -=C2=A0 no-OS master branch
      <a class=3D"moz-txt-link-freetext" href=3D"https://github.com/analo=
gdevicesinc/no-OS">https://github.com/analogdevicesinc/no-OS</a>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 <b>BUILD</b>:
      <a class=3D"moz-txt-link-freetext" href=3D"https://wiki.analog.com/=
resources/no-os/build">https://wiki.analog.com/resources/no-os/build</a><=
/p>
    <p><br>
    </p>
    <p><b>Problem: </b>Using these codes, I had a problem initializing
      the AD9361 without touching the code. Here's what I had in the
      serial port:</p>
    <p><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 cf-ad9361-lpc: Status err=
ors</i><i><br>
      </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 SAMPL CLK: 61440000 tu=
ning: RX</i><i><br>
      </i><i>=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 0:1:2:3:4:5:6:7:8:9:a:=
b:c:d:e:f:</i><i><br>
      </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0:# # # # # # # # # # =
# # # # # #</i><i><br>
      </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 1:# # # # # # # # # # =
# # # # # #</i><i><br>
      </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ad9361_dig_tune_delay:=
 Tuning RX FAILED</i></p>
    <p>So I made a post on ADI Engineer Zone:=C2=A0=C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0
<a class=3D"moz-txt-link-freetext" href=3D"https://ez.analog.com/microcon=
troller-no-os-drivers/f/q-a/571320/usrp-e312-ad9361---ad9361_dig_tune_del=
ay-tuning-rx-failed">https://ez.analog.com/microcontroller-no-os-drivers/=
f/q-a/571320/usrp-e312-ad9361---ad9361_dig_tune_delay-tuning-rx-failed</a=
></p>
    <p>And someone suggested this commit to solve the problem: =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/analogdevic=
esinc/no-OS/compare/master...usrp_e310_work">https://github.com/analogdev=
icesinc/no-OS/compare/master...usrp_e310_work</a><i><br>
      </i></p>
    <p>I now have on the serial port:</p>
    <p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cf-ad9361-lpc: Successf=
ully initialized (61439514 Hz)<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ad9361_init : AD936x Rev=
 2 successfully initialized<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Sampling frequency is: 3=
0720000<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 New sampling frequency i=
s: 15360000<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 LO frequency of TX is: 9=
0000000<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cf-ad9361-dds-core-lpc: =
Successfully initialized (30718994
      Hz)<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 DMA_EXAMPLE: address=3D0=
x141050 samples=3D65536 channels=3D4
      bits=3D16<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Done<br>
    </p>
    <p>I still don't see any output signals on TX when using a
      high-frequency oscilloscope. <br>
    </p>
    <p><br>
    </p>
    <p>How do I fix this? <br>
    </p>
    <p>Do you need further informations? <br>
    </p>
    <p>Are there any other code possibilities for embedded LTE signal
      processing on the PL part? <br>
    </p>
    <p><br>
    </p>
    <p>Thank you very much for your help.</p>
    <p>Regards,</p>
    <p><br>
    </p>
    <p>R=C3=A9mi LETELLIER<br>
    </p>
  </body>
</html>

--------------qyncyLYKVdkh4bE7ZjVWGOhe--

--===============2926270767261477343==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2926270767261477343==--
