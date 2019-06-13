Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DD9432DD
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jun 2019 07:51:15 +0200 (CEST)
Received: from [::1] (port=55062 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hbIdg-0000CU-4B; Thu, 13 Jun 2019 01:51:08 -0400
Received: from mail-wr1-f50.google.com ([209.85.221.50]:40975)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sreejamali33@gmail.com>)
 id 1hbIdc-00008D-Ot
 for usrp-users@lists.ettus.com; Thu, 13 Jun 2019 01:51:04 -0400
Received: by mail-wr1-f50.google.com with SMTP id c2so19270408wrm.8
 for <usrp-users@lists.ettus.com>; Wed, 12 Jun 2019 22:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=ZJRyljdohjPdOkOoZLOoVVYoTg1abT3dH5g8SxueCqc=;
 b=ABzD8UVqgKikvFyft19qbFBw3VXAnHVyf3vUTt7tZsov/0i6fxi/2BQ0nXGo66NCg4
 QBhh/UjDD7Mm9FxsX1/BH0wskHd3Z6dQTXFXALxGvhMNikqhpdb+R1eFTMJ+PBw6sK4k
 KpWa5d+x/AwFF6l3ORx5QLMyYCI+P7UyUbb+E+4bH6QT/7IkcpNOryAnAFr3Wa5q8xuR
 b5CyBjCa0xIiq+/4IuMOJRvMWAJaP8dEKQxQ7KUM5SYp1ptvTCWZn5r6I5mT27s6r4TD
 LzUdl7hIU6eoIhPRDSYRlj8nzR9igMsU8SpQdtIRrOPj/X6vjcUSZjD5smmLynOc13Bn
 VF0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ZJRyljdohjPdOkOoZLOoVVYoTg1abT3dH5g8SxueCqc=;
 b=nEMNDm5qjb1wduOdJUUjDMZXOkXMlBPhbARUdupr4nDcoY8Ql7+0aRGfDKJjlFgZtB
 fN5u98YfcgstQHC9CcxtgyIdC3Wm+td+jxpspVKXFqzmxQu3M/I9firGrPYfsqx1AkV4
 oPxLcgAu2yJTQrTVy3tTcbJTzaCmivbymZIwNjPf7FR2osEfbgX0TK77bav6T/x3E37W
 CqJW00Q5EAe9qpXdBa9bh6tRY/nl6vlVRgOeBEiQObDaR94rpTtqezt/StY3UEbpCUKP
 L8zwVHxqVMynuxlVjzRnPSYZCEpmpb44KR7CaND6mG+15dR/TrIX6GGEeiW96ll8MLTt
 B+Rg==
X-Gm-Message-State: APjAAAVunCbHbGKdXF41hrrG15L3E0M7KlXYMCPOMpP/phCGbBFN/Hp6
 GMT8qzokBpBz3MTWDP3ARDWCbJQGq1GMrxJoRfLbm+U+
X-Google-Smtp-Source: APXvYqzvXlKQ3T8le3mET9FxnxJJFwhzi0SmnPkEUREfrZ0UtUY7pBgoBvaFWz7irAHNfs8V5xVZmvtlpODMlMO1pN4=
X-Received: by 2002:adf:de06:: with SMTP id b6mr42393709wrm.0.1560405023634;
 Wed, 12 Jun 2019 22:50:23 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 13 Jun 2019 11:20:12 +0530
Message-ID: <CAGChZuF6Wo6L39tdPy4FwJ7d72CrvaE5dfFCMXTmdq5PLLXe6g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Unable to use SBX and TwinRx together
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
From: mali sreeja via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mali sreeja <sreejamali33@gmail.com>
Content-Type: multipart/mixed; boundary="===============6070600225566888663=="
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

--===============6070600225566888663==
Content-Type: multipart/alternative; boundary="00000000000023b8b5058b2e1b27"

--00000000000023b8b5058b2e1b27
Content-Type: text/plain; charset="UTF-8"

Hello Everyone,

I have an X300 radio with one TwinRx daughterboard annd one SBX
daughterboard. When we are trying to receive using three channels(i.e. 2
channels of TwinRx and 1 channel of SBX),where our subdevice specifications
are "A:0 A:1 B:0", we are seeing a run time error

RuntimeError: Conflicting tick rates: One neighbouring block specifies 2e+08
MHz, another 1e+08 MHz.

This is somehow acceptable because it is already specified in the TwinRx
manual that output is 100Msps complex samples per channel.

But when I connect the X radio with these two daughter boards SBX and
TwinRx and trying to transmit through only one channel, that is through
SBX, I have encountered an error:

EnvironmentError: IOError: Failed to sync DACs! EnvironmentError: IOError:
Block
ctrl (CE_01_Port_40) no response packet - AssertionError: bool(buff)
  in unsigned __int64 __cdecl ctrl_iface_impl<0>::wait_for_ack(const
bool,const double)
  at  /home/username2/uhd/host/lib/rfnoc/ctrl_iface.cpp:205

Is this expected one? Will streaming error out if trying to transmit
through SBX/UBX where placed along with TwinRx?

If yes why is this limitation?

If No, what parameters should I change? So that I can make successful
transmission!!

Thanks & Regards,
Sreeja

--00000000000023b8b5058b2e1b27
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Everyone,<div><br><div>I have an X300 radio with one=
 TwinRx daughterboard annd one SBX daughterboard. When we are trying to rec=
eive using three channels(i.e. 2 channels of TwinRx and 1 channel of SBX),w=
here our subdevice specifications are &quot;A:0 A:1 B:0&quot;, we are seein=
g a run time error</div></div><div><br></div><div><span style=3D"color:rgb(=
84,84,84);font-family:arial,sans-serif">RuntimeError:=C2=A0</span><span sty=
le=3D"font-weight:bold;color:rgb(106,106,106);font-family:arial,sans-serif"=
>Conflicting tick rates</span><span style=3D"color:rgb(84,84,84);font-famil=
y:arial,sans-serif">:=C2=A0</span><span style=3D"font-weight:bold;color:rgb=
(106,106,106);font-family:arial,sans-serif">One neighbouring block specifie=
s 2e</span><span style=3D"color:rgb(84,84,84);font-family:arial,sans-serif"=
>+</span><span style=3D"font-weight:bold;color:rgb(106,106,106);font-family=
:arial,sans-serif">08 MHz</span><span style=3D"color:rgb(84,84,84);font-fam=
ily:arial,sans-serif">,=C2=A0</span><span style=3D"font-weight:bold;color:r=
gb(106,106,106);font-family:arial,sans-serif">another 1e</span><span style=
=3D"color:rgb(84,84,84);font-family:arial,sans-serif">+</span><span style=
=3D"font-weight:bold;color:rgb(106,106,106);font-family:arial,sans-serif">0=
8 MHz</span><span style=3D"color:rgb(84,84,84);font-family:arial,sans-serif=
">.</span>=C2=A0=C2=A0<br></div><div><br></div><div>This is somehow accepta=
ble because it is already specified in the TwinRx manual that output is 100=
Msps complex samples per channel.</div><div><br></div><div>But when I conne=
ct the X radio with these two daughter boards SBX and TwinRx and trying to =
transmit through only one channel, that is through SBX, I have encountered =
an error:</div><div><br></div><div>EnvironmentError: IOError: Failed to syn=
c DACs! EnvironmentError: IOError: Block<br>ctrl (CE_01_Port_40) no respons=
e packet - AssertionError: bool(buff)<br>=C2=A0 in unsigned __int64 __cdecl=
 ctrl_iface_impl&lt;0&gt;::wait_for_ack(const bool,const double)<br>=C2=A0 =
at=C2=A0=C2=A0<span style=3D"color:rgb(0,0,0);white-space:pre-wrap">/home/u=
sername2/uhd/host/lib/rfnoc/ctrl_iface.cpp:205</span></div><div><font color=
=3D"#000000"><span style=3D"white-space:pre-wrap"><br></span></font></div><=
div>Is this expected one? Will streaming error out if trying to transmit th=
rough SBX/UBX where placed along with TwinRx?</div><div><br></div><div>If y=
es why is this limitation?</div><div><br></div><div>If No, what parameters =
should I change? So that I can make successful transmission!!</div><div><br=
></div><div>Thanks &amp; Regards,</div><div>Sreeja</div></div>

--00000000000023b8b5058b2e1b27--


--===============6070600225566888663==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6070600225566888663==--

