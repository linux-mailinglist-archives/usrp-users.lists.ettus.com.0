Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B9FAC2F9
	for <lists+usrp-users@lfdr.de>; Sat,  7 Sep 2019 01:23:41 +0200 (CEST)
Received: from [::1] (port=41000 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6NZp-0006ur-Ng; Fri, 06 Sep 2019 19:23:37 -0400
Received: from mail-io1-f48.google.com ([209.85.166.48]:37690)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <austinadam42@gmail.com>)
 id 1i6NZm-0006oh-42
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 19:23:34 -0400
Received: by mail-io1-f48.google.com with SMTP id r4so16585812iop.4
 for <usrp-users@lists.ettus.com>; Fri, 06 Sep 2019 16:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xaW1i9JcnG2mQwoRMv8r4gtAjNYbgvGLyiRRbXhS+pE=;
 b=BlA4vea0IwEoIGP7vp6UvI0nSoIbtrYCS3dflSF5z1oHWuwsdAJYWsJj1QX/Mynuie
 kjr9KsiIO6EtFQUbjnNcOEyyhDZjGwcH6sQtFMqidxP00KA6Hrl9cFBOadXZc0LFFH1B
 YJnPrhtPb1+Lz/SgZeTdcOPcaka+1BXBd1ZcGblLPfIz8DNsSfMz2MTTuUpNqEBnLlYO
 qMBVEcWqJQ4jR5SCZc4siIgOC8oXXB3uNpYSZOrLezmAo6ThEkIW7s8QT+rGwHIpYH2E
 CQNHTDidc0sqeKa5eT2xm0KAcpPTGl1a3BrnYDsD6Z+fXo16nXnEEgwD0qtLlHv43Rd2
 5P/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xaW1i9JcnG2mQwoRMv8r4gtAjNYbgvGLyiRRbXhS+pE=;
 b=AyH/cxfEI3ZiZy6FIveGpjQCax5e4TQjDS/4sMdG3uwdqn7wDK41Gx1vFc+jBL6j1k
 MKtmfm2YR0Bk3aIJ5OCmh2sLNHOkwmx0Wz3fGlJ/tzzq8GT50s2SvAaIA/uCT0CUSaB7
 idVfJk9NpcJnkNl09JqunaPBmx+DmtSbqsOjZrMuchel3pXitqD6dqXISSZJ4UivjDGU
 8H4YSzvooIFu0wvhBrvZmpIvsDeW4ZDmuJ5QAa5Es6PlQUGufcR3xqey0Unk+kMsviz6
 +mRMnHDw/EgcIsLmvpH40mHPVi7ENwzxVmDE114fMvEj1wzanlY7ERo2niHWIMWY2v/k
 rtKw==
X-Gm-Message-State: APjAAAUE5bG1FmmlT9LqnkSPZIOSXqYSHnx+bWuXwf2cLD7Co5fbFhCx
 wFldrMgHbFQYRkOGmfRv/vDjyOEyHDp5cWGTf+4/Mqdt
X-Google-Smtp-Source: APXvYqzjHYJrPpYYCDr+YsbGhcdZt/5MqauGqZF083ltCK7a/Zfsja4W4ny3GRaeW+l0ElQiiyem2aH+NVIg11gC2hk=
X-Received: by 2002:a6b:4a01:: with SMTP id w1mr11909753iob.222.1567812173037; 
 Fri, 06 Sep 2019 16:22:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKs6hekcVsif-U7CR-YORv2-kMDJX-35e==qZT_VskV3PwKWA@mail.gmail.com>
 <5D71CBFB.6060907@gmail.com> <E9AE1B80-DDFE-46CB-8204-6522F7D0118E@gmail.com>
 <DM5PR10MB1945B178DAD928BE0FF2367AABBA0@DM5PR10MB1945.namprd10.prod.outlook.com>
 <CAMKs6he3PpfREq=OEvb+31bCBmTiqoUFKA76-Gzr26P3Ak2wgw@mail.gmail.com>
In-Reply-To: <CAMKs6he3PpfREq=OEvb+31bCBmTiqoUFKA76-Gzr26P3Ak2wgw@mail.gmail.com>
Date: Fri, 6 Sep 2019 16:22:41 -0700
Message-ID: <CAMKs6hfQyUCcqy0NPFOaX7AUURbiwKDU9RZo7k03-Sefg4uNmA@mail.gmail.com>
To: Robin Coxe <coxe@close-haul.com>
Subject: Re: [USRP-users] USRP N310 Cannot ping or connect
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
From: Austin Adam via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Austin Adam <austinadam42@gmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8167125980314968890=="
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

--===============8167125980314968890==
Content-Type: multipart/alternative; boundary="000000000000a607280591eab7aa"

--000000000000a607280591eab7aa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Update:
I updated my host computer to UHD version 3.14.1.0 and then afterwards,
wrote that same version to the SD card. When I put the SD card back in the
USRP and ran the 'uhd_find_devices' command, it actually showed up!
Finally! But then, upon restarting the USRP by running "shutdown -h now"
via the serial console, and then pressing the power button to start it back
up, it was again unable to be read via 'uhd_find_devices'.

I don't know if this helps or not, but I am using an ethernet to usb
adapter to connect from the sfp0 port to my laptop, which I know is not
recommended, but it worked before this issue started so I know that is not
contributing. However, I do notice that the little green light on the
adapter is not lighting up when connected to the USRP. When it worked just
a moment ago, the green light (on the adapter) was in fact on, and that's
when we got excited. However, after a reboot, the light (on the adapter) is
not on and I am unable to connect. Maybe that info will help diagnose the
issue further. Just for clarification, the green light above the SFP0 port
is green and has been on the whole time.

So frustrating though that it worked for a second and now it doesn't... but
I feel like we are close!

On Fri, Sep 6, 2019 at 11:04 AM Austin Adam <austinadam42@gmail.com> wrote:

> I am assuming that when I run 'uhd_find_devices' it shows the current
> version in the output, so if that is the case, then my host is on version
> *UHD_3.14.0.HEAD-0-g6875d061*, and the USRP is on version *UHD_3.14.0.0-0=
-g6875d061.
> *Just based on the output here:
>
>
> *root@ni-n3xx-3177E63:~# uhd_find_devices[INFO] [UHD] linux; GNU C++
> version 7.3.0; Boost_106600; UHD_3.14.0.0-0-g6875d061*
>
>
>
> *admin@PC:~$ uhd_find_devices[INFO] [UHD] linux; GNU C++ version 8.3.0;
> Boost_106700; UHD_3.14.0.HEAD-0-g6875d061No UHD Devices Found*
>
> Is there a alternative way to confirm the version on each one?
>
> I can try to update my host computer to 3.14.1.0 however and see if that
> works. Because when I follow the instructions for the SD card, I don't
> necessarily choose a version. It just seems to update to whatever the
> current version is. So maybe it is on 3.14.1.0. I'll try that and get bac=
k
> to you.
>
> On Fri, Sep 6, 2019 at 7:42 AM Robin Coxe <coxe@close-haul.com> wrote:
>
>> What version of UHD do you have installed on your host PC?  If there is =
a
>> version mismatch between the host and the N310, you can have connectivit=
y
>> issues.
>>
>> Another thing to try would be to follow the instructions in the N310
>> Getting Started guide to upgrade the SD card to the latest filesystem
>> release (UHD v3.14.1.0, if memory serves) and then update UHD on your ho=
st
>> PC.
>>
>> RMA replaces the SD card with the latest one on the BOM, which in May
>> when I left NI was v.3.13-something.
>>
>>
>> ------------------------------
>> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
>> Austin Adam via USRP-users <usrp-users@lists.ettus.com>
>> *Sent:* Thursday, September 5, 2019 10:41 PM
>> *To:* Marcus D. Leech
>> *Cc:* usrp-users@lists.ettus.com
>> *Subject:* Re: [USRP-users] USRP N310 Cannot ping or connect
>>
>> Hi there,
>> Thank you for the response. I am indeed connected to the SFP0 port to a
>> 1gigE connection. Everything was working fine before I sent out the USRP
>> for repairs, so I don=E2=80=99t think it=E2=80=99s a cable or connection=
 issue.
>>
>> I appreciate you looking into the issue further, hopefully we can figure
>> out!
>>
>> Regards,
>> Austin
>>
>> On Sep 5, 2019, at 8:01 PM, Marcus D. Leech via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> On 09/05/2019 10:28 PM, Austin Adam via USRP-users wrote:
>>
>> I recently had my USRP N310 sent out for repairs to fix one of the SMA
>> connectors, and when it came back, there was a new SD card in the slot.
>> When I turned it on after getting it back, I was unable to connect to it
>> via 'uhd_find_devices'. I figured it was something with the SD card, so =
I
>> eventually decided to rewrite the whole thing, in case it needed an upda=
te.
>>
>> That still did not fix the issue, and after trying just about everything=
,
>> and following every possible tutorial on the ettus docs, and checking th=
e
>> forums, I have decided to ask you guys for help.
>>
>> Below you can find all the information about the UHD versions and the
>> ifconfigs... hopefully that is enough to spark some ideas!
>>
>> The USRP can find itself on localhost as you can see here:
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> *root@ni-n3xx-3177E63:~# uhd_find_devices [INFO] [UHD] linux; GNU C++
>> version 7.3.0; Boost_106600; UHD_3.14.0.0-0-g6875d061
>> -------------------------------------------------- -- UHD Device 0
>> -------------------------------------------------- Device Address:
>> serial: 3177E63     claimed: False     mgmt_addr: 127.0.0.1     product:
>> n310     type: n3xx*
>>
>> But when I run the command from the host machine, this is what I get:
>>
>>
>>
>> * admin@PC:~$ uhd_find_devices [INFO] [UHD] linux; GNU C++ version 8.3.0=
;
>> Boost_106700; UHD_3.14.0.HEAD-0-g6875d061 No UHD Devices Found*
>>
>> *Here is ifconfig from the USRP:*
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> *root@ni-n3xx-3177E63:~# ifconfig eth0      Link encap:Ethernet  HWaddr
>> 00:80:2F:24:01:14           UP BROADCAST MULTICAST  MTU:1500  Metric:1
>>       RX packets:0 errors:0 dropped:0 overruns:0 frame:0           TX
>> packets:0 errors:0 dropped:0 overruns:0 carrier:0           collisions:0
>> txqueuelen:1000           RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
>> Interrupt:27 Base address:0xb000 lo        Link encap:Local Loopback
>>     inet addr:127.0.0.1  Mask:255.0.0.0           UP LOOPBACK RUNNING
>>  MTU:65536  Metric:1           RX packets:89 errors:0 dropped:0 overruns=
:0
>> frame:0           TX packets:89 errors:0 dropped:0 overruns:0 carrier:0
>>       collisions:0 txqueuelen:1000           RX bytes:7480 (7.3 KiB)  TX
>> bytes:7480 (7.3 KiB) sfp0      Link encap:Ethernet  HWaddr
>> 00:80:2F:24:01:15           inet addr:192.168.10.2  Bcast:192.168.10.255
>>  Mask:255.255.255.0           UP BROADCAST RUNNING MULTICAST  MTU:8000
>>  Metric:1           RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>>       TX packets:14 errors:0 dropped:0 overruns:0 carrier:0
>> collisions:0 txqueuelen:1000           RX bytes:0 (0.0 B)  TX bytes:2577
>> (2.5 KiB) sfp1      Link encap:Ethernet  HWaddr 00:80:2F:24:01:16
>> UP BROADCAST MULTICAST  MTU:8000  Metric:1           RX packets:0 errors=
:0
>> dropped:0 overruns:0 frame:0           TX packets:1 errors:0 dropped:0
>> overruns:0 carrier:0           collisions:0 txqueuelen:1000           RX
>> bytes:0 (0.0 B)  TX bytes:62 (62.0 B)*
>>
>>
>>
>> *And here is ifconfig from the host machine: *
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> *ugikie@Austin-Blade:~$ ifconfig enx70886b87f283:
>> flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 8000         inet
>> 192.168.10.1  netmask 255.255.255.0  broadcast 192.168.10.255         in=
et6
>> fe80::73b:c879:60cf:8127  prefixlen 64  scopeid 0x20<link>         ether
>> 70:88:6b:87:f2:83  txqueuelen 1000  (Ethernet)         RX packets 0  byt=
es
>> 0 (0.0 B)         RX errors 0  dropped 0  overruns 0  frame 0         TX
>> packets 46  bytes 4966 (4.9 KB)         TX errors 0  dropped 0 overruns =
0
>>  carrier 0  collisions 0 lo: flags=3D73<UP,LOOPBACK,RUNNING>  mtu 65536
>>   inet 127.0.0.1  netmask 255.0.0.0         inet6 ::1  prefixlen 128
>>  scopeid 0x10<host>         loop  txqueuelen 1000  (Local Loopback)
>> RX packets 5037  bytes 466961 (466.9 KB)         RX errors 0  dropped 0
>>  overruns 0  frame 0         TX packets 5037  bytes 466961 (466.9 KB)
>>   TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0 wlp59s0:
>> flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500         inet
>> 172.28.229.114  netmask 255.255.240.0  broadcast 172.28.239.255
>> inet6 fe80::c9b4:5623:34c4:ae56  prefixlen 64  scopeid 0x20<link>
>> ether 9c:b6:d0:18:53:3f  txqueuelen 1000  (Ethernet)         RX packets
>> 110339  bytes 123997000 (123.9 MB)         RX errors 0  dropped 0  overr=
uns
>> 0  frame 0         TX packets 47191  bytes 11048840 (11.0 MB)         TX
>> errors 0  dropped 0 overruns 0  carrier 0  collisions 0*
>>
>> I tried broadcast pinging 192.168.10.255  and 192.168.10.2 from the host
>> but didn't get a response from the N310 or anything for that matter.
>>
>> I hope someone out there can help me out! Thank you in advance :)
>>
>> Best,
>> Austin
>>
>>
>> So, easy stuff first--you are plugged into the SFP0 port on the N310, an=
d
>> not one of the two others?
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>

--000000000000a607280591eab7aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Update:<br>I updated my host computer to UHD version 3.14.=
1.0 and then afterwards, wrote that same version to the SD card. When I put=
 the SD card back in the USRP and ran the &#39;uhd_find_devices&#39; comman=
d, it actually showed up! Finally! But then, upon restarting the USRP by ru=
nning &quot;shutdown -h now&quot; via the serial console, and then pressing=
 the power button to start it back up, it was again unable to be read via &=
#39;uhd_find_devices&#39;.<div><br></div><div>I don&#39;t know if this help=
s or not, but I am using an ethernet to usb adapter to connect from the sfp=
0 port to my laptop, which I know is not recommended, but it worked before =
this issue started so I know that is not contributing. However, I do notice=
 that the little green light on the adapter is not lighting up when connect=
ed to the USRP. When it worked just a moment ago, the green light (on the a=
dapter) was in fact on, and that&#39;s when we got excited. However, after =
a reboot, the light (on the adapter) is not on and I am unable to connect. =
Maybe that info will help diagnose the issue further. Just for clarificatio=
n, the green light above the SFP0 port is green and has been on the whole t=
ime.</div><div><br></div><div>So frustrating though that it worked for a se=
cond and now it doesn&#39;t... but I feel like we are close!</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, S=
ep 6, 2019 at 11:04 AM Austin Adam &lt;<a href=3D"mailto:austinadam42@gmail=
.com">austinadam42@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr">I am assuming that when I run =
&#39;uhd_find_devices&#39; it shows the current version in the output, so i=
f that is the case, then my host is on version=C2=A0<b>UHD_3.14.0.HEAD-0-g6=
875d061</b>, and the USRP is on version=C2=A0<b>UHD_3.14.0.0-0-g6875d061. <=
/b>Just based on the output here:=C2=A0<div><br></div><div><i>root@ni-n3xx-=
3177E63:~# uhd_find_devices<br>[INFO] [UHD] linux; GNU C++ version 7.3.0; B=
oost_106600; <b>UHD_3.14.0.0-0-g6875d061</b></i><br><br><i>admin@PC:~$ uhd_=
find_devices<br>[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700; <b=
>UHD_3.14.0.HEAD-0-g6875d061</b><br>No UHD Devices Found</i><br><br></div><=
div>Is there a alternative way to confirm the version on each one?=C2=A0</d=
iv><div><br></div><div>I can try to update my host computer to 3.14.1.0 how=
ever and see if that works. Because when I follow the instructions for the =
SD card, I don&#39;t necessarily choose a version. It just seems to update =
to whatever the current version is. So maybe it is on 3.14.1.0. I&#39;ll tr=
y that and get back to you.</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 6, 2019 at 7:42 AM Robin Coxe =
&lt;<a href=3D"mailto:coxe@close-haul.com" target=3D"_blank">coxe@close-hau=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">



<div>
<div>
<div>
<div>
<div style=3D"direction:ltr">What version of UHD do you have installed on y=
our host PC?=C2=A0 If there is a version mismatch between the host and the =
N310, you can have connectivity issues. =C2=A0</div>
<div><br>
</div>
<div style=3D"direction:ltr">Another thing to try would be to follow the in=
structions in the N310 Getting Started guide to upgrade the SD card to the =
latest filesystem release (UHD v3.14.1.0, if memory serves) and then update=
 UHD on your host PC. =C2=A0</div>
<div><br>
</div>
<div style=3D"direction:ltr">RMA replaces the SD card with the latest one o=
n the BOM, which in May when I left NI was v.3.13-something. =C2=A0</div>
</div>
<div><br>
</div>
<div class=3D"gmail-m_-7553324049884054732gmail-m_-749495050533591277ms-out=
look-ios-signature"></div>
</div>
<div>=C2=A0</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-7553324049884054732gmail-m_-749495050533591277divRplyFw=
dMsg" dir=3D"dir=3D&quot;ltr&quot;"><font face=3D"Calibri, sans-serif" styl=
e=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;<a href=
=3D"mailto:usrp-users-bounces@lists.ettus.com" target=3D"_blank">usrp-users=
-bounces@lists.ettus.com</a>&gt; on behalf of Austin Adam via USRP-users &l=
t;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-user=
s@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Thursday, September 5, 2019 10:41 PM<br>
<b>To:</b> Marcus D. Leech<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] USRP N310 Cannot ping or connect
<div>=C2=A0</div>
</font></div>

Hi there,
<div>Thank you for the response. I am indeed connected to the SFP0 port to =
a 1gigE connection. Everything was working fine before I sent out the USRP =
for repairs, so I don=E2=80=99t think it=E2=80=99s a cable or connection is=
sue.=C2=A0</div>
<div><br>
</div>
<div>I appreciate you looking into the issue further, hopefully we can figu=
re out!<br>
<br>
<div dir=3D"ltr">Regards,
<div>Austin</div>
</div>
<div dir=3D"ltr"><br>
On Sep 5, 2019, at 8:01 PM, Marcus D. Leech via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br>
<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div class=3D"gmail-m_-7553324049884054732gmail-m_-749495050533591277moz-ci=
te-prefix">On 09/05/2019 10:28 PM, Austin Adam via USRP-users wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">I recently had my USRP N310 sent out for repairs to fix on=
e of the SMA connectors, and when it came back, there was a new SD card in =
the slot. When I turned it on after getting it back, I was unable to connec=
t to it via &#39;uhd_find_devices&#39;. I
 figured it was something=C2=A0with the SD card, so I eventually decided to=
 rewrite=C2=A0the whole thing, in case it needed an update.
<div><br>
</div>
<div>That still did not fix the issue, and after trying just about everythi=
ng, and following every possible tutorial on the ettus docs, and checking t=
he forums, I have decided to ask you guys for help.</div>
<div><br>
</div>
<div>Below you can find all the information about the UHD versions and the =
ifconfigs... hopefully that is enough to spark some ideas!</div>
<div><br>
</div>
<div>The USRP can find itself=C2=A0on localhost as you can see here:</div>
<div><br>
</div>
<div>
<div><i>root@ni-n3xx-3177E63:~# uhd_find_devices<br>
[INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600; UHD_3.14.0.0-0-g68=
75d061<br>
--------------------------------------------------<br>
-- UHD Device 0<br>
--------------------------------------------------<br>
Device Address:<br>
=C2=A0 =C2=A0 serial: 3177E63<br>
=C2=A0 =C2=A0 claimed: False<br>
=C2=A0 =C2=A0 mgmt_addr: 127.0.0.1<br>
=C2=A0 =C2=A0 product: n310<br>
=C2=A0 =C2=A0 type: n3xx</i><br>
</div>
<div><br>
</div>
<div>But when I run the command from the host machine, this is what I get:<=
/div>
<div><i><br>
admin@PC:~$ uhd_find_devices<br>
[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700; UHD_3.14.0.HEAD-0-=
g6875d061<br>
No UHD Devices Found</i></div>
</div>
<div><i><br>
</i></div>
<div><b>Here is ifconfig from the USRP:</b></div>
<div><b><br>
</b></div>
<div><font color=3D"#000000"><i>root@ni-n3xx-3177E63:~# ifconfig<br>
eth0 =C2=A0 =C2=A0 =C2=A0Link encap:Ethernet =C2=A0HWaddr 00:80:2F:24:01:14=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UP BROADCAST MULTICAST =C2=A0MTU:1500 =
=C2=A0Metric:1<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets:0 errors:0 dropped:0 overruns=
:0 frame:0<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:0 errors:0 dropped:0 overruns=
:0 carrier:0<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collisions:0 txqueuelen:1000<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:0 (0.0 B) =C2=A0TX bytes:0 (0.0=
 B)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Interrupt:27 Base address:0xb000<br>
<br>
lo =C2=A0 =C2=A0 =C2=A0 =C2=A0Link encap:Local Loopback<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet addr:127.0.0.1 =C2=A0Mask:255.0.0.0=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UP LOOPBACK RUNNING =C2=A0MTU:65536 =C2=
=A0Metric:1<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets:89 errors:0 dropped:0 overrun=
s:0 frame:0<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:89 errors:0 dropped:0 overrun=
s:0 carrier:0<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collisions:0 txqueuelen:1000<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:7480 (7.3 KiB) =C2=A0TX bytes:7=
480 (7.3 KiB)<br>
<br>
sfp0 =C2=A0 =C2=A0 =C2=A0Link encap:Ethernet =C2=A0HWaddr 00:80:2F:24:01:15=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet addr:192.168.10.2 =C2=A0Bcast:192.1=
68.10.255 =C2=A0Mask:255.255.255.0<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UP BROADCAST RUNNING MULTICAST =C2=A0MTU=
:8000 =C2=A0Metric:1<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets:0 errors:0 dropped:0 overruns=
:0 frame:0<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:14 errors:0 dropped:0 overrun=
s:0 carrier:0<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collisions:0 txqueuelen:1000<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:0 (0.0 B) =C2=A0TX bytes:2577 (=
2.5 KiB)<br>
<br>
sfp1 =C2=A0 =C2=A0 =C2=A0Link encap:Ethernet =C2=A0HWaddr 00:80:2F:24:01:16=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UP BROADCAST MULTICAST =C2=A0MTU:8000 =
=C2=A0Metric:1<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets:0 errors:0 dropped:0 overruns=
:0 frame:0<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:1 errors:0 dropped:0 overruns=
:0 carrier:0<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collisions:0 txqueuelen:1000<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:0 (0.0 B) =C2=A0TX bytes:62 (62=
.0 B)</i>=C2=A0</font>=C2=A0<br>
</div>
<div><br>
</div>
<div><b>And here is ifconfig from the host machine:<br>
<br>
</b></div>
<div>
<div><i>ugikie@Austin-Blade:~$ ifconfig<br>
enx70886b87f283: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt; =C2=A0m=
tu 8000<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.10.1 =C2=A0netmask 255.255.255.0 =
=C2=A0broadcast 192.168.10.255<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe80::73b:c879:60cf:8127 =C2=A0prefixlen =
64 =C2=A0scopeid 0x20&lt;link&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether 70:88:6b:87:f2:83 =C2=A0txqueuelen 1000 =
=C2=A0(Ethernet)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 0 =C2=A0bytes 0 (0.0 B)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0 =C2=A0dropped 0 =C2=A0overruns 0 =
=C2=A0frame 0<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 46 =C2=A0bytes 4966 (4.9 KB)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0 =C2=A0dropped 0 overruns 0 =C2=A0ca=
rrier 0 =C2=A0collisions 0<br>
<br>
lo: flags=3D73&lt;UP,LOOPBACK,RUNNING&gt; =C2=A0mtu 65536<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 127.0.0.1 =C2=A0netmask 255.0.0.0<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 ::1 =C2=A0prefixlen 128 =C2=A0scopeid 0x1=
0&lt;host&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 loop =C2=A0txqueuelen 1000 =C2=A0(Local Loopbac=
k)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 5037 =C2=A0bytes 466961 (466.9 KB)<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0 =C2=A0dropped 0 =C2=A0overruns 0 =
=C2=A0frame 0<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 5037 =C2=A0bytes 466961 (466.9 KB)<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0 =C2=A0dropped 0 overruns 0 =C2=A0ca=
rrier 0 =C2=A0collisions 0<br>
<br>
wlp59s0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt; =C2=A0mtu 1500<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 172.28.229.114 =C2=A0netmask 255.255.240.0=
 =C2=A0broadcast 172.28.239.255<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe80::c9b4:5623:34c4:ae56 =C2=A0prefixlen=
 64 =C2=A0scopeid 0x20&lt;link&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether 9c:b6:d0:18:53:3f =C2=A0txqueuelen 1000 =
=C2=A0(Ethernet)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 110339 =C2=A0bytes 123997000 (123.9 =
MB)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0 =C2=A0dropped 0 =C2=A0overruns 0 =
=C2=A0frame 0<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 47191 =C2=A0bytes 11048840 (11.0 MB)=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0 =C2=A0dropped 0 overruns 0 =C2=A0ca=
rrier 0 =C2=A0collisions 0</i><br>
</div>
<div><br>
</div>
<div>I tried broadcast pinging 192.168.10.255=C2=A0 and 192.168.10.2 from t=
he host but didn&#39;t get a response from the N310 or anything for that ma=
tter.</div>
<div><br>
</div>
<div>I hope someone out there can help me out! Thank you in advance :)</div=
>
<div><br>
</div>
<div>Best,</div>
<div>Austin</div>
<div><br>
</div>
</div>
</div>
<br>
</blockquote>
So, easy stuff first--you are plugged into the SFP0 port on the N310, and n=
ot one of the two others?<br>
<br>
<br>
<br>
</div>
</blockquote>
<blockquote type=3D"cite">
<div dir=3D"ltr"><span>_______________________________________________</spa=
n><br>
<span>USRP-users mailing list</span><br>
<span><a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-=
users@lists.ettus.com</a></span><br>
<span><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.e=
ttus.com" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-us=
ers_lists.ettus.com</a></span><br>
</div>
</blockquote>
</div>
</div>
</div>

</blockquote></div>
</blockquote></div>

--000000000000a607280591eab7aa--


--===============8167125980314968890==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8167125980314968890==--

