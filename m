Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C75458C383
	for <lists+usrp-users@lfdr.de>; Mon,  8 Aug 2022 08:50:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CBF9A380F0F
	for <lists+usrp-users@lfdr.de>; Mon,  8 Aug 2022 02:50:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659941430; bh=DVo4PuCTzHlWFPef4qeS9rr55LY6qZkqLg6Ko78VrNY=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0VkIRwM8KeMfGSO4IcnAxnelbOn0MRJae0AYKU0fx+HbCS6TrPQaRzA+RAeguoTKH
	 E2dyFSC1liZudjQLVg7rxsXHxQLYUqulQ9Cu8nhR6EppibyETGlakIvzWwJrbDLV45
	 +5BN3rUPYG6HrOMJtf9uA61c5uGRnSo74+7cELOrJTEF4cW+1FPZDq/U3/RiTD8GW4
	 WDcWpYB5cpkmvn1kSEDo5N2drNjRGtF6wrb5zuanYXzTY5UvA9znNze4at+8QB8s/j
	 KVkPAFEzMkttPqSscr7RZ+G2clTVEwhrzpUBY0sNJs/shwa5bIVfLgDGOmiSWajlUz
	 /SI1m8Q9OaDEw==
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 2ED45383924
	for <usrp-users@lists.ettus.com>; Mon,  8 Aug 2022 02:48:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jN8DNCs7";
	dkim-atps=neutral
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-3246910dac3so70425937b3.12
        for <usrp-users@lists.ettus.com>; Sun, 07 Aug 2022 23:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=Ri5FueE6Ush0UVdn4jXgXvDoAJGZWKHL2k//nKlnp3Q=;
        b=jN8DNCs7Lm2VtuPuMZYtdxReDuAbCz0vNimSW4AXMapTSUQFRdK2j/TlUBgzveOR8L
         ETB6FO9U65G7VcjrWc0Pi8TLMzZdvYcAx1mRVNq+tCBc2c7J858awRFzeJBPitoaBspd
         hJUM+SlU0gn9A3ALU6tefTBW8pJtQBROiXN6949fFa7hyLc7Fcz0Qqdroiwas63VJ6/D
         qV9t7snb47VDCvIoITJWznEIPImEGovQyApjNmF6tPuwULS+9lDVdw1pAV7J1maqm8Pk
         dm5133EByXjWRy2AwdT7UTyub6kocN5VRBj31CG5E98KWpUdhhvyJp3QeY2TEIgs/yIf
         pcFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=Ri5FueE6Ush0UVdn4jXgXvDoAJGZWKHL2k//nKlnp3Q=;
        b=LxDi9WbF61WIG5yU9YKNUT2fFAw7pBhPU9Tht7QNC3Sb2sVX/wj4lGBCEeoKK6po69
         I8qti9yVF+2D4NZ7IooYmBF75FbNwMXtVpgoEXC9M4Qj5DtOGxKg8a1vaF5U82xc3zeA
         TYp4ehWtEL/xv62a70alZWvhcNlkMMOWxRI1hyHUA2kSxp5dFfki5i5E20JiliYG6pLl
         Yi/aYVx/bI6YDXNB0Wx9GBjay5PIb0o8crBwDsPLpTpBLkS4a5I8N1+zn9eeL2Ixw4Be
         /6RmL9TDqNwYckS1FxltZdvitgnFf4USN7bMk59E9VXaM3VnbVfKUzSdkjnXCOtSXiHX
         eCSg==
X-Gm-Message-State: ACgBeo37nOLXNL/fBfftYVYooXgAipdVVBl/LDhDWYwOs1mwAnJfg3oR
	8CoxJ7OI4nHvSlh/B2fW5bFTz2MNhRNEBxJrFuFHIfrkEJxa
X-Google-Smtp-Source: AA6agR67Hmr50DM6lRynwJCOek6vUIQkrMm5v4ubfbOXLD+65+cvRxd9CmdE48eDjQJrNmOq1odteEu5iaLZK7bYSAY=
X-Received: by 2002:a81:6309:0:b0:323:6fd9:8f36 with SMTP id
 x9-20020a816309000000b003236fd98f36mr16557078ywb.96.1659941306329; Sun, 07
 Aug 2022 23:48:26 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Date: Mon, 8 Aug 2022 09:48:15 +0300
Message-ID: <CALooG3-tGbHmBpZUvb8z3daaB61QW=w1-SrOKx5LuryiL4i-HA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 5SCUYF33F2UZHGJVHSRIWNMVRM5KL5YE
X-Message-ID-Hash: 5SCUYF33F2UZHGJVHSRIWNMVRM5KL5YE
X-MailFrom: simultaneous11@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E320 Building Custom IP and Working it via UHD
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5SCUYF33F2UZHGJVHSRIWNMVRM5KL5YE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6608317535850996160=="

--===============6608317535850996160==
Content-Type: multipart/alternative; boundary="000000000000e96cf105e5b533ba"

--000000000000e96cf105e5b533ba
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

  I have a E320 device and I am trying to learn how to build my own custom
IPs. The thing is that the IPs which were implemented by Ettus were not
enough for me. Therefore; I need to build my own custom IPs. I have all the
HDL codes that I need to build on E320, but I am having a problem with E320
development flow.

  To learn how to add my custom IPs, I have analyzed the Rfnoc-example in
the uhd repository. In that example, they showed basic Gain IP (which uses
multiply IP). Firstly, I have synthesized and implemented that example.
After that, I loaded the bit file into USRP and tested it
with a init_gain_block C++ file. I tried to write a value to register and
read back from the same register. It worked fine. I also changed the
default UHD C++ code and wrote a basic UHD C++ code to amplify a signal by
looking at example UHD C++ codes. That worked fine, too. The Signal given
from ADC is amplified and given back to DAC. After that I changed the
multiply IP with DDS IP and tried to build it to generate a signal. The
thing is that I implemented it successfully and the bit file was generated,
but it did not work after loading it into the device.

There are 2 problems:
1 -) Since all the example UHD C++ codes are meant to transfer data between
host and device, I do not know how to make it work. Because, my DDS IP does
not need to transfer data between host and device. I just need to write a
frequency value to register and DDS will generate a signal. After that, I
expect it to work fine. To do that, in UHD C++ code I have used rfnoc_graph
and connected my block with the DUC block. Also I connected the DUC block
with the Radio block. I expect this to work seamlessly, but it did not. I
could not figure out how to write a C++ code to make this work.
The code gives an error which is "[ERROR] [RFNOC::GRAPH] Caught exception
while initializing graph: Environment Error: IOError: Timed out getting
recv buff for management transaction"

2 -) While building DDS IP, I have opened a Vivado 2019.1 and generated a
DDS IP. Then, I used the .xci file in uhd. I do not know if this is the
right way, but UHD gives no error while implementing it.



USRP Device :E320
UHD Version : 4.0.0.0
Host OS : Ubuntu 20.04.4

Kind Regards,
Yasir

--000000000000e96cf105e5b533ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<div><br><div>=C2=A0 I have a E320 device and =
I am trying to learn how to build my own custom IPs. The thing is that the =
IPs which were implemented by Ettus were not enough for me. Therefore; I ne=
ed to build my own custom IPs. I have all the HDL codes that I need to buil=
d on E320, but I am having a problem with E320 development flow.</div><div>=
<br></div><div>=C2=A0 To learn how to add my custom IPs, I have analyzed th=
e Rfnoc-example in the uhd repository. In that example, they showed basic G=
ain IP (which uses multiply IP). Firstly, I have synthesized and implemente=
d that example. After that, I loaded the bit file into USRP and tested it w=
ith=C2=A0a=C2=A0init_gain_block C++ file. I tried to write a value to regis=
ter and read back from the same=C2=A0register. It worked fine. I also chang=
ed the default UHD C++ code and wrote a basic UHD C++ code to amplify a sig=
nal by looking at example=C2=A0UHD C++ codes. That worked fine, too. The Si=
gnal given from ADC is amplified and given back to DAC. After that I change=
d the multiply IP with DDS IP and tried to build it to generate a signal. T=
he thing is that I implemented it successfully and the bit file was generat=
ed, but it did not work after loading it into the device.=C2=A0</div><div><=
br></div><div>There are 2 problems:</div><div>1 -) Since all the example UH=
D C++ codes are meant to transfer data between host and device, I do not kn=
ow how to make it work. Because, my DDS IP does not need to transfer data b=
etween host and device. I just need to write a frequency value to register =
and DDS will generate a signal. After that, I expect it to work fine. To do=
 that, in UHD C++ code I have used rfnoc_graph and connected my block with =
the DUC block. Also I connected the DUC block with the Radio block. I expec=
t this to work seamlessly, but it did not.=C2=A0I could=C2=A0not figure out=
 how to write a C++ code to make this work.</div><div>The code gives an err=
or which is &quot;[ERROR] [RFNOC::GRAPH] Caught exception while initializin=
g graph: Environment Error: IOError: Timed out getting recv buff for manage=
ment transaction&quot;</div><div><br></div><div>2 -) While building DDS IP,=
 I have opened a Vivado 2019.1 and generated a DDS IP. Then, I used the .xc=
i file in uhd. I do not know if this is the right way, but UHD gives no err=
or while implementing it.</div><div><br></div><div><br></div><div><br></div=
><div>USRP Device :E320</div><div>UHD Version : 4.0.0.0</div><div>Host OS :=
 Ubuntu 20.04.4</div></div><div><br></div><div>Kind Regards,</div><div>Yasi=
r</div><div><br></div><div><br></div><div><br class=3D"gmail-Apple-intercha=
nge-newline"></div></div>

--000000000000e96cf105e5b533ba--

--===============6608317535850996160==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6608317535850996160==--
