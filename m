Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C9D402164
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 01:06:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 278DA38487C
	for <lists+usrp-users@lfdr.de>; Mon,  6 Sep 2021 19:06:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JbMXbA7o";
	dkim-atps=neutral
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 7196B3842E1
	for <usrp-users@lists.ettus.com>; Mon,  6 Sep 2021 19:05:57 -0400 (EDT)
Received: by mail-qk1-f178.google.com with SMTP id c10so8242221qko.11
        for <usrp-users@lists.ettus.com>; Mon, 06 Sep 2021 16:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=T52lT7+e1NeH33j4oHdh6eVRl+qrg6RBRL1bkGjRbhI=;
        b=JbMXbA7ogaH5/CaKhYWeRmIvFO2MJZ0vp0NbPZjxqQtPf+KtqOOLYtAJ+nzDjh1g+W
         3JT3osdm5tdtRfZnmA9ikAlsdJQ5BpQOnymcxbmRKi1Wg4e/hy56+gl277MQNthcw8ip
         oX8oNEAowTcRc2785a0/4nABUBBCSDVciftuZeCqOGtnTPkDarvPLudu/keR9meRe+cV
         hiW3xbcloEOiGIV/ANWyWl2e03rXPAsy0TsNnf4rbHC/lkRRr7uqouBQ6/yc1foI/hE2
         GjwARzQ5zHMTqqVPwkAJguBb5zlZjqZXmsVSs13sfRe6aigOGLjJeJ18DAJ1zYJP9bXF
         Dwjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=T52lT7+e1NeH33j4oHdh6eVRl+qrg6RBRL1bkGjRbhI=;
        b=KltVEMNsjxtab+9B0qPnqWaXJPs8k5ErXtbpshCw55dQw1qlm+nWe2/1hwQHDRhrdI
         AsA8T7R0sh8GQU5khwh98HURy4gbHs+a/+FXVLeb0ZHlVOZD3E/395gW6YqSAEPmoIy/
         OtNUffhy+NTKwduWIqo7kgK5TTnlcboaA10YfphcUKfXgwqkKw4vGwO8jZVGlctnEYf9
         RVnEQ5mufnmQBJtVK3b6m8UgYY2uPfjugQPNTkEWV7N+t0ousFMaEAPUwlAKRr7nUgqv
         vkf5Z3U8V7Vk1aT+/yNw2R6gVZEBNF4yatfFyKimMYNIzVr7cckwsG5W/dp1YG0N+XDT
         V9MA==
X-Gm-Message-State: AOAM5323tYpjFH9y/ACJDoOo3uiMK2Evly1XBRKtR+G4dZArCAfApK4z
	e63nmI/r8vyhG3o12Ls0Ukp2VYYP54AlBQ==
X-Google-Smtp-Source: ABdhPJyKbuOK3Sa3pOGCoFj/plXFJDkE6M8ZHh2npkIWZ3dhzcP2MLjJ6fEYj3jM9nlYKkiXOaue5A==
X-Received: by 2002:a05:620a:2a07:: with SMTP id o7mr13162096qkp.213.1630969556654;
        Mon, 06 Sep 2021 16:05:56 -0700 (PDT)
Received: from [192.168.2.239] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id f29sm6196792qtv.34.2021.09.06.16.05.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 16:05:56 -0700 (PDT)
To: zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <78915145.1401871.1630855703615.ref@mail.yahoo.com>
 <78915145.1401871.1630855703615@mail.yahoo.com>
 <606552990.1786539.1630963952986@mail.yahoo.com>
 <147565774.1577833.1630969165270@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <7d2c5ec1-812b-4f04-6718-d3a0029017ad@gmail.com>
Date: Mon, 6 Sep 2021 19:05:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <147565774.1577833.1630969165270@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: HDPJZJZ7OA6BKCZ7G3H6GK4E3NBNCFF5
X-Message-ID-Hash: HDPJZJZ7OA6BKCZ7G3H6GK4E3NBNCFF5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Rx Packet Drop in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HDPJZJZ7OA6BKCZ7G3H6GK4E3NBNCFF5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7225778002247883954=="

This is a multi-part message in MIME format.
--===============7225778002247883954==
Content-Type: multipart/alternative;
 boundary="------------33684D4E9F6DE1845DA75EBE"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------33684D4E9F6DE1845DA75EBE
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-06 6:59 p.m., zhou wrote:
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
They're both valid, in that a larger MTU tends to improve bulk=20
performance at high sample rates.

The caveat is that BOTH SIDES of the connection have to "agree" on the=20
MTU, and some host controllers
 =C2=A0 will happily accept a large MTU, but be unable to actually suppor=
t=20
it, although that situation is NOT one
 =C2=A0 that I have seen in 10GiGe controllers--they inherently want to=20
support "jumbo frames".


>
>
> On Monday, 6 September 2021, 22:33:35 BST, zhou via USRP-users=20
> <usrp-users@lists.ettus.com> wrote:
>
>
> Hi,
>
> I have a problem with the N321 USRP. I find packet dropped in USRP but=20
> not in host. In host, I am running Ubuntu 18.04.
>
> *_Below is the ifconfig result in N321:_*
>
> root@ni-n3xx-320CAAB:~# ifconfig
>
> *eth0* Link encap:Ethernet=C2=A0 HWaddr 00:80:2F:32:36:BA
>
> inet addr:192.168.10.165=C2=A0 Bcast:192.168.255.255 Mask:255.255.255.0
>
> UP BROADCAST RUNNING MULTICAST=C2=A0 MTU:*1500* Metric:1
>
> RX packets:618374 errors:0 *dropped:11485*overruns:0 frame:0
>
> TX packets:193714 errors:0 dropped:0 overruns:0 carrier:0
>
> collisions:0 txqueuelen:1000
>
> RX bytes:39776733 (37.9 MiB)=C2=A0 TX bytes:14546432 (13.8 MiB)
>
> Interrupt:27 Base address:0xb000
>
> int0 Link encap:Ethernet HWaddr AE:CD:BA:E1:CF:96
>
> inet addr:169.254.0.1=C2=A0 Bcast:169.254.0.255 Mask:255.255.255.0
>
> UP BROADCAST RUNNING MULTICAST=C2=A0 MTU:9000=C2=A0 Metric:1
>
> RX packets:456 errors:0 dropped:0 overruns:0 frame:0
>
> TX packets:15 errors:0 dropped:0 overruns:0 carrier:0
>
> collisions:0 txqueuelen:1000
>
> RX bytes:37392 (36.5 KiB)=C2=A0 TX bytes:2770 (2.7 KiB)
>
> lo Link encap:Local Loopback
>
> inet addr:127.0.0.1=C2=A0 Mask:255.0.0.0
>
> UP LOOPBACK RUNNING=C2=A0 MTU:65536=C2=A0 Metric:1
>
> RX packets:89 errors:0 dropped:0 overruns:0 frame:0
>
> TX packets:89 errors:0 dropped:0 overruns:0 carrier:0
>
> collisions:0 txqueuelen:1000
>
> RX bytes:7480 (7.3 KiB)=C2=A0 TX bytes:7480 (7.3 KiB)
>
> *sfp0* Link encap:Ethernet=C2=A0 HWaddr 00:80:2F:32:36:BB
>
> inet addr:192.168.12.2=C2=A0 Bcast:192.168.12.255 Mask:255.255.255.0
>
> UP BROADCAST RUNNING MULTICAST=C2=A0 MTU:*9000* Metric:1
>
> RX packets:6239 errors:0 *dropped:804 *overruns:0 frame:0
>
> TX packets:5669 errors:0 dropped:0 overruns:0 carrier:0
>
> collisions:0 txqueuelen:1000
>
> RX bytes:18466697 (17.6 MiB)=C2=A0 TX bytes:18417536 (17.5 MiB)
>
> *sfp1* Link encap:Ethernet=C2=A0 HWaddr 00:80:2F:32:36:BC
>
> inet addr:192.168.13.2=C2=A0 Bcast:192.168.13.255 Mask:255.255.255.0
>
> UP BROADCAST RUNNING MULTICAST=C2=A0 MTU:*9000* Metric:1
>
> RX packets:24868 errors:0 *dropped:796*overruns:0 frame:0
>
> TX packets:24613 errors:0 dropped:0 overruns:0 carrier:0
>
> collisions:0 txqueuelen:1000
>
> RX bytes:20486915 (19.5 MiB)=C2=A0 TX bytes:19611643 (18.7 MiB)
>
> _*Below is ifconfig result in host:*_
>
> user@USRP-SERVER:~$ ifconfig
>
> *eno1*: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu *1500*
>
> inet 192.168.10.143=C2=A0 netmask 255.255.255.0=C2=A0 broadcast 192.168=
.255.255
>
> inet6 fe80::b27b:25ff:fe1d:9e4e=C2=A0 prefixlen 64=C2=A0 scopeid 0x20<l=
ink>
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ether b0:7b:25:1d:9e:4e=C2=A0=
 txqueuelen 1000=C2=A0 (Ethernet)
>
> RX packets 5604=C2=A0 bytes 416435 (416.4 KB)
>
> RX errors 0 dropped 0=C2=A0 overruns 0=C2=A0 frame 0
>
> TX packets 404=C2=A0 bytes 68556 (68.5 KB)
>
> TX errors 0 dropped 0 overruns 0=C2=A0 carrier 0=C2=A0 collisions 0
>
> device interrupt 16=C2=A0 memory 0xd2100000-d2120000
>
> *enp1s0f0*: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu *900=
0*
>
> inet 192.168.12.1=C2=A0 netmask 255.255.255.0=C2=A0 broadcast 192.168.1=
2.255
>
> inet6 fe80::faf2:1eff:fe42:dddc=C2=A0 prefixlen 64=C2=A0 scopeid 0x20<l=
ink>
>
> ether f8:f2:1e:42:dd:dc=C2=A0 txqueuelen 1000=C2=A0 (Ethernet)
>
> RX packets 294=C2=A0 bytes 35184 (35.1 KB)
>
> RX errors 0 dropped 0=C2=A0 overruns 0=C2=A0 frame 0
>
> TX packets 395=C2=A0 bytes 37148 (37.1 KB)
>
> TX errors 0 dropped 0 overruns 0=C2=A0 carrier 0=C2=A0 collisions 0
>
> *enp1s0f1*: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu *900=
0*
>
> inet 192.168.13.1=C2=A0 netmask 255.255.255.0=C2=A0 broadcast 192.168.1=
3.255
>
> =C2=A0=C2=A0=C2=A0=C2=A0inet6 fe80::faf2:1eff:fe42:dddd=C2=A0 prefixlen=
 64=C2=A0 scopeid 0x20<link>
>
> ether f8:f2:1e:42:dd:dd=C2=A0 txqueuelen 1000=C2=A0 (Ethernet)
>
> RX packets 9=C2=A0 bytes 2228 (2.2 KB)
>
> RX errors 0 dropped 0=C2=A0 overruns 0=C2=A0 frame 0
>
> TX packets 72=C2=A0 bytes 7983 (7.9 KB)
>
> TX errors 0 dropped 0 overruns 0=C2=A0 carrier 0=C2=A0 collisions 0
>
> lo: flags=3D73<UP,LOOPBACK,RUNNING>=C2=A0 mtu 65536
>
> inet 127.0.0.1=C2=A0 netmask 255.0.0.0
>
> inet6 ::1 prefixlen 128=C2=A0 scopeid 0x10<host>
>
> loop txqueuelen 1000=C2=A0 (Local Loopback)
>
> RX packets 21071 bytes 1497110 (1.4 MB)
>
> RX errors 0 dropped 0=C2=A0 overruns 0=C2=A0 frame 0
>
> TX packets 21071=C2=A0 bytes 1497110 (1.4 MB)
>
> TX errors 0 dropped 0 overruns 0=C2=A0 carrier 0=C2=A0 collisions 0
>
> Could you please let me know what is the possible reason for packet=20
> drop in USRP? How to fix it?
>
> Thanks for any inputs.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com=20
> <mailto:usrp-users@lists.ettus.com>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com=20
> <mailto:usrp-users-leave@lists.ettus.com>


--------------33684D4E9F6DE1845DA75EBE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-06 6:59 p.m., zhou wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:147565774.1577833.1630969165270@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp16591bb1yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Could you please help on
          this?</div>
        <div dir=3D"ltr" data-setdir=3D"false">I find some confusing
          information on MTU configuration in different ettus web pages:<=
/div>
        <div dir=3D"ltr" data-setdir=3D"false"><a
            href=3D"https://files.ettus.com/manual/page_transport.html"
            rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D"true">h=
ttps://files.ettus.com/manual/page_transport.html</a>=C2=A0:=C2=A0
          MTU=3D8000 for 10GigE<br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><a
            href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tip=
s_and_Tricks"
            rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D"true">h=
ttps://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</a>=C2=A0=
:
          MTU=3D9000 for 10GigE<br>
        </div>
        <div><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Which one is correct? :=C2=
=A0</div>
        <div><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks.</div>
      </div>
    </blockquote>
    They're both valid, in that a larger MTU tends to improve bulk
    performance at high sample rates.<br>
    <br>
    The caveat is that BOTH SIDES of the connection have to "agree" on
    the MTU, and some host controllers<br>
    =C2=A0 will happily accept a large MTU, but be unable to actually sup=
port
    it, although that situation is NOT one<br>
    =C2=A0 that I have seen in 10GiGe controllers--they inherently want t=
o
    support "jumbo frames".<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:147565774.1577833.1630969165270@mail.yahoo.com">
      <div class=3D"ydp16591bb1yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
      <div id=3D"ydpba31248yahoo_quoted_1193244036"
        class=3D"ydpba31248yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Monday, 6 September 2021, 22:33:35 BST, zhou via
            USRP-users <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:=
usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a> wrote:=
 </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"ydpba31248yiv8219365124">
              <div>
                <div
                  class=3D"ydpba31248yiv8219365124ydpb9dc4fa4yahoo-style-=
wrap"
                  style=3D"font-family:Helvetica Neue, Helvetica, Arial,
                  sans-serif;font-size:13px;">
                  <div class=3D"ydpba31248yiv8219365124yqt2927466630"
                    id=3D"ydpba31248yiv8219365124yqtfd67245"> </div>
                  <div dir=3D"ltr">
                    <div class=3D"ydpba31248yiv8219365124yqt2927466630"
                      id=3D"ydpba31248yiv8219365124yqtfd87247"> </div>
                    <div>
                      <div class=3D"ydpba31248yiv8219365124yqt2927466630"
                        id=3D"ydpba31248yiv8219365124yqtfd61407">
                        <div dir=3D"ltr">Hi,=C2=A0</div>
                      </div>
                      <div dir=3D"ltr"><br clear=3D"none">
                      </div>
                      <div dir=3D"ltr">I have a problem with the N321
                        USRP. I find packet dropped
                        in USRP but not in host. In host, I am running
                        Ubuntu 18.04.</div>
                      <div><br clear=3D"none">
                      </div>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal"><b>=C2=A0<u>Below
                            is the ifconfig result in N321:</u></b></p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">root@ni-n3xx-320CAAB:~#
                        ifconfig</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal"><b>eth0</b>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        Link
                        encap:Ethernet=C2=A0 HWaddr 00:80:2F:32:36:BA</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        inet
                        addr:192.168.10.165=C2=A0 Bcast:192.168.255.255=C2=
=A0
                        Mask:255.255.255.0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        UP
                        BROADCAST RUNNING MULTICAST=C2=A0 MTU:<b>1500</b>=
=C2=A0
                        Metric:1</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        RX
                        packets:618374 errors:0 <b><span
                            style=3D"color:red;">dropped:11485</span></b>=
<span
                          style=3D"color:red;"> </span>overruns:0 frame:0=
</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        TX
                        packets:193714 errors:0 dropped:0 overruns:0
                        carrier:0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        collisions:0 txqueuelen:1000</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        RX
                        bytes:39776733 (37.9 MiB)=C2=A0 TX bytes:14546432
                        (13.8 MiB)</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        Interrupt:27 Base address:0xb000</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">int0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        Link encap:Ethernet=C2=A0
                        HWaddr AE:CD:BA:E1:CF:96</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        inet
                        addr:169.254.0.1=C2=A0 Bcast:169.254.0.255=C2=A0
                        Mask:255.255.255.0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        UP
                        BROADCAST RUNNING MULTICAST=C2=A0 MTU:9000=C2=A0 =
Metric:1</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        RX
                        packets:456 errors:0 dropped:0 overruns:0
                        frame:0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        TX
                        packets:15 errors:0 dropped:0 overruns:0
                        carrier:0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        collisions:0 txqueuelen:1000</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        RX
                        bytes:37392 (36.5 KiB)=C2=A0 TX bytes:2770 (2.7 K=
iB)</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">lo=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        Link
                        encap:Local Loopback</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        inet
                        addr:127.0.0.1=C2=A0 Mask:255.0.0.0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        UP
                        LOOPBACK RUNNING=C2=A0 MTU:65536=C2=A0 Metric:1</=
p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        RX
                        packets:89 errors:0 dropped:0 overruns:0 frame:0<=
/p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        TX
                        packets:89 errors:0 dropped:0 overruns:0
                        carrier:0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        collisions:0 txqueuelen:1000</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        RX
                        bytes:7480 (7.3 KiB)=C2=A0 TX bytes:7480 (7.3 KiB=
)</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal"><b>sfp0</b>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        Link
                        encap:Ethernet=C2=A0 HWaddr 00:80:2F:32:36:BB</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        inet
                        addr:192.168.12.2=C2=A0 Bcast:192.168.12.255=C2=A0
                        Mask:255.255.255.0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        UP
                        BROADCAST RUNNING MULTICAST=C2=A0 MTU:<b>9000</b>=
=C2=A0
                        Metric:1</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        RX
                        packets:6239 errors:0 <b><span
                            style=3D"color:red;">dropped:804 </span></b>o=
verruns:0
                        frame:0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        TX
                        packets:5669 errors:0 dropped:0 overruns:0
                        carrier:0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        collisions:0 txqueuelen:1000</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        RX
                        bytes:18466697 (17.6 MiB)=C2=A0 TX bytes:18417536
                        (17.5 MiB)</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal"><b>sfp1</b>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        Link
                        encap:Ethernet=C2=A0 HWaddr 00:80:2F:32:36:BC</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        inet
                        addr:192.168.13.2=C2=A0 Bcast:192.168.13.255=C2=A0
                        Mask:255.255.255.0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        UP
                        BROADCAST RUNNING MULTICAST=C2=A0 MTU:<b>9000</b>=
=C2=A0
                        Metric:1</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        RX
                        packets:24868 errors:0 <b><span
                            style=3D"color:red;">dropped:796</span></b><s=
pan
                          style=3D"color:red;"> </span>overruns:0 frame:0=
</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        TX
                        packets:24613 errors:0 dropped:0 overruns:0
                        carrier:0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        collisions:0 txqueuelen:1000</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        RX
                        bytes:20486915 (19.5 MiB)=C2=A0 TX bytes:19611643
                        (18.7 MiB)</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal"><u><b>Below
                            is ifconfig result in host:</b></u></p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">user@USRP-SERVER:~$
                        ifconfig</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal"><b>eno1</b>:
flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;=C2=A0 mtu <b>1500</b><=
/p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        inet
                        192.168.10.143=C2=A0 netmask 255.255.255.0=C2=A0 =
broadcast
                        192.168.255.255</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        inet6
                        fe80::b27b:25ff:fe1d:9e4e=C2=A0 prefixlen 64=C2=A0=
 scopeid
                        0x20&lt;link&gt;</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ether
                        b0:7b:25:1d:9e:4e=C2=A0 txqueuelen 1000=C2=A0 (Et=
hernet)</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        RX packets
                        5604=C2=A0 bytes 416435 (416.4 KB)</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        RX errors 0=C2=A0
                        dropped 0=C2=A0 overruns 0=C2=A0 frame 0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        TX packets
                        404=C2=A0 bytes 68556 (68.5 KB)</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        TX errors 0=C2=A0
                        dropped 0 overruns 0=C2=A0 carrier 0=C2=A0 collis=
ions 0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        device interrupt
                        16=C2=A0 memory 0xd2100000-d2120000</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal"><b>enp1s0f0</b>:
flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;=C2=A0 mtu <b><span
                            style=3D"color:red;">9000</span></b></p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        inet
                        192.168.12.1=C2=A0 netmask 255.255.255.0=C2=A0 br=
oadcast
                        192.168.12.255</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        inet6
                        fe80::faf2:1eff:fe42:dddc=C2=A0 prefixlen 64=C2=A0=
 scopeid
                        0x20&lt;link&gt;</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        ether
                        f8:f2:1e:42:dd:dc=C2=A0 txqueuelen 1000=C2=A0 (Et=
hernet)</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        RX packets
                        294=C2=A0 bytes 35184 (35.1 KB)</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        RX errors 0=C2=A0
                        dropped 0=C2=A0 overruns 0=C2=A0 frame 0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        TX packets
                        395=C2=A0 bytes 37148 (37.1 KB)</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        TX errors 0=C2=A0
                        dropped 0 overruns 0=C2=A0 carrier 0=C2=A0 collis=
ions 0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal"><b>enp1s0f1</b>:
flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;=C2=A0 mtu <b>9000</b><=
/p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        inet
                        192.168.13.1=C2=A0 netmask 255.255.255.0=C2=A0 br=
oadcast
                        192.168.13.255</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0
                        =C2=A0=C2=A0=C2=A0=C2=A0inet6
                        fe80::faf2:1eff:fe42:dddd=C2=A0 prefixlen 64=C2=A0=
 scopeid
                        0x20&lt;link&gt;</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        ether
                        f8:f2:1e:42:dd:dd=C2=A0 txqueuelen 1000=C2=A0 (Et=
hernet)</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        RX packets
                        9=C2=A0 bytes 2228 (2.2 KB)</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        RX errors 0=C2=A0
                        dropped 0=C2=A0 overruns 0=C2=A0 frame 0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        TX packets
                        72=C2=A0 bytes 7983 (7.9 KB)</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        TX errors 0=C2=A0
                        dropped 0 overruns 0=C2=A0 carrier 0=C2=A0 collis=
ions 0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">lo:
                        flags=3D73&lt;UP,LOOPBACK,RUNNING&gt;=C2=A0 mtu 6=
5536</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        inet
                        127.0.0.1=C2=A0 netmask 255.0.0.0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        inet6 ::1=C2=A0
                        prefixlen 128=C2=A0 scopeid 0x10&lt;host&gt;</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        loop=C2=A0
                        txqueuelen 1000=C2=A0 (Local Loopback)</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        RX packets 21071=C2=A0
                        bytes 1497110 (1.4 MB)</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        RX errors 0=C2=A0
                        dropped 0=C2=A0 overruns 0=C2=A0 frame 0</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        TX packets
                        21071=C2=A0 bytes 1497110 (1.4 MB)</p>
                      <p
                        class=3D"ydpba31248yiv8219365124ydpc002c510MsoNor=
mal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                        TX errors 0=C2=A0
                        dropped 0 overruns 0=C2=A0 carrier 0=C2=A0 collis=
ions 0</p>
                      <div>=C2=A0</div>
                      <div>Could you please let me know what is the
                        possible reason for
                        packet drop in USRP? How to fix it?</div>
                    </div>
                    <div><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Thanks for any inputs.</div>
                    <div class=3D"ydpba31248yiv8219365124yqt2927466630"
                      id=3D"ydpba31248yiv8219365124yqtfd49064">
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
            <div class=3D"ydpba31248yqt2927466630"
              id=3D"ydpba31248yqtfd65263">_______________________________=
________________<br
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

--------------33684D4E9F6DE1845DA75EBE--

--===============7225778002247883954==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7225778002247883954==--
