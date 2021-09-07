Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D65C4029B0
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 15:27:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 420483843F7
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 09:27:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="P5YJDHhr";
	dkim-atps=neutral
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
	by mm2.emwd.com (Postfix) with ESMTPS id C80E7384265
	for <usrp-users@lists.ettus.com>; Tue,  7 Sep 2021 09:26:14 -0400 (EDT)
Received: by mail-io1-f48.google.com with SMTP id n24so12747898ion.10
        for <usrp-users@lists.ettus.com>; Tue, 07 Sep 2021 06:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=+KGB+ZF1F5SI3lZq5Azi7ecx9HwFQP7QZGmJxXEmYtk=;
        b=P5YJDHhrraRYpS+FBdtPN5UrbwTqGNzWaU+zhgzYypzJbcwLS1M3oe83lDRy9b6CB8
         +GgVz3l1i1bNnxD58WopFizm5bBviv1DUVYUqU7Eo64V0vLxLVzl7FBIwpdi7T0rxPb2
         05M9Mc7GcFGkZ9JupcOlr3f8R8/ezhCPeMVdn99F0KWjiEMUtkxzVn0wDtSPzduw2M+/
         ipeC+kiXDoCx0lAsBipGUm+1nHral24fTNNdTNBEpLBNoE1djjyVPdcCAehpc/Xev+w9
         tfyx8noKlltM7VQvQ8oLdM7E7D2dvoR2EMdR0CybTaopjl7iuAc/lZUfmX102JPqnl0S
         CPhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=+KGB+ZF1F5SI3lZq5Azi7ecx9HwFQP7QZGmJxXEmYtk=;
        b=VQXfnokZK9YhwiKymGMLQOZLJ6Mr89sUhtpvf8jpcQo7Cc8Qdbgd9br1hyrOGOYNWJ
         Zl8U65Y0I6+OgiXnk2n00HHTOhkLuU+PvY5v45kYSqL/eoNbrhY8H4QzLXwxHip2qwVU
         0R6nhILr2YI6+mAnmMSYtgnqmTuKgglcLsrwEIi2VvuTVbIvXbqeLtu1CNU29CfQ5zTw
         HstgTc/vCh9uHcx+NH+y6W80H0vTB1SMPEfhjyrOSdF/GVXBq+ihCqszlbTxvawyrGyD
         WgfK69bbGBQSeN5RwyPh+tvidkjMDPTs9XXF8awtf8aL5ce8kBaJtShSBoJWWp4fEv66
         OjLg==
X-Gm-Message-State: AOAM5325Xj+Fkd6Qn/yE+Alh+8uPk56lB958bKU3CSktjL5tfr1p7YZl
	5pCLrxSJ0zUW/AUBqXnwWqBAs/saWl+hDw==
X-Google-Smtp-Source: ABdhPJyf82CRBG0iFJkFJi65ocut8LvUesZ1Z+Dhe1PIy1XARg2V0616Sg/kii3Ufv4LqOJbShihyA==
X-Received: by 2002:a02:6a24:: with SMTP id l36mr11974908jac.24.1631021173979;
        Tue, 07 Sep 2021 06:26:13 -0700 (PDT)
Received: from [192.168.2.239] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id g14sm6461681ila.28.2021.09.07.06.26.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Sep 2021 06:26:13 -0700 (PDT)
To: zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <78915145.1401871.1630855703615.ref@mail.yahoo.com>
 <78915145.1401871.1630855703615@mail.yahoo.com>
 <606552990.1786539.1630963952986@mail.yahoo.com>
 <147565774.1577833.1630969165270@mail.yahoo.com>
 <7d2c5ec1-812b-4f04-6718-d3a0029017ad@gmail.com>
 <715684581.1865263.1631015683450@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <f52b1f91-a3e0-ae66-f58e-899139da6ae2@gmail.com>
Date: Tue, 7 Sep 2021 09:26:12 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <715684581.1865263.1631015683450@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: OPWBMFEKXEX3KP7SBRLLDKDBWWXVQ4VJ
X-Message-ID-Hash: OPWBMFEKXEX3KP7SBRLLDKDBWWXVQ4VJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Rx Packet Drop in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OPWBMFEKXEX3KP7SBRLLDKDBWWXVQ4VJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7195874310402965169=="

This is a multi-part message in MIME format.
--===============7195874310402965169==
Content-Type: multipart/alternative;
 boundary="------------1DBC218E7847F0026FC02819"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------1DBC218E7847F0026FC02819
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-07 7:54 a.m., zhou wrote:
> Thanks Marcus. What is the reason for Rx packet drop in N321? I have=20
> configured the same MTU on both ends of the connection. Interestingly,=20
> there is no Tx packet loss but Rx.
Well, the *usual* reason is cabling issues.=C2=A0 But a secondary reason=20
would be overload--the drivers run out of buffers to place packets
 =C2=A0 for the user/application layer.=C2=A0 That shouldn't be the case =
here,=20
unless you're doing a LOT of ordinary Linux CPU=C2=A0 network traffic ove=
r
 =C2=A0 those interfaces.


>
>
> On Tuesday, 7 September 2021, 00:05:57 BST, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>
> On 2021-09-06 6:59 p.m., zhou wrote:
> Hi Marcus,
>
> Could you please help on this?
> I find some confusing information on MTU configuration in different=20
> ettus web pages:
> https://files.ettus.com/manual/page_transport.html=20
> <https://files.ettus.com/manual/page_transport.html>=C2=A0: MTU=3D8000 =
for 10GigE
> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks=20
> <https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks>=C2=A0=
:=20
> MTU=3D9000 for 10GigE
>
> Which one is correct? :
>
> Thanks.
> They're both valid, in that a larger MTU tends to improve bulk=20
> performance at high sample rates.
>
> The caveat is that BOTH SIDES of the connection have to "agree" on the=20
> MTU, and some host controllers
> =C2=A0 will happily accept a large MTU, but be unable to actually suppo=
rt=20
> it, although that situation is NOT one
> =C2=A0 that I have seen in 10GiGe controllers--they inherently want to=20
> support "jumbo frames".
>
>
>
>>
>>
>> On Monday, 6 September 2021, 22:33:35 BST, zhou via USRP-users=20
>> <usrp-users@lists.ettus.com> <mailto:usrp-users@lists.ettus.com> wrote=
:
>>
>>
>> Hi,
>>
>> I have a problem with the N321 USRP. I find packet dropped in USRP=20
>> but not in host. In host, I am running Ubuntu 18.04.
>>
>> *_Below is the ifconfig result in N321:_*
>>
>> root@ni-n3xx-320CAAB:~# ifconfig
>>
>> *eth0* Link encap:Ethernet=C2=A0 HWaddr 00:80:2F:32:36:BA
>>
>> inet addr:192.168.10.165 Bcast:192.168.255.255 Mask:255.255.255.0
>>
>> UP BROADCAST RUNNING MULTICAST MTU:*1500*=C2=A0 Metric:1
>>
>> RX packets:618374 errors:0 *dropped:11485*overruns:0 frame:0
>>
>> TX packets:193714 errors:0 dropped:0 overruns:0 carrier:0
>>
>> collisions:0 txqueuelen:1000
>>
>> RX bytes:39776733 (37.9 MiB)=C2=A0 TX bytes:14546432 (13.8 MiB)
>>
>> Interrupt:27 Base address:0xb000
>>
>> int0 Link encap:Ethernet=C2=A0 HWaddr AE:CD:BA:E1:CF:96
>>
>> inet addr:169.254.0.1 Bcast:169.254.0.255 Mask:255.255.255.0
>>
>> UP BROADCAST RUNNING MULTICAST MTU:9000=C2=A0 Metric:1
>>
>> RX packets:456 errors:0 dropped:0 overruns:0 frame:0
>>
>> TX packets:15 errors:0 dropped:0 overruns:0 carrier:0
>>
>> collisions:0 txqueuelen:1000
>>
>> RX bytes:37392 (36.5 KiB)=C2=A0 TX bytes:2770 (2.7 KiB)
>>
>> lo Link encap:Local Loopback
>>
>> inet addr:127.0.0.1 Mask:255.0.0.0
>>
>> UP LOOPBACK RUNNING=C2=A0 MTU:65536 Metric:1
>>
>> RX packets:89 errors:0 dropped:0 overruns:0 frame:0
>>
>> TX packets:89 errors:0 dropped:0 overruns:0 carrier:0
>>
>> collisions:0 txqueuelen:1000
>>
>> RX bytes:7480 (7.3 KiB)=C2=A0 TX bytes:7480 (7.3 KiB)
>>
>> *sfp0* Link encap:Ethernet=C2=A0 HWaddr 00:80:2F:32:36:BB
>>
>> inet addr:192.168.12.2 Bcast:192.168.12.255 Mask:255.255.255.0
>>
>> UP BROADCAST RUNNING MULTICAST MTU:*9000*=C2=A0 Metric:1
>>
>> RX packets:6239 errors:0 *dropped:804 *overruns:0 frame:0
>>
>> TX packets:5669 errors:0 dropped:0 overruns:0 carrier:0
>>
>> collisions:0 txqueuelen:1000
>>
>> RX bytes:18466697 (17.6 MiB)=C2=A0 TX bytes:18417536 (17.5 MiB)
>>
>> *sfp1* Link encap:Ethernet=C2=A0 HWaddr 00:80:2F:32:36:BC
>>
>> inet addr:192.168.13.2 Bcast:192.168.13.255 Mask:255.255.255.0
>>
>> UP BROADCAST RUNNING MULTICAST MTU:*9000*=C2=A0 Metric:1
>>
>> RX packets:24868 errors:0 *dropped:796*overruns:0 frame:0
>>
>> TX packets:24613 errors:0 dropped:0 overruns:0 carrier:0
>>
>> collisions:0 txqueuelen:1000
>>
>> RX bytes:20486915 (19.5 MiB)=C2=A0 TX bytes:19611643 (18.7 MiB)
>>
>> _*Below is ifconfig result in host:*_
>>
>> user@USRP-SERVER:~$ ifconfig
>>
>> *eno1*: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu *1500*
>>
>> inet 192.168.10.143=C2=A0 netmask 255.255.255.0=C2=A0 broadcast 192.16=
8.255.255
>>
>> inet6 fe80::b27b:25ff:fe1d:9e4e prefixlen 64=C2=A0 scopeid 0x20<link>
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ether b0:7b:25:1d:9e:4e=C2=A0=
 txqueuelen 1000=C2=A0 (Ethernet)
>>
>> RX packets 5604=C2=A0 bytes 416435 (416.4 KB)
>>
>> RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=C2=A0 frame 0
>>
>> TX packets 404=C2=A0 bytes 68556 (68.5 KB)
>>
>> TX errors 0=C2=A0 dropped 0 overruns 0 carrier 0=C2=A0 collisions 0
>>
>> device interrupt 16=C2=A0 memory 0xd2100000-d2120000
>>
>> *enp1s0f0*: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu *90=
00*
>>
>> inet 192.168.12.1=C2=A0 netmask 255.255.255.0=C2=A0 broadcast 192.168.=
12.255
>>
>> inet6 fe80::faf2:1eff:fe42:dddc prefixlen 64=C2=A0 scopeid 0x20<link>
>>
>> ether f8:f2:1e:42:dd:dc txqueuelen 1000=C2=A0 (Ethernet)
>>
>> RX packets 294=C2=A0 bytes 35184 (35.1 KB)
>>
>> RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=C2=A0 frame 0
>>
>> TX packets 395=C2=A0 bytes 37148 (37.1 KB)
>>
>> TX errors 0=C2=A0 dropped 0 overruns 0 carrier 0=C2=A0 collisions 0
>>
>> *enp1s0f1*: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu *90=
00*
>>
>> inet 192.168.13.1=C2=A0 netmask 255.255.255.0=C2=A0 broadcast 192.168.=
13.255
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0inet6 fe80::faf2:1eff:fe42:dddd prefixlen 64=C2=
=A0 scopeid 0x20<link>
>>
>> ether f8:f2:1e:42:dd:dd txqueuelen 1000=C2=A0 (Ethernet)
>>
>> RX packets 9=C2=A0 bytes 2228 (2.2 KB)
>>
>> RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=C2=A0 frame 0
>>
>> TX packets 72=C2=A0 bytes 7983 (7.9 KB)
>>
>> TX errors 0=C2=A0 dropped 0 overruns 0 carrier 0=C2=A0 collisions 0
>>
>> lo: flags=3D73<UP,LOOPBACK,RUNNING>=C2=A0 mtu 65536
>>
>> inet 127.0.0.1=C2=A0 netmask 255.0.0.0
>>
>> inet6 ::1=C2=A0 prefixlen 128=C2=A0 scopeid 0x10<host>
>>
>> loop=C2=A0 txqueuelen 1000=C2=A0 (Local Loopback)
>>
>> RX packets 21071=C2=A0 bytes 1497110 (1.4 MB)
>>
>> RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=C2=A0 frame 0
>>
>> TX packets 21071=C2=A0 bytes 1497110 (1.4 MB)
>>
>> TX errors 0=C2=A0 dropped 0 overruns 0 carrier 0=C2=A0 collisions 0
>>
>> Could you please let me know what is the possible reason for packet=20
>> drop in USRP? How to fix it?
>>
>> Thanks for any inputs.
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com=20
>> <mailto:usrp-users@lists.ettus.com>
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com=20
>> <mailto:usrp-users-leave@lists.ettus.com>
>


--------------1DBC218E7847F0026FC02819
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-07 7:54 a.m., zhou wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:715684581.1865263.1631015683450@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp49813887yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Thanks Marcus. What is the
          reason for Rx packet drop in N321? I have configured the same
          MTU on both ends of the connection. Interestingly, there is no
          Tx packet loss but Rx.</div>
      </div>
    </blockquote>
    Well, the *usual* reason is cabling issues.=C2=A0 But a secondary rea=
son
    would be overload--the drivers run out of buffers to place packets<br=
>
    =C2=A0 for the user/application layer.=C2=A0 That shouldn't be the ca=
se here,
    unless you're doing a LOT of ordinary Linux CPU=C2=A0 network traffic
    over<br>
    =C2=A0 those interfaces.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:715684581.1865263.1631015683450@mail.yahoo.com">
      <div class=3D"ydp49813887yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div><br>
        </div>
      </div>
      <div id=3D"ydpa0c1475fyahoo_quoted_1290698225"
        class=3D"ydpa0c1475fyahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Tuesday, 7 September 2021, 00:05:57 BST, Marcus D.
            Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"ydpa0c1475fyiv5669889621">
              <div>
                <div class=3D"ydpa0c1475fyiv5669889621moz-cite-prefix">On
                  2021-09-06 6:59 p.m., zhou wrote:<br clear=3D"none">
                </div>
                <blockquote type=3D"cite"> </blockquote>
              </div>
              <div>
                <div
                  class=3D"ydpa0c1475fyiv5669889621ydp16591bb1yahoo-style=
-wrap"
                  style=3D"font-family:Helvetica Neue, Helvetica, Arial,
                  sans-serif;font-size:13px;">
                  <div dir=3D"ltr">Hi Marcus,</div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">Could you please help on this?</div>
                  <div dir=3D"ltr">I find some confusing information on
                    MTU configuration in different ettus web pages:</div>
                  <div dir=3D"ltr"><a shape=3D"rect"
                      href=3D"https://files.ettus.com/manual/page_transpo=
rt.html"
                      rel=3D"nofollow" target=3D"_blank"
                      moz-do-not-send=3D"true">https://files.ettus.com/ma=
nual/page_transport.html</a>=C2=A0:=C2=A0
                    MTU=3D8000 for 10GigE<br clear=3D"none">
                  </div>
                  <div dir=3D"ltr"><a shape=3D"rect"
                      href=3D"https://kb.ettus.com/USRP_Host_Performance_=
Tuning_Tips_and_Tricks"
                      rel=3D"nofollow" target=3D"_blank"
                      moz-do-not-send=3D"true">https://kb.ettus.com/USRP_=
Host_Performance_Tuning_Tips_and_Tricks</a>=C2=A0:
                    MTU=3D9000 for 10GigE<br clear=3D"none">
                  </div>
                  <div><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">Which one is correct? :=C2=A0</div>
                  <div><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">Thanks.</div>
                </div>
                They're both valid, in that a larger MTU tends to
                improve bulk performance at high sample rates.<br
                  clear=3D"none">
                <br clear=3D"none">
                The caveat is that BOTH SIDES of the connection have to
                "agree" on the MTU, and some host controllers<br
                  clear=3D"none">
                =C2=A0 will happily accept a large MTU, but be unable to
                actually support it, although that situation is NOT one<b=
r
                  clear=3D"none">
                =C2=A0 that I have seen in 10GiGe controllers--they
                inherently want to support "jumbo frames".
                <div class=3D"ydpa0c1475fyiv5669889621yqt4485559050"
                  id=3D"ydpa0c1475fyiv5669889621yqtfd46881"><br
                    clear=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                  <blockquote type=3D"cite">
                    <div
                      class=3D"ydpa0c1475fyiv5669889621ydp16591bb1yahoo-s=
tyle-wrap"
                      style=3D"font-family:Helvetica Neue, Helvetica,
                      Arial, sans-serif;font-size:13px;">
                      <div><br clear=3D"none">
                      </div>
                      <div><br clear=3D"none">
                      </div>
                    </div>
                    <div
                      class=3D"ydpa0c1475fyiv5669889621ydpba31248yahoo_qu=
oted"
id=3D"ydpa0c1475fyiv5669889621ydpba31248yahoo_quoted_1193244036">
                      <div style=3D"font-family:'Helvetica Neue',
                        Helvetica, Arial,
                        sans-serif;font-size:13px;color:#26282a;">
                        <div> On Monday, 6 September 2021, 22:33:35 BST,
                          zhou via USRP-users <a shape=3D"rect"
                            class=3D"ydpa0c1475fyiv5669889621moz-txt-link=
-rfc2396E"
                            href=3D"mailto:usrp-users@lists.ettus.com"
                            rel=3D"nofollow" target=3D"_blank"
                            moz-do-not-send=3D"true">&lt;usrp-users@lists=
.ettus.com&gt;</a>
                          wrote: </div>
                        <div><br clear=3D"none">
                        </div>
                        <div><br clear=3D"none">
                        </div>
                        <div>
                          <div
                            id=3D"ydpa0c1475fyiv5669889621ydpba31248yiv82=
19365124">
                            <div>
                              <div
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpb9dc4fa4yahoo-=
style-wrap"
                                style=3D"font-family:Helvetica Neue,
                                Helvetica, Arial,
                                sans-serif;font-size:13px;">
                                <div
                                  class=3D"ydpa0c1475fyiv5669889621ydpba3=
1248yiv8219365124yqt2927466630"
id=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqtfd67245"> </div>
                                <div dir=3D"ltr">
                                  <div
                                    class=3D"ydpa0c1475fyiv5669889621ydpb=
a31248yiv8219365124yqt2927466630"
id=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqtfd87247"> </div>
                                  <div>
                                    <div
                                      class=3D"ydpa0c1475fyiv5669889621yd=
pba31248yiv8219365124yqt2927466630"
id=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqtfd61407">
                                      <div dir=3D"ltr">Hi,=C2=A0</div>
                                    </div>
                                    <div dir=3D"ltr"><br clear=3D"none">
                                    </div>
                                    <div dir=3D"ltr">I have a problem wit=
h
                                      the N321 USRP. I find packet
                                      dropped in USRP but not in host.
                                      In host, I am running Ubuntu
                                      18.04.</div>
                                    <div><br clear=3D"none">
                                    </div>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal"><b>=C2=A0<u>Below
                                          is the ifconfig result in
                                          N321:</u></b></p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">root@ni-n3xx-320CAAB:~#
                                      ifconfig</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal"><b>eth0</b>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      Link encap:Ethernet=C2=A0 HWaddr
                                      00:80:2F:32:36:BA</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      inet addr:192.168.10.165=C2=A0
                                      Bcast:192.168.255.255=C2=A0
                                      Mask:255.255.255.0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      UP BROADCAST RUNNING MULTICAST=C2=A0
                                      MTU:<b>1500</b>=C2=A0 Metric:1</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      RX packets:618374 errors:0 <b><span
                                          style=3D"color:red;">dropped:11=
485</span></b><span
                                        style=3D"color:red;"> </span>over=
runs:0
                                      frame:0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      TX packets:193714 errors:0
                                      dropped:0 overruns:0 carrier:0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      collisions:0 txqueuelen:1000</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      RX bytes:39776733 (37.9 MiB)=C2=A0 =
TX
                                      bytes:14546432 (13.8 MiB)</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      Interrupt:27 Base address:0xb000</p=
>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">int0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      Link encap:Ethernet=C2=A0 HWaddr
                                      AE:CD:BA:E1:CF:96</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      inet addr:169.254.0.1=C2=A0
                                      Bcast:169.254.0.255=C2=A0
                                      Mask:255.255.255.0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      UP BROADCAST RUNNING MULTICAST=C2=A0
                                      MTU:9000=C2=A0 Metric:1</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      RX packets:456 errors:0 dropped:0
                                      overruns:0 frame:0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      TX packets:15 errors:0 dropped:0
                                      overruns:0 carrier:0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      collisions:0 txqueuelen:1000</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      RX bytes:37392 (36.5 KiB)=C2=A0 TX
                                      bytes:2770 (2.7 KiB)</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">lo=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      Link encap:Local Loopback</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      inet addr:127.0.0.1=C2=A0
                                      Mask:255.0.0.0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      UP LOOPBACK RUNNING=C2=A0 MTU:65536=
=C2=A0
                                      Metric:1</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      RX packets:89 errors:0 dropped:0
                                      overruns:0 frame:0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      TX packets:89 errors:0 dropped:0
                                      overruns:0 carrier:0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      collisions:0 txqueuelen:1000</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      RX bytes:7480 (7.3 KiB)=C2=A0 TX
                                      bytes:7480 (7.3 KiB)</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal"><b>sfp0</b>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      Link encap:Ethernet=C2=A0 HWaddr
                                      00:80:2F:32:36:BB</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      inet addr:192.168.12.2=C2=A0
                                      Bcast:192.168.12.255=C2=A0
                                      Mask:255.255.255.0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      UP BROADCAST RUNNING MULTICAST=C2=A0
                                      MTU:<b>9000</b>=C2=A0 Metric:1</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      RX packets:6239 errors:0 <b><span
                                          style=3D"color:red;">dropped:80=
4
                                        </span></b>overruns:0 frame:0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      TX packets:5669 errors:0 dropped:0
                                      overruns:0 carrier:0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      collisions:0 txqueuelen:1000</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      RX bytes:18466697 (17.6 MiB)=C2=A0 =
TX
                                      bytes:18417536 (17.5 MiB)</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal"><b>sfp1</b>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      Link encap:Ethernet=C2=A0 HWaddr
                                      00:80:2F:32:36:BC</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      inet addr:192.168.13.2=C2=A0
                                      Bcast:192.168.13.255=C2=A0
                                      Mask:255.255.255.0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      UP BROADCAST RUNNING MULTICAST=C2=A0
                                      MTU:<b>9000</b>=C2=A0 Metric:1</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      RX packets:24868 errors:0 <b><span
                                          style=3D"color:red;">dropped:79=
6</span></b><span
                                        style=3D"color:red;"> </span>over=
runs:0
                                      frame:0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      TX packets:24613 errors:0
                                      dropped:0 overruns:0 carrier:0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      collisions:0 txqueuelen:1000</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      RX bytes:20486915 (19.5 MiB)=C2=A0 =
TX
                                      bytes:19611643 (18.7 MiB)</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal"><u><b>Below
                                          is ifconfig result in host:</b>=
</u></p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">user@USRP-SERVER:~$
                                      ifconfig</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal"><b>eno1</b>:
flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;=C2=A0 mtu <b>1500</b><=
/p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      inet 192.168.10.143=C2=A0 netmask
                                      255.255.255.0=C2=A0 broadcast
                                      192.168.255.255</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      inet6 fe80::b27b:25ff:fe1d:9e4e=C2=A0
                                      prefixlen 64=C2=A0 scopeid
                                      0x20&lt;link&gt;</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ether
                                      b0:7b:25:1d:9e:4e=C2=A0 txqueuelen
                                      1000=C2=A0 (Ethernet)</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      RX packets 5604=C2=A0 bytes 416435
                                      (416.4 KB)</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      RX errors 0=C2=A0 dropped 0=C2=A0 o=
verruns
                                      0=C2=A0 frame 0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      TX packets 404=C2=A0 bytes 68556 (6=
8.5
                                      KB)</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      TX errors 0=C2=A0 dropped 0 overrun=
s 0=C2=A0
                                      carrier 0=C2=A0 collisions 0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      device interrupt 16=C2=A0 memory
                                      0xd2100000-d2120000</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal"><b>enp1s0f0</b>:
flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;=C2=A0 mtu <b><span
                                          style=3D"color:red;">9000</span=
></b></p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      inet 192.168.12.1=C2=A0 netmask
                                      255.255.255.0=C2=A0 broadcast
                                      192.168.12.255</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      inet6 fe80::faf2:1eff:fe42:dddc=C2=A0
                                      prefixlen 64=C2=A0 scopeid
                                      0x20&lt;link&gt;</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      ether f8:f2:1e:42:dd:dc=C2=A0
                                      txqueuelen 1000=C2=A0 (Ethernet)</p=
>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      RX packets 294=C2=A0 bytes 35184 (3=
5.1
                                      KB)</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      RX errors 0=C2=A0 dropped 0=C2=A0 o=
verruns
                                      0=C2=A0 frame 0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      TX packets 395=C2=A0 bytes 37148 (3=
7.1
                                      KB)</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      TX errors 0=C2=A0 dropped 0 overrun=
s 0=C2=A0
                                      carrier 0=C2=A0 collisions 0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal"><b>enp1s0f1</b>:
flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;=C2=A0 mtu <b>9000</b><=
/p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      inet 192.168.13.1=C2=A0 netmask
                                      255.255.255.0=C2=A0 broadcast
                                      192.168.13.255</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0
                                      =C2=A0=C2=A0=C2=A0=C2=A0inet6
                                      fe80::faf2:1eff:fe42:dddd=C2=A0
                                      prefixlen 64=C2=A0 scopeid
                                      0x20&lt;link&gt;</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      ether f8:f2:1e:42:dd:dd=C2=A0
                                      txqueuelen 1000=C2=A0 (Ethernet)</p=
>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      RX packets 9=C2=A0 bytes 2228 (2.2 =
KB)</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      RX errors 0=C2=A0 dropped 0=C2=A0 o=
verruns
                                      0=C2=A0 frame 0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      TX packets 72=C2=A0 bytes 7983 (7.9=
 KB)</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      TX errors 0=C2=A0 dropped 0 overrun=
s 0=C2=A0
                                      carrier 0=C2=A0 collisions 0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">lo:
flags=3D73&lt;UP,LOOPBACK,RUNNING&gt;=C2=A0 mtu 65536</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      inet 127.0.0.1=C2=A0 netmask 255.0.=
0.0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      inet6 ::1=C2=A0 prefixlen 128=C2=A0=
 scopeid
                                      0x10&lt;host&gt;</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      loop=C2=A0 txqueuelen 1000=C2=A0 (L=
ocal
                                      Loopback)</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      RX packets 21071=C2=A0 bytes 149711=
0
                                      (1.4 MB)</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      RX errors 0=C2=A0 dropped 0=C2=A0 o=
verruns
                                      0=C2=A0 frame 0</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      TX packets 21071=C2=A0 bytes 149711=
0
                                      (1.4 MB)</p>
                                    <p
class=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                      TX errors 0=C2=A0 dropped 0 overrun=
s 0=C2=A0
                                      carrier 0=C2=A0 collisions 0</p>
                                    <div>=C2=A0</div>
                                    <div>Could you please let me know
                                      what is the possible reason for
                                      packet drop in USRP? How to fix
                                      it?</div>
                                  </div>
                                  <div><br clear=3D"none">
                                  </div>
                                  <div dir=3D"ltr">Thanks for any inputs.=
</div>
                                  <div
                                    class=3D"ydpa0c1475fyiv5669889621ydpb=
a31248yiv8219365124yqt2927466630"
id=3D"ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqtfd49064">
                                    <div dir=3D"ltr"><br clear=3D"none">
                                    </div>
                                    <div dir=3D"ltr"><br clear=3D"none">
                                    </div>
                                    <br clear=3D"none">
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div
                            class=3D"ydpa0c1475fyiv5669889621ydpba31248yq=
t2927466630"
id=3D"ydpa0c1475fyiv5669889621ydpba31248yqtfd65263">_____________________=
__________________________<br
                              clear=3D"none">
                            USRP-users mailing list -- <a shape=3D"rect"
                              href=3D"mailto:usrp-users@lists.ettus.com"
                              rel=3D"nofollow" target=3D"_blank"
                              moz-do-not-send=3D"true">usrp-users@lists.e=
ttus.com</a><br
                              clear=3D"none">
                            To unsubscribe send an email to <a
                              shape=3D"rect"
                              href=3D"mailto:usrp-users-leave@lists.ettus=
.com"
                              rel=3D"nofollow" target=3D"_blank"
                              moz-do-not-send=3D"true">usrp-users-leave@l=
ists.ettus.com</a><br
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
    <br>
  </body>
</html>

--------------1DBC218E7847F0026FC02819--

--===============7195874310402965169==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7195874310402965169==--
