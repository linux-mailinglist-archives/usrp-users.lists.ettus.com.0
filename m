Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1C34029E2
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 15:40:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 31CD838443B
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 09:40:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PwMPFcE5";
	dkim-atps=neutral
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	by mm2.emwd.com (Postfix) with ESMTPS id BB68B384407
	for <usrp-users@lists.ettus.com>; Tue,  7 Sep 2021 09:39:39 -0400 (EDT)
Received: by mail-io1-f41.google.com with SMTP id f6so12899076iox.0
        for <usrp-users@lists.ettus.com>; Tue, 07 Sep 2021 06:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=FS7HTTtxrAO34t8jklC/B49u09DZ3O5olID3K8di+6k=;
        b=PwMPFcE5PNeaR9eSDnsXbz1ywgV/wbFAiJyZiKXX1YhklOY5/mCIUdKS+KhJlv+uN9
         mQjtKW3hjd9XlLg7/jA30ZP6/N/N6jzKuhT9tkaWIG3fZm/y5lRYg5q6WA1CGa7Jshk5
         HI9h7w3FSXy4ssozJAgAUHQB2yvO9JSmn1dvIZmS8xBZfBEEdR303t4WEMv0bCPcWzBp
         21FXUD1hMWWwonR2JT0NfQpmomWJ3Cv7OcbF3jy7nCWBolo9q5i8tNzpZgtBlEczUdAI
         8Lu3bpMZZXld8WkzxO+5m7j9HYjaOEgLvZST/35NI9hyrmZoomaMdOgypdroomDhY5jf
         oKfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=FS7HTTtxrAO34t8jklC/B49u09DZ3O5olID3K8di+6k=;
        b=XLiPOkaUWqW6lrKNZ1aPaOcv3s81Bytdn8UVVLgIwEwzRzzyGdTB3A2YOGEeulGLNF
         aBvTqNzlKgOUcV5Cptsip4hhgwBDBpJyvAEJrHCUJTGA4lvhpZpPi3H5EUXU4SbkVMx0
         cey5GlZ/LVBV6TilIQYLbxkGNjouULrFIzrd61TdWhECI7nX/Xa/QzK6jVadSjk5wi9E
         TL4hvUuznizsmrO6vWtvNSE1+x240RpauJ9lATJ9OrVzIKvkCKRcp8EG2hOYRSFbqNoQ
         +5pJYSo6VUwwjZVQhmB8v3RSt7kgYgqtbyLrg3kkCo4wuRHjfjLQ3vs+Y/8lqoxxR2w6
         J6vA==
X-Gm-Message-State: AOAM5337SN30dSyOAvVEfT/e3d99qHoqmpOriiIcRzHfTB9KUf9HpLp2
	B9L8ngl5KB+rl7HHoih+0BEJddnDK2eZ1w==
X-Google-Smtp-Source: ABdhPJwrFVfW7HGX9BkLH5RD3P1L+TbpjNaDFCw9AiygBwR7gG/JiHTJnLlwCDzd7Bd/USQdUH+hrw==
X-Received: by 2002:a5d:9304:: with SMTP id l4mr14051767ion.167.1631021978893;
        Tue, 07 Sep 2021 06:39:38 -0700 (PDT)
Received: from [192.168.2.239] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id r13sm6605720ilh.80.2021.09.07.06.39.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Sep 2021 06:39:38 -0700 (PDT)
To: zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <78915145.1401871.1630855703615.ref@mail.yahoo.com>
 <78915145.1401871.1630855703615@mail.yahoo.com>
 <606552990.1786539.1630963952986@mail.yahoo.com>
 <147565774.1577833.1630969165270@mail.yahoo.com>
 <7d2c5ec1-812b-4f04-6718-d3a0029017ad@gmail.com>
 <715684581.1865263.1631015683450@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <c1edb69a-6d45-f2c1-73b3-c49ca4863c28@gmail.com>
Date: Tue, 7 Sep 2021 09:39:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <715684581.1865263.1631015683450@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: EK5ZEHEN64A2QJGNDG4IEVUJJZKJ4C62
X-Message-ID-Hash: EK5ZEHEN64A2QJGNDG4IEVUJJZKJ4C62
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Rx Packet Drop in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EK5ZEHEN64A2QJGNDG4IEVUJJZKJ4C62/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3691868870101443625=="

This is a multi-part message in MIME format.
--===============3691868870101443625==
Content-Type: multipart/alternative;
 boundary="------------A601F663A1BDBA1398189A81"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------A601F663A1BDBA1398189A81
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-07 7:54 a.m., zhou wrote:
> Thanks Marcus. What is the reason for Rx packet drop in N321? I have=20
> configured the same MTU on both ends of the connection. Interestingly,=20
> there is no Tx packet loss but Rx.
Hmmm, so, just found this:

    Beginning with kernel 2.6.37, it has been changed the meaning of
    dropped packet count. Before, dropped packets was most likely due to
    an error. Now, the rx_dropped counter shows statistics for dropped
    frames because of:

      * Softnet backlog full
      * Bad / Unintended VLAN tags
      * Unknown / Unregistered protocols
      * IPv6 frames when the server is not configured for IPv6

    [...]

    If the rx_dropped counter stops incrementing while tcpdump is
    running; then it is more than likely showing drops because of the
    reasons listed earlier.



    IN other words, mostly harmless. At some point, the semantics of
    "dropped packets" changed, and I didn't even notice.



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


--------------A601F663A1BDBA1398189A81
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
    Hmmm, so, just found this:<br>
    <br>
    <blockquote>
      <p>Beginning with kernel 2.6.37, it has been changed the meaning
        of dropped packet count. Before, dropped packets was most likely
        due to an error. Now, the rx_dropped counter shows statistics
        for dropped frames because of:</p>
      <ul>
        <li>Softnet backlog full</li>
        <li>Bad / Unintended VLAN tags</li>
        <li>Unknown / Unregistered protocols</li>
        <li>IPv6 frames when the server is not configured for IPv6</li>
      </ul>
      <p>[...]</p>
      <p>If the rx_dropped counter stops incrementing while tcpdump is
        running; then it is more than likely showing drops because of
        the reasons listed earlier.</p>
      <p><br>
      </p>
      <p><br>
      </p>
      <p>IN other words, mostly harmless. At some point, the semantics
        of "dropped packets" changed, and I didn't even notice.<br>
      </p>
      <p><br>
      </p>
      <p><br>
      </p>
    </blockquote>
    <blockquote type=3D"cite"
      cite=3D"mid:715684581.1865263.1631015683450@mail.yahoo.com">
      <div class=3D"ydp49813887yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
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

--------------A601F663A1BDBA1398189A81--

--===============3691868870101443625==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3691868870101443625==--
