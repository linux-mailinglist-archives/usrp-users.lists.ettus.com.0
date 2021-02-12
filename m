Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6B031A710
	for <lists+usrp-users@lfdr.de>; Fri, 12 Feb 2021 22:47:51 +0100 (CET)
Received: from [::1] (port=42456 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lAgI0-0003cg-FB; Fri, 12 Feb 2021 16:47:48 -0500
Received: from mail-io1-f53.google.com ([209.85.166.53]:42718)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <radiogeek381@gmail.com>)
 id 1lAgHx-0003Te-EA
 for usrp-users@lists.ettus.com; Fri, 12 Feb 2021 16:47:45 -0500
Received: by mail-io1-f53.google.com with SMTP id u20so676491iot.9
 for <usrp-users@lists.ettus.com>; Fri, 12 Feb 2021 13:47:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=NxxNcGKGy2B/sAfjVina1dQvqm5mNNAtVbbLo970WSA=;
 b=IqIFcNNDYtXa1c4F2ftvdyKRXF97MY8QBBinf0nn03kidG5ImUOQR8N/w+vbzFo6eU
 aFNa/ye6lsBd2kVKKqJ4ENgFiQA3dAfPlHmyMeSb7tkiVXq8zQy+VeueYuSdCcwVDHAP
 6ofUdrvU8md3ggPWlzyzDpKV+Hp6AqIkhojL8PoGIP7+/qQSLkuYfHKk6oQEgNiucGmI
 2liwF6dMoGaLW8Qk6stqRHJZZgIX7VNMCncDCItT3WSo12kAaTDF959zhipHCdI8VBwa
 qyd1dRs90ZjYwWzKmaeBZunYqiQEHtX7YSBFq+owuCvX/br2XqObbRA21A/JBxsVbkuM
 geZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=NxxNcGKGy2B/sAfjVina1dQvqm5mNNAtVbbLo970WSA=;
 b=JKc2MZ0wRnwl7IHo7PYX6G6/1CPFRpv5+L3PTSjmCogmCjAnG+vKM50n4lvjMdrwlk
 chvZyRCt924yWTcT+R82/Qg92nj/Mz0+JaZ0UQG6Dhah5eklBeMIN0lJMZr7Fr6nUWql
 EdmU+HuT+U2YoG8xSHRBlwGHm8/O9VDC4lCoJiAEdGjN7YtHYBBhREUEpdVASlctMUq6
 rmtqCUkx/ZFl1nza8vHefDxTfRexQ3EGxdPg/T7l4TTr9nXHl0B+2QNmSYi6ZYvXOcbR
 utPzfSkLl8v6SRWFLnQ0yFKmaj/nFJMpKNIZiXPf/6o3O046vn/F2u5pmPcpuD6lTtrC
 fYIQ==
X-Gm-Message-State: AOAM531KKne/Tpxc+XZ6vaq3d8FCuBExxdQJdtXCfOpUESfOhTEpdThQ
 oaBR/BJfkYj9zO1bL01eQRLEBg2JAzBuBf1Vm9BCtzkXt8wp0w==
X-Google-Smtp-Source: ABdhPJxYV4cyMrX1XVxuRDYGp2YhRDLnEGSundNmqST1f7T4D6MgWgJdcCL/SnwrzNiAy8midz2tH9COs4MBUq4qx9o=
X-Received: by 2002:a02:cbb0:: with SMTP id v16mr4557225jap.126.1613166424731; 
 Fri, 12 Feb 2021 13:47:04 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 12 Feb 2021 16:46:54 -0500
Message-ID: <CA+rmjiERCja+dQQ7QoU0qD2CMSSCdYbL4F85HCJRxzZJNwxnJQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] OS X Big Sur vs. B200 uhd_usrp_probe
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
From: Radio User via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Radio User <radiogeek381@gmail.com>
Content-Type: multipart/mixed; boundary="===============6619359466757763573=="
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

--===============6619359466757763573==
Content-Type: multipart/alternative; boundary="000000000000b5b3bf05bb2a9300"

--000000000000b5b3bf05bb2a9300
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

With the upgrade to Big Sur, I=E2=80=99ve been unable to initialize my B210=
.

(Hope the markup works=E2=80=A6
```
$ uhd_usrp_probe

[INFO] [UHD] Mac OS; Clang version 12.0.0 (clang-1200.0.32.27);
Boost_107100; UHD_3.15.0.0-MacPorts-Release

[INFO] [B200] Loading firmware image:
/opt/local/share/uhd/images/usrp_b200_fw.hex...

Error: LookupError: KeyError: No devices found for ----->
Empty Device Address

$ uhd_usrp_probe
[INFO] [UHD] Mac OS; Clang version 12.0.0 (clang-1200.0.32.27);
Boost_107100; UHD_3.15.0.0-MacPorts-Release

Error: LookupError: KeyError: No devices found for ----->
Empty Device Address

$ uhd_usrp_probe --args type=3Db200

Error: LookupError: KeyError: No devices found for ----->

Device Address:
    type: b200

```

This happens after a fresh reboot (where the USB connection was made
*after* the reboot) and many times thereafter.

Running Big Sur 11.2.1 on a 2018 Mac mini (x86).

In the hardware summary, the device shows up as =E2=80=9CManufacturer: Unkn=
own=E2=80=9D but
the USRP's serial number is reported correctly. This indicates that there
is enough of a path from host to USRP for the USB driver to see the device
serial number.  But, oddly, not enough to get a product and vendor id.

I=E2=80=99m at a bit of a loss.


The device works as expected on a linux box with UHD 4.0 as it did with UHD
3.15.

--000000000000b5b3bf05bb2a9300
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-fami=
ly:Helvetica;font-size:12px">With the upgrade to Big Sur, I=E2=80=99ve been=
 unable to initialize my B210.=C2=A0</span><div style=3D"color:rgb(0,0,0);f=
ont-family:Helvetica;font-size:12px"><br></div><div style=3D"color:rgb(0,0,=
0);font-family:Helvetica;font-size:12px">(Hope the markup works=E2=80=A6=C2=
=A0</div><div style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:12p=
x">```</div><div style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:=
12px"><div style=3D"margin:0px;font-stretch:normal;font-size:13px;line-heig=
ht:normal;font-family:&quot;Courier New&quot;"><span style=3D"font-variant-=
ligatures:no-common-ligatures">$ uhd_usrp_probe=C2=A0</span></div><div styl=
e=3D"margin:0px;font-stretch:normal;font-size:13px;line-height:normal;font-=
family:&quot;Courier New&quot;"><span style=3D"font-variant-ligatures:no-co=
mmon-ligatures"><br></span></div><div style=3D"margin:0px;font-stretch:norm=
al;font-size:13px;line-height:normal;font-family:&quot;Courier New&quot;"><=
span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(47,180,2=
9)">[INFO] [UHD]=C2=A0</span><span style=3D"font-variant-ligatures:no-commo=
n-ligatures">Mac OS; Clang version 12.0.0 (clang-1200.0.32.27); Boost_10710=
0; UHD_3.15.0.0-MacPorts-Release</span></div><div style=3D"margin:0px;font-=
stretch:normal;font-size:13px;line-height:normal;font-family:&quot;Courier =
New&quot;"><span style=3D"font-variant-ligatures:no-common-ligatures;color:=
rgb(47,180,29)"><br></span></div><div style=3D"margin:0px;font-stretch:norm=
al;font-size:13px;line-height:normal;font-family:&quot;Courier New&quot;"><=
span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(47,180,2=
9)">[INFO] [B200]=C2=A0</span><span style=3D"font-variant-ligatures:no-comm=
on-ligatures">Loading firmware image: /opt/local/share/uhd/images/usrp_b200=
_fw.hex...</span></div><div style=3D"margin:0px;font-stretch:normal;font-si=
ze:13px;line-height:normal;font-family:&quot;Courier New&quot;"><span style=
=3D"font-variant-ligatures:no-common-ligatures"><br></span></div><div style=
=3D"margin:0px;font-stretch:normal;font-size:13px;line-height:normal;font-f=
amily:&quot;Courier New&quot;"><span style=3D"font-variant-ligatures:no-com=
mon-ligatures">Error: LookupError: KeyError: No devices found for -----&gt;=
</span></div><div style=3D"margin:0px;font-stretch:normal;font-size:13px;li=
ne-height:normal;font-family:&quot;Courier New&quot;"><span style=3D"font-v=
ariant-ligatures:no-common-ligatures">Empty Device Address</span></div></di=
v><div style=3D"color:rgb(0,0,0);margin:0px;font-stretch:normal;font-size:1=
3px;line-height:normal;font-family:&quot;Courier New&quot;"><span style=3D"=
font-variant-ligatures:no-common-ligatures"><br></span></div><div style=3D"=
color:rgb(0,0,0);margin:0px;font-stretch:normal;font-size:13px;line-height:=
normal;font-family:&quot;Courier New&quot;"><span style=3D"font-variant-lig=
atures:no-common-ligatures"><div style=3D"margin:0px;font-stretch:normal;li=
ne-height:normal"><span style=3D"font-variant-ligatures:no-common-ligatures=
">$ uhd_usrp_probe=C2=A0</span></div><div style=3D"margin:0px;font-stretch:=
normal;line-height:normal"><span style=3D"font-variant-ligatures:no-common-=
ligatures;color:rgb(47,180,29)">[INFO] [UHD]=C2=A0</span><span style=3D"fon=
t-variant-ligatures:no-common-ligatures">Mac OS; Clang version 12.0.0 (clan=
g-1200.0.32.27); Boost_107100; UHD_3.15.0.0-MacPorts-Release</span></div><d=
iv style=3D"margin:0px;font-stretch:normal;line-height:normal"><span style=
=3D"font-variant-ligatures:no-common-ligatures"><br></span></div><div style=
=3D"margin:0px;font-stretch:normal;line-height:normal"><span style=3D"font-=
variant-ligatures:no-common-ligatures">Error: LookupError: KeyError: No dev=
ices found for -----&gt;</span></div><div style=3D"margin:0px;font-stretch:=
normal;line-height:normal"><span style=3D"font-variant-ligatures:no-common-=
ligatures">Empty Device Address</span></div><div><span style=3D"font-varian=
t-ligatures:no-common-ligatures"><br></span></div><div><span style=3D"font-=
variant-ligatures:no-common-ligatures"><div style=3D"margin:0px;font-stretc=
h:normal;line-height:normal"><span style=3D"font-variant-ligatures:no-commo=
n-ligatures">$ uhd_usrp_probe --args type=3Db200</span></div><div style=3D"=
margin:0px;font-stretch:normal;line-height:normal"><span style=3D"font-vari=
ant-ligatures:no-common-ligatures"><br></span></div><div style=3D"margin:0p=
x;font-stretch:normal;line-height:normal"><span style=3D"font-variant-ligat=
ures:no-common-ligatures">Error: LookupError: KeyError: No devices found fo=
r -----&gt;</span></div><div style=3D"margin:0px;font-stretch:normal;line-h=
eight:normal"><span style=3D"font-variant-ligatures:no-common-ligatures"><b=
r></span></div><div style=3D"margin:0px;font-stretch:normal;line-height:nor=
mal"><span style=3D"font-variant-ligatures:no-common-ligatures">Device Addr=
ess:</span></div><div style=3D"margin:0px;font-stretch:normal;line-height:n=
ormal"><span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 =
=C2=A0=C2=A0type: b200</span></div><div><span style=3D"font-variant-ligatur=
es:no-common-ligatures"><br></span></div></span></div></span></div><div sty=
le=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:12px"><span style=3D=
"font-variant-ligatures:no-common-ligatures">```</span></div><div style=3D"=
color:rgb(0,0,0);font-family:Helvetica;font-size:12px"><span style=3D"font-=
variant-ligatures:no-common-ligatures"><br></span></div><div style=3D"color=
:rgb(0,0,0);font-family:Helvetica;font-size:12px"><span style=3D"font-varia=
nt-ligatures:no-common-ligatures">This happens after a fresh reboot (where =
the USB connection was made *after* the reboot) and many times thereafter. =
=C2=A0=C2=A0</span></div><div style=3D"color:rgb(0,0,0);font-family:Helveti=
ca;font-size:12px"><span style=3D"font-variant-ligatures:no-common-ligature=
s"><br></span></div><div style=3D"color:rgb(0,0,0);font-family:Helvetica;fo=
nt-size:12px"><span style=3D"font-variant-ligatures:no-common-ligatures">Ru=
nning Big Sur 11.2.1 on a 2018 Mac mini (x86). =C2=A0</span></div><div styl=
e=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:12px"><span style=3D"=
font-variant-ligatures:no-common-ligatures"><br></span></div><div style=3D"=
color:rgb(0,0,0);font-family:Helvetica;font-size:12px"><span style=3D"font-=
variant-ligatures:no-common-ligatures">In the hardware summary, the device =
shows up as =E2=80=9CManufacturer: Unknown=E2=80=9D but the USRP&#39;s=C2=
=A0serial number is reported correctly. This indicates that there is enough=
 of a path from host to USRP for the USB driver to see the device serial nu=
mber.=C2=A0 But, oddly, not enough to get a product and vendor id.</span></=
div><div style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:12px"><s=
pan style=3D"font-variant-ligatures:no-common-ligatures"><br></span></div><=
div style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:12px"><span s=
tyle=3D"font-variant-ligatures:no-common-ligatures">I=E2=80=99m at a bit of=
 a loss.=C2=A0</span></div><div style=3D"color:rgb(0,0,0);font-family:Helve=
tica;font-size:12px"><span style=3D"font-variant-ligatures:no-common-ligatu=
res"><br></span></div><div style=3D"color:rgb(0,0,0);font-family:Helvetica;=
font-size:12px"><span style=3D"font-variant-ligatures:no-common-ligatures">=
<br></span></div><div style=3D"color:rgb(0,0,0);font-family:Helvetica;font-=
size:12px"><span style=3D"font-variant-ligatures:no-common-ligatures">The d=
evice works as expected on a linux box with UHD 4.0 as it did with UHD 3.15=
.</span></div><div style=3D"color:rgb(0,0,0);font-family:Helvetica;font-siz=
e:12px"><span style=3D"font-variant-ligatures:no-common-ligatures"><br></sp=
an></div><div style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:12p=
x"><span style=3D"font-variant-ligatures:no-common-ligatures"><br></span></=
div><div style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:12px"><s=
pan style=3D"font-variant-ligatures:no-common-ligatures"><br></span></div><=
div style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:12px"><span s=
tyle=3D"font-variant-ligatures:no-common-ligatures"><br></span></div></div>=
</div>

--000000000000b5b3bf05bb2a9300--


--===============6619359466757763573==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6619359466757763573==--

