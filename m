Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 556E5131B03
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jan 2020 23:06:03 +0100 (CET)
Received: from [::1] (port=38408 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ioaVd-0000uq-SE; Mon, 06 Jan 2020 17:06:01 -0500
Received: from mail-lf1-f52.google.com ([209.85.167.52]:46290)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1ioaVa-0000r9-0W
 for usrp-users@lists.ettus.com; Mon, 06 Jan 2020 17:05:58 -0500
Received: by mail-lf1-f52.google.com with SMTP id f15so37381422lfl.13
 for <usrp-users@lists.ettus.com>; Mon, 06 Jan 2020 14:05:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hl3NgyW/eC8yRvV8nde46xuEDpXyc88ZlVAD2a6KTio=;
 b=sC5irz3OTmIuouKf4gk55BKEHRGHEWndYimu328AH8qinwS/3DtsXDFjo1/4iQ5bw0
 o2w0miNTzOurRc4vgcvAhrNSafGarEEd4hPdlA+ivp3YMqDNbTxh0f4vFg/1nor3qvNQ
 Ynx5BIQdoxTesqRhhvRs6bMvFhskC9ma0cA8ifxa7AE1u+n25sFg+Nj+tK9sQxKJEyAk
 +PsMcqavySPZOVkbdJ37SzZSHswaXcfc6MUdVJXk1qxW8Y4xXsRsAZfVQb7jbM/9K3N0
 vixS81MlTjgm2CMARCldqc0nzHTd3apvP4zsAQEFKskVD2AfVyQ0JHtQJJELcxpkxrZl
 3Z0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hl3NgyW/eC8yRvV8nde46xuEDpXyc88ZlVAD2a6KTio=;
 b=R2PRH4GYSvTiyuZ+srdtkZIBf7IHhv2UZ1/N4nz7L5BFtdHJ+cPDcvKqPACsWUMbRd
 CTmEDFI4h1evB4AAbXGNfrASZpktLcAHuEpXy/DLTRrdiDubprz4ZqzG9hDa+tmccUcL
 3utWmIf36HQ2HstWFANM7Jc1CMIjr2+peun6FQ/RDnhBA1FQNvt1FQQx6FGaxiQ19MJ/
 bR32KJcaLg+7DvhCPxkf1v+TiuztRXVIVq1qRyxS1vMHQEGID7qDXvc9U8//5hZDcR4u
 TlfA2nL5FKQG+6Bjmyl+SCLGDRFTvs64RYjWo5U7lAiJ8KKIedgkUOJ+HacMqDsCLwmL
 ZL6g==
X-Gm-Message-State: APjAAAVI2xHQ7/aBW/9+F7wroRDpdwpcKVfsB1W2Fml1OYLuGo8d+jpJ
 1EuqTQZxikcksqWup9sT9R2VVDmuzBsxw94VsBQJZ3jf
X-Google-Smtp-Source: APXvYqzXEaWcJGVLdUXwRE+noFsB0I1vbmlNUQiTI55xC+dp4l+gqeSs79yklqc1pZD0BafKYqjyws19w5uMsPgcSSY=
X-Received: by 2002:ac2:50da:: with SMTP id h26mr34638628lfm.80.1578348316825; 
 Mon, 06 Jan 2020 14:05:16 -0800 (PST)
MIME-Version: 1.0
References: <DM6PR03MB3628C629B0B2462EB4C9A3A6D3220@DM6PR03MB3628.namprd03.prod.outlook.com>
 <CANf970ahrDonuDf=ROLFBkLJcA=tD=386JP+Uv+7uVFjNeibrg@mail.gmail.com>
 <BYAPR03MB36218EB0E57F003E09E58806D33C0@BYAPR03MB3621.namprd03.prod.outlook.com>
In-Reply-To: <BYAPR03MB36218EB0E57F003E09E58806D33C0@BYAPR03MB3621.namprd03.prod.outlook.com>
Date: Mon, 6 Jan 2020 16:05:05 -0600
Message-ID: <CANf970YaK1aXGuxcrwNSUkA89x-4frk9N4TdHWSOHKc5PzjHzw@mail.gmail.com>
To: "Minutolo, Lorenzo" <minutolo@caltech.edu>
Subject: Re: [USRP-users] dpdk with x300
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0696099451532245729=="
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

--===============0696099451532245729==
Content-Type: multipart/alternative; boundary="000000000000c1ab44059b7fdaca"

--000000000000c1ab44059b7fdaca
Content-Type: text/plain; charset="UTF-8"

That should be fine.

Looking over those screenshots again, you'll need to change your dpdk
driver path in uhd.conf. Here's what the uncommented parts of uhd.conf
should look like for 17.11:

[use_dpdk=1]
dpdk-mtu=9000
dpdk-driver=/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers/
dpdk-corelist=1,2,3
dpdk-num-mbufs=4095
dpdk-mbufs-cache-size=315
[dpdk-mac=aa:bb:cc:dd:ee:f1]
dpdk-io-cpu = 2
dpdk-ipv4 = 192.168.10.1/24
[dpdk-mac=aa:bb:cc:dd:ee:f2]
dpdk-io-cpu = 3
dpdk-ipv4 = 192.168.20.1/24

Note that the IP and MAC need to be changed for your machine.

Sam Reiter
Ettus Research

On Mon, Jan 6, 2020 at 3:29 PM Minutolo, Lorenzo <minutolo@caltech.edu>
wrote:

> I' using:
>
> dpdk-procinfo -v
> EAL: Detected 16 lcore(s)
> EAL: RTE Version: '*DPDK 17.11.9'*
>
> Thanks,
> Lorenzo
> ------------------------------
> *From:* Sam Reiter <sam.reiter@ettus.com>
> *Sent:* Monday, January 6, 2020 8:27 AM
> *To:* Minutolo, Lorenzo <minutolo@caltech.edu>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] dpdk with x300
>
> Lorenzo,
>
> What version of DPDK are you using?
>
> Sam Reiter
> Ettus Research
>
> On Fri, Jan 3, 2020 at 8:20 PM Minutolo, Lorenzo via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hi All,
> I'm using an x300 connected via a Intel X710 to a machine running Ubuntu
> 18.04. I'm using the recently released UHD 3.15 LTS.
> I'm trying to follow the guide to connect via dpdk. Everything in the
> guide on the Ettus website works however when launching uhd_usrp_probe (as
> sudo uhd_usrp_probe --args "address = 192.168.30.2, use_dpdk=1") I get the
> output reported in the output.png attachment. My actual dpdk-devbind.py
> --status is reported in status.png attachment as well as the uhd.conf I'm
> using.
>
> What am I doing wrong?
>
> In the configuration file I tried altering the cores to see if that was an
> issue but nothing changed.
>
> Thanks,
> Lorenzo
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--000000000000c1ab44059b7fdaca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>That should be fine. <br></div><div><br></div><div>Lo=
oking over those screenshots again, you&#39;ll need to change your dpdk dri=
ver path in uhd.conf. Here&#39;s what the uncommented parts of uhd.conf sho=
uld look like for 17.11:<br></div><div><br></div><div><span style=3D"font-f=
amily:monospace">[use_dpdk=3D1]<br>dpdk-mtu=3D9000<br>dpdk-driver=3D/usr/li=
b/x86_64-linux-gnu/dpdk-17.11-drivers/<br>dpdk-corelist=3D1,2,3<br>dpdk-num=
-mbufs=3D4095<br>dpdk-mbufs-cache-size=3D315<br>[dpdk-mac=3Daa:bb:cc:dd:ee:=
f1]<br>dpdk-io-cpu =3D 2<br>dpdk-ipv4 =3D <a href=3D"http://192.168.10.1/24=
">192.168.10.1/24</a><br>[dpdk-mac=3Daa:bb:cc:dd:ee:f2]<br>dpdk-io-cpu =3D =
3<br>dpdk-ipv4 =3D <a href=3D"http://192.168.20.1/24">192.168.20.1/24</a></=
span></div><div><br></div><div>Note that the IP and MAC need to be changed =
for your machine.</div><div><br></div><div><div><div dir=3D"ltr" class=3D"g=
mail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><d=
iv dir=3D"ltr">Sam Reiter <br><div>Ettus Research</div></div></div></div></=
div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Jan 6, 2020 at 3:29 PM Minutolo, Lorenzo &lt;<a hre=
f=3D"mailto:minutolo@caltech.edu">minutolo@caltech.edu</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I&#39; using:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
dpdk-procinfo -v<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span>EAL: Detected 16 lcore(s)<br>
</span><span>EAL: RTE Version: &#39;<b>DPDK 17.11.9&#39;</b></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span><b><br>
</b></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span></span>Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Lorenzo<br>
</div>
<div id=3D"gmail-m_-8247312858927414669appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-8247312858927414669divRplyFwdMsg" dir=3D"ltr"><font sty=
le=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>Fro=
m:</b> Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_bl=
ank">sam.reiter@ettus.com</a>&gt;<br>
<b>Sent:</b> Monday, January 6, 2020 8:27 AM<br>
<b>To:</b> Minutolo, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.edu" ta=
rget=3D"_blank">minutolo@caltech.edu</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] dpdk with x300</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div>Lorenzo,</div>
<div><br>
</div>
<div>What version of DPDK are you using?</div>
<div><br>
</div>
<div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">Sam Reiter <br>
<div>Ettus Research<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Fri, Jan 3, 2020 at 8:20 PM Minutolo, Lorenzo via USRP-=
users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">u=
srp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hi All,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I&#39;m using an x300 connected via a Intel X710 to a machine running Ubunt=
u 18.04. I&#39;m using the recently released UHD 3.15 LTS.<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I&#39;m trying to follow the guide to connect via dpdk. Everything in the g=
uide on the Ettus website works however when launching uhd_usrp_probe (as s=
udo uhd_usrp_probe --args &quot;address =3D 192.168.30.2, use_dpdk=3D1&quot=
;) I get the output reported in the output.png attachment.
 My actual dpdk-devbind.py --status is reported in status.png attachment as=
 well as the uhd.conf I&#39;m using.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
What am I doing wrong?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
In the configuration file I tried altering the cores to see if that was an =
issue but nothing changed.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Lorenzo<br>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>

</blockquote></div>

--000000000000c1ab44059b7fdaca--


--===============0696099451532245729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0696099451532245729==--

