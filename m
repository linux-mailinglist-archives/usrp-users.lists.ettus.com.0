Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 793802C2F74
	for <lists+usrp-users@lfdr.de>; Tue, 24 Nov 2020 19:02:27 +0100 (CET)
Received: from [::1] (port=34172 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1khcdy-0001PN-8W; Tue, 24 Nov 2020 13:02:22 -0500
Received: from mail-ej1-f41.google.com ([209.85.218.41]:33813)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1khcdu-0001JN-RY
 for usrp-users@lists.ettus.com; Tue, 24 Nov 2020 13:02:19 -0500
Received: by mail-ej1-f41.google.com with SMTP id o9so29833986ejg.1
 for <usrp-users@lists.ettus.com>; Tue, 24 Nov 2020 10:01:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DmyTUGofGHcOt10bF34YEgdgHs44bo+irA6CcpQxzEw=;
 b=KnhHn5MTiko55VXbkkCv19JIMvVqjfA84scVV7CNm5Q1tuIjQ0UREQ9VsiYFUXd0Ba
 W2qHqsW9PQ2qvtW16LhHGVk+v0NNIysGRim6/q2Y4PuZ2w+h4Wt6Rrdrkvep1j/2VvRU
 vyOkjjf4L6NN6EPZGvkSIrj07kSdJ+9/RnTdJG/beCHRQgtccaViIpOSjP28LzDUtibw
 X5RvQq8xZTvl0RHQzmA2Ov1MVcJ9n95wH0RWUeBNrtLxJkLQkwyuzm3RFGz2eGlWDCkb
 zgAsq2xsKSLTsUSF1j30Ol4d0MbEN+PCD2ZDC+1beI4hxG1bxgdZ7Tj7xHj8dVn6j2xK
 Zuhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DmyTUGofGHcOt10bF34YEgdgHs44bo+irA6CcpQxzEw=;
 b=Ac2OMPQ0Yzpsx0OBvuCx64UB9r1BahZJW15I0AW/BAYT+EvphhiP7BQPL6JMCbL9IT
 dcrF/1NCD1bCoQt0MXRiVF/Cr3rgDJ5/z/wOOFgw5TeLE0msTjVNACIcBzc6VYsxTCk5
 4aWSynjeVd7dcoMwUEKya+2BNO7AhRvHRDI9o81Qab47SPpKKQ5r3XsXWskTy503QPz3
 n3I7+9M+Qq1uFQYsrvtI9z9XuHa5/vvnov0vXM2wvhQ/A0yLbhaha/bAHBZO1rN7MCwU
 rWyvLNQyhUQMKY0nPSmJbaCtYpBQ0p0tcsTxB6hwzboAqaQT8d4imXSERPF4q5TrN99i
 4/YQ==
X-Gm-Message-State: AOAM531JtcLADV3pfTq3hK7okYOXVYHGAtXA2UMNptH1klNmnMUvDH4+
 i4hwoqccGYPa9S+R2wv9hJVUC7lFrFUDOqVLoTsI+Mjw
X-Google-Smtp-Source: ABdhPJy8ci7Ep1PURO/+JveEqS+SbrsNy9Jppwn64WqGwP1NaBQHsE2RvX6hiP6TIJORfn1xvkMZtc/Bzc7IDCaPo8k=
X-Received: by 2002:a17:907:9d0:: with SMTP id
 bx16mr5441089ejc.426.1606240897697; 
 Tue, 24 Nov 2020 10:01:37 -0800 (PST)
MIME-Version: 1.0
References: <CAOLzfSg88FT3Cm_-Dd0jL__BchiuGhR03jLW1nxCv5N3O-TQjg@mail.gmail.com>
 <84B751A1-3137-41AA-91FF-AAAEB03C7927@ettus.com>
 <CAOLzfSjROwto1SRtXa=H1ce6pRZssLYKF5mjQQrTSHdqOBXgrA@mail.gmail.com>
In-Reply-To: <CAOLzfSjROwto1SRtXa=H1ce6pRZssLYKF5mjQQrTSHdqOBXgrA@mail.gmail.com>
Date: Tue, 24 Nov 2020 13:01:26 -0500
Message-ID: <CAGNhwTMoUyL2jpAY-GXYBY43+h9Y2QyU8BX5Pe-Vn2bMMy+vpg@mail.gmail.com>
To: Patrick Kane <prkane92@gmail.com>
Cc: USRP list <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] N321 QSFP+ XQ image network connection
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
Content-Type: multipart/mixed; boundary="===============4642152520801329909=="
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

--===============4642152520801329909==
Content-Type: multipart/alternative; boundary="00000000000021a37605b4de1ac7"

--00000000000021a37605b4de1ac7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Pat - I'm glad that info helped!

Yes, I plan on adding this information into the N32x Getting Started Guide,
once I have a better handle on it. Right now I have just a few data points
& those are not consistent! and I don't know why! Thus ...

Which Intel QSFP+ utility did you end up using? There are 2 that I can find=
:

1) EPCT:
https://downloadcenter.intel.com/download/28933/Intel-Ethernet-Port-Configu=
ration-Tool-Linux-

This is the newer version that seems to work.

2) QCU :
https://downloadcenter.intel.com/download/25851/Intel-QSFP-Configuration-Ut=
ility-Linux-Final-Release?product=3D46828

This one is deprecated, though it still works to some extent.

=3D=3D=3D

When I execute (A), I get the following options: "4x10" and "2x2x10". I do
not get an "A" or "B" or "LOM" or whatever. Just literally those 2 options.

I think the first one means "1x(4x10)", meaning that just port0 is active &
provides 4 data lates. I was hoping this option would work with a 1:4 SFP+
breakout cable from FS.com, but to the best of my testing I can get just 1
of those 4 SFP+ links to work. Supposedly if one uses the Intel 1:4
breakout cable this will work ... but that's paying $350 for an otherwise
$50 cable! I'm still investigating here. Ideally this NIC would provide
"2x(4x10)" with 2 1:4 breakout cables, to get double the SFP+ density of
current NICs (e.g., the X710-DA4 ort X722-DA4).

The second one implies to me that both ports are available & providing 2
data lanes each. The best I've been able to do is use "2x2x10" with port0;
port1 doesn't seem to be working in this setting.

Admittedly, I might need to update to the current Intel Linux drivers for
the XL710 NIC. I usually let the OS handle this for me -- in this case,
Ubuntu 20.04 latest. There are new Intel drivers from early November 2020,
but I don't think the XL710 had any updates from the prior version.

I'm curious what driver version & OS / version you're using ... maybe let's
catch up off-list for a bit & see what we can figure out here. Cheers! - ML=
D

On Tue, Nov 24, 2020 at 9:06 AM Patrick Kane <prkane92@gmail.com> wrote:

> Hi Mike,
>
> That seemed to do the trick, thanks for info! At some point, can we make
> these steps part of the N32x getting started docs?
>
> Also- the config utilty makes me choose 2x2x10 A, B, or LOM. Choosing A
> disables the second port on the QDA2, and B disables the first port. LOM
> disables both ports (expected because it's not a MB NIC). My ideal case i=
s
> using 2x N321s over QSFP on the same XL710-QDA2 NIC. Have you had any luc=
k
> in this configuration?
>
> Thanks,
> Pat
>
> On Mon, Nov 23, 2020 at 9:23 PM Michael Dickens <michael.dickens@ettus.co=
m>
> wrote:
>
>> Hi Pat - I recently verified that the N321 QAFP+ interface works with UH=
D
>> 4.0 release. I am also using an Intel XL710 (QDA2, but that probably
>> doesn=E2=80=99t matter too much). The trick for me was using the Intel Q=
SFP+ NIC
>> configuration tool to set the NIC to 2x(2x10 Gb) mode. This is the setti=
ng
>> that the N321 requires, and one that the NIC provides. Once that was set
>> then you need to configures the host and USRP network interfaces as you
>> normally would. After all of that, the link worked very nicely! I hope t=
his
>> is useful! - MLD
>>
>> On Nov 23, 2020, at 4:44 PM, Patrick Kane via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> =EF=BB=BF
>>
>> I have an N321 connected to serial console and QSFP+ through a XL710
>> Intel NIC. With the default HG image, I can connect through 1G and seria=
l
>> as expected. I updated the filesystem to UHD 4.0.0.0 using mender, and t=
he
>> build artifact reflects that this was successful. Then, after loading th=
e
>> XQ image (using 2x 10Gb lanes through QSFP+ port), I lose all ethernet
>> connectivity through the 1G port SFP0 (expected), but I get the followin=
g
>> output in the console window:
>>
>>
>> [  451.560674] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
>> flow control off
>>
>> [  453.800673] nixge 40000000.ethernet sfp0: Link is Down
>>
>> [  454.920676] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
>> flow control off
>>
>> [  458.280672] nixge 40000000.ethernet sfp0: Link is Down
>>
>> [  459.400677] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
>> flow control off
>>
>> [  462.760705] nixge 40000000.ethernet sfp0: Link is Down
>>
>> [  463.880678] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
>> flow control off
>>
>> [  466.120673] nixge 40000000.ethernet sfp0: Link is Down
>>
>>
>> uhd_usrp_probe:
>>
>>   _____________________________________________________
>>
>>  /
>>
>> |       Device: N300-Series Device
>>
>> |     _____________________________________________________
>>
>> |    /
>>
>> |   |       Mboard: ni-n3xx-31E00AC
>>
>> |   |   dboard_0_pid: 338
>>
>> |   |   dboard_0_serial: 31DB406
>>
>> |   |   dboard_1_pid: 338
>>
>> |   |   dboard_1_serial: 31DB407
>>
>> |   |   eeprom_version: 3
>>
>> |   |   fs_version: 20200914000806
>>
>> |   |   mender_artifact: v4.0.0.0_n3xx
>>
>> |   |   mpm_sw_version: 4.0.0.0-g90ce6062
>>
>> |   |   pid: 16962
>>
>> |   |   product: n320
>>
>> |   |   rev: 7
>>
>> |   |   rpc_connection: local
>>
>> |   |   serial: 31E00AC
>>
>> |   |   type: n3xx
>>
>> |   |   MPM Version: 3.0
>>
>> |   |   FPGA Version: 8.0
>>
>> |   |   FPGA git hash: be53058.clean
>>
>> |   |
>>
>> |   |   Time sources:  internal, external, gpsdo, sfp0
>>
>> |   |   Clock sources: external, internal, gpsdo
>>
>> |   |   Sensors: ref_locked, gps_locked, temp, fan, gps_gpgga, gps_sky,
>> gps_time, gps_tpv
>>
>>
>> Are there any configuration items needed to connect to the N321 through
>> the QSFP+ port. Note that I only see eth0, sfp0, sfp1, and int0 in
>> /etc/network/interfaces.
>>
>>
>> Thanks,
>>
>> Pat
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>

--00000000000021a37605b4de1ac7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Pat - I&#39;m glad that info helped!<div><br></div><div=
>Yes, I plan on adding this information into the N32x Getting Started Guide=
, once I have a better handle on it. Right now I have just a few data point=
s &amp; those are not consistent! and I don&#39;t know why! Thus ...<div><b=
r></div><div>Which Intel QSFP+ utility did you end up=C2=A0using? There are=
 2 that I can find:</div><div><br></div><div>1) EPCT: <a href=3D"https://do=
wnloadcenter.intel.com/download/28933/Intel-Ethernet-Port-Configuration-Too=
l-Linux-">https://downloadcenter.intel.com/download/28933/Intel-Ethernet-Po=
rt-Configuration-Tool-Linux-</a></div><div><br></div><div>This is the newer=
 version that seems to work.</div><div><br></div><div>2) QCU :=C2=A0<a href=
=3D"https://downloadcenter.intel.com/download/25851/Intel-QSFP-Configuratio=
n-Utility-Linux-Final-Release?product=3D46828">https://downloadcenter.intel=
.com/download/25851/Intel-QSFP-Configuration-Utility-Linux-Final-Release?pr=
oduct=3D46828</a></div><div><br></div><div>This one is deprecated, though i=
t still works to some=C2=A0extent.</div><div><br></div><div>=3D=3D=3D</div>=
<div><br></div><div>When I execute (A), I get the following options: &quot;=
4x10&quot; and &quot;2x2x10&quot;. I do not get an &quot;A&quot; or &quot;B=
&quot; or &quot;LOM&quot; or whatever. Just literally those 2 options.<br><=
br></div><div>I think the first one means &quot;1x(4x10)&quot;, meaning tha=
t just port0 is active &amp; provides 4 data lates. I was hoping this optio=
n would work with a 1:4 SFP+ breakout cable from FS.com, but to the best of=
 my testing I can get just 1 of those 4 SFP+ links to work. Supposedly if o=
ne uses the Intel 1:4 breakout cable this will work ... but that&#39;s payi=
ng $350 for an otherwise $50 cable! I&#39;m still investigating here. Ideal=
ly this NIC would provide &quot;2x(4x10)&quot; with 2 1:4 breakout cables, =
to get double the SFP+ density of current NICs (e.g., the X710-DA4 ort X722=
-DA4).</div><div><br></div><div>The second one implies to me that both port=
s are available &amp; providing 2 data lanes each. The best I&#39;ve been a=
ble to do is use &quot;2x2x10&quot; with port0; port1 doesn&#39;t seem to b=
e working in this setting.</div><div><br></div><div>Admittedly, I might nee=
d to update to the current Intel Linux drivers for the XL710 NIC. I usually=
 let the OS handle this for me -- in this case, Ubuntu 20.04 latest. There =
are new Intel drivers from early November 2020, but I don&#39;t think the X=
L710 had any updates from the prior version.</div><div><br></div><div>I&#39=
;m curious what driver version &amp; OS / version you&#39;re using ... mayb=
e let&#39;s catch up off-list for a bit &amp; see what we can figure out he=
re. Cheers! - MLD</div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Nov 24, 2020 at 9:06 AM Patrick Kane =
&lt;<a href=3D"mailto:prkane92@gmail.com">prkane92@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
">Hi Mike,=C2=A0<div><br></div><div>That seemed to do the trick, thanks for=
 info! At some point, can we make these steps part of the N32x getting star=
ted docs?=C2=A0</div><div><br></div><div>Also- the config utilty makes me c=
hoose 2x2x10 A, B, or LOM. Choosing A disables the second port on the QDA2,=
 and B disables the first port. LOM disables both ports (expected because i=
t&#39;s not a MB NIC). My ideal case is using 2x N321s over QSFP on the sam=
e XL710-QDA2 NIC. Have you had any luck in this configuration?=C2=A0</div><=
div><br></div><div>Thanks,</div><div>Pat</div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 23, 2020 at 9:23 =
PM Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com" target=
=3D"_blank">michael.dickens@ettus.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"auto"><div dir=3D"ltr">Hi =
Pat - I recently verified that the N321 QAFP+ interface works with UHD 4.0 =
release. I am also using an Intel XL710 (QDA2, but that probably doesn=E2=
=80=99t matter too much). The trick for me was using the Intel QSFP+ NIC co=
nfiguration tool to set the NIC to 2x(2x10 Gb) mode. This is the setting th=
at the N321 requires, and one that the NIC provides. Once that was set then=
 you need to configures the host<span style=3D"color:rgb(0,0,0)">=C2=A0and =
USRP</span>=C2=A0network interfaces as you normally would. After all of tha=
t, the link worked very nicely! I hope this is useful! - MLD=C2=A0</div><di=
v dir=3D"ltr"><br><blockquote type=3D"cite">On Nov 23, 2020, at 4:44 PM, Pa=
trick Kane via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
 target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br><br></block=
quote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D=
"ltr"><div>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">I have an N321 connected =
to serial console and QSFP+ through a XL710 Intel NIC. With the default HG =
image, I can connect through 1G and serial as expected. I updated the files=
ystem to UHD 4.0.0.0 using mender, and the build artifact reflects that thi=
s was successful. Then, after loading the XQ image (using 2x 10Gb lanes thr=
ough QSFP+ port), I lose all ethernet connectivity through the 1G port SFP0=
 (expected), but I get the following output in the console window:</span></=
p><p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-si=
ze:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-=
family:&quot;Segoe UI&quot;,sans-serif;color:black"><br></span></p><p class=
=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:11pt;fo=
nt-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&qu=
ot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 451.560674] nixge
40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off</span><=
/p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 453.800673] nixge
40000000.ethernet sfp0: Link is Down</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 454.920676] nixge
40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off</span><=
/p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 458.280672] nixge
40000000.ethernet sfp0: Link is Down</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 459.400677] nixge
40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off</span><=
/p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 462.760705] nixge
40000000.ethernet sfp0: Link is Down</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 463.880678] nixge
40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off</span><=
/p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 466.120673] nixge
40000000.ethernet sfp0: Link is Down</span><span style=3D"font-size:10pt;fo=
nt-family:&quot;Segoe UI&quot;,sans-serif;color:black"> </span></p><p class=
=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:11pt;fo=
nt-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&qu=
ot;Segoe UI&quot;,sans-serif;color:black"><br></span></p><p class=3D"MsoNor=
mal" style=3D"margin:2pt 0in;line-height:normal;font-size:11pt;font-family:=
Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&quot;Segoe U=
I&quot;,sans-serif;color:black">uhd_usrp_probe:</span></p><div>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">=C2=A0 __________________=
___________________________________</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">=C2=A0/</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 Device:
N300-Series Device</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0=C2=A0=C2=A0
_____________________________________________________</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0=C2=A0 /</sp=
an></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mboard:
ni-n3xx-31E00AC</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 dboard_0_pid: 338</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 dboard_0_serial:
31DB406</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 dboard_1_pid: 338</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 dboard_1_serial:
31DB407</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 eeprom_version: 3</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 fs_version:
20200914000806</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 mender_artifact:
v4.0.0.0_n3xx</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 mpm_sw_version:
4.0.0.0-g90ce6062</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 pid: 16962</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 product: n320</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 rev: 7</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 rpc_connection:
local</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 serial: 31E00AC</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 type: n3xx</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 MPM Version: 3.0</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 FPGA Version: 8.0</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 FPGA git hash:
be53058.clean</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |</span></p=
>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 Time sources:=C2=A0
internal, external, gpsdo, sfp0</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 Clock sources:
external, internal, gpsdo</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 Sensors:
ref_locked, gps_locked, temp, fan, gps_gpgga, gps_sky, gps_time, gps_tpv</s=
pan></p><p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;f=
ont-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt=
;font-family:&quot;Segoe UI&quot;,sans-serif;color:black"><br></span></p><p=
 class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal"><font colo=
r=3D"#000000" face=3D"Segoe UI, sans-serif"><span style=3D"font-size:13.333=
3px">Are there any configuration items needed to connect to the N321 throug=
h the QSFP+ port. Note that I only see eth0, sfp0, sfp1, and int0 in /etc/n=
etwork/interfaces.</span></font></p><p class=3D"MsoNormal" style=3D"margin:=
2pt 0in;line-height:normal"><font color=3D"#000000" face=3D"Segoe UI, sans-=
serif"><span style=3D"font-size:13.3333px"><br></span></font></p><p class=
=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal"><font color=3D"#=
000000" face=3D"Segoe UI, sans-serif"><span style=3D"font-size:13.3333px">T=
hanks,</span></font></p><p class=3D"MsoNormal" style=3D"margin:2pt 0in;line=
-height:normal"><font color=3D"#000000" face=3D"Segoe UI, sans-serif"><span=
 style=3D"font-size:13.3333px">Pat</span></font></p>

</div><p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;fon=
t-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;f=
ont-family:&quot;Segoe UI&quot;,sans-serif;color:black"><br></span></p>

</div></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list</span><br><span><a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank">USRP-users@lists.ettus.com</a></span><br><span><a h=
ref=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" =
target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com</a></span><br></div></blockquote></div></blockquote></div>
</blockquote></div>

--00000000000021a37605b4de1ac7--


--===============4642152520801329909==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4642152520801329909==--

