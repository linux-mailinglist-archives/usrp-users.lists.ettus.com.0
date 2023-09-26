Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BF26E7AF5C5
	for <lists+usrp-users@lfdr.de>; Tue, 26 Sep 2023 23:43:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B6F88384E91
	for <lists+usrp-users@lfdr.de>; Tue, 26 Sep 2023 17:43:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695764611; bh=EQBbfbMV+UhQdJkjnAtT+72DlEhcOJPCbT9BjJ8Dk2c=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=d/JocsevIZ/fMgj4e+b0I9FOmvEiN8zmjQ1B515kurfnX4zcbbAyHJaT9WH/OQdqc
	 AXK58bhRif/6wyAj6SEUKx49GnjsrRFpHishjYcEzgyTo+ONTKIRFwD/pleczDhme1
	 wghSFzOoScM3+01WCHX4eU36UsnlV2DLaIi9rLAVs/ZZApwiSYSeiLj6Zp4ZdS1dF5
	 Go3Cbd5uIDS5KJW2if/Ek+RSWCsuz/27pC+1d9bH5+rQ09qPcjso2oF++vuuBM3Lor
	 XlgDuuQQlq/5alSlAKzbF+XbnQrcn9Is09rsbn1FcdkmuFkjlOrmCx0WiMHl/6AcEt
	 63XfknsUoKUsg==
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 491DD384DAD
	for <usrp-users@lists.ettus.com>; Tue, 26 Sep 2023 17:43:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=umich.edu header.i=@umich.edu header.b="GED9nVQi";
	dkim-atps=neutral
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-d8673a90f56so7566503276.0
        for <usrp-users@lists.ettus.com>; Tue, 26 Sep 2023 14:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umich.edu; s=google-2016-06-03; t=1695764598; x=1696369398; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0vCdNwIIc2/4lv/dM+pZY0H+y+KGpd8mk62l0dXlQxo=;
        b=GED9nVQi4zXcF9VKTAAkXJFbGRBLMCwRc6eHfheI8K/DIBZaL0wQ0/p5y4cJEDkNTU
         kCzX+i5UNyun83hZ3rlIiUPQ0jVigiK7Lp3Ko99FK+9k0coOOqFDZf8Li55DIPg6VvKU
         7NPWMyTXw/jXBdJGuFK6Smzr5E099mNn+ch1pKwomENQLNnxo1vpoWPgIml/erzDvE7G
         E33YmgBPfAvaE6ubLOxryFhZ1Tgy34CuhwaQCoPL30C9+R82rxxLoDw7kZ6R85ubu6nA
         fLJOykGD+U76+WS1hkkzwO5ddK8UVpqbu9MMvGZzd7WDWSOYrckLAdK4NBOk7jI34CkU
         gm9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695764598; x=1696369398;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0vCdNwIIc2/4lv/dM+pZY0H+y+KGpd8mk62l0dXlQxo=;
        b=B9SPZMU8OazhO7Bw9smAUbv67fPcvESrQTYmLAikQjsqGC+9pc0KQYGcT/PjgAKXFG
         ahAWq1AxIPwu+D8E1F0+Ftc7nQlB9PzVi1Z1nVC4ZA1WjYhGs0wYmXOiSpXUEPVStSVZ
         SIp/59c203RQ5SFuWvqhBSb/+n46h9qsmrNGy/hf7ZrhiY+QwJuS8KwZ1m6jmqERe81d
         SoQxVVwcrqRplYSRUJN/+V5XSrsNP0E50ZBUnjthUnBf/deqMMoRniVPEqpbdJTxoAgO
         1ukauMIM/xo/ippbLZ6a7ZyJxHLaTT1cDQ2pGlfzgf6Mr3u/mF5WJNKrJulfbeKCIm+G
         mr/g==
X-Gm-Message-State: AOJu0Yw/azSmrmSYcBgMHJM6UaDVPx7IOL8a7TnJzoDbPVyb+Agbs2UL
	uBQPS0GgUNIvIhUcqyDg2sV4bi4lXy1Baj3sCdCdeFpWzhEElBG0bW4=
X-Google-Smtp-Source: AGHT+IHc+2qVO5osWr/6bB6ZopdauwxZkEkyHWEBRNYA277/xtYnXRlKZwnPVE/lDegvpNrPmcWo95CZaSX78z5ukFM=
X-Received: by 2002:a25:1f07:0:b0:d7f:2cb6:7d8b with SMTP id
 f7-20020a251f07000000b00d7f2cb67d8bmr128372ybf.63.1695764598546; Tue, 26 Sep
 2023 14:43:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAErymBjsm1EFK_Py2RGfm7nyWzAkspg5=at5Cd+24v2XVnOkQQ@mail.gmail.com>
 <76176ec5-f739-d9dd-d85c-9f7c90f4f60d@gmail.com>
In-Reply-To: <76176ec5-f739-d9dd-d85c-9f7c90f4f60d@gmail.com>
From: Achilleas Anastasopoulos <anastas@umich.edu>
Date: Tue, 26 Sep 2023 17:43:03 -0400
Message-ID: <CAErymBgV7uNOSMUko3V2CJAo0OCe00COgqQyRMT9YDFPTEKcrw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
Message-ID-Hash: KWHLSVAEY7FQQIGQ56STPFO2X4NUDXHE
X-Message-ID-Hash: KWHLSVAEY7FQQIGQ56STPFO2X4NUDXHE
X-MailFrom: anastas@umich.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: calibration utilities
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KWHLSVAEY7FQQIGQ56STPFO2X4NUDXHE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6918641505691575779=="

--===============6918641505691575779==
Content-Type: multipart/alternative; boundary="00000000000084fdbd060649f656"

--00000000000084fdbd060649f656
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Marcus.

Can you suggest a way to test this hypothesis?

What package do the utilities come from?
What specific libraries are involved?

thanks
Achilleas


On Tue, Sep 26, 2023 at 5:06=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 26/09/2023 16:53, Achilleas Anastasopoulos wrote:
> > Hi all,
> >
> > I have installed gnuradio/uhd in 10 computers in a lab (almost
> > identical setups).
> > These are  Ubuntu 20.04.4 LTS focal
> > The connected USRPs (X300) work fine in all 10 computers.
> >
> > However, two of them result in a core dump when trying to use
> > calibrating utilities as follows:
> >
> > $ uhd_cal_tx_dc_offset
> >
> > Creating the usrp device with: ,ignore_cal_file=3D1,ignore-cal-file=3D1=
...
> > [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
> > UHD_4.2.0.0-0ubuntu1~focal1
> > [INFO] [X300] X300 initialization sequence...
> > [INFO] [X300] Maximum frame size: 1472 bytes.
> > [INFO] [X300] Radio 1x clock: 200 MHz
> > Running calibration for UBX TX
> > Daughterboard serial: 3158306
> > Calibration frequency range: 10 MHz -> 6000 MHz
> > Dterminate called without an active exception
> > Aborted (core dumped)
> >
> >
> > I found some similar questions on the Internet but not any definite
> > answers.
> > Are there any ideas on how to proceed with investigating that?
> >
> > thanks
> > Achilleas
> >
> I'd suspect mis-match between utilities and libraries.
>
>
> >
> >
> >
> > FYI:
> >
> > $ uhd_find_devices
> > [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
> > UHD_4.2.0.0-0ubuntu1~focal1
> > --------------------------------------------------
> > -- UHD Device 0
> > --------------------------------------------------
> > Device Address:
> >     serial: 315C6B2
> >     addr: 192.168.10.2
> >     addr: 192.168.40.2
> >     fpga: HG
> >     name:
> >     product: X310
> >     type: x300
> >
> > Also:
> >
> > $ uhd_usrp_probe
> > [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
> > UHD_4.2.0.0-0ubuntu1~focal1
> > [INFO] [X300] X300 initialization sequence...
> > [INFO] [X300] Maximum frame size: 1472 bytes.
> > [INFO] [X300] Radio 1x clock: 200 MHz
> >   _____________________________________________________
> >  /
> > |       Device: X-Series Device
> > |     _____________________________________________________
> > |    /
> > |   |       Mboard: X310
> > |   |   revision: 11
> > |   |   revision_compat: 7
> > |   |   product: 30818
> > |   |   mac-addr0: 00:80:2f:22:64:6c
> > |   |   mac-addr1: 00:80:2f:22:64:6d
> > |   |   gateway: 192.168.10.1
> > |   |   ip-addr0: 192.168.10.2
> > |   |   subnet0: 255.255.255.0
> > |   |   ip-addr1: 192.168.20.2
> > |   |   subnet1: 255.255.255.0
> > |   |   ip-addr2: 192.168.30.2
> > |   |   subnet2: 255.255.255.0
> > |   |   ip-addr3: 192.168.40.2
> > |   |   subnet3: 255.255.255.0
> > |   |   serial: 315C6B2
> > |   |   FW Version: 6.0
> > |   |   FPGA Version: 38.0
> > |   |   FPGA git hash: be53058
> > |   |   RFNoC capable: Yes
> > |   |
> > |   |   Time sources:  internal, external, gpsdo
> > |   |   Clock sources: internal, external, gpsdo
> > |   |   Sensors: ref_locked
> > |     _____________________________________________________
> > |    /
> > |   |       RFNoC blocks on this device:
> > |   |
> > |   |   * 0/DDC#0
> > |   |   * 0/DDC#1
> > |   |   * 0/DUC#0
> > |   |   * 0/DUC#1
> > |   |   * 0/Radio#0
> > |   |   * 0/Radio#1
> > |   |   * 0/Replay#0
> > |     _____________________________________________________
> > |    /
> > |   |       Static connections on this device:
> > |   |
> > |   |   * 0/SEP#0:0=3D=3D>0/DUC#0:0
> > |   |   * 0/DUC#0:0=3D=3D>0/Radio#0:0
> > |   |   * 0/Radio#0:0=3D=3D>0/DDC#0:0
> > |   |   * 0/DDC#0:0=3D=3D>0/SEP#0:0
> > |   |   * 0/Radio#0:1=3D=3D>0/DDC#0:1
> > |   |   * 0/DDC#0:1=3D=3D>0/SEP#1:0
> > |   |   * 0/SEP#2:0=3D=3D>0/DUC#1:0
> > |   |   * 0/DUC#1:0=3D=3D>0/Radio#1:0
> > |   |   * 0/Radio#1:0=3D=3D>0/DDC#1:0
> > |   |   * 0/DDC#1:0=3D=3D>0/SEP#2:0
> > |   |   * 0/Radio#1:1=3D=3D>0/DDC#1:1
> > |   |   * 0/DDC#1:1=3D=3D>0/SEP#3:0
> > |   |   * 0/SEP#4:0=3D=3D>0/Replay#0:0
> > |   |   * 0/Replay#0:0=3D=3D>0/SEP#4:0
> > |   |   * 0/SEP#5:0=3D=3D>0/Replay#0:1
> > |   |   * 0/Replay#0:1=3D=3D>0/SEP#5:0
> > |     _____________________________________________________
> > |    /
> > |   |       TX Dboard: 0/Radio#0
> > |   |   ID: UBX-160 v2 (0x007d)
> > |   |   Serial: 3158306
> > |   |     _____________________________________________________
> > |   |    /
> > |   |   |       TX Frontend: 0
> > |   |   |   Name: UBX TX
> > |   |   |   Antennas: TX/RX, CAL
> > |   |   |   Sensors: lo_locked
> > |   |   |   Freq range: 10.000 to 6000.000 MHz
> > |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> > |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
> > |   |   |   Connection Type: QI
> > |   |   |   Uses LO offset: No
> > |     _____________________________________________________
> > |    /
> > |   |       RX Dboard: 0/Radio#0
> > |   |   ID: UBX-160 v2 (0x007e)
> > |   |   Serial: 3158306
> > |   |     _____________________________________________________
> > |   |    /
> > |   |   |       RX Frontend: 0
> > |   |   |   Name: UBX RX
> > |   |   |   Antennas: TX/RX, RX2, CAL
> > |   |   |   Sensors: lo_locked
> > |   |   |   Freq range: 10.000 to 6000.000 MHz
> > |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> > |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
> > |   |   |   Connection Type: IQ
> > |   |   |   Uses LO offset: No
> > |     _____________________________________________________
> > |    /
> > |   |       TX Dboard: 0/Radio#1
> > |   |     _____________________________________________________
> > |   |    /
> > |   |   |       TX Frontend: 0
> > |   |   |   Name: Unknown (0xffff) - 0
> > |   |   |   Antennas:
> > |   |   |   Sensors:
> > |   |   |   Freq range: 0.000 to 0.000 MHz
> > |   |   |   Gain Elements: None
> > |   |   |   Bandwidth range: 0.0 to 0.0 step 0.0 Hz
> > |   |   |   Connection Type: IQ
> > |   |   |   Uses LO offset: No
> > |     _____________________________________________________
> > |    /
> > |   |       RX Dboard: 0/Radio#1
> > |   |     _____________________________________________________
> > |   |    /
> > |   |   |       RX Frontend: 0
> > |   |   |   Name: Unknown (0xffff) - 0
> > |   |   |   Antennas:
> > |   |   |   Sensors:
> > |   |   |   Freq range: 0.000 to 0.000 MHz
> > |   |   |   Gain Elements: None
> > |   |   |   Bandwidth range: 0.0 to 0.0 step 0.0 Hz
> > |   |   |   Connection Type: IQ
> > |   |   |   Uses LO offset: No
> >
> >
> >
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--00000000000084fdbd060649f656
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Marcus.</div><div><br></div><div>Can you sugge=
st a way to test this hypothesis?</div><div><br></div><div>What package do =
the utilities come from?</div><div>What specific libraries are involved?</d=
iv><div><br></div><div>thanks</div><div>Achilleas</div><div><br></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep=
 26, 2023 at 5:06=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvon=
braun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">On 26/09/2023 16:53, Achilleas Anas=
tasopoulos wrote:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I have installed gnuradio/uhd in 10 computers in a lab (almost <br>
&gt; identical setups).<br>
&gt; These are=C2=A0 Ubuntu 20.04.4 LTS focal<br>
&gt; The connected USRPs (X300) work fine in all 10 computers.<br>
&gt;<br>
&gt; However, two of them result in a core dump when trying to use <br>
&gt; calibrating utilities as follows:<br>
&gt;<br>
&gt; $ uhd_cal_tx_dc_offset<br>
&gt;<br>
&gt; Creating the usrp device with: ,ignore_cal_file=3D1,ignore-cal-file=3D=
1...<br>
&gt; [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; <br>
&gt; UHD_4.2.0.0-0ubuntu1~focal1<br>
&gt; [INFO] [X300] X300 initialization sequence...<br>
&gt; [INFO] [X300] Maximum frame size: 1472 bytes.<br>
&gt; [INFO] [X300] Radio 1x clock: 200 MHz<br>
&gt; Running calibration for UBX TX<br>
&gt; Daughterboard serial: 3158306<br>
&gt; Calibration frequency range: 10 MHz -&gt; 6000 MHz<br>
&gt; Dterminate called without an active exception<br>
&gt; Aborted (core dumped)<br>
&gt;<br>
&gt;<br>
&gt; I found some similar questions on the Internet but not any definite <b=
r>
&gt; answers.<br>
&gt; Are there any ideas on how to proceed with investigating that?<br>
&gt;<br>
&gt; thanks<br>
&gt; Achilleas<br>
&gt;<br>
I&#39;d suspect mis-match between utilities and libraries.<br>
<br>
<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; FYI:<br>
&gt;<br>
&gt; $ uhd_find_devices<br>
&gt; [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; <br>
&gt; UHD_4.2.0.0-0ubuntu1~focal1<br>
&gt; --------------------------------------------------<br>
&gt; -- UHD Device 0<br>
&gt; --------------------------------------------------<br>
&gt; Device Address:<br>
&gt; =C2=A0 =C2=A0 serial: 315C6B2<br>
&gt; =C2=A0 =C2=A0 addr: 192.168.10.2<br>
&gt; =C2=A0 =C2=A0 addr: 192.168.40.2<br>
&gt; =C2=A0 =C2=A0 fpga: HG<br>
&gt; =C2=A0 =C2=A0 name:<br>
&gt; =C2=A0 =C2=A0 product: X310<br>
&gt; =C2=A0 =C2=A0 type: x300<br>
&gt;<br>
&gt; Also:<br>
&gt;<br>
&gt; $ uhd_usrp_probe<br>
&gt; [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; <br>
&gt; UHD_4.2.0.0-0ubuntu1~focal1<br>
&gt; [INFO] [X300] X300 initialization sequence...<br>
&gt; [INFO] [X300] Maximum frame size: 1472 bytes.<br>
&gt; [INFO] [X300] Radio 1x clock: 200 MHz<br>
&gt; =C2=A0 _____________________________________________________<br>
&gt; =C2=A0/<br>
&gt; | =C2=A0 =C2=A0 =C2=A0 Device: X-Series Device<br>
&gt; | =C2=A0 =C2=A0 _____________________________________________________<=
br>
&gt; | =C2=A0 =C2=A0/<br>
&gt; | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: X310<br>
&gt; | =C2=A0 | =C2=A0 revision: 11<br>
&gt; | =C2=A0 | =C2=A0 revision_compat: 7<br>
&gt; | =C2=A0 | =C2=A0 product: 30818<br>
&gt; | =C2=A0 | =C2=A0 mac-addr0: 00:80:2f:22:64:6c<br>
&gt; | =C2=A0 | =C2=A0 mac-addr1: 00:80:2f:22:64:6d<br>
&gt; | =C2=A0 | =C2=A0 gateway: 192.168.10.1<br>
&gt; | =C2=A0 | =C2=A0 ip-addr0: 192.168.10.2<br>
&gt; | =C2=A0 | =C2=A0 subnet0: 255.255.255.0<br>
&gt; | =C2=A0 | =C2=A0 ip-addr1: 192.168.20.2<br>
&gt; | =C2=A0 | =C2=A0 subnet1: 255.255.255.0<br>
&gt; | =C2=A0 | =C2=A0 ip-addr2: 192.168.30.2<br>
&gt; | =C2=A0 | =C2=A0 subnet2: 255.255.255.0<br>
&gt; | =C2=A0 | =C2=A0 ip-addr3: 192.168.40.2<br>
&gt; | =C2=A0 | =C2=A0 subnet3: 255.255.255.0<br>
&gt; | =C2=A0 | =C2=A0 serial: 315C6B2<br>
&gt; | =C2=A0 | =C2=A0 FW Version: 6.0<br>
&gt; | =C2=A0 | =C2=A0 FPGA Version: 38.0<br>
&gt; | =C2=A0 | =C2=A0 FPGA git hash: be53058<br>
&gt; | =C2=A0 | =C2=A0 RFNoC capable: Yes<br>
&gt; | =C2=A0 |<br>
&gt; | =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external, gpsdo<br>
&gt; | =C2=A0 | =C2=A0 Clock sources: internal, external, gpsdo<br>
&gt; | =C2=A0 | =C2=A0 Sensors: ref_locked<br>
&gt; | =C2=A0 =C2=A0 _____________________________________________________<=
br>
&gt; | =C2=A0 =C2=A0/<br>
&gt; | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on this device:<br>
&gt; | =C2=A0 |<br>
&gt; | =C2=A0 | =C2=A0 * 0/DDC#0<br>
&gt; | =C2=A0 | =C2=A0 * 0/DDC#1<br>
&gt; | =C2=A0 | =C2=A0 * 0/DUC#0<br>
&gt; | =C2=A0 | =C2=A0 * 0/DUC#1<br>
&gt; | =C2=A0 | =C2=A0 * 0/Radio#0<br>
&gt; | =C2=A0 | =C2=A0 * 0/Radio#1<br>
&gt; | =C2=A0 | =C2=A0 * 0/Replay#0<br>
&gt; | =C2=A0 =C2=A0 _____________________________________________________<=
br>
&gt; | =C2=A0 =C2=A0/<br>
&gt; | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Static connections on this device:<br>
&gt; | =C2=A0 |<br>
&gt; | =C2=A0 | =C2=A0 * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>
&gt; | =C2=A0 | =C2=A0 * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>
&gt; | =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0<br>
&gt; | =C2=A0 | =C2=A0 * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>
&gt; | =C2=A0 | =C2=A0 * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1<br>
&gt; | =C2=A0 | =C2=A0 * 0/DDC#0:1=3D=3D&gt;0/SEP#1:0<br>
&gt; | =C2=A0 | =C2=A0 * 0/SEP#2:0=3D=3D&gt;0/DUC#1:0<br>
&gt; | =C2=A0 | =C2=A0 * 0/DUC#1:0=3D=3D&gt;0/Radio#1:0<br>
&gt; | =C2=A0 | =C2=A0 * 0/Radio#1:0=3D=3D&gt;0/DDC#1:0<br>
&gt; | =C2=A0 | =C2=A0 * 0/DDC#1:0=3D=3D&gt;0/SEP#2:0<br>
&gt; | =C2=A0 | =C2=A0 * 0/Radio#1:1=3D=3D&gt;0/DDC#1:1<br>
&gt; | =C2=A0 | =C2=A0 * 0/DDC#1:1=3D=3D&gt;0/SEP#3:0<br>
&gt; | =C2=A0 | =C2=A0 * 0/SEP#4:0=3D=3D&gt;0/Replay#0:0<br>
&gt; | =C2=A0 | =C2=A0 * 0/Replay#0:0=3D=3D&gt;0/SEP#4:0<br>
&gt; | =C2=A0 | =C2=A0 * 0/SEP#5:0=3D=3D&gt;0/Replay#0:1<br>
&gt; | =C2=A0 | =C2=A0 * 0/Replay#0:1=3D=3D&gt;0/SEP#5:0<br>
&gt; | =C2=A0 =C2=A0 _____________________________________________________<=
br>
&gt; | =C2=A0 =C2=A0/<br>
&gt; | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Radio#0<br>
&gt; | =C2=A0 | =C2=A0 ID: UBX-160 v2 (0x007d)<br>
&gt; | =C2=A0 | =C2=A0 Serial: 3158306<br>
&gt; | =C2=A0 | =C2=A0 =C2=A0 _____________________________________________=
________<br>
&gt; | =C2=A0 | =C2=A0 =C2=A0/<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Name: UBX TX<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, CAL<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.000 MHz<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA0: 0.0 to 31.5 step 0.5 dB<br=
>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 160000000.0 to 160000000.0=
 step 0.0 Hz<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: QI<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
&gt; | =C2=A0 =C2=A0 _____________________________________________________<=
br>
&gt; | =C2=A0 =C2=A0/<br>
&gt; | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: 0/Radio#0<br>
&gt; | =C2=A0 | =C2=A0 ID: UBX-160 v2 (0x007e)<br>
&gt; | =C2=A0 | =C2=A0 Serial: 3158306<br>
&gt; | =C2=A0 | =C2=A0 =C2=A0 _____________________________________________=
________<br>
&gt; | =C2=A0 | =C2=A0 =C2=A0/<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Name: UBX RX<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, RX2, CAL<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.000 MHz<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA0: 0.0 to 31.5 step 0.5 dB<br=
>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 160000000.0 to 160000000.0=
 step 0.0 Hz<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
&gt; | =C2=A0 =C2=A0 _____________________________________________________<=
br>
&gt; | =C2=A0 =C2=A0/<br>
&gt; | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Radio#1<br>
&gt; | =C2=A0 | =C2=A0 =C2=A0 _____________________________________________=
________<br>
&gt; | =C2=A0 | =C2=A0 =C2=A0/<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Name: Unknown (0xffff) - 0<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Antennas:<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Sensors:<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 0.000 to 0.000 MHz<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 0.0 to 0.0 step 0.0 Hz<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
&gt; | =C2=A0 =C2=A0 _____________________________________________________<=
br>
&gt; | =C2=A0 =C2=A0/<br>
&gt; | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: 0/Radio#1<br>
&gt; | =C2=A0 | =C2=A0 =C2=A0 _____________________________________________=
________<br>
&gt; | =C2=A0 | =C2=A0 =C2=A0/<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Name: Unknown (0xffff) - 0<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Antennas:<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Sensors:<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 0.000 to 0.000 MHz<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 0.0 to 0.0 step 0.0 Hz<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
&gt; | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
<br>
</blockquote></div></div>

--00000000000084fdbd060649f656--

--===============6918641505691575779==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6918641505691575779==--
