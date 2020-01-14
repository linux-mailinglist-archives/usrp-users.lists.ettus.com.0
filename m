Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90AD313AEAA
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jan 2020 17:11:10 +0100 (CET)
Received: from [::1] (port=43674 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1irOmV-0004NO-9f; Tue, 14 Jan 2020 11:11:03 -0500
Received: from mail-lj1-f176.google.com ([209.85.208.176]:34651)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1irOmR-0004H3-J8
 for usrp-users@lists.ettus.com; Tue, 14 Jan 2020 11:10:59 -0500
Received: by mail-lj1-f176.google.com with SMTP id z22so15009099ljg.1
 for <usrp-users@lists.ettus.com>; Tue, 14 Jan 2020 08:10:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gEQf1P5qntVyLAFmKUODCUlvGzrmdsAw2EKspAwVj0Y=;
 b=GIFlrvo7UXUjLfBqNNvTaGf72B2Y5CYF8abIISs4rgGSS6erqwdk0SfaWSOOJH/ZK8
 l908JwpFDBLk1aN//hzdZB4oFJ7/xfYgUjB9xwsjumIbUjWDSs4j79A0JfN045ePqJEl
 5KNM3JzHPWDxbjT9e4MDcSg1LxMeJs9wKuK5SLbUIG18xeBbRq/Wyi5su23oNOi39L21
 /M0VjJz7jYBTrG/JSlRuBd4XRWLVNDWl0JGAMpq8KW86bzWU/DubFquSrBfZM9R2Qx2f
 kiAcVzq4yRIJEllzhMlZrtrq8sYqYciEa7lsXWYbSU0p1mO1BRKhf3QQFQ4NL+XkKAsy
 Zj3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gEQf1P5qntVyLAFmKUODCUlvGzrmdsAw2EKspAwVj0Y=;
 b=k4Wupbo+Hg+aTX2CaK0jDhJXEgMubE7Lo0eBpZ3EmHLnPdE3tMi7qs1LV8ihI8uHJd
 ktPNh7Wvl9oPxIz867XpHhhXxNOa8G2tY7jz8LPMzzQDriRDVsC/CfNKzkuK0Shy4ICm
 +jrkEl7Hk39kI5jp0+NUB3lZKsVfSAIKJ07C2X7q7cmNAm6dz8nH9nUZKqkzxTs0pjYX
 QGujqIG6/C9T/bHau6Az+q16sbbs0HLeVNh1/pIONgzMYYniOpwv9oBBX97qvfbXgTp6
 g/Dau9FPRoXnu+Cb3etM9+5NaE/v1Tt72zWuMkSzHZz+OmGecGWEM3TCY95XpuT23Dit
 Gamw==
X-Gm-Message-State: APjAAAWZDJWqMJzkgzHe7X4vLHAZk1eOe0G4TIq9+zepvU7tG+IxN8wb
 6BBjHqUzUze3/QlxmivFKA9d9p4Vqnpx9rn0grqFz7Zq
X-Google-Smtp-Source: APXvYqw/7fbVtvv0QS4NVaWnzTWhJAE3WrI6ZByOlKAJp1+linHEdPTiBOsoqDNiKs4FUgAGkihCIoWWHACqfQ1DXUE=
X-Received: by 2002:a2e:96c4:: with SMTP id d4mr14999378ljj.225.1579018217456; 
 Tue, 14 Jan 2020 08:10:17 -0800 (PST)
MIME-Version: 1.0
References: <DM6PR03MB3628C629B0B2462EB4C9A3A6D3220@DM6PR03MB3628.namprd03.prod.outlook.com>
 <CANf970ahrDonuDf=ROLFBkLJcA=tD=386JP+Uv+7uVFjNeibrg@mail.gmail.com>
 <BYAPR03MB36218EB0E57F003E09E58806D33C0@BYAPR03MB3621.namprd03.prod.outlook.com>
 <CANf970YaK1aXGuxcrwNSUkA89x-4frk9N4TdHWSOHKc5PzjHzw@mail.gmail.com>
 <BYAPR03MB3621B04B52C79280DE3B1C0DD3380@BYAPR03MB3621.namprd03.prod.outlook.com>
 <BYAPR03MB3621E3B314A6F58E34EAC9E3D3380@BYAPR03MB3621.namprd03.prod.outlook.com>
In-Reply-To: <BYAPR03MB3621E3B314A6F58E34EAC9E3D3380@BYAPR03MB3621.namprd03.prod.outlook.com>
Date: Tue, 14 Jan 2020 10:10:06 -0600
Message-ID: <CANf970Z-ELmfq8S0cMV1Ws16oySs6oVPncbpndnkuz0npf9Hpw@mail.gmail.com>
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
Cc: "Minutolo, Lorenzo via USRP-users" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5228240513695720695=="
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

--===============5228240513695720695==
Content-Type: multipart/alternative; boundary="000000000000f21c74059c1bd324"

--000000000000f21c74059c1bd324
Content-Type: text/plain; charset="UTF-8"

Lorenzo,

Since we started this thread, we've published a DPDK-specific app note. At
this point, I'd recommend you start the DPDK install process from scratch
using this guide:

https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD

Best,

Sam

On Fri, Jan 10, 2020 at 5:15 PM Minutolo, Lorenzo via USRP-users <
usrp-users@lists.ettus.com> wrote:

> As a side note: I tried running the program as "sudo su" with the same
> exact result.
>
> Lorenzo
> ------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
> Minutolo, Lorenzo via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Friday, January 10, 2020 3:08 PM
> *To:* Sam Reiter <sam.reiter@ettus.com>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] dpdk with x300
>
> Changed the driver string but the problem persists. Is it problematic that
> the NIC is on the last PCIe slot of the motherboard (same NUMA socket)?
>
> I attached the command I'm giving and the output.
>
> Thanks,
> Lorenzo
> ------------------------------
> *From:* Sam Reiter <sam.reiter@ettus.com>
> *Sent:* Monday, January 6, 2020 2:05 PM
> *To:* Minutolo, Lorenzo <minutolo@caltech.edu>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] dpdk with x300
>
> That should be fine.
>
> Looking over those screenshots again, you'll need to change your dpdk
> driver path in uhd.conf. Here's what the uncommented parts of uhd.conf
> should look like for 17.11:
>
> [use_dpdk=1]
> dpdk-mtu=9000
> dpdk-driver=/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers/
> dpdk-corelist=1,2,3
> dpdk-num-mbufs=4095
> dpdk-mbufs-cache-size=315
> [dpdk-mac=aa:bb:cc:dd:ee:f1]
> dpdk-io-cpu = 2
> dpdk-ipv4 = 192.168.10.1/24
> [dpdk-mac=aa:bb:cc:dd:ee:f2]
> dpdk-io-cpu = 3
> dpdk-ipv4 = 192.168.20.1/24
>
> Note that the IP and MAC need to be changed for your machine.
>
> Sam Reiter
> Ettus Research
>
> On Mon, Jan 6, 2020 at 3:29 PM Minutolo, Lorenzo <minutolo@caltech.edu>
> wrote:
>
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
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000f21c74059c1bd324
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Lorenzo,</div><div class=3D"gmail_default" style=3D"font-family=
:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-f=
amily:verdana,sans-serif">Since we started this thread, we&#39;ve published=
 a DPDK-specific app note. At this point, I&#39;d recommend you start the D=
PDK install process from scratch using this guide:</div><div class=3D"gmail=
_default" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"=
gmail_default" style=3D"font-family:verdana,sans-serif"><a href=3D"https://=
kb.ettus.com/Getting_Started_with_DPDK_and_UHD">https://kb.ettus.com/Gettin=
g_Started_with_DPDK_and_UHD</a></div><div class=3D"gmail_default" style=3D"=
font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" styl=
e=3D"font-family:verdana,sans-serif">Best,</div><div class=3D"gmail_default=
" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_de=
fault" style=3D"font-family:verdana,sans-serif">Sam<br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 10=
, 2020 at 5:15 PM Minutolo, Lorenzo via USRP-users &lt;<a href=3D"mailto:us=
rp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
As a side note: I tried running the program as &quot;sudo su&quot; with the=
 same exact result.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Lorenzo<br>
</div>
<div id=3D"gmail-m_-7094190867789478078appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-7094190867789478078divRplyFwdMsg" dir=3D"ltr"><font sty=
le=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>Fro=
m:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com"=
 target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of =
Minutolo, Lorenzo via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Friday, January 10, 2020 3:08 PM<br>
<b>To:</b> Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D=
"_blank">sam.reiter@ettus.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] dpdk with x300</font>
<div>=C2=A0</div>
</div>

<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Changed the driver string but the problem persists. Is it problematic that =
the NIC is on the last PCIe slot of the motherboard (same NUMA socket)?</di=
v>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I attached the command I&#39;m giving and the output.</div>
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
<div id=3D"gmail-m_-7094190867789478078x_appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-7094190867789478078x_divRplyFwdMsg" dir=3D"ltr"><font s=
tyle=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>F=
rom:</b> Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_=
blank">sam.reiter@ettus.com</a>&gt;<br>
<b>Sent:</b> Monday, January 6, 2020 2:05 PM<br>
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
<div>That should be fine. <br>
</div>
<div><br>
</div>
<div>Looking over those screenshots again, you&#39;ll need to change your d=
pdk driver path in uhd.conf. Here&#39;s what the uncommented parts of uhd.c=
onf should look like for 17.11:<br>
</div>
<div><br>
</div>
<div><span style=3D"font-family:monospace">[use_dpdk=3D1]<br>
dpdk-mtu=3D9000<br>
dpdk-driver=3D/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers/<br>
dpdk-corelist=3D1,2,3<br>
dpdk-num-mbufs=3D4095<br>
dpdk-mbufs-cache-size=3D315<br>
[dpdk-mac=3Daa:bb:cc:dd:ee:f1]<br>
dpdk-io-cpu =3D 2<br>
dpdk-ipv4 =3D <a href=3D"http://192.168.10.1/24" target=3D"_blank">192.168.=
10.1/24</a><br>
[dpdk-mac=3Daa:bb:cc:dd:ee:f2]<br>
dpdk-io-cpu =3D 3<br>
dpdk-ipv4 =3D <a href=3D"http://192.168.20.1/24" target=3D"_blank">192.168.=
20.1/24</a></span></div>
<div><br>
</div>
<div>Note that the IP and MAC need to be changed for your machine.</div>
<div><br>
</div>
<div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">Sam Reiter <br>
<div>Ettus Research</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Mon, Jan 6, 2020 at 3:29 PM Minutolo, Lorenzo &lt;<a hr=
ef=3D"mailto:minutolo@caltech.edu" target=3D"_blank">minutolo@caltech.edu</=
a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
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
<div id=3D"gmail-m_-7094190867789478078x_x_gmail-m_-8247312858927414669appe=
ndonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-7094190867789478078x_x_gmail-m_-8247312858927414669divR=
plyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans=
-serif" color=3D"#000000"><b>From:</b> Sam Reiter &lt;<a href=3D"mailto:sam=
.reiter@ettus.com" target=3D"_blank">sam.reiter@ettus.com</a>&gt;<br>
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
</blockquote>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000f21c74059c1bd324--


--===============5228240513695720695==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5228240513695720695==--

