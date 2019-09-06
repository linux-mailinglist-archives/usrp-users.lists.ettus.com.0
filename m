Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B123AC249
	for <lists+usrp-users@lfdr.de>; Sat,  7 Sep 2019 00:03:17 +0200 (CEST)
Received: from [::1] (port=50768 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6MK1-0001C3-Ty; Fri, 06 Sep 2019 18:03:13 -0400
Received: from mail-ot1-f47.google.com ([209.85.210.47]:46962)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1i6MJx-00016A-Jt
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 18:03:09 -0400
Received: by mail-ot1-f47.google.com with SMTP id g19so7144648otg.13
 for <usrp-users@lists.ettus.com>; Fri, 06 Sep 2019 15:02:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BoCWLjwZoT0oq6hCoKJyMhlOtWQWQIJIgz8b53ViE8k=;
 b=KR3WwcobKtwfqvpYK2Xu8QNMAGG6lGU0IbtYw5vFvglB93fZxcgkZb5Y+bg3S6Igsi
 zIk82TatfWZSJ7OVpZJ+vktKwrZhNoSg8n8ncmVVUFRW1KGYp3h91SyMClhswH7XI+5T
 rBA2OJgwnSx0t7HiU7TlySGysD7o+5mzU6N5sRFm4jcxgiKuHsZ8P5f8Wn5ppNAFqcI6
 zDeL1r7xAFsNiPgGMX2jmDhEale/C9dhtTHAyL8sspsudHDbkb+k21oSjqq+moGxDBAs
 CDJeFvtMkop9C1f7i1ilTyzofWcOajtId4Mvkn+EjCoMu4/d6PItUOuHEGIs5rOWMel2
 Vm9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BoCWLjwZoT0oq6hCoKJyMhlOtWQWQIJIgz8b53ViE8k=;
 b=RT9vezErwOSQY2yFnwjLrItJ46L17+HWUDupElc60fHujUbMemgoXYLrZ6L5UK4wkS
 k4Np8xaMOw4P6evp2KP1oNh06vhhLFm5Qt4yPosIjXO5cF7U5L7KCZQloA0AMjowgskr
 KlgzAgay+FESyByxevyaLdAkATO8B+qT8WwnIVAlJ71rnHOHOOILfTWKf6rjHtGajUub
 UsANRqMr4HO3swnx0G+j5FlOB49T38Eo2lcdOFWakjLQtzX2cDaJa16mWS28DVrWTjdO
 zTMmMXy+InWUTiVk9y/8i78JGKd6g6PkF/1aclJtuCr0K+e6LWhtQQMz0N51jjv/P6we
 lxpw==
X-Gm-Message-State: APjAAAWDMr5HgnN5js11UAqUq9/AyzNIRVQlC1gu5QQPjxdoWoNNqsi5
 uWxRbFwCH6J3EejsUu34t8+wfbdh74cWCvkGEhdq5g==
X-Google-Smtp-Source: APXvYqzfkbq4oRglxz9Kz8Vby/HVLrSuulnBWNONq+aPtY65cENemzW0wCEQhZvBloZhDW6tfYtqDjhJJz+82NkxZ6c=
X-Received: by 2002:a9d:3f4b:: with SMTP id m69mr9371763otc.301.1567807348519; 
 Fri, 06 Sep 2019 15:02:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTTexps+cnkJ4STrAtJpJgM9OfVo84CLDp+si=np8ni-xg@mail.gmail.com>
 <CACSOXP31eCM+Dw=+pEJ4epAGB7QaUmRftXb9A=v=ymq5CVTTuQ@mail.gmail.com>
In-Reply-To: <CACSOXP31eCM+Dw=+pEJ4epAGB7QaUmRftXb9A=v=ymq5CVTTuQ@mail.gmail.com>
Date: Fri, 6 Sep 2019 18:02:17 -0400
Message-ID: <CAB__hTTQSHxhUqmYfNzdFdam-owkt0Av46Y+ZOgBF+XSyghGjw@mail.gmail.com>
To: Ettus Research Support <support@ettus.com>
Subject: Re: [USRP-users] Using DmaFIFO for receive on X310
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1244145381759473694=="
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

--===============1244145381759473694==
Content-Type: multipart/alternative; boundary="00000000000015f1da0591e99851"

--00000000000015f1da0591e99851
Content-Type: text/plain; charset="UTF-8"

Hi Nate,
I'm using UHD 3.14.0.1.  I am not using DPDK.

Regarding the tuning, I think I was not clear in my email.  I have no
trouble streaming to RAM disk using the standard Radio->DDC->host graph.  I
mentioned that I was running 2x50MS/s, but I can go up to 2x200MS/s with
success.  My issue is that after adding the DmaFIFO to the Rx chain, I got
timeouts (i.e., I suppose that the flow stopped for some reason) when
running the graph Radio->DDC->DmaFIFO->host.  Even at 2x50MS/s.

So, my question is: why is this happening?  What is wrong with my plan to
insert the DmaFIFO in the Rx chain?  What would possibly cause the
streaming to terminate such that my recv() loop times out (even with a 5s
timeout)?

Rob



On Fri, Sep 6, 2019 at 12:56 PM Ettus Research Support <support@ettus.com>
wrote:

> Hi Rob,
>
> What version of UHD are you using?
>
> 2x RX 50 MS/s streams should work without much issue with a fast enough
> host, especially to a ram disk.
>
> Are you using DPDK? DPDK support for X3xx was recently added to UHD and
> will reduce the overhead on the host side, which can help quite a bit. Some
> anecdotal testing I've done with a N310, with the native UHD driver, to
> stream 2 channels full duplex, the minimum cpu freq I was able to run
> without any flow control errors was 3.8 GHz. Using DPDK, I was able to run
> 2x2 @ 125 MS/s with my CPU cores locked at 1.5 GHz with no flow control
> errors. Using DPDK, it's possible to stream 2x2 @ 200e6 on the X3xx with a
> SRAM FPGA image (it's not possible to TX at full rate using the native
> driver and DRAM based FPGA).
>
> You could try the few things listed here
> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks
>
> One other bit to add, I've been able to stream 1 RX channel @ 200 MS/s
> straight to disk using a Intel 750 Series PCIe SSD until it was full (circa
> UHD 3.10.x). To do that, I had to use a sc16 host side data format and also
> use a XFS file system instead of EXT4. The host was a i7-4790k @ 4.4 GHz. I
> would recommend NVMe SSD drives now as they support faster rates than that
> PCIe SSD.
>
>
> Regards,
> Nate Temple
>
> On Fri, Sep 6, 2019 at 8:37 AM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>> As part of an effort to improve capability to store incoming receive
>> chain samples to files on my SSD without errors ('O' or 'D'), I decided to
>> wire an X310 noc graph to include the DmaFIFO. My thought was that the
>> DmaFIFO could better tolerate varying rates of sample consumption at the
>> OS.
>>
>> Before trying this by streaming to a file on my SSD, I first ran a test
>> which streamed to a RAM-based file (60 GB ram filesystem).  I used an
>> X310/UBX160 with the default FPGA XG image and initiated a 2-channel
>> receive at 50MS/s (using my C++ app & UHD).  To my surprise, I am getting
>> frequent "timeouts" on receive, but not always at the same time.  In one
>> case, the receive worked successfully for 28 secs (2 ch, 50 MS/s).  In
>> other cases, it timed out immediately or after several seconds.  Note that
>> I can reliably run this same test without error if I remove the DmaFIFO.
>>
>> The following works fine:
>>   RxRadio -> DDC -> host file (in RAM file system)
>>
>> The following times-out at random times:
>>   RxRadio -> DDC -> DmaFIFO -> host file (in RAM file system)
>>
>> What could be the cause?  Is there any reason the DmaFIFO shouldn't work
>> in the receive chain?
>>
>> Rob
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--00000000000015f1da0591e99851
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Nate,</div><div>I&#39;m using UHD 3.14.0.1.=C2=A0 =
I am not using DPDK.</div><div><br></div><div>Regarding the tuning, I think=
 I was not clear in my email.=C2=A0 I have no trouble streaming to RAM disk=
 using the standard Radio-&gt;DDC-&gt;host graph.=C2=A0 I mentioned that I =
was running 2x50MS/s, but I can go up to 2x200MS/s with success.=C2=A0 My i=
ssue is that after adding the DmaFIFO to the Rx chain, I got timeouts (i.e.=
, I suppose that the flow stopped for some reason) when running the graph R=
adio-&gt;DDC-&gt;DmaFIFO-&gt;host.=C2=A0 Even at 2x50MS/s.=C2=A0=C2=A0</div=
><div><br></div><div>So, my question is: why is this happening?=C2=A0 What =
is wrong with my plan to insert the DmaFIFO in the Rx chain?=C2=A0 What wou=
ld possibly cause the streaming to terminate such that my recv() loop times=
 out (even with a 5s timeout)?</div><div><br></div><div>Rob</div><div><br><=
/div><div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Sep 6, 2019 at 12:56 PM Ettus Research Support &lt;=
<a href=3D"mailto:support@ettus.com">support@ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
 style=3D"font-family:verdana,sans-serif">Hi Rob,<br><br>What version of UH=
D are you using?<br><br>2x RX 50 MS/s streams should work without much issu=
e with a fast enough host, especially to a ram disk. <br><br>Are you using =
DPDK? DPDK support for X3xx was recently added to UHD and will reduce the o=
verhead on the host side, which can help quite a bit. Some anecdotal testin=
g I&#39;ve done with a N310, with the native UHD driver, to stream 2 channe=
ls full duplex, the minimum cpu freq I was able to run without any flow con=
trol errors was 3.8 GHz. Using DPDK, I was able to run 2x2 @ 125 MS/s with =
my CPU cores locked at 1.5 GHz with no flow control errors. Using DPDK, it&=
#39;s possible to stream 2x2 @ 200e6 on the X3xx with a SRAM FPGA image (it=
&#39;s not possible to TX at full rate using the native driver and DRAM bas=
ed FPGA).<br><br>You could try the few things listed here <a href=3D"https:=
//kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks" target=3D"_bla=
nk">https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</a><b=
r><br>One other bit to add, I&#39;ve been able to stream 1 RX channel @ 200=
 MS/s straight to disk using a Intel 750 Series PCIe SSD until it was full =
(circa UHD 3.10.x). To do that, I had to use a sc16 host side data format a=
nd also use a XFS file system instead of EXT4. The host was a i7-4790k @ 4.=
4 GHz. I would recommend NVMe SSD drives now as they support faster rates t=
han that PCIe SSD. <br><br><br>Regards,<br>Nate Temple</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 6, =
2019 at 8:37 AM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr">Hi,<div>As part of an effort to improve capability to store incoming re=
ceive chain samples to files on my SSD without errors (&#39;O&#39; or &#39;=
D&#39;), I decided to wire an X310 noc graph to include the DmaFIFO. My tho=
ught was that the DmaFIFO could better tolerate varying rates of sample con=
sumption at the OS.=C2=A0</div><div><br></div><div><div>Before trying this =
by streaming to a file on my SSD, I first ran a test which streamed to a RA=
M-based file (60 GB ram filesystem).=C2=A0 I used an X310/UBX160 with the d=
efault FPGA XG image and initiated a 2-channel receive at 50MS/s (using my =
C++ app &amp; UHD).=C2=A0 To my surprise, I am getting frequent &quot;timeo=
uts&quot; on receive, but not always at the same time.=C2=A0 In one case, t=
he receive worked successfully for 28 secs (2 ch, 50 MS/s).=C2=A0 In other =
cases, it timed out immediately or after several seconds.=C2=A0 Note that I=
 can reliably run this same test without error if I remove the DmaFIFO.</di=
v><div><br></div><div>The following works fine:</div><div>=C2=A0 RxRadio -&=
gt; DDC -&gt; host file (in RAM file system)</div><div><br></div><div>The f=
ollowing times-out at random times:</div><div></div></div><div>=C2=A0 RxRad=
io -&gt; DDC -&gt; DmaFIFO -&gt; host file (in RAM file system)</div><div><=
br></div><div>What could be the cause?=C2=A0 Is there any reason the DmaFIF=
O shouldn&#39;t work in the receive chain?</div><div><br></div><div>Rob</di=
v></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>

--00000000000015f1da0591e99851--


--===============1244145381759473694==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1244145381759473694==--

