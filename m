Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC9B31BFC5
	for <lists+usrp-users@lfdr.de>; Mon, 15 Feb 2021 17:53:35 +0100 (CET)
Received: from [::1] (port=40836 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lBh7u-0008KV-A5; Mon, 15 Feb 2021 11:53:34 -0500
Received: from mail-ed1-f54.google.com ([209.85.208.54]:39313)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1lBh7q-0008D8-NV
 for usrp-users@lists.ettus.com; Mon, 15 Feb 2021 11:53:30 -0500
Received: by mail-ed1-f54.google.com with SMTP id h10so4196155edl.6
 for <usrp-users@lists.ettus.com>; Mon, 15 Feb 2021 08:53:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ptWB0d/7uWtofE7kaEbFE6FmAX1DlBibLK4epAdzynw=;
 b=1Pj/8xSZj0SsX7L/gTh1PhMATFvbL7Qf8aAJxzkr4luBMxKHdeDbiwZFgJBjNR740z
 BzQy5GjyGqvR0e1nqXqJOwvbzxFuJe+FkbOv4q2uyVK9iBX7Or1w6Onqr+0yAUPRNQpA
 WmvuNToPbMJif00dQvp/a1XOdaQoM5mgEVewe87dnXL/85/YLh8cONQaXOynDOw6dgST
 cixm/bbUZ0vEZ/LZ+Kko2ues/q1oO6GgsPs6DdsvXlQww45YhZu8QiKTAjjO8i8ZLs2O
 5MVfnPM+eJwJTjtLrzxUxxzoKHN1zm7qHTeLWOdCjRa9ofieA7MHqMUKqDlAJfCyrU0V
 KrWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ptWB0d/7uWtofE7kaEbFE6FmAX1DlBibLK4epAdzynw=;
 b=b4RlFtinq4i3vUvJx6An4ggVWinUpkVZ1dPFb8kcujfoRiBagaaw8WTV/m+FLYBgPO
 zcuzlEBuR8sRyztX7E7ZYwgAg7rf0PibQxs/t84veOnYEJCe2eCfTn+SP9moltploDGe
 HJoqUO58u/gqMRKsposOoKo7XpT1vIMUzN3Bhy19ZD0v2On3Scs7T2VZevX7FNbyZkQ3
 2INwMVMtAOZF4HWPU/H88ipuFqhXAIgUe1DpbdMu/qoYPUi+7baZ9Twp0pGyjT3VGOox
 8EqTL854uR8e8qwGwkn2NOcK3EtzKUpW8C7xXtyhpuXWyZ6i9xxvjRpi8a9ZN8Ne1SmU
 /5tQ==
X-Gm-Message-State: AOAM532gSfC/houwhE/gwoo2J7jcsY671LlHOVhQe0rcohfzS97guJaz
 9Wc3v3zoCyxFye0iyAO3hPR9TWacVm5ZNMQBHSEOcA/5
X-Google-Smtp-Source: ABdhPJyb1oCbASs+bTA6VLXtmyL7V0rHnfWRLtIy+bDDfbPfENNP2XmY0tCBmLeU1oxEKUNnjKvsv83UESf/W4MEw7o=
X-Received: by 2002:a05:6402:35ca:: with SMTP id
 z10mr16650592edc.186.1613407969584; 
 Mon, 15 Feb 2021 08:52:49 -0800 (PST)
MIME-Version: 1.0
References: <CA+rmjiERCja+dQQ7QoU0qD2CMSSCdYbL4F85HCJRxzZJNwxnJQ@mail.gmail.com>
In-Reply-To: <CA+rmjiERCja+dQQ7QoU0qD2CMSSCdYbL4F85HCJRxzZJNwxnJQ@mail.gmail.com>
Date: Mon, 15 Feb 2021 11:52:38 -0500
Message-ID: <CAGNhwTMEfUAz8O_wM_L2m4C=oUJ88WZm11adM8bVUnFSCAmK5Q@mail.gmail.com>
To: Radio User <radiogeek381@gmail.com>
Cc: USRP list <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] OS X Big Sur vs. B200 uhd_usrp_probe
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Content-Type: multipart/mixed; boundary="===============3826225594649065120=="
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

--===============3826225594649065120==
Content-Type: multipart/alternative; boundary="000000000000e7bbb605bb62d017"

--000000000000e7bbb605bb62d017
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Radio User aka "radiogeek381" - USRPs work for me on Big Sur using UHD
from MacPorts; I've tested a B200mini, B210, E310, and X310. I'm mostly
testing UHD 4.0 (port "uhd-devel") rather than 3.15 (port "uhd"), but
either should work. I have a bunch of builtbots for testing MacPorts
builds, including UHD, from OSX 10.4 through current, and I've had success
running UHD 3.9 on a PowerPC Mac running 10.4 (PPC 32-bit) -- it takes some
work, and USB is limited to 2.0 with a PCI adapter ... but it does work! At
one point a month ago, I had buildbots up for 10.4 PPC 32-bit, 10.12 Intel
64-bit, and 11.0-beta ARM 64-bit ... those were some good times!

I find it odd that the hardware Manufacturer is being reported as "Unknown"
... it should be "Cypress". For example on my OSX 10.12 buildbot here's
what I see right after plugging in my rev1 B210:
{{{
WestBridge :
  Product ID: 0x0020
  Vendor ID: 0x2500
  Version: 1.00
  Serial Number: 0000000004BE
  Speed: Up to 480 Mb/sec
  Manufacturer: Cypress
  Location ID: 0x14100000 / 14
  Current Available (mA): 500
  Current Required (mA): 200
  Extra Operating Current (mA): 0
}}}

I see the same on Big Sur (and, actually, all of the Macs I've ever tried
this on; the test is the same plus or minus formatting and minor other
differences). After running "uhd_find_devices", the firmware is loaded onto
the USRP and it "morphs" into a different USB device -- same basic info but
it requires the OS USB stack to properly re=C3=ABnumerate ... and OSX / mac=
OS
has some issues here. My current-rev B210 (green board; big-honkin' USB
connector) almost never experiences issues during morphing / re=C3=ABnumera=
tion,
while my rev1 B210 (white board; svelte / thin [and fragile] USB connector)
experiences it reliably -- more than 50% of the time at USRP power-up.

Can you send me (off list) the hardware report for your USRP & I'll work
with you to try to figure out what's going on. - MLD
---

Dr Michael L Dickens
Principal RF Applications Engineer
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/

DISCLAIMER: Any attached Code is provided As Is. It has not been tested or
validated as a product, for use in a deployed application or system, or for
use in hazardous environments. You assume all risks for use of the Code.
Use of the Code is subject to terms of the licenses to the UHD or RFNoC
code with which the Code is used. Standard licenses to UHD and RFNoC can be
found at https://www.ettus.com/sdr-software/licenses/ .

NI will only perform services based on its understanding and condition that
the goods or services (i) are not for the use in the production or
development of any item produced, purchased, or ordered by any entity with
a footnote 1 designation in the license requirement column of Supplement
No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a
company is not a party to the transaction.  If our understanding is
incorrect, please notify us immediately because a specific authorization
may be required from the U.S. Commerce Department before the transaction
may proceed further.


On Fri, Feb 12, 2021 at 4:47 PM Radio User via USRP-users <
usrp-users@lists.ettus.com> wrote:

> With the upgrade to Big Sur, I=E2=80=99ve been unable to initialize my B2=
10.
>
> (Hope the markup works=E2=80=A6
> ```
> $ uhd_usrp_probe
>
> [INFO] [UHD] Mac OS; Clang version 12.0.0 (clang-1200.0.32.27);
> Boost_107100; UHD_3.15.0.0-MacPorts-Release
>
> [INFO] [B200] Loading firmware image:
> /opt/local/share/uhd/images/usrp_b200_fw.hex...
>
> Error: LookupError: KeyError: No devices found for ----->
> Empty Device Address
>
> $ uhd_usrp_probe
> [INFO] [UHD] Mac OS; Clang version 12.0.0 (clang-1200.0.32.27);
> Boost_107100; UHD_3.15.0.0-MacPorts-Release
>
> Error: LookupError: KeyError: No devices found for ----->
> Empty Device Address
>
> $ uhd_usrp_probe --args type=3Db200
>
> Error: LookupError: KeyError: No devices found for ----->
>
> Device Address:
>     type: b200
>
> ```
>
> This happens after a fresh reboot (where the USB connection was made
> *after* the reboot) and many times thereafter.
>
> Running Big Sur 11.2.1 on a 2018 Mac mini (x86).
>
> In the hardware summary, the device shows up as =E2=80=9CManufacturer: Un=
known=E2=80=9D
> but the USRP's serial number is reported correctly. This indicates that
> there is enough of a path from host to USRP for the USB driver to see the
> device serial number.  But, oddly, not enough to get a product and vendor
> id.
>
> I=E2=80=99m at a bit of a loss.
>
>
> The device works as expected on a linux box with UHD 4.0 as it did with
> UHD 3.15.
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000e7bbb605bb62d017
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi=C2=A0Radio User aka &quot;radiogeek381=
&quot; - USRPs work for me on Big Sur using UHD from MacPorts; I&#39;ve tes=
ted a=C2=A0B200mini, B210, E310, and X310. I&#39;m mostly testing UHD 4.0 (=
port &quot;uhd-devel&quot;) rather than 3.15 (port &quot;uhd&quot;), but ei=
ther should work. I have a bunch of builtbots=C2=A0for testing MacPorts bui=
lds, including=C2=A0UHD, from OSX 10.4 through current, and I&#39;ve had su=
ccess running UHD 3.9 on a PowerPC Mac running 10.4 (PPC 32-bit) -- it take=
s some work, and USB is limited to 2.0 with a PCI adapter ... but it does w=
ork! At one point a month ago, I had buildbots up for 10.4 PPC 32-bit, 10.1=
2 Intel 64-bit, and 11.0-beta ARM 64-bit ... those were some good times!</d=
iv><div dir=3D"ltr"><br></div><div dir=3D"ltr">I find it odd that the hardw=
are Manufacturer is being reported as &quot;Unknown&quot; ... it should=C2=
=A0be &quot;Cypress&quot;. For example on my OSX 10.12 buildbot here&#39;s =
what I see right after plugging in my rev1 B210:</div><div dir=3D"ltr">{{{<=
br>WestBridge :<br>=C2=A0 Product ID:	0x0020<br>=C2=A0 Vendor ID:	0x2500<br=
>=C2=A0 Version:	1.00<br>=C2=A0 Serial Number:	0000000004BE<br>=C2=A0 Speed=
:	Up to 480 Mb/sec<br>=C2=A0 Manufacturer:	Cypress<br>=C2=A0 Location ID:	0=
x14100000 / 14<br>=C2=A0 Current Available (mA):	500<br>=C2=A0 Current Requ=
ired (mA):	200<br>=C2=A0 Extra Operating Current (mA):	0<br><div>}}}</div><=
div><br></div><div>I see the same on Big Sur (and, actually, all of the Mac=
s I&#39;ve ever tried this on; the test is the same plus or minus formattin=
g and minor other differences). After running &quot;uhd_find_devices&quot;,=
 the firmware is loaded onto the USRP and it &quot;morphs&quot; into a diff=
erent USB device -- same basic info but it requires the OS USB stack to pro=
perly re=C3=ABnumerate ... and OSX / macOS has some issues here. My current=
-rev B210 (green board; big-honkin&#39; USB connector) almost never experie=
nces issues during morphing / re=C3=ABnumeration, while my rev1 B210 (white=
 board; svelte / thin [and fragile] USB connector) experiences it reliably =
-- more than 50% of the time at USRP power-up.</div><div><br></div><div>Can=
 you send me (off list) the hardware report for your USRP &amp; I&#39;ll wo=
rk with you to try to figure out what&#39;s going on. - MLD</div><div><div>=
<div><div><div><div><div><div dir=3D"ltr" data-smartmail=3D"gmail_signature=
"><div dir=3D"ltr"><div dir=3D"ltr">---</div><p style=3D"color:rgb(0,0,0)">=
<span style=3D"margin:0px;padding:0px;border:0px;font-variant:inherit;font-=
stretch:inherit;line-height:inherit;vertical-align:baseline;color:inherit">=
</span></p><div dir=3D"ltr"><div dir=3D"ltr">Dr Michael L Dickens</div><div=
 dir=3D"ltr">Principal RF Applications Engineer</div><div dir=3D"ltr">Ettus=
 Research Technical Support</div>Email:=C2=A0<a href=3D"mailto:support@ettu=
s.com" target=3D"_blank">support@ettus.com</a><br>Web:=C2=A0<a href=3D"http=
s://ettus.com/" target=3D"_blank">https://ettus.com/</a></div><p style=3D"c=
olor:rgb(0,0,0)"><span style=3D"margin:0px;padding:0px;border:0px;font-vari=
ant:inherit;font-stretch:inherit;line-height:inherit;vertical-align:baselin=
e;color:inherit"><font face=3D"monospace" size=3D"1">DISCLAIMER: Any attach=
ed Code is provided As Is. It has not been tested or validated as a product=
, for use in a deployed application or system, or for use in hazardous envi=
ronments. You assume all risks for use of the Code. Use of the Code is subj=
ect to terms of the licenses to the UHD or RFNoC code with which the Code i=
s used. Standard licenses to UHD and RFNoC can be found at=C2=A0<a href=3D"=
https://www.ettus.com/sdr-software/licenses/" rel=3D"noopener noreferrer" s=
tyle=3D"font-variant:inherit;font-stretch:inherit;line-height:inherit;margi=
n:0px;padding:0px;border:0px;vertical-align:baseline" target=3D"_blank">htt=
ps://www.ettus.com/sdr-software/licenses/</a>=C2=A0.</font></span></p><p st=
yle=3D"color:rgb(0,0,0)"><span style=3D"margin:0px;padding:0px;border:0px;f=
ont-variant:inherit;font-stretch:inherit;line-height:inherit;vertical-align=
:baseline;color:inherit"><font face=3D"monospace" size=3D"1">NI will only p=
erform services based on its understanding and condition that the goods or =
services (i) are not for the use in the production or development of any it=
em produced, purchased, or ordered by any entity with a footnote 1 designat=
ion in the license requirement column of Supplement No. 4 to Part 744, U.S.=
 Export Administration Regulations and (ii) such a company is not a party t=
o the transaction.=C2=A0 If our understanding is incorrect, please notify u=
s immediately because a specific authorization may be required from the U.S=
. Commerce Department before the transaction may proceed further.</font></s=
pan></p></div></div></div><br></div></div></div></div></div></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, F=
eb 12, 2021 at 4:47 PM Radio User via USRP-users &lt;<a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:Helv=
etica;font-size:12px">With the upgrade to Big Sur, I=E2=80=99ve been unable=
 to initialize my B210.=C2=A0</span><div style=3D"color:rgb(0,0,0);font-fam=
ily:Helvetica;font-size:12px"><br></div><div style=3D"color:rgb(0,0,0);font=
-family:Helvetica;font-size:12px">(Hope the markup works=E2=80=A6=C2=A0</di=
v><div style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:12px">```<=
/div><div style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:12px"><=
div style=3D"margin:0px;font-stretch:normal;font-size:13px;line-height:norm=
al;font-family:&quot;Courier New&quot;"><span style=3D"font-variant-ligatur=
es:no-common-ligatures">$ uhd_usrp_probe=C2=A0</span></div><div style=3D"ma=
rgin:0px;font-stretch:normal;font-size:13px;line-height:normal;font-family:=
&quot;Courier New&quot;"><span style=3D"font-variant-ligatures:no-common-li=
gatures"><br></span></div><div style=3D"margin:0px;font-stretch:normal;font=
-size:13px;line-height:normal;font-family:&quot;Courier New&quot;"><span st=
yle=3D"font-variant-ligatures:no-common-ligatures;color:rgb(47,180,29)">[IN=
FO] [UHD]=C2=A0</span><span style=3D"font-variant-ligatures:no-common-ligat=
ures">Mac OS; Clang version 12.0.0 (clang-1200.0.32.27); Boost_107100; UHD_=
3.15.0.0-MacPorts-Release</span></div><div style=3D"margin:0px;font-stretch=
:normal;font-size:13px;line-height:normal;font-family:&quot;Courier New&quo=
t;"><span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(47,=
180,29)"><br></span></div><div style=3D"margin:0px;font-stretch:normal;font=
-size:13px;line-height:normal;font-family:&quot;Courier New&quot;"><span st=
yle=3D"font-variant-ligatures:no-common-ligatures;color:rgb(47,180,29)">[IN=
FO] [B200]=C2=A0</span><span style=3D"font-variant-ligatures:no-common-liga=
tures">Loading firmware image: /opt/local/share/uhd/images/usrp_b200_fw.hex=
...</span></div><div style=3D"margin:0px;font-stretch:normal;font-size:13px=
;line-height:normal;font-family:&quot;Courier New&quot;"><span style=3D"fon=
t-variant-ligatures:no-common-ligatures"><br></span></div><div style=3D"mar=
gin:0px;font-stretch:normal;font-size:13px;line-height:normal;font-family:&=
quot;Courier New&quot;"><span style=3D"font-variant-ligatures:no-common-lig=
atures">Error: LookupError: KeyError: No devices found for -----&gt;</span>=
</div><div style=3D"margin:0px;font-stretch:normal;font-size:13px;line-heig=
ht:normal;font-family:&quot;Courier New&quot;"><span style=3D"font-variant-=
ligatures:no-common-ligatures">Empty Device Address</span></div></div><div =
style=3D"color:rgb(0,0,0);margin:0px;font-stretch:normal;font-size:13px;lin=
e-height:normal;font-family:&quot;Courier New&quot;"><span style=3D"font-va=
riant-ligatures:no-common-ligatures"><br></span></div><div style=3D"color:r=
gb(0,0,0);margin:0px;font-stretch:normal;font-size:13px;line-height:normal;=
font-family:&quot;Courier New&quot;"><span style=3D"font-variant-ligatures:=
no-common-ligatures"><div style=3D"margin:0px;font-stretch:normal;line-heig=
ht:normal"><span style=3D"font-variant-ligatures:no-common-ligatures">$ uhd=
_usrp_probe=C2=A0</span></div><div style=3D"margin:0px;font-stretch:normal;=
line-height:normal"><span style=3D"font-variant-ligatures:no-common-ligatur=
es;color:rgb(47,180,29)">[INFO] [UHD]=C2=A0</span><span style=3D"font-varia=
nt-ligatures:no-common-ligatures">Mac OS; Clang version 12.0.0 (clang-1200.=
0.32.27); Boost_107100; UHD_3.15.0.0-MacPorts-Release</span></div><div styl=
e=3D"margin:0px;font-stretch:normal;line-height:normal"><span style=3D"font=
-variant-ligatures:no-common-ligatures"><br></span></div><div style=3D"marg=
in:0px;font-stretch:normal;line-height:normal"><span style=3D"font-variant-=
ligatures:no-common-ligatures">Error: LookupError: KeyError: No devices fou=
nd for -----&gt;</span></div><div style=3D"margin:0px;font-stretch:normal;l=
ine-height:normal"><span style=3D"font-variant-ligatures:no-common-ligature=
s">Empty Device Address</span></div><div><span style=3D"font-variant-ligatu=
res:no-common-ligatures"><br></span></div><div><span style=3D"font-variant-=
ligatures:no-common-ligatures"><div style=3D"margin:0px;font-stretch:normal=
;line-height:normal"><span style=3D"font-variant-ligatures:no-common-ligatu=
res">$ uhd_usrp_probe --args type=3Db200</span></div><div style=3D"margin:0=
px;font-stretch:normal;line-height:normal"><span style=3D"font-variant-liga=
tures:no-common-ligatures"><br></span></div><div style=3D"margin:0px;font-s=
tretch:normal;line-height:normal"><span style=3D"font-variant-ligatures:no-=
common-ligatures">Error: LookupError: KeyError: No devices found for -----&=
gt;</span></div><div style=3D"margin:0px;font-stretch:normal;line-height:no=
rmal"><span style=3D"font-variant-ligatures:no-common-ligatures"><br></span=
></div><div style=3D"margin:0px;font-stretch:normal;line-height:normal"><sp=
an style=3D"font-variant-ligatures:no-common-ligatures">Device Address:</sp=
an></div><div style=3D"margin:0px;font-stretch:normal;line-height:normal"><=
span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 =C2=A0=C2=
=A0type: b200</span></div><div><span style=3D"font-variant-ligatures:no-com=
mon-ligatures"><br></span></div></span></div></span></div><div style=3D"col=
or:rgb(0,0,0);font-family:Helvetica;font-size:12px"><span style=3D"font-var=
iant-ligatures:no-common-ligatures">```</span></div><div style=3D"color:rgb=
(0,0,0);font-family:Helvetica;font-size:12px"><span style=3D"font-variant-l=
igatures:no-common-ligatures"><br></span></div><div style=3D"color:rgb(0,0,=
0);font-family:Helvetica;font-size:12px"><span style=3D"font-variant-ligatu=
res:no-common-ligatures">This happens after a fresh reboot (where the USB c=
onnection was made *after* the reboot) and many times thereafter. =C2=A0=C2=
=A0</span></div><div style=3D"color:rgb(0,0,0);font-family:Helvetica;font-s=
ize:12px"><span style=3D"font-variant-ligatures:no-common-ligatures"><br></=
span></div><div style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:1=
2px"><span style=3D"font-variant-ligatures:no-common-ligatures">Running Big=
 Sur 11.2.1 on a 2018 Mac mini (x86). =C2=A0</span></div><div style=3D"colo=
r:rgb(0,0,0);font-family:Helvetica;font-size:12px"><span style=3D"font-vari=
ant-ligatures:no-common-ligatures"><br></span></div><div style=3D"color:rgb=
(0,0,0);font-family:Helvetica;font-size:12px"><span style=3D"font-variant-l=
igatures:no-common-ligatures">In the hardware summary, the device shows up =
as =E2=80=9CManufacturer: Unknown=E2=80=9D but the USRP&#39;s=C2=A0serial n=
umber is reported correctly. This indicates that there is enough of a path =
from host to USRP for the USB driver to see the device serial number.=C2=A0=
 But, oddly, not enough to get a product and vendor id.</span></div><div st=
yle=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:12px"><span style=
=3D"font-variant-ligatures:no-common-ligatures"><br></span></div><div style=
=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:12px"><span style=3D"f=
ont-variant-ligatures:no-common-ligatures">I=E2=80=99m at a bit of a loss.=
=C2=A0</span></div><div style=3D"color:rgb(0,0,0);font-family:Helvetica;fon=
t-size:12px"><span style=3D"font-variant-ligatures:no-common-ligatures"><br=
></span></div><div style=3D"color:rgb(0,0,0);font-family:Helvetica;font-siz=
e:12px"><span style=3D"font-variant-ligatures:no-common-ligatures"><br></sp=
an></div><div style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:12p=
x"><span style=3D"font-variant-ligatures:no-common-ligatures">The device wo=
rks as expected on a linux box with UHD 4.0 as it did with UHD 3.15.</span>=
</div><div style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:12px">=
<span style=3D"font-variant-ligatures:no-common-ligatures"><br></span></div=
><div style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:12px"><span=
 style=3D"font-variant-ligatures:no-common-ligatures"><br></span></div><div=
 style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:12px"><span styl=
e=3D"font-variant-ligatures:no-common-ligatures"><br></span></div><div styl=
e=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:12px"><span style=3D"=
font-variant-ligatures:no-common-ligatures"><br></span></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div>

--000000000000e7bbb605bb62d017--


--===============3826225594649065120==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3826225594649065120==--

