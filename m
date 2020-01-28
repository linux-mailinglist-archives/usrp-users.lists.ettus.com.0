Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF4714C329
	for <lists+usrp-users@lfdr.de>; Tue, 28 Jan 2020 23:52:30 +0100 (CET)
Received: from [::1] (port=50446 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iwZic-0001hK-JZ; Tue, 28 Jan 2020 17:52:26 -0500
Received: from mail-io1-f50.google.com ([209.85.166.50]:36177)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <austinadam42@gmail.com>)
 id 1iwZiY-0001br-Uw
 for usrp-users@lists.ettus.com; Tue, 28 Jan 2020 17:52:22 -0500
Received: by mail-io1-f50.google.com with SMTP id d15so16420972iog.3
 for <usrp-users@lists.ettus.com>; Tue, 28 Jan 2020 14:52:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=veSA3tiO2UWX8YEteeXGzYTR3qS9tgz2qvF9JJtJqTE=;
 b=P7w9o52O+b7ZIWsqqPa1nA7L6WIsQWGdpD7ZMIfPfqZECvqL3WGmTnIIem8D098kBU
 nGej+rqoHiAYzdAeMlpZliPIx5gT08pEgRLPu/EiFoB2/kN+xh4GLU4XCKMTDAwTzmW8
 Uln7cxI0lIxwmVgwhQYOJaP8oK1JsxEGdKduOBQeWmjmYbBkTMrOAXssqHDdM4LDMiSG
 m95jIYqT31oHj29t5rKNJoC28ACvHe9WwoE4BsN9n+Vwi5XRewwq2R+tJes558xng3yh
 x5S8Zs6KqiqmqHOHRyDkIjr+t5yr8hvkJVHVuXP5ZasBewXAqD4msV7jH4NV1hlLvM3a
 fA1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=veSA3tiO2UWX8YEteeXGzYTR3qS9tgz2qvF9JJtJqTE=;
 b=HTvWuGaicDapyQ/bKUmh5dYOSUM2ObAaAmDnuMszDahD9GKUKaUSk9GIsyh35kxa34
 IqbrOcp8az6xICLiPUCcWL03x5mLUSKzGaLOYFeculKkuR72z1VYZvuXKGM0f2z9UdXq
 7ODlQURQCQlKpTblmLwQBCU+xNE3YMuq70IU47cndFEL3GM7qLsBeal6+pn3lbpma5Zk
 D8Gx4Tf2ELMqfM5Bs70yYMTSIc3DLniEbW4vrDzHM3gZyeyr9pyBG+9o7vK3/5idnOEh
 j3l23kX+s16bNegSKip8Ynd6RKQesyHdyMOq6VMeK96sWfmAAk3e+suUz30AM7/tNHA/
 vvJA==
X-Gm-Message-State: APjAAAUvDf5EG9CyeHaDZcZbsqU8gXxzlMiJEIGz/9Wau4bNkvleZJ/b
 ThGBtGmRgZkig2iNqEnBIItSy1807qeEqUkyRT8yxSGK
X-Google-Smtp-Source: APXvYqw5702hsI+ntwF/DnSvwJG02OUU/1T1QIWQlDPH8g2iT7ruXV9eXZ0dqHc8cdxubO5+cVA66dBuw8xMvaB3g3k=
X-Received: by 2002:a6b:c9ca:: with SMTP id
 z193mr18283483iof.276.1580251902041; 
 Tue, 28 Jan 2020 14:51:42 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 28 Jan 2020 14:51:31 -0800
Message-ID: <CAMKs6he+ik2fcJqXGXzBVhn-80ixSegP4DoKVzoGGOc_rcW5=w@mail.gmail.com>
To: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: [USRP-users] USRP N310 Performance Issues
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Austin Adam via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Austin Adam <austinadam42@gmail.com>
Content-Type: multipart/mixed; boundary="===============5183652877530243901=="
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

--===============5183652877530243901==
Content-Type: multipart/alternative; boundary="00000000000046e3d9059d3b110c"

--00000000000046e3d9059d3b110c
Content-Type: text/plain; charset="UTF-8"

Hi everyone,
I have a very basic GNU script with just a USRP block and a time sink that
when I run, there are tons of streaming errors with the tx and rx. In GNU,
the console is being filled with 'D's and the console for the N210 is
getting filled with 'U's and 'S's.

My setup is just a USRP N210 connected to the RX LO ports of the N310. I am
sending the following command to the N210:

*"sudo '/home/austin/workarea-uhd/uhd/host/build/examples/tx_waveforms'
--args "addr=192.168.10.15,type=usrp2" --freq 3.90000e9 --ant "TX/RX"
--subdev "A:0" --channels 0 --rate 1.25e6 --gain 29.5"*

The USRPs are connected to a router via cat 5e cables, and then my laptop
is connected to the router via wifi. Something I noticed is that when I
connect to the router via ethernet to my laptop, I don't get any of the
performance issues. It seems to only happen over the wifi.

When I run ifconfig on my laptop, my MTU is set to 1500, and on the USRP
N310 the MTU on the sfp0 port that we are using is 8000. I wasn't able to
change the MTU on the N310 because it said the device was in use, but those
values seem to work fine over ethernet so I didn't look too much into it.

The sample rate on my GNU script is set to 5M for now, and lowering it does
seem to reduce the amount of 'D's that I get, but also negatively affects
our data.

Lastly, here is some output from the N210 that shows the error:

*austin@Austin-Blade:~$ sudo '/home/*austin































*/workarea-uhd/uhd/host/build/examples/tx_waveforms' --args
"addr=192.168.10.15,type=usrp2" --freq 3.90000e9 --ant "TX/RX" --subdev
"A:0" --channels 0 --rate 1.25e6 --gain 29.5Creating the usrp device with:
addr=192.168.10.15,type=usrp2...[INFO] [UHD] linux; GNU C++ version 8.3.0;
Boost_106700; UHD_3.14.0.HEAD-0-g6875d061[INFO] [USRP2] Opening a
USRP2/N-Series device...[INFO] [USRP2] Current recv frame size: 1472
bytes[INFO] [USRP2] Current send frame size: 1472 bytesUsing Device: Single
USRP:  Device: USRP2 / N-Series Device  Mboard 0: N210r4  RX Channel: 0
RX DSP: 0    RX Dboard: A    RX Subdev: SBXv3 RX  TX Channel: 0    TX DSP:
0    TX Dboard: A    TX Subdev: SBXv3 TXSetting TX Rate: 1.250000
Msps...Actual TX Rate: 1.250000 Msps...Setting TX Freq: 3900.000000
MHz...Setting TX LO Offset: 0.000000 MHz...Actual TX Freq: 3900.000000
MHz...Setting TX Gain: 29.500000 dB...Actual TX Gain: 29.500000
dB...Setting device timestamp to 0...Checking TX: LO: locked ...Press Ctrl
+ C to stop streaming...*UUUSUUUU[ERROR] [USRP2] Control packet attempt 0,
sequence number 470:
RuntimeError: no control response, possible packet loss
UUUSUUUUSUUUUUU^C
*      Done!*

I appreciate any help that anyone has to offer!

Best,
Austin

--00000000000046e3d9059d3b110c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<div>I have a very basic GNU script with just =
a USRP block and a time sink that when I run, there are tons of streaming e=
rrors with the tx and rx. In GNU, the console is being filled with &#39;D&#=
39;s and the console for the N210 is getting filled with &#39;U&#39;s and &=
#39;S&#39;s.<br></div><div><br></div><div>My setup is just a USRP N210 conn=
ected to the RX LO ports of the N310. I am sending the following command to=
 the N210:</div><div><i><br></i></div><div><i>&quot;sudo &#39;/home/austin/=
workarea-uhd/uhd/host/build/examples/tx_waveforms&#39; --args &quot;addr=3D=
192.168.10.15,type=3Dusrp2&quot; --freq 3.90000e9 --ant &quot;TX/RX&quot; -=
-subdev &quot;A:0&quot; --channels 0 --rate 1.25e6 --gain 29.5&quot;</i></d=
iv><div><i><br></i></div><div>The USRPs are connected to a router via cat 5=
e cables, and then my laptop is connected=C2=A0to the router via wifi. Some=
thing I noticed is that when I connect to the router via ethernet=C2=A0to m=
y laptop, I don&#39;t get any of the performance issues. It seems to only h=
appen over the wifi.</div><div><br></div><div>When I run ifconfig on my lap=
top, my MTU is set to 1500, and on the USRP N310 the MTU on the sfp0 port t=
hat we are using is 8000. I wasn&#39;t able to change the MTU on the N310 b=
ecause it said the device was in use, but those values seem to work fine ov=
er ethernet so I didn&#39;t look too much into it.</div><div><br></div><div=
>The sample rate on my GNU script is set to 5M for now, and lowering it doe=
s seem to reduce the amount of &#39;D&#39;s that I get, but also negatively=
 affects our data.=C2=A0</div><div><br></div><div>Lastly, here is some outp=
ut from the N210 that shows the error:</div><div><br></div><div><i>austin@A=
ustin-Blade:~$ sudo &#39;/home/</i>austin<i>/workarea-uhd/uhd/host/build/ex=
amples/tx_waveforms&#39; --args &quot;addr=3D192.168.10.15,type=3Dusrp2&quo=
t; --freq 3.90000e9 --ant &quot;TX/RX&quot; --subdev &quot;A:0&quot; --chan=
nels 0 --rate 1.25e6 --gain 29.5<br><br>Creating the usrp device with: addr=
=3D192.168.10.15,type=3Dusrp2...<br>[INFO] [UHD] linux; GNU C++ version 8.3=
.0; Boost_106700; UHD_3.14.0.HEAD-0-g6875d061<br>[INFO] [USRP2] Opening a U=
SRP2/N-Series device...<br>[INFO] [USRP2] Current recv frame size: 1472 byt=
es<br>[INFO] [USRP2] Current send frame size: 1472 bytes<br>Using Device: S=
ingle USRP:<br>=C2=A0 Device: USRP2 / N-Series Device<br>=C2=A0 Mboard 0: N=
210r4<br>=C2=A0 RX Channel: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 R=
X Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: SBXv3 RX<br>=C2=A0 TX Channel: 0<br=
>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX =
Subdev: SBXv3 TX<br><br>Setting TX Rate: 1.250000 Msps...<br>Actual TX Rate=
: 1.250000 Msps...<br><br>Setting TX Freq: 3900.000000 MHz...<br>Setting TX=
 LO Offset: 0.000000 MHz...<br>Actual TX Freq: 3900.000000 MHz...<br><br>Se=
tting TX Gain: 29.500000 dB...<br>Actual TX Gain: 29.500000 dB...<br><br>Se=
tting device timestamp to 0...<br>Checking TX: LO: locked ...<br>Press Ctrl=
 + C to stop streaming...<br></i>UUUSUUUU[ERROR] [USRP2] Control packet att=
empt 0, sequence number 470:<br>RuntimeError: no control response, possible=
 packet loss<br>UUUSUUUUSUUUUUU^C<i>=C2=A0 =C2=A0 =C2=A0=C2=A0<br>Done!</i>=
<br></div><div><i><br></i></div><div>I appreciate any help that anyone has =
to offer!</div><div><br></div><div>Best,</div><div>Austin</div></div>

--00000000000046e3d9059d3b110c--


--===============5183652877530243901==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5183652877530243901==--

