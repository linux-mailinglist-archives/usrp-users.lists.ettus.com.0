Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9682D3F00
	for <lists+usrp-users@lfdr.de>; Wed,  9 Dec 2020 10:42:31 +0100 (CET)
Received: from [::1] (port=57496 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kmvzP-0002hZ-PW; Wed, 09 Dec 2020 04:42:27 -0500
Received: from mail-lj1-f175.google.com ([209.85.208.175]:44597)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <saptarshiv2hazra@gmail.com>)
 id 1kmvzM-0002dB-5R
 for usrp-users@lists.ettus.com; Wed, 09 Dec 2020 04:42:24 -0500
Received: by mail-lj1-f175.google.com with SMTP id m13so1466227ljo.11
 for <usrp-users@lists.ettus.com>; Wed, 09 Dec 2020 01:42:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:mime-version:subject:message-id:date:to;
 bh=PomVUKe807KMBUhn1QKzn8OsDa8j27byQH07v2a+YXI=;
 b=T/ggBMkhbQQCTQcaVrcF11G6z55JtLc6vgpfpmVw3bCk1bImiaZiyEdS5eRXi708kv
 gP5jyHZ+RcG1dCgcPTHwgISpZkm5lNIWunEXqr6BwLGuOF6MSzaQzHg02BMCQeGsOf6x
 oPkbLKY6icDyjtyy+T1S4mVt5vQ37NB2e2eM0F7QPI6JA431Jt6HlmffFgkgDB02q+rk
 +vZLQugKhQq6CwBZTVxh7MB5wlbHEkwB6pNKvEn5ppSBspNM8kFHjYLqNZRozdt919Qq
 WE0WA8YF/jKSNj531HcUrNieCbdjDLJ01F0QULHh9eXcbc6IE5Igv0GabguKYOumRASV
 DKAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
 bh=PomVUKe807KMBUhn1QKzn8OsDa8j27byQH07v2a+YXI=;
 b=AftHF7buK/3uZBqzzH5yoNfEiETXLxHDQkGxDlXBLu5euRJlQA/k33qAdbOYm84Ttr
 jlE9AeZ3h+jl/7pqfLj8yx6JcSLbm2P/AVuXW4B3gRubQ7v6o2T824+CrcZYMDgOXmkn
 ksnvegKm7em9qyZo7ktlatrAtBhGSx6jgYfHyiGBaTxfzxUO6/cHgMWGDhl2jjBFZPzb
 z99av8wkfuksllh6wC3tl3QQ/8IDTQjZBs0uz55c/69OjNtCG2sjWaDKBQS0XqYBTDX9
 mpgm0oo24eiOjoPqyHqlFKy2S13CwCgFvcNBoh4M8KBuJT6YmSU/QwppfGW5RQB67tml
 RTAA==
X-Gm-Message-State: AOAM5333PfFWjBjYWgkODEe2EO9LZolXtI5G8cBX7CoZVsALtl4ytpPg
 WrF8vduWWg0sziUvlpAX+LsPE0Id3DvFJg==
X-Google-Smtp-Source: ABdhPJwTX12MZd49IbijJUehmTbiPMZgqvEB7XEnUMlwX57BdZDRCcUw0cyvWuxEp4X/Eh6Z+A69ew==
X-Received: by 2002:a05:651c:2005:: with SMTP id
 s5mr632765ljo.152.1607506902298; 
 Wed, 09 Dec 2020 01:41:42 -0800 (PST)
Received: from [192.168.0.177] (customer-145-14-100-218.stosn.net.
 [145.14.100.218])
 by smtp.gmail.com with ESMTPSA id e27sm112119lfc.155.2020.12.09.01.41.41
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 09 Dec 2020 01:41:41 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Message-Id: <7A9E93AA-5955-4874-94DC-AEA1FE4339FD@gmail.com>
Date: Wed, 9 Dec 2020 10:41:40 +0100
To: usrp-users@lists.ettus.com
X-Mailer: Apple Mail (2.3608.120.23.2.4)
Subject: [USRP-users] Receiving on multiple subdevs using USRP B210
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Saptarshi Hazra via USRP-users <usrp-users@lists.ettus.com>
Reply-To: saptarshiv2hazra@gmail.com
Content-Type: multipart/mixed; boundary="===============0019289372550323573=="
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


--===============0019289372550323573==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_75AA5CF5-0437-47D1-BC82-BEBD8B1A6352"


--Apple-Mail=_75AA5CF5-0437-47D1-BC82-BEBD8B1A6352
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi,

I am trying to receive on two different centre frequencies (2.475e9 and =
2.48e9) using the two receiver chains on B210. Since they are close by, =
I thought  can receive them by setting the =E2=80=9Cdsp_freq=E2=80=9D =
parameter.

Case 1:

Subdev: A:A or A:B
Nchannel : 1
Centre Frequency: 2.475e9
Sampling Rate: 5e6
BW: 5e6

If I use the command port the USRP source block to pass a pmt =
dictionary:

  pmt.to_pmt({=E2=80=9Clo_freq=E2=80=9D:2.475e9, =E2=80=9Cdsp_freq=E2=80=9D=
: -5e6})


I am able to receive radio packets sent by nodes on 2.48e9 Hz

Case 2:

Subdev: A:A  A:B
Nchannel : 2
Sampling Rate: 5e6
Centre Frequency 1: 2.475e9
Centre Frequency 2: 2.475e9
BW: 5e6

I use the pmt dictionary:

pmt.to_pmt({=E2=80=9Cchan=E2=80=9D:0, =E2=80=9Clo_freq=E2=80=9D:2.475e9, =
=E2=80=9Cdsp_freq=E2=80=9D: -5e6})



When I do this sometimes I receive data from nodes transmitting on =
2.48e9Hz.  and sometimes on 2.475Hz. The behaviour becomes entirely =
random.
I would really appreciate any help in figuring out how to receive =
simultaneously on these two centre frequencies.

Thanks,
Saptarshi=

--Apple-Mail=_75AA5CF5-0437-47D1-BC82-BEBD8B1A6352
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Hi,<div class=3D""><br class=3D""></div><div class=3D"">I am =
trying to receive on two different centre frequencies (2.475e9 and =
2.48e9) using the two receiver chains on B210. Since they are close by, =
I thought &nbsp;can receive them by setting the =E2=80=9Cdsp_freq=E2=80=9D=
 parameter.</div><div class=3D""><br class=3D""></div><div class=3D"">Case=
 1:</div><div class=3D""><br class=3D""></div><div class=3D"">Subdev: =
A:A or A:B</div><div class=3D"">Nchannel : 1</div><div class=3D"">Centre =
Frequency: 2.475e9</div><div class=3D"">Sampling Rate: 5e6</div><div =
class=3D"">BW: 5e6</div><div class=3D""><br class=3D""></div><div =
class=3D"">If I use the command port the USRP source block to pass a pmt =
dictionary:</div><div class=3D""><br class=3D""></div><div =
class=3D"">&nbsp; <span style=3D"background-color: rgb(255, 255, 255); =
font-size: 14px;" class=3D"">pmt.to_pmt({=E2=80=9Clo_freq=E2=80=9D:2.475e9=
, =E2=80=9Cdsp_freq=E2=80=9D: -5e6})</span></div><div class=3D""><br =
class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D""><span style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, =
0);" class=3D"">I am able to receive radio packets sent by nodes on =
2.48e9 Hz</span></div><div class=3D""><span style=3D"caret-color: rgb(0, =
0, 0); color: rgb(0, 0, 0);" class=3D""><br class=3D""></span></div><div =
class=3D""><span style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, =
0);" class=3D"">Case 2:</span></div><div class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D""><br =
class=3D""></span></div><div class=3D""><div style=3D"caret-color: =
rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D"">Subdev: A:A =
&nbsp;A:B</div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, =
0);" class=3D"">Nchannel : 2</div><div style=3D"caret-color: rgb(0, 0, =
0); color: rgb(0, 0, 0);" class=3D"">Sampling Rate: 5e6</div><div =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" =
class=3D"">Centre Frequency 1: 2.475e9</div><div style=3D"caret-color: =
rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D"">Centre Frequency 2: =
2.475e9</div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, =
0);" class=3D"">BW: 5e6</div></div><div class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D""><br =
class=3D""></span></div><div class=3D""><span style=3D"caret-color: =
rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D"">I use the pmt =
dictionary:</span></div><div class=3D""><br class=3D""></div><div =
class=3D""><span style=3D"background-color: rgb(255, 255, 255);" =
class=3D""><span style=3D"font-size: 14px;" =
class=3D"">pmt.to_pmt({=E2=80=9Cchan=E2=80=9D:0, =E2=80=9Clo_freq=E2=80=9D=
:2.475e9, =E2=80=9Cdsp_freq=E2=80=9D: -5e6})</span></span></div><div =
class=3D""><span style=3D"background-color: rgb(255, 255, 255);" =
class=3D""><span style=3D"font-size: 14px;" class=3D""><br =
class=3D""></span></span></div><div class=3D""><span style=3D"caret-color:=
 rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D""><br =
class=3D""></span></div><div class=3D""><span style=3D"caret-color: =
rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D""><br =
class=3D""></span></div><div class=3D""><font color=3D"#000000" =
class=3D"">When I do this sometimes I receive data from =
nodes&nbsp;transmitting on 2.48e9Hz. &nbsp;and sometimes on =
2.475Hz.&nbsp;The behaviour becomes =
entirely&nbsp;random.</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">I would really appreciate any help in&nbsp;figuring out how =
to receive simultaneously on these two&nbsp;centre =
frequencies.</font></div><div class=3D""><font color=3D"#000000" =
class=3D""><br class=3D""></font></div><div class=3D""><font =
color=3D"#000000" class=3D"">Thanks,</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">Saptarshi</font></div></body></html>=

--Apple-Mail=_75AA5CF5-0437-47D1-BC82-BEBD8B1A6352--


--===============0019289372550323573==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0019289372550323573==--

