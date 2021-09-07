Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D976D403074
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 23:48:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CA27D384795
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 17:48:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TNbOjBeK";
	dkim-atps=neutral
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 4D1B2383E94
	for <usrp-users@lists.ettus.com>; Tue,  7 Sep 2021 17:47:44 -0400 (EDT)
Received: by mail-io1-f51.google.com with SMTP id b7so455613iob.4
        for <usrp-users@lists.ettus.com>; Tue, 07 Sep 2021 14:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=r3mI4Mgs3316k+K3DbWJRu8tZ4YbC4YRWug070yYxbg=;
        b=TNbOjBeK5TS7TVcOWlrS4FsbeseN4D4QUPuiW/obtPs6JXuCGEG06QHdgfJ+dLnAyu
         7Dgc0hBXFQBs7TBsIMeLoJXiiQgccakgh02/j4ewKqfu6+4AAvCiVupT9CwpLIJUu+Mj
         RlxYYpfHbhA6jcDBXFWYhhwGUDOsztgKO9mx9nytw1tqRYi6hMIyzutOwWdxgXxMu/72
         mXcA+nJjWb0EIEUEXaj+3vZpdt19rgbPHzMULCttyzV2S9YGNM5FkuTvIF/BiQQtrmFE
         OH1vt5UVJXXteCRgUDXYRVVm4w8ulQxaf5D5pmwx+6XXUjwvNKLw38j9PDWov99OZTgu
         Gl7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=r3mI4Mgs3316k+K3DbWJRu8tZ4YbC4YRWug070yYxbg=;
        b=s3p7k4dkbZujOr9uvCWP5o79DV5zvamx+fMws577oRi1BAuM6ZqWO+SBWwYf31YlO+
         Abbk/ZvEsVnu+DWfRltJEYau+HGzuJ1cC+GOXTFtA2K+GDAhdrZn4nP2DBOSky/EcBae
         ehTo0izjQmD+wwVB2roRjg29OSojY63WEHTNkqWrPfOfPDPVbt1FJ8rZWzsWaTFoDE8k
         znCFrT29ZaGMoIWAEmhaDZsKiTs2rArZn9A5659nh/oolPiHBaacvMPbcYMGLDCcVXK0
         a1qpMXyguWZrAif6vhAGKD9G2Rwgl3Ax6ooxw/rvweP+Ev01wTRcQp//hzPwHckV2a0M
         3IuA==
X-Gm-Message-State: AOAM530NwTS3Q6Btgd+fG41bgA1BVBNqWr7KOEQXfjRupTyUhXEAxLxA
	TgYSFrQyybSHEJUcf44iCSwA3E7prlk++g==
X-Google-Smtp-Source: ABdhPJzh4Jfw/2EuSIOi2F4LTgyCwwLJHJdfXloh/15BHl74T12KCWZ8HWE7KiQvCFVwxJN8/jwVpg==
X-Received: by 2002:a6b:fc17:: with SMTP id r23mr259275ioh.89.1631051263522;
        Tue, 07 Sep 2021 14:47:43 -0700 (PDT)
Received: from [192.168.2.242] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id y11sm79640iol.49.2021.09.07.14.47.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Sep 2021 14:47:43 -0700 (PDT)
To: zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <78915145.1401871.1630855703615.ref@mail.yahoo.com>
 <78915145.1401871.1630855703615@mail.yahoo.com>
 <606552990.1786539.1630963952986@mail.yahoo.com>
 <147565774.1577833.1630969165270@mail.yahoo.com>
 <7d2c5ec1-812b-4f04-6718-d3a0029017ad@gmail.com>
 <715684581.1865263.1631015683450@mail.yahoo.com>
 <c1edb69a-6d45-f2c1-73b3-c49ca4863c28@gmail.com>
 <665568616.1984947.1631044779652@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <400fca7d-921f-7d2e-94dc-064542348c9f@gmail.com>
Date: Tue, 7 Sep 2021 17:47:42 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <665568616.1984947.1631044779652@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: OUFOZCY3S3VINMO36VGNUWEZYZCVPKPL
X-Message-ID-Hash: OUFOZCY3S3VINMO36VGNUWEZYZCVPKPL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Rx Packet Drop in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OUFOZCY3S3VINMO36VGNUWEZYZCVPKPL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0802299436758858077=="

This is a multi-part message in MIME format.
--===============0802299436758858077==
Content-Type: multipart/alternative;
 boundary="------------4E5664808863881368FDA868"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------4E5664808863881368FDA868
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-07 3:59 p.m., zhou wrote:
> Thanks a lot, Marcus.
> The kernel version I am using in host is 5.4.0-81, but there is no=20
> packet drop. It is still strange that packet drop happened in USRP.
> In my test, sometimes there are ULLLL errors. I am wondering if there=20
> is something wrong with network buffer.
L means "late packet', which means that the thing that's producing=20
packets isn't "keeping up" with the required
 =C2=A0 cadence of samples being consumed by the radio.

Do you get this when talking to the N321 from your host, or when using=20
the N321 in embedded mode (using the
 =C2=A0 Linux OS running on the N321).

How are your N321 and host computer connected?=C2=A0 Are they connected v=
ia a=20
switch or direct connected?

It's not clear to me how the "RX drops" is triggered for the=20
"unsupported protocols" case--whether that's just unsupported
 =C2=A0 *ETHERNET* protocols, or any protocol packet for which there isn'=
t a=20
service registered on the system--in this case your
 =C2=A0 N321.=C2=A0 If it's the latter, then it may just be the case that=
 your=20
host PC is sending perhaps broadcast or other packets for
 =C2=A0 which there are no services registered on your N321 system to pro=
cess=20
them, so it drops them, and just logs it.=C2=A0 Unless
 =C2=A0 your host PC is doing a LOT of this, it's of no consequence.


>
>
> On Tuesday, 7 September 2021, 14:39:54 BST, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>
> On 2021-09-07 7:54 a.m., zhou wrote:
> Thanks Marcus. What is the reason for Rx packet drop in N321? I have=20
> configured the same MTU on both ends of the connection. Interestingly,=20
> there is no Tx packet loss but Rx.
> Hmmm, so, just found this:
>
>     Beginning with kernel 2.6.37, it has been changed the meaning of
>     dropped packet count. Before, dropped packets was most likely due
>     to an error. Now, the rx_dropped counter shows statistics for
>     dropped frames because of:
>
>       * Softnet backlog full
>       * Bad / Unintended VLAN tags
>       * Unknown / Unregistered protocols
>       * IPv6 frames when the server is not configured for IPv6
>
>     [...]
>
>     If the rx_dropped counter stops incrementing while tcpdump is
>     running; then it is more than likely showing drops because of the
>     reasons listed earlier.
>
>
>
>     IN other words, mostly harmless. At some point, the semantics of
>     "dropped packets" changed, and I didn't even notice.
>
>
>
>
>>
>> On Tuesday, 7 September 2021, 00:05:57 BST, Marcus D. Leech=20
>> <patchvonbraun@gmail.com> <mailto:patchvonbraun@gmail.com> wrote:
>>
>>
>> On 2021-09-06 6:59 p.m., zhou wrote:
>> Hi Marcus,
>>
>> Could you please help on this?
>> I find some confusing information on MTU configuration in different=20
>> ettus web pages:
>> https://files.ettus.com/manual/page_transport.html=20
>> <https://files.ettus.com/manual/page_transport.html>=C2=A0: MTU=3D8000=
 for=20
>> 10GigE
>> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks=20
>> <https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks>=C2=
=A0:=20
>> MTU=3D9000 for 10GigE
>>
>> Which one is correct? :
>>
>> Thanks.
>> They're both valid, in that a larger MTU tends to improve bulk=20
>> performance at high sample rates.
>>
>> The caveat is that BOTH SIDES of the connection have to "agree" on=20
>> the MTU, and some host controllers
>> =C2=A0 will happily accept a large MTU, but be unable to actually supp=
ort=20
>> it, although that situation is NOT one
>> =C2=A0 that I have seen in 10GiGe controllers--they inherently want to=
=20
>> support "jumbo frames".
>>
>>
>>
>>>
>>>
>>> On Monday, 6 September 2021, 22:33:35 BST, zhou via USRP-users=20
>>> <usrp-users@lists.ettus.com> <mailto:usrp-users@lists.ettus.com> wrot=
e:
>>>
>>>
>>> Hi,
>>>
>>> I have a problem with the N321 USRP. I find packet dropped in USRP=20
>>> but not in host. In host, I am running Ubuntu 18.04.
>>>
>>> *_Below is the ifconfig result in N321:_*
>>>
>>> root@ni-n3xx-320CAAB:~# ifconfig
>>>
>>> *eth0* Link encap:Ethernet HWaddr 00:80:2F:32:36:BA
>>>
>>> inet addr:192.168.10.165 Bcast:192.168.255.255=C2=A0 Mask:255.255.255=
.0
>>>
>>> UP BROADCAST RUNNING MULTICAST=C2=A0 MTU:*1500* Metric:1
>>>
>>> RX packets:618374 errors:0 *dropped:11485*overruns:0 frame:0
>>>
>>> TX packets:193714 errors:0 dropped:0 overruns:0 carrier:0
>>>
>>> collisions:0 txqueuelen:1000
>>>
>>> RX bytes:39776733 (37.9 MiB)=C2=A0 TX bytes:14546432 (13.8 MiB)
>>>
>>> Interrupt:27 Base address:0xb000
>>>
>>> int0 Link encap:Ethernet HWaddr AE:CD:BA:E1:CF:96
>>>
>>> inet addr:169.254.0.1 Bcast:169.254.0.255 Mask:255.255.255.0
>>>
>>> UP BROADCAST RUNNING MULTICAST=C2=A0 MTU:9000 Metric:1
>>>
>>> RX packets:456 errors:0 dropped:0 overruns:0 frame:0
>>>
>>> TX packets:15 errors:0 dropped:0 overruns:0 carrier:0
>>>
>>> collisions:0 txqueuelen:1000
>>>
>>> RX bytes:37392 (36.5 KiB)=C2=A0 TX bytes:2770 (2.7 KiB)
>>>
>>> lo Link encap:Local Loopback
>>>
>>> inet addr:127.0.0.1 Mask:255.0.0.0
>>>
>>> UP LOOPBACK RUNNING MTU:65536=C2=A0 Metric:1
>>>
>>> RX packets:89 errors:0 dropped:0 overruns:0 frame:0
>>>
>>> TX packets:89 errors:0 dropped:0 overruns:0 carrier:0
>>>
>>> collisions:0 txqueuelen:1000
>>>
>>> RX bytes:7480 (7.3 KiB)=C2=A0 TX bytes:7480 (7.3 KiB)
>>>
>>> *sfp0* Link encap:Ethernet HWaddr 00:80:2F:32:36:BB
>>>
>>> inet addr:192.168.12.2 Bcast:192.168.12.255 Mask:255.255.255.0
>>>
>>> UP BROADCAST RUNNING MULTICAST=C2=A0 MTU:*9000* Metric:1
>>>
>>> RX packets:6239 errors:0 *dropped:804 *overruns:0 frame:0
>>>
>>> TX packets:5669 errors:0 dropped:0 overruns:0 carrier:0
>>>
>>> collisions:0 txqueuelen:1000
>>>
>>> RX bytes:18466697 (17.6 MiB)=C2=A0 TX bytes:18417536 (17.5 MiB)
>>>
>>> *sfp1* Link encap:Ethernet HWaddr 00:80:2F:32:36:BC
>>>
>>> inet addr:192.168.13.2 Bcast:192.168.13.255 Mask:255.255.255.0
>>>
>>> UP BROADCAST RUNNING MULTICAST=C2=A0 MTU:*9000* Metric:1
>>>
>>> RX packets:24868 errors:0 *dropped:796*overruns:0 frame:0
>>>
>>> TX packets:24613 errors:0 dropped:0 overruns:0 carrier:0
>>>
>>> collisions:0 txqueuelen:1000
>>>
>>> RX bytes:20486915 (19.5 MiB)=C2=A0 TX bytes:19611643 (18.7 MiB)
>>>
>>> _*Below is ifconfig result in host:*_
>>>
>>> user@USRP-SERVER:~$ ifconfig
>>>
>>> *eno1*: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu *1500*
>>>
>>> inet 192.168.10.143 netmask 255.255.255.0 broadcast 192.168.255.255
>>>
>>> inet6 fe80::b27b:25ff:fe1d:9e4e prefixlen 64 scopeid 0x20<link>
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ether b0:7b:25:1d:9e:4e txq=
ueuelen 1000 (Ethernet)
>>>
>>> RX packets 5604 bytes 416435 (416.4 KB)
>>>
>>> RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=C2=A0 frame 0
>>>
>>> TX packets 404 bytes 68556 (68.5 KB)
>>>
>>> TX errors 0=C2=A0 dropped 0 overruns 0 carrier 0 collisions 0
>>>
>>> device interrupt 16 memory 0xd2100000-d2120000
>>>
>>> *enp1s0f0*: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu *9=
000*
>>>
>>> inet 192.168.12.1 netmask 255.255.255.0 broadcast 192.168.12.255
>>>
>>> inet6 fe80::faf2:1eff:fe42:dddc prefixlen 64 scopeid 0x20<link>
>>>
>>> ether f8:f2:1e:42:dd:dc txqueuelen 1000 (Ethernet)
>>>
>>> RX packets 294 bytes 35184 (35.1 KB)
>>>
>>> RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=C2=A0 frame 0
>>>
>>> TX packets 395 bytes 37148 (37.1 KB)
>>>
>>> TX errors 0=C2=A0 dropped 0 overruns 0 carrier 0 collisions 0
>>>
>>> *enp1s0f1*: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu *9=
000*
>>>
>>> inet 192.168.13.1 netmask 255.255.255.0 broadcast 192.168.13.255
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0inet6 fe80::faf2:1eff:fe42:dddd prefixlen 64 =
scopeid 0x20<link>
>>>
>>> ether f8:f2:1e:42:dd:dd txqueuelen 1000 (Ethernet)
>>>
>>> RX packets 9=C2=A0 bytes 2228 (2.2 KB)
>>>
>>> RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=C2=A0 frame 0
>>>
>>> TX packets 72=C2=A0 bytes 7983 (7.9 KB)
>>>
>>> TX errors 0=C2=A0 dropped 0 overruns 0 carrier 0 collisions 0
>>>
>>> lo: flags=3D73<UP,LOOPBACK,RUNNING>=C2=A0 mtu 65536
>>>
>>> inet 127.0.0.1 netmask 255.0.0.0
>>>
>>> inet6 ::1=C2=A0 prefixlen 128=C2=A0 scopeid 0x10<host>
>>>
>>> loop=C2=A0 txqueuelen 1000=C2=A0 (Local Loopback)
>>>
>>> RX packets 21071 bytes 1497110 (1.4 MB)
>>>
>>> RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=C2=A0 frame 0
>>>
>>> TX packets 21071 bytes 1497110 (1.4 MB)
>>>
>>> TX errors 0=C2=A0 dropped 0 overruns 0 carrier 0 collisions 0
>>>
>>> Could you please let me know what is the possible reason for packet=20
>>> drop in USRP? How to fix it?
>>>
>>> Thanks for any inputs.
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com=20
>>> <mailto:usrp-users@lists.ettus.com>
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com=20
>>> <mailto:usrp-users-leave@lists.ettus.com>
>>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com=20
> <mailto:usrp-users@lists.ettus.com>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com=20
> <mailto:usrp-users-leave@lists.ettus.com>


--------------4E5664808863881368FDA868
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-07 3:59 p.m., zhou wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:665568616.1984947.1631044779652@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp9253c75yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Thanks a lot, Marcus.</div=
>
        <div dir=3D"ltr" data-setdir=3D"false">The kernel version I am us=
ing
          in host is=C2=A0<span>5.4.0-81, but there is no packet drop. It=
 is
            still strange that packet drop happened in USRP.=C2=A0</span>=
</div>
        <div dir=3D"ltr" data-setdir=3D"false"><span>In my test, sometime=
s
            there are ULLLL errors. I am wondering if there is something
            wrong with network buffer.</span></div>
      </div>
    </blockquote>
    L means "late packet', which means that the thing that's producing
    packets isn't "keeping up" with the required<br>
    =C2=A0 cadence of samples being consumed by the radio.<br>
    <br>
    Do you get this when talking to the N321 from your host, or when
    using the N321 in embedded mode (using the<br>
    =C2=A0 Linux OS running on the N321).<br>
    <br>
    How are your N321 and host computer connected?=C2=A0 Are they connect=
ed
    via a switch or direct connected?<br>
    <br>
    It's not clear to me how the "RX drops" is triggered for the
    "unsupported protocols" case--whether that's just unsupported<br>
    =C2=A0 *ETHERNET* protocols, or any protocol packet for which there i=
sn't
    a service registered on the system--in this case your<br>
    =C2=A0 N321.=C2=A0 If it's the latter, then it may just be the case t=
hat your
    host PC is sending perhaps broadcast or other packets for<br>
    =C2=A0 which there are no services registered on your N321 system to
    process them, so it drops them, and just logs it.=C2=A0 Unless<br>
    =C2=A0 your host PC is doing a LOT of this, it's of no consequence.<b=
r>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:665568616.1984947.1631044779652@mail.yahoo.com">
      <div class=3D"ydp9253c75yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false"><span><br>
          </span></div>
        <div><br>
        </div>
      </div>
      <div id=3D"ydp4cd0c25ayahoo_quoted_1436736301"
        class=3D"ydp4cd0c25ayahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Tuesday, 7 September 2021, 14:39:54 BST, Marcus D.
            Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"ydp4cd0c25ayiv6248530318">
              <div>
                <div class=3D"ydp4cd0c25ayiv6248530318moz-cite-prefix">On
                  2021-09-07 7:54 a.m., zhou wrote:<br clear=3D"none">
                </div>
                <blockquote type=3D"cite"> </blockquote>
              </div>
              <div>
                <div
                  class=3D"ydp4cd0c25ayiv6248530318ydp49813887yahoo-style=
-wrap"
                  style=3D"font-family:Helvetica Neue, Helvetica, Arial,
                  sans-serif;font-size:13px;">
                  <div dir=3D"ltr">Thanks Marcus. What is the reason for
                    Rx packet drop in N321? I have configured the same
                    MTU on both ends of the connection. Interestingly,
                    there is no Tx packet loss but Rx.</div>
                </div>
                Hmmm, so, just found this:<br clear=3D"none">
                <br clear=3D"none">
                <blockquote>
                  <p>Beginning with kernel 2.6.37, it has been changed
                    the meaning of dropped packet count. Before, dropped
                    packets was most likely due to an error. Now, the
                    rx_dropped counter shows statistics for dropped
                    frames because of:</p>
                  <ul>
                    <li>Softnet backlog full</li>
                    <li>Bad / Unintended VLAN tags</li>
                    <li>Unknown / Unregistered protocols</li>
                    <li>IPv6 frames when the server is not configured
                      for IPv6</li>
                  </ul>
                  <p>[...]</p>
                  <p>If the rx_dropped counter stops incrementing while
                    tcpdump is running; then it is more than likely
                    showing drops because of the reasons listed earlier.<=
/p>
                  <p><br clear=3D"none">
                  </p>
                  <p><br clear=3D"none">
                  </p>
                  <p>IN other words, mostly harmless. At some point, the
                    semantics of "dropped packets" changed, and I didn't
                    even notice.</p>
                  <div class=3D"ydp4cd0c25ayiv6248530318yqt3364300945"
                    id=3D"ydp4cd0c25ayiv6248530318yqtfd36587"><br
                      clear=3D"none">
                  </div>
                  <div class=3D"ydp4cd0c25ayiv6248530318yqt3364300945"
                    id=3D"ydp4cd0c25ayiv6248530318yqtfd18160">
                    <p><br clear=3D"none">
                    </p>
                    <p><br clear=3D"none">
                    </p>
                  </div>
                </blockquote>
                <div class=3D"ydp4cd0c25ayiv6248530318yqt3364300945"
                  id=3D"ydp4cd0c25ayiv6248530318yqtfd90433">
                  <blockquote type=3D"cite">
                    <div
                      class=3D"ydp4cd0c25ayiv6248530318ydp49813887yahoo-s=
tyle-wrap"
                      style=3D"font-family:Helvetica Neue, Helvetica,
                      Arial, sans-serif;font-size:13px;">
                      <div><br clear=3D"none">
                      </div>
                    </div>
                    <div
                      class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyahoo_q=
uoted"
id=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyahoo_quoted_1290698225">
                      <div style=3D"font-family:'Helvetica Neue',
                        Helvetica, Arial,
                        sans-serif;font-size:13px;color:#26282a;">
                        <div> On Tuesday, 7 September 2021, 00:05:57
                          BST, Marcus D. Leech <a shape=3D"rect"
                            class=3D"ydp4cd0c25ayiv6248530318moz-txt-link=
-rfc2396E"
                            href=3D"mailto:patchvonbraun@gmail.com"
                            rel=3D"nofollow" target=3D"_blank"
                            moz-do-not-send=3D"true">&lt;patchvonbraun@gm=
ail.com&gt;</a>
                          wrote: </div>
                        <div><br clear=3D"none">
                        </div>
                        <div><br clear=3D"none">
                        </div>
                        <div>
                          <div
                            id=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5=
669889621">
                            <div>
                              <div
                                class=3D"ydp4cd0c25ayiv6248530318ydpa0c14=
75fyiv5669889621moz-cite-prefix">On
                                2021-09-06 6:59 p.m., zhou wrote:<br
                                  clear=3D"none">
                              </div>
                              <blockquote type=3D"cite"> </blockquote>
                            </div>
                            <div>
                              <div
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydp16591bb1yahoo=
-style-wrap"
                                style=3D"font-family:Helvetica Neue,
                                Helvetica, Arial,
                                sans-serif;font-size:13px;">
                                <div dir=3D"ltr">Hi Marcus,</div>
                                <div dir=3D"ltr"><br clear=3D"none">
                                </div>
                                <div dir=3D"ltr">Could you please help on
                                  this?</div>
                                <div dir=3D"ltr">I find some confusing
                                  information on MTU configuration in
                                  different ettus web pages:</div>
                                <div dir=3D"ltr"><a shape=3D"rect"
                                    href=3D"https://files.ettus.com/manua=
l/page_transport.html"
                                    rel=3D"nofollow" target=3D"_blank"
                                    moz-do-not-send=3D"true">https://file=
s.ettus.com/manual/page_transport.html</a>=C2=A0:=C2=A0
                                  MTU=3D8000 for 10GigE<br clear=3D"none"=
>
                                </div>
                                <div dir=3D"ltr"><a shape=3D"rect"
                                    href=3D"https://kb.ettus.com/USRP_Hos=
t_Performance_Tuning_Tips_and_Tricks"
                                    rel=3D"nofollow" target=3D"_blank"
                                    moz-do-not-send=3D"true">https://kb.e=
ttus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</a>=C2=A0:
                                  MTU=3D9000 for 10GigE<br clear=3D"none"=
>
                                </div>
                                <div><br clear=3D"none">
                                </div>
                                <div dir=3D"ltr">Which one is correct? :=C2=
=A0</div>
                                <div><br clear=3D"none">
                                </div>
                                <div dir=3D"ltr">Thanks.</div>
                              </div>
                              They're both valid, in that a larger MTU
                              tends to improve bulk performance at high
                              sample rates.<br clear=3D"none">
                              <br clear=3D"none">
                              The caveat is that BOTH SIDES of the
                              connection have to "agree" on the MTU, and
                              some host controllers<br clear=3D"none">
                              =C2=A0 will happily accept a large MTU, but=
 be
                              unable to actually support it, although
                              that situation is NOT one<br clear=3D"none"=
>
                              =C2=A0 that I have seen in 10GiGe
                              controllers--they inherently want to
                              support "jumbo frames".
                              <div
                                class=3D"ydp4cd0c25ayiv6248530318ydpa0c14=
75fyiv5669889621yqt4485559050"
id=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621yqtfd46881"><br
                                  clear=3D"none">
                                <br clear=3D"none">
                                <br clear=3D"none">
                                <blockquote type=3D"cite">
                                  <div
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydp16591bb1yahoo=
-style-wrap"
                                    style=3D"font-family:Helvetica Neue,
                                    Helvetica, Arial,
                                    sans-serif;font-size:13px;">
                                    <div><br clear=3D"none">
                                    </div>
                                    <div><br clear=3D"none">
                                    </div>
                                  </div>
                                  <div
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yahoo_=
quoted"
id=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yahoo_quo=
ted_1193244036">
                                    <div style=3D"font-family:'Helvetica
                                      Neue', Helvetica, Arial,
                                      sans-serif;font-size:13px;color:#26=
282a;">
                                      <div> On Monday, 6 September 2021,
                                        22:33:35 BST, zhou via
                                        USRP-users <a shape=3D"rect"
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621moz-txt-link-rfc=
2396E"
href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollow" target=3D"_bl=
ank"
                                          moz-do-not-send=3D"true">&lt;us=
rp-users@lists.ettus.com&gt;</a>
                                        wrote: </div>
                                      <div><br clear=3D"none">
                                      </div>
                                      <div><br clear=3D"none">
                                      </div>
                                      <div>
                                        <div
id=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821936=
5124">
                                          <div>
                                            <div
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpb9dc4fa4yahoo-style-wrap"
style=3D"font-family:Helvetica Neue, Helvetica, Arial,
                                              sans-serif;font-size:13px;"=
>
                                              <div
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124yqt2927466630"
id=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821936=
5124yqtfd67245">
                                              </div>
                                              <div dir=3D"ltr">
                                                <div
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124yqt2927466630"
id=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821936=
5124yqtfd87247">
                                                </div>
                                                <div>
                                                  <div
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124yqt2927466630"
id=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821936=
5124yqtfd61407">
                                                    <div dir=3D"ltr">Hi,=C2=
=A0</div>
                                                  </div>
                                                  <div dir=3D"ltr"><br
                                                      clear=3D"none">
                                                  </div>
                                                  <div dir=3D"ltr">I have
                                                    a problem with the
                                                    N321 USRP. I find
                                                    packet dropped in
                                                    USRP but not in
                                                    host. In host, I am
                                                    running Ubuntu
                                                    18.04.</div>
                                                  <div><br clear=3D"none"=
>
                                                  </div>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal"><b>=C2=A0<u>Below
                                                        is the ifconfig
                                                        result in N321:</=
u></b></p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">root@ni-n3xx-320CAAB:~#
                                                    ifconfig</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal"><b>eth0</b>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    Link encap:Ethernet=C2=
=A0
                                                    HWaddr
                                                    00:80:2F:32:36:BA</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    inet
                                                    addr:192.168.10.165=C2=
=A0
Bcast:192.168.255.255=C2=A0 Mask:255.255.255.0</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    UP BROADCAST RUNNING
                                                    MULTICAST=C2=A0 MTU:<=
b>1500</b>=C2=A0
                                                    Metric:1</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    RX packets:618374
                                                    errors:0 <b><span
                                                        style=3D"color:re=
d;">dropped:11485</span></b><span
                                                      style=3D"color:red;=
">
                                                    </span>overruns:0
                                                    frame:0</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    TX packets:193714
                                                    errors:0 dropped:0
                                                    overruns:0 carrier:0<=
/p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    collisions:0
                                                    txqueuelen:1000</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    RX bytes:39776733
                                                    (37.9 MiB)=C2=A0 TX
                                                    bytes:14546432 (13.8
                                                    MiB)</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    Interrupt:27 Base
                                                    address:0xb000</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">int0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    Link encap:Ethernet=C2=
=A0
                                                    HWaddr
                                                    AE:CD:BA:E1:CF:96</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    inet
                                                    addr:169.254.0.1=C2=A0
                                                    Bcast:169.254.0.255=C2=
=A0
                                                    Mask:255.255.255.0</p=
>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    UP BROADCAST RUNNING
                                                    MULTICAST=C2=A0 MTU:9=
000=C2=A0
                                                    Metric:1</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    RX packets:456
                                                    errors:0 dropped:0
                                                    overruns:0 frame:0</p=
>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    TX packets:15
                                                    errors:0 dropped:0
                                                    overruns:0 carrier:0<=
/p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    collisions:0
                                                    txqueuelen:1000</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    RX bytes:37392 (36.5
                                                    KiB)=C2=A0 TX bytes:2=
770
                                                    (2.7 KiB)</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">lo=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    Link encap:Local
                                                    Loopback</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    inet addr:127.0.0.1=C2=
=A0
                                                    Mask:255.0.0.0</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    UP LOOPBACK RUNNING=C2=
=A0
                                                    MTU:65536=C2=A0 Metri=
c:1</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    RX packets:89
                                                    errors:0 dropped:0
                                                    overruns:0 frame:0</p=
>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    TX packets:89
                                                    errors:0 dropped:0
                                                    overruns:0 carrier:0<=
/p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    collisions:0
                                                    txqueuelen:1000</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    RX bytes:7480 (7.3
                                                    KiB)=C2=A0 TX bytes:7=
480
                                                    (7.3 KiB)</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal"><b>sfp0</b>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    Link encap:Ethernet=C2=
=A0
                                                    HWaddr
                                                    00:80:2F:32:36:BB</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    inet
                                                    addr:192.168.12.2=C2=A0
                                                    Bcast:192.168.12.255=C2=
=A0
                                                    Mask:255.255.255.0</p=
>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    UP BROADCAST RUNNING
                                                    MULTICAST=C2=A0 MTU:<=
b>9000</b>=C2=A0
                                                    Metric:1</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    RX packets:6239
                                                    errors:0 <b><span
                                                        style=3D"color:re=
d;">dropped:804
                                                      </span></b>overruns=
:0
                                                    frame:0</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    TX packets:5669
                                                    errors:0 dropped:0
                                                    overruns:0 carrier:0<=
/p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    collisions:0
                                                    txqueuelen:1000</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    RX bytes:18466697
                                                    (17.6 MiB)=C2=A0 TX
                                                    bytes:18417536 (17.5
                                                    MiB)</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal"><b>sfp1</b>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    Link encap:Ethernet=C2=
=A0
                                                    HWaddr
                                                    00:80:2F:32:36:BC</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    inet
                                                    addr:192.168.13.2=C2=A0
                                                    Bcast:192.168.13.255=C2=
=A0
                                                    Mask:255.255.255.0</p=
>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    UP BROADCAST RUNNING
                                                    MULTICAST=C2=A0 MTU:<=
b>9000</b>=C2=A0
                                                    Metric:1</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    RX packets:24868
                                                    errors:0 <b><span
                                                        style=3D"color:re=
d;">dropped:796</span></b><span
                                                      style=3D"color:red;=
">
                                                    </span>overruns:0
                                                    frame:0</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    TX packets:24613
                                                    errors:0 dropped:0
                                                    overruns:0 carrier:0<=
/p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    collisions:0
                                                    txqueuelen:1000</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
                                                    RX bytes:20486915
                                                    (19.5 MiB)=C2=A0 TX
                                                    bytes:19611643 (18.7
                                                    MiB)</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal"><u><b>Below
                                                        is ifconfig
                                                        result in host:</=
b></u></p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">user@USRP-SERVER:~$
                                                    ifconfig</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal"><b>eno1</b>:
flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;=C2=A0 mtu <b>1500</b><=
/p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    inet 192.168.10.143=C2=
=A0
                                                    netmask
                                                    255.255.255.0=C2=A0
                                                    broadcast
                                                    192.168.255.255</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    inet6
                                                    fe80::b27b:25ff:fe1d:=
9e4e=C2=A0
                                                    prefixlen 64=C2=A0
                                                    scopeid
                                                    0x20&lt;link&gt;</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0et=
her
                                                    b0:7b:25:1d:9e:4e=C2=A0
                                                    txqueuelen 1000=C2=A0
                                                    (Ethernet)</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    RX packets 5604=C2=A0
                                                    bytes 416435 (416.4
                                                    KB)</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    RX errors 0=C2=A0 dro=
pped
                                                    0=C2=A0 overruns 0=C2=
=A0 frame
                                                    0</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    TX packets 404=C2=A0
                                                    bytes 68556 (68.5
                                                    KB)</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    TX errors 0=C2=A0 dro=
pped
                                                    0 overruns 0=C2=A0
                                                    carrier 0=C2=A0
                                                    collisions 0</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    device interrupt 16=C2=
=A0
                                                    memory
                                                    0xd2100000-d2120000</=
p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal"><b>enp1s0f0</b>:
flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;=C2=A0 mtu <b><span
                                                        style=3D"color:re=
d;">9000</span></b></p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    inet 192.168.12.1=C2=A0
                                                    netmask
                                                    255.255.255.0=C2=A0
                                                    broadcast
                                                    192.168.12.255</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    inet6
                                                    fe80::faf2:1eff:fe42:=
dddc=C2=A0
                                                    prefixlen 64=C2=A0
                                                    scopeid
                                                    0x20&lt;link&gt;</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    ether
                                                    f8:f2:1e:42:dd:dc=C2=A0
                                                    txqueuelen 1000=C2=A0
                                                    (Ethernet)</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    RX packets 294=C2=A0
                                                    bytes 35184 (35.1
                                                    KB)</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    RX errors 0=C2=A0 dro=
pped
                                                    0=C2=A0 overruns 0=C2=
=A0 frame
                                                    0</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    TX packets 395=C2=A0
                                                    bytes 37148 (37.1
                                                    KB)</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    TX errors 0=C2=A0 dro=
pped
                                                    0 overruns 0=C2=A0
                                                    carrier 0=C2=A0
                                                    collisions 0</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal"><b>enp1s0f1</b>:
flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;=C2=A0 mtu <b>9000</b><=
/p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    inet 192.168.13.1=C2=A0
                                                    netmask
                                                    255.255.255.0=C2=A0
                                                    broadcast
                                                    192.168.13.255</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0
                                                    =C2=A0=C2=A0=C2=A0=C2=
=A0inet6
                                                    fe80::faf2:1eff:fe42:=
dddd=C2=A0
                                                    prefixlen 64=C2=A0
                                                    scopeid
                                                    0x20&lt;link&gt;</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    ether
                                                    f8:f2:1e:42:dd:dd=C2=A0
                                                    txqueuelen 1000=C2=A0
                                                    (Ethernet)</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    RX packets 9=C2=A0 by=
tes
                                                    2228 (2.2 KB)</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    RX errors 0=C2=A0 dro=
pped
                                                    0=C2=A0 overruns 0=C2=
=A0 frame
                                                    0</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    TX packets 72=C2=A0 b=
ytes
                                                    7983 (7.9 KB)</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    TX errors 0=C2=A0 dro=
pped
                                                    0 overruns 0=C2=A0
                                                    carrier 0=C2=A0
                                                    collisions 0</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">lo:
flags=3D73&lt;UP,LOOPBACK,RUNNING&gt;=C2=A0 mtu 65536</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    inet 127.0.0.1=C2=A0
                                                    netmask 255.0.0.0</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    inet6 ::1=C2=A0 prefi=
xlen
                                                    128=C2=A0 scopeid
                                                    0x10&lt;host&gt;</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    loop=C2=A0 txqueuelen
                                                    1000=C2=A0 (Local
                                                    Loopback)</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    RX packets 21071=C2=A0
                                                    bytes 1497110 (1.4
                                                    MB)</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    RX errors 0=C2=A0 dro=
pped
                                                    0=C2=A0 overruns 0=C2=
=A0 frame
                                                    0</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    TX packets 21071=C2=A0
                                                    bytes 1497110 (1.4
                                                    MB)</p>
                                                  <p
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                    TX errors 0=C2=A0 dro=
pped
                                                    0 overruns 0=C2=A0
                                                    carrier 0=C2=A0
                                                    collisions 0</p>
                                                  <div>=C2=A0</div>
                                                  <div>Could you please
                                                    let me know what is
                                                    the possible reason
                                                    for packet drop in
                                                    USRP? How to fix it?<=
/div>
                                                </div>
                                                <div><br clear=3D"none">
                                                </div>
                                                <div dir=3D"ltr">Thanks
                                                  for any inputs.</div>
                                                <div
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124yqt2927466630"
id=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821936=
5124yqtfd49064">
                                                  <div dir=3D"ltr"><br
                                                      clear=3D"none">
                                                  </div>
                                                  <div dir=3D"ltr"><br
                                                      clear=3D"none">
                                                  </div>
                                                  <br clear=3D"none">
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                        <div
class=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yqt292=
7466630"
id=3D"ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yqtfd6526=
3">_______________________________________________<br
                                            clear=3D"none">
                                          USRP-users mailing list -- <a
                                            shape=3D"rect"
                                            href=3D"mailto:usrp-users@lis=
ts.ettus.com"
                                            rel=3D"nofollow"
                                            target=3D"_blank"
                                            moz-do-not-send=3D"true">usrp=
-users@lists.ettus.com</a><br
                                            clear=3D"none">
                                          To unsubscribe send an email
                                          to <a shape=3D"rect"
                                            href=3D"mailto:usrp-users-lea=
ve@lists.ettus.com"
                                            rel=3D"nofollow"
                                            target=3D"_blank"
                                            moz-do-not-send=3D"true">usrp=
-users-leave@lists.ettus.com</a><br
                                            clear=3D"none">
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </blockquote>
                                <br clear=3D"none">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </blockquote>
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            <div class=3D"ydp4cd0c25ayqt3364300945"
              id=3D"ydp4cd0c25ayqtfd40783">______________________________=
_________________<br
                clear=3D"none">
              USRP-users mailing list -- <a shape=3D"rect"
                href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollo=
w"
                target=3D"_blank" moz-do-not-send=3D"true">usrp-users@lis=
ts.ettus.com</a><br
                clear=3D"none">
              To unsubscribe send an email to <a shape=3D"rect"
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D"tru=
e">usrp-users-leave@lists.ettus.com</a><br
                clear=3D"none">
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------4E5664808863881368FDA868--

--===============0802299436758858077==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0802299436758858077==--
