Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FA0145FB9
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jan 2020 01:13:12 +0100 (CET)
Received: from [::1] (port=33820 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iuQ7O-0007UN-Ly; Wed, 22 Jan 2020 19:13:06 -0500
Received: from mail-lj1-f182.google.com ([209.85.208.182]:45918)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jmcrossen80@gmail.com>)
 id 1iuQ7K-0007Pf-La
 for usrp-users@lists.ettus.com; Wed, 22 Jan 2020 19:13:02 -0500
Received: by mail-lj1-f182.google.com with SMTP id j26so1095690ljc.12
 for <usrp-users@lists.ettus.com>; Wed, 22 Jan 2020 16:12:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=hXgY8BG2bvA2qN71jqluuwCfwbhVelO6JUWanL5HCBc=;
 b=WkCgTqsySpH41y9fmHFZu+THcRXdVa0mkDl4m/Xdw/GXs8iOXCvVBbM5EtlqC23RK/
 17EHeBmvco2b8iYnXICm4owgwBuy+33KkCr7qe4UxhBfoOtOmsg9C+Gpm+M+5qYWw5Db
 8hbox6NjWZHqdGWEq0Qsbysbaa/pluz/ydWAdlt6Mod9wSHycSXs1aAqMxRsTqaEE5at
 9NFFjmxlRNL/XiJsM1T7tQw4xKyw0az6wg3mAWiOo3bz1/H6eaIYBU30BiJNTd1mNS8F
 kuM6Vq41NP5YuaY8MM3ZU1SlrJjLC1w9qu/X7ciiGlr6jlDCTFsGYSg5L2ZxBra+wSxP
 4gZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=hXgY8BG2bvA2qN71jqluuwCfwbhVelO6JUWanL5HCBc=;
 b=VMmuSypP7jN0Yj7B18qqbZHfaXPQvjcP61YY7C8oBNh+uGlNUtSp67OIWuwjoUe9Pp
 cAKSUIHKjY9y9qV9xxnLnd5QHgYGgt5ggXOBtJoVulL+rPYYk4ZOamOrUAWghbTa0Vmr
 en/KFgAsSyrzqlOgF423WgDBNMeH7W3ruiAMNIweLZMPywc3qzmWHRYL4Ac1xW5b3Pzv
 EhqV+FaXw6E77SK7mvzKuwTZcL4ILRyW5ZOmAJJBKRFIWsuCRGuSpZEIj5rpbBZSqXIJ
 jECe+zCowcUDemCMcaGRDWcU8A+Jff8fM3P3BK44UnNdI8Da0EUN1DWSGMNguJ8ZLT3R
 6n7w==
X-Gm-Message-State: APjAAAX3aXj11wWxfwVaMCzJ+RXfP1J0aoiQx9/gRmtvjTSimdCku8Hx
 j7pKamO+Xkap4v8rcCc+Ma8eVYbCCPE3BXKbuHLeyANk
X-Google-Smtp-Source: APXvYqzXFrbgserFCGVG7kKuC2qhx4TvDfUDa3rUuIrGzf7+R0kEA29JcbafSHfK9UiwIoJ+RGvyU8jiGw92KnEKrr0=
X-Received: by 2002:a05:651c:1129:: with SMTP id
 e9mr20653571ljo.239.1579738340812; 
 Wed, 22 Jan 2020 16:12:20 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 23 Jan 2020 10:42:09 +1030
Message-ID: <CAEnX9dGbEkF43zt==5ftvefUY1A7vd6FBSUy4GJfWnhpgtof4g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Read-all USRP parameters
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
From: Joe crossen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Joe crossen <jmcrossen80@gmail.com>
Content-Type: multipart/mixed; boundary="===============0889456338772774729=="
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

--===============0889456338772774729==
Content-Type: multipart/alternative; boundary="000000000000a46c33059cc37e11"

--000000000000a46c33059cc37e11
Content-Type: text/plain; charset="UTF-8"

Hi all,

I know there is a manual for this -
http://files.ettus.com/manual/page_identification.html#id_naming
Though I'm still having difficulties.

Firstly, can the eeprom of the device be read/changed from the device
itself?
I have ssh'd into the USRP, and get the following when attempting to
read-all:

root@ettus-e3xx-sg3:/usr/lib/uhd/utils# ./usrp_burn_mb_eeprom --read-all
Creating USRP device from address:
[INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106400;
UHD_3.11.0.1-0-unknown
[WARNING] [UDP] The recv buffer could not be resized sufficiently.
Target sock buff size: 288000 bytes.
Actual sock buff size: 163840 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.rmem_max=288000
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 288000 bytes.
Actual sock buff size: 163840 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=288000
[WARNING] [UDP] The recv buffer could not be resized sufficiently.
Target sock buff size: 288000 bytes.
Actual sock buff size: 163840 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.rmem_max=288000
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 288000 bytes.
Actual sock buff size: 163840 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=288000
[WARNING] [UDP] The recv buffer could not be resized sufficiently.
Target sock buff size: 288000 bytes.
Actual sock buff size: 163840 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.rmem_max=288000
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 288000 bytes.
Actual sock buff size: 163840 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=288000
[INFO] [E300] Detecting internal GPS
[ERROR] [E300] An error occured making GPSDd interface: RuntimeError:
Failed to connect to gpsd: can't connect to host/port pair
[INFO] [E300] Initializing core control...
[INFO] [E300] Performing register loopback test...
[INFO] [E300] Register loopback test passed
Error: RuntimeError: Expected FPGA compatibility number 17.x, but got 16.0:
The FPGA build is not compatible with the host code build.
Please run:

 "/usr/lib/uhd/utils/uhd_images_downloader.py"

Failing this, I attempted the same from my host machine (with the USRP
device in usrp_e3x0_
network_mode).
/usr/local/lib/uhd/utils$ ./usrp_burn_mb_eeprom --args="serial=3174549"
--read-all
This resulted in a very similar output with the error:
Error: RuntimeError: Expected FPGA compatibility number 255.x, but got 16.0:

*Note: *my host machine is running UHD 3.14.1 and I suspect this doesn't
help the matter- I've attempted to roll this version back by downloading
older uhd binaries - https://files.ettus.com/binaries/uhd/
though was getting all of these dependency issues. I'm new to Linux and
this has been a head-f**k.

I'm not sure how to troubleshoot this.
Any advice would be great!
Thanks,
Joe

--000000000000a46c33059cc37e11
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all, <br></div><div><br></div><div>I know there is=
 a manual for this - <a href=3D"http://files.ettus.com/manual/page_identifi=
cation.html#id_naming" target=3D"_blank">http://files.ettus.com/manual/page=
_identification.html#id_naming</a></div><div></div><div>Though I&#39;m stil=
l having difficulties. <br></div><div><br></div><div>Firstly, can the eepro=
m of the device be read/changed from the device itself?</div><div>I have ss=
h&#39;d into the USRP, and get the following when attempting to read-all:<b=
r></div><div><br></div><div style=3D"margin-left:40px">root@ettus-e3xx-sg3:=
/usr/lib/uhd/utils# ./usrp_burn_mb_eeprom --read-all<br>Creating USRP devic=
e from address: <br>[INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106400=
; UHD_3.11.0.1-0-unknown<br>[WARNING] [UDP] The recv buffer could not be re=
sized sufficiently.<br>Target sock buff size: 288000 bytes.<br>Actual sock =
buff size: 163840 bytes.<br>See the transport application notes on buffer r=
esizing.<br>Please run: sudo sysctl -w net.core.rmem_max=3D288000<br>[WARNI=
NG] [UDP] The send buffer could not be resized sufficiently.<br>Target sock=
 buff size: 288000 bytes.<br>Actual sock buff size: 163840 bytes.<br>See th=
e transport application notes on buffer resizing.<br>Please run: sudo sysct=
l -w net.core.wmem_max=3D288000<br>[WARNING] [UDP] The recv buffer could no=
t be resized sufficiently.<br>Target sock buff size: 288000 bytes.<br>Actua=
l sock buff size: 163840 bytes.<br>See the transport application notes on b=
uffer resizing.<br>Please run: sudo sysctl -w net.core.rmem_max=3D288000<br=
>[WARNING] [UDP] The send buffer could not be resized sufficiently.<br>Targ=
et sock buff size: 288000 bytes.<br>Actual sock buff size: 163840 bytes.<br=
>See the transport application notes on buffer resizing.<br>Please run: sud=
o sysctl -w net.core.wmem_max=3D288000<br>[WARNING] [UDP] The recv buffer c=
ould not be resized sufficiently.<br>Target sock buff size: 288000 bytes.<b=
r>Actual sock buff size: 163840 bytes.<br>See the transport application not=
es on buffer resizing.<br>Please run: sudo sysctl -w net.core.rmem_max=3D28=
8000<br>[WARNING] [UDP] The send buffer could not be resized sufficiently.<=
br>Target sock buff size: 288000 bytes.<br>Actual sock buff size: 163840 by=
tes.<br>See the transport application notes on buffer resizing.<br>Please r=
un: sudo sysctl -w net.core.wmem_max=3D288000<br>[INFO] [E300] Detecting in=
ternal GPS <br>[ERROR] [E300] An error occured making GPSDd interface: Runt=
imeError: Failed to connect to gpsd: can&#39;t connect to host/port pair<br=
>[INFO] [E300] Initializing core control...<br>[INFO] [E300] Performing reg=
ister loopback test... <br>[INFO] [E300] Register loopback test passed<br>E=
rror: RuntimeError: Expected FPGA compatibility number 17.x, but got 16.0:<=
br>The FPGA build is not compatible with the host code build.<br>Please run=
:<br><br>=C2=A0&quot;/usr/lib/uhd/utils/uhd_images_downloader.py&quot;<br><=
/div><div><br></div><div>Failing this, I attempted the same from my host ma=
chine (with the USRP device in usrp_e3x0_<br></div><div>network_mode). <br>=
</div><div style=3D"margin-left:40px">/usr/local/lib/uhd/utils$ ./usrp_burn=
_mb_eeprom --args=3D&quot;serial=3D3174549&quot; --read-all<br></div><div>T=
his resulted in a very similar output with the error:</div><div style=3D"ma=
rgin-left:40px">Error: RuntimeError: Expected FPGA compatibility number 255=
.x, but got 16.0:<br></div><div></div><div><br></div><div><b>Note: </b>my h=
ost machine is running UHD 3.14.1 and I suspect this doesn&#39;t help the m=
atter- I&#39;ve attempted to roll this version back by downloading older uh=
d binaries - <a href=3D"https://files.ettus.com/binaries/uhd/">https://file=
s.ettus.com/binaries/uhd/</a></div><div>though was getting all of these dep=
endency issues. I&#39;m new to Linux and this has been a head-f**k.<br></di=
v><div><br></div><div>I&#39;m not sure how to troubleshoot this.</div><div>=
Any advice would be great!</div><div>Thanks,</div><div>Joe<br></div></div>

--000000000000a46c33059cc37e11--


--===============0889456338772774729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0889456338772774729==--

