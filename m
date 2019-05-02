Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B414B119F8
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2019 15:20:47 +0200 (CEST)
Received: from [::1] (port=44368 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMBdk-0005go-E4; Thu, 02 May 2019 09:20:44 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:42553)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <neharikavalecha@gmail.com>)
 id 1hMBdD-0005ZT-1F
 for usrp-users@lists.ettus.com; Thu, 02 May 2019 09:20:41 -0400
Received: by mail-qk1-f173.google.com with SMTP id x19so1370363qki.9
 for <usrp-users@lists.ettus.com>; Thu, 02 May 2019 06:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=tmHvBcEUoPs4k8tGl8M2qIvXZWlU5NUOC5LIsD0CKog=;
 b=O0XRKQSvtJpEb5Qen1gX5VKiEAe3cvlvMUY9JSH39A/Y7D6xqwdlwfXlNfEf9x+AW5
 1t5MWuY8TAiggg23zmnEdyKzjqZy65kCSjgNS+7PHisdJp1PEIxG9p2CBwXMEX2pEu4l
 pPToekWo2wf4T6V6MbdCuiuIbtIwIAMzjMHPv1NZRb+PKqX5S6wXWMeByVB6JjJc+l8A
 9wiipDfcjgK2nVM61WnmXEalRxjNI+l8/Lz1EyiyNbpPte8QDXWI6BOpIqy7E9se2Vc7
 P/a5DDjJJ4NYOASpyR+XjpvP47zk/plFvW2S9o1NSGvD2B/1Gt+Dp0w8buZ0vppAS+Bo
 od2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=tmHvBcEUoPs4k8tGl8M2qIvXZWlU5NUOC5LIsD0CKog=;
 b=JMLvbgY61fUBVvBGof7SOMmgBFrnu0R7cHtTaF9mbwPQh3dk5OeFFvvVviA6ztk9g3
 upaNXbH+3zUHZJM2F3n072PLUptMhHzWnk6ZC+pdIEMbWAgp9r7R7dzRGXiS3tsaIKEW
 1CjnGO+jZOA61yzfbyGHn+0n5b/hmrfTNuO5YsNsIby4cpnzEItoT1FwgwYr+8KMwvxy
 qSDa85lNns3MyAQ/x+GZX4fjUW+KkLuzAXnX7gah954vvjJNXGDsaS8C3k0/0e9KT1+h
 taeQc2x0P4z4rvRsRmIqgHXFUVThGwCp1xCBpw2HOvg4O7NII1bS1Rp1bAsfwweNuqLp
 9CIQ==
X-Gm-Message-State: APjAAAXS1mMoZYoYZHwpcScvjkn0ZjGm8uyySs0zNfTpsxl+thnGalKK
 190amFgDt4Z98Ir6NRXWrNoNwy9NgQkG/NohpAaOZjvA
X-Google-Smtp-Source: APXvYqys1f7v+W8f5dH4H59BI9GSAy/WucIPSvHfwmmT4G6AQWcnAmWMqsND2bo8N6dsOouU1uSZNDd5U+SYkAkQ36U=
X-Received: by 2002:a05:620a:13e5:: with SMTP id
 h5mr2798679qkl.40.1556803170195; 
 Thu, 02 May 2019 06:19:30 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 2 May 2019 15:19:42 +0200
Message-ID: <CAJKWE_dGPwMCtm-+pQsy92p9drQbFE+DTuigX243TptdhX11dQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] N310 Multi Device Configuration
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
From: Neharika Valecha via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neharika Valecha <neharikavalecha@gmail.com>
Content-Type: multipart/mixed; boundary="===============5877050682496648258=="
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

--===============5877050682496648258==
Content-Type: multipart/alternative; boundary="000000000000f1de9c0587e77b6e"

--000000000000f1de9c0587e77b6e
Content-Type: text/plain; charset="UTF-8"

Hello,

I am using two N310 USRP's to create an 8x8 MIMO setup. But, I am unable to
make both of them work together. I am using an example program from the UHD
driver - txrx_loopback_to_file.

I give the following command:

./txrx_loopback_to_file --tx-rate 7.68e6 --rx-rate 7.68e6 --tx-freq 2.60e9
--rx-freq 2.60e9 --tx-gain 70 --rx-gain 60 --tx-channels "0,1,2,3"
--rx-channels "0,1,2,3" --tx-args
"addr=192.168.10.2,second_addr=192.168.20.2,time_source=external,clock_source=external,master_clock_rate=122.88e6"
--rx-args
"addr=192.168.10.2,second_addr=192.168.20.2,time_source=external,clock_source=external,master_clock_rate=122.88e6"
--settling 1

and only one USRP turns on.
In USRP X300 there were two ways to use multiple USRP's,
1. Use --tx-args and --rx-args to specify "addr0,addr1" to access two
different USRP's with --tx-channels and --rx-channels as "0,1". I tried
that here but it gives an error, "Error message: Someone tried to claim
this device again".

2. To define just one "addr" in --tx-args and --rx-args but have
--tx-channels and --rx-channels as "0,1,2,3" (as X300 is 2x2). When tried
with N310 with channel values "0,1,2,3,4,5,6,7" it gives an error that Tx
channels invalid.

So, could you tell me what is the correct syntax to access two USRP's?

Thank you
Neharika

--000000000000f1de9c0587e77b6e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><font face=3D"arial, helvetica, sans-serif"><span style=3D=
"color:rgb(0,0,0);font-size:13px">Hello,</span><br style=3D"padding:0px;mar=
gin:0px;color:rgb(0,0,0);font-size:13px"><br style=3D"padding:0px;margin:0p=
x;color:rgb(0,0,0);font-size:13px"><span style=3D"color:rgb(0,0,0);font-siz=
e:13px">I am using two N310 USRP&#39;s to create an 8x8 MIMO setup. But, I =
am unable to make both of=C2=A0</span><span style=3D"color:rgb(0,0,0);font-=
size:13px">them work together. I am using an example program from the UHD d=
river -=C2=A0</span><span style=3D"color:rgb(0,0,0);font-size:13px">txrx_lo=
opback_to_file.</span><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);=
font-size:13px"><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-s=
ize:13px"><span style=3D"color:rgb(0,0,0);font-size:13px">I give the follow=
ing command:</span><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);fon=
t-size:13px"><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-size=
:13px"><span style=3D"color:rgb(0,0,0);font-size:13px">./txrx_loopback_to_f=
ile --tx-rate 7.68e6 --rx-rate 7.68e6 --tx-freq 2.60e9 --rx-freq=C2=A0</spa=
n><span style=3D"color:rgb(0,0,0);font-size:13px">2.60e9 --tx-gain 70 --rx-=
gain 60 --tx-channels &quot;0,1,2,3&quot; --rx-channels &quot;0,1,2,3&quot;=
=C2=A0</span><span style=3D"color:rgb(0,0,0);font-size:13px">--tx-args=C2=
=A0</span><span style=3D"color:rgb(0,0,0);font-size:13px">&quot;addr=3D192.=
168.10.2,second_addr=3D192.168.20.2,time_source=3Dexternal,clock_source=3De=
xternal,master_clock_rate=3D122.88e6&quot; --rx-args=C2=A0</span><span styl=
e=3D"color:rgb(0,0,0);font-size:13px">&quot;addr=3D192.168.10.2,second_addr=
=3D192.168.20.2,time_source=3Dexternal,clock_source=3Dexternal,master_clock=
_rate=3D122.88e6&quot;=C2=A0</span><span style=3D"color:rgb(0,0,0);font-siz=
e:13px">--settling=C2=A0</span><span style=3D"color:rgb(0,0,0);font-size:13=
px">1</span><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-size:=
13px"><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-size:13px">=
<span style=3D"color:rgb(0,0,0);font-size:13px">and only one USRP turns on.=
</span><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-size:13px"=
><span style=3D"color:rgb(0,0,0);font-size:13px">In USRP X300 there were tw=
o ways to use multiple USRP&#39;s,</span><br style=3D"padding:0px;margin:0p=
x;color:rgb(0,0,0);font-size:13px"><span style=3D"color:rgb(0,0,0);font-siz=
e:13px">1. Use --tx-args and --rx-args to specify &quot;addr0,addr1&quot; t=
o access two different USRP&#39;s=C2=A0</span><span style=3D"color:rgb(0,0,=
0);font-size:13px">with --tx-channels and --rx-channels as &quot;0,1&quot;.=
 I tried that here but it gives an error,=C2=A0</span><span style=3D"color:=
rgb(0,0,0);font-size:13px">&quot;Error message: Someone tried to claim this=
 device again&quot;.</span><br style=3D"padding:0px;margin:0px;color:rgb(0,=
0,0);font-size:13px"><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);f=
ont-size:13px"><span style=3D"color:rgb(0,0,0);font-size:13px">2. To define=
 just one &quot;addr&quot; in --tx-args and --rx-args but have --tx-channel=
s and=C2=A0</span><span style=3D"color:rgb(0,0,0);font-size:13px">--rx-chan=
nels as &quot;0,1,2,3&quot; (as X300 is 2x2). When tried with N310 with cha=
nnel values=C2=A0</span><span style=3D"color:rgb(0,0,0);font-size:13px">&qu=
ot;0,1,2,3,4,5,6,7&quot; it gives an error that Tx channels invalid.</span>=
<br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-size:13px"><br st=
yle=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-size:13px"><span style=
=3D"color:rgb(0,0,0);font-size:13px">So, could you tell me what is the corr=
ect syntax to access two USRP&#39;s?</span><br style=3D"padding:0px;margin:=
0px;color:rgb(0,0,0);font-size:13px"><br style=3D"padding:0px;margin:0px;co=
lor:rgb(0,0,0);font-size:13px"><span style=3D"color:rgb(0,0,0);font-size:13=
px">Thank you</span><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);fo=
nt-size:13px"><span style=3D"color:rgb(0,0,0);font-size:13px">Neharika</spa=
n></font></div>

--000000000000f1de9c0587e77b6e--


--===============5877050682496648258==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5877050682496648258==--

