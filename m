Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E81ADF81
	for <lists+usrp-users@lfdr.de>; Mon,  9 Sep 2019 21:35:05 +0200 (CEST)
Received: from [::1] (port=52952 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i7PRH-0003l9-1A; Mon, 09 Sep 2019 15:35:03 -0400
Received: from mail-ot1-f52.google.com ([209.85.210.52]:38904)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1i7PRD-0003Et-Sl
 for usrp-users@lists.ettus.com; Mon, 09 Sep 2019 15:34:59 -0400
Received: by mail-ot1-f52.google.com with SMTP id h17so10300179otn.5
 for <usrp-users@lists.ettus.com>; Mon, 09 Sep 2019 12:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=vP2Y6SJyBetGPC/ue/jcoRzGMK3UuUD5go9xZwALY3I=;
 b=QcQmMe0e7rDvJTQLg8Jf3nnV8+2NlTXuiHC+KS88sJP87M2oMAdC/RaPGN8AO5/NkC
 TPrDD1WoYFKEjVjvUUmZuf07P49CJLSHmhZkLEuBpP2DeNm62ts6kB3t73uWU0EEiO0J
 lpjrp26DMmIkdaCQ0AwC5ZbInnurL7mnJaqV5fDYgUItyWgePV7LMKJ1wyl4kr4jIMvl
 3PaXZYzUas6HPZ+0lLrwTy5fCq0TspcZb8f/UU2oZFrkNhRRJSos/3Vq7smA9iFGBIaW
 FQ+Z/+GFzzpqyY0Dx7JbUPXXoHvkiXkvs0DEFpLzIn6s5+zbilBmwXPrA6TUlNiqhb8H
 dizQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=vP2Y6SJyBetGPC/ue/jcoRzGMK3UuUD5go9xZwALY3I=;
 b=eIETkMdA63CjYlFs63PIRhVgKLxE0qJ3qvjpIuChOTkZwjy2BMBSPV+Q9AJGjJDdpT
 S1SF/plI2eJyQMio97sJRYq4FRp2aWFjC62H47K/Sh3IhnWHQH0n7aOh6a1Bs9lJYzdZ
 4j/BchpOeRTD9JPzv4WylRaPesit8CQiIwOtCWXdCgE8nbGrQAc0HisOjwSqqaK+LxyF
 VuCBR8ajnkNPJ5I3d53lJy1OU/BH9BWIDYsvVTuiJXEdUHFO2A7Ml31nx7ijs++fSNDB
 rLH1reMeZ8swQ30VQxreAfRr19BkbEJdsP149hUGhz0u17FslL3ScH9xQH4a5bViLtj9
 TQlA==
X-Gm-Message-State: APjAAAX03RCN5DL5wTdpm8jZ9Od//EnSSqOXvIhD+lAkmy2XsCQ4dPud
 TQ3cuE0ckeqj5j73O55wXGUFFxEm3WOPgJ/eDO42794tJlvO0Q==
X-Google-Smtp-Source: APXvYqwcaf+WaT+8fIv/9mnb4HabKl8w6Xzu2XKEMYXeB9nJeKZX2YzBLgFickp4Gli473OeTeSZQngn+dpOu3qAdyE=
X-Received: by 2002:a9d:d27:: with SMTP id 36mr21739435oti.327.1568057658836; 
 Mon, 09 Sep 2019 12:34:18 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 9 Sep 2019 15:34:08 -0400
Message-ID: <CAB__hTSxpErvsfskWaZMGuSkXCmXOP+nH7KVARXNXzgcZcz_Yg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Error running 1024 pt FFT block on N310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6704508972967228205=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============6704508972967228205==
Content-Type: multipart/alternative; boundary="000000000000be47b3059223df8c"

--000000000000be47b3059223df8c
Content-Type: text/plain; charset="UTF-8"

Hi,
I am having trouble running the FFT block of size 1024 on an N310.  I am
using the "rfnoc_rx_to_file" example program (UHD v3.14.1.0) to run it.  It
works with size 256 or 512.  Additionally, I am able to run with 1024 if I
switch to an X310 (same PC). Please let me know if you have any ideas...
Rob

*Here is the command that fails:*

rfnoc_rx_to_file --args="type=n3xx" --nsamps=65536 --block-id=FFT_0
--block-args="spp=1024" --rate=125e6 --freq=2400e6 --radio-args="spp=1024"

*The following is the output with error message:*

Using radio 0, channel 0
Setting RX Rate: 125.000000 Msps...
Actual RX Rate: 125.000000 Msps...

Setting RX Freq: 2400.000000 MHz...
Actual RX Freq: 2400.000000 MHz...

Connecting 0/Radio_0 ==> 0/FFT_0
[WARNING] [RFNOC] Assuming max packet size for 0/Radio_0
Samples per packet: 1024
Using streamer args: block_id=0/FFT_0,spp=1024
Issuing stream cmd
[ERROR] [RX FLOW CTRL] Error unpacking packet: ValueError: Bad CHDR or
packet fragment

[ERROR] [STREAMER] The receive packet handler caught a value exception.
ValueError: Bad CHDR or packet fragment
Error: Receiver error: ERROR_CODE_BAD_PACKET

*Note that the following works fine with an X310*

rfnoc_rx_to_file --args="type=x300" --nsamps=65536 --block-id=FFT_0
--block-args="spp=1024" --rate=100e6 --freq=2400e6

--000000000000be47b3059223df8c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>I am having trouble running the FFT block of s=
ize 1024 on an N310.=C2=A0 I am using the &quot;rfnoc_rx_to_file&quot; exam=
ple program (UHD v3.14.1.0) to run it.=C2=A0 It works with size 256 or 512.=
=C2=A0 Additionally, I am able to run with 1024 if I switch to an X310 (sam=
e PC). Please let me know if you have any ideas...</div><div>Rob</div><div>=
<br></div><div><b>Here is the command that fails:</b></div><div><br></div><=
div><font face=3D"monospace">rfnoc_rx_to_file --args=3D&quot;type=3Dn3xx&qu=
ot; --nsamps=3D65536 --block-id=3DFFT_0 --block-args=3D&quot;spp=3D1024&quo=
t; --rate=3D125e6 --freq=3D2400e6 --radio-args=3D&quot;spp=3D1024&quot;</fo=
nt><br></div><div><br></div><div><b>The following is the output with error =
message:</b></div><div><br></div><div><font face=3D"monospace">Using radio =
0, channel 0<br>Setting RX Rate: 125.000000 Msps...<br>Actual RX Rate: 125.=
000000 Msps...<br><br>Setting RX Freq: 2400.000000 MHz...<br>Actual RX Freq=
: 2400.000000 MHz...<br><br>Connecting 0/Radio_0 =3D=3D&gt; 0/FFT_0<br>[WAR=
NING] [RFNOC] Assuming max packet size for 0/Radio_0<br>Samples per packet:=
 1024<br>Using streamer args: block_id=3D0/FFT_0,spp=3D1024<br>Issuing stre=
am cmd<br>[ERROR] [RX FLOW CTRL] Error unpacking packet: ValueError: Bad CH=
DR or packet fragment<br><br>[ERROR] [STREAMER] The receive packet handler =
caught a value exception.<br>ValueError: Bad CHDR or packet fragment<br>Err=
or: Receiver error: ERROR_CODE_BAD_PACKET</font><br></div><div><br></div><d=
iv><b>Note that the following works fine with an X310</b></div><div><br></d=
iv><div><font face=3D"monospace">rfnoc_rx_to_file --args=3D&quot;type=3Dx30=
0&quot; --nsamps=3D65536 --block-id=3DFFT_0 --block-args=3D&quot;spp=3D1024=
&quot; --rate=3D100e6 --freq=3D2400e6</font><br></div><div><font face=3D"mo=
nospace"><br></font></div></div>

--000000000000be47b3059223df8c--


--===============6704508972967228205==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6704508972967228205==--

