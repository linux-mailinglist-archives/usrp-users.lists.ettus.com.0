Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D79BE803C7E
	for <lists+usrp-users@lfdr.de>; Mon,  4 Dec 2023 19:12:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 933F03852A8
	for <lists+usrp-users@lfdr.de>; Mon,  4 Dec 2023 13:12:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701713544; bh=D/IHolFD4B/qsHXDU+STF1/DtnscbduNRebhSSr2EXI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=YMZfHa0lMGKh8W91SZGvFQlfd7DyUrnGDZXTenPHFs6HV7PWoezEzFl06ACwaemIv
	 z1lm8wsxJsnLmw6IhacphrHkKk+yQhQdn1dx5J03gRm+L0f0sFsZ17i6TEjdDwNOJO
	 BBy6F+qHSzXUlRgyV8nLtFw3H9H4pRgVxWbhfy4c3SSnraWQIX75UFLgsJVYFavZ12
	 QiopU4c+Y5Jxclw1HWz+LQxsCAiojzHM+5KpwvrDkQFlqXoKfDgmvoeUYnsHZngmlm
	 lwluIkbM2i9pTaWrXVlpodVj5RzwCD7dJH3IgraPsbxK8cEu5t1zVeawYG1pYQh3j2
	 vOO7mN+7umDRg==
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 2ACE938506D
	for <usrp-users@lists.ettus.com>; Mon,  4 Dec 2023 13:11:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mabA3bIu";
	dkim-atps=neutral
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-3b9ba82d8ccso398695b6e.1
        for <usrp-users@lists.ettus.com>; Mon, 04 Dec 2023 10:11:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701713492; x=1702318292; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1LeFT+8EsRPSLQd2SbJ4FiqS2ozcQmazRY17unXoegE=;
        b=mabA3bIuLFP9nqWGAHHxAS+LGHE1trirOlkUhPh3mJZtbOs/5uATKsgCy/HxQyIsEt
         37BDYAD6HFuPK4ElwCwkIUybPepTBxYmY7LQmcQL7lYtJQjoWDzJ/dUh3JoAarQF9Ze0
         4mSjZaGHXg7RV1xa3eK4zNUc25kgzPTof8TFEm7b5XEt41IoI4l3QBdI8Fqs9BfFYpuW
         Dm6ZPz+bjlgdrr12u1zoEGvk57pZY1lBenW8nfy0XqMQDvjp2BNRiPPFkjKy5iTVVbus
         Y8Kef2VkP4fV6mqnrR8g9Gj7mgyOkJ56Iue6xyrZfpvNXviS0rNacQ1mVn1bMzI2tj7N
         jksA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701713492; x=1702318292;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1LeFT+8EsRPSLQd2SbJ4FiqS2ozcQmazRY17unXoegE=;
        b=FzC2pECo3WW9ApZ2+sq1l48bU9Kv21GIpD1ISh2o5DdjgLTUQ8L4QgwhnXOmZ4BXHw
         ufqbxzDoZsDrh+DuU6FgAvErZfFp1SSupqmDsTKH78aBtwv6fHbhoFSMESOu5vwF0Hc8
         2ukuV443cnMIk5aSZETIIAyyB5/4J4+4hTYxxGemKv4sTzc+dyZRbmlnGOHOltRUpKVP
         VWRELnINC7d1syOmKsoXbMhrxmpwyAFayr05w02HQ2Rl2JUZF0TUs7HJwUsTEqf9OYb/
         j1eEBGvE+dA3nnpo3/cCaJN5tuVm06c2XCbgaPf1BMCYKVictn2nI4mu7+mlBBUYdmTJ
         XVkg==
X-Gm-Message-State: AOJu0Yxt2mlpQSp9y4kufQKE0oCi2dVhAgLGgpMKPxFB6PLwQrcgNHjH
	ZROW9VgAXtTW0Gxelny3pEktqVbN1eo=
X-Google-Smtp-Source: AGHT+IG0PtJFvpu5yz+vwiWzqDL5bzmvNdlx6+JFirWajKHHCJ3E1yJFqmv3DH6UdknzB3LBPWWrJA==
X-Received: by 2002:a05:6808:188c:b0:3b8:b063:5042 with SMTP id bi12-20020a056808188c00b003b8b0635042mr4360192oib.67.1701713492087;
        Mon, 04 Dec 2023 10:11:32 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id f2-20020a9f2bc2000000b007ba274ef51csm1063641uaj.32.2023.12.04.10.11.31
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 10:11:31 -0800 (PST)
Message-ID: <579fcca7-82f8-40f7-9366-c196e67eccf2@gmail.com>
Date: Mon, 4 Dec 2023 13:11:23 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <4uVmt5iObZFOmwzxogIAD4WNphOveekYOoaBTCapk@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <4uVmt5iObZFOmwzxogIAD4WNphOveekYOoaBTCapk@lists.ettus.com>
Message-ID-Hash: KXO373XZZGAIOQRNBLTTZ5LA7LTIQ5RK
X-Message-ID-Hash: KXO373XZZGAIOQRNBLTTZ5LA7LTIQ5RK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KXO373XZZGAIOQRNBLTTZ5LA7LTIQ5RK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2814089607527073536=="

This is a multi-part message in MIME format.
--===============2814089607527073536==
Content-Type: multipart/alternative;
 boundary="------------UwJjgCvZbY4YEDX1ebM7oiaT"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------UwJjgCvZbY4YEDX1ebM7oiaT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/12/2023 08:47, purva.joshi@phd.unipi.it wrote:
>
> Output of ifconfig:
>
> *enp1s0f0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST> mtu 9000*
>
> *inet 192.168.20.2 netmask 255.255.255.0 broadcast 192.168.20.255*
>
> *inet6 fe80::f19:8894:c467:688d prefixlen 64 scopeid 0x20<link>*
>
> *ether f8:f2:1e:41:49:d4 txqueuelen 1000 (Ethernet)*
>
> *RX packets 6 bytes 1444 (1.4 KB)*
>
> *RX errors 0 dropped 0 overruns 0 frame 0*
>
> *TX packets 20 bytes 2675 (2.6 KB)*
>
> *TX errors 0 dropped 0 overruns 0 carrier 0 collisions 0*
>
*Pretty sue that the problem is that you've programmed your *HOST*=20
interface IPV4 address to the same
 =C2=A0 as your radio -- it has to have a different address.=C2=A0 In thi=
s=20
situation, 192.168.20.1 would work.=C2=A0 This implies
 =C2=A0 that you're running the FPGA image that programs SFP0 for 10GiGe,=
 and=20
192.168.20.2 as the IPV4 address.


*
>
> enp1s0f1: flags=3D4099<UP,BROADCAST,MULTICAST> mtu 1500
>
> ether f8:f2:1e:41:49:d5 txqueuelen 1000 (Ethernet)
>
> RX packets 0 bytes 0 (0.0 B)
>
> RX errors 0 dropped 0 overruns 0 frame 0
>
> TX packets 0 bytes 0 (0.0 B)
>
> TX errors 0 dropped 0 overruns 0 carrier 0 collisions 0
>
> enp4s0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST> mtu 1500
>
> inet 131.114.52.179 netmask 255.255.252.0 broadcast 131.114.55.255
>
> inet6 fe80::36ae:b44d:431f:f99 prefixlen 64 scopeid 0x20<link>
>
> ether 04:d4:c4:a9:ab:b2 txqueuelen 1000 (Ethernet)
>
> RX packets 2907134 bytes 289367402 (289.3 MB)
>
> RX errors 0 dropped 0 overruns 0 frame 0
>
> TX packets 78367 bytes 23270497 (23.2 MB)
>
> TX errors 0 dropped 0 overruns 0 carrier 0 collisions 0
>
> lo: flags=3D73<UP,LOOPBACK,RUNNING> mtu 65536
>
> inet 127.0.0.1 netmask 255.0.0.0
>
> inet6 ::1 prefixlen 128 scopeid 0x10<host>
>
> loop txqueuelen 1000 (Local Loopback)
>
> RX packets 121516 bytes 2614645259 (2.6 GB)
>
> RX errors 0 dropped 0 overruns 0 frame 0
>
> TX packets 121516 bytes 2614645259 (2.6 GB)
>
> TX errors 0 dropped 0 overruns 0 carrier 0 collisions 0
>
> lxcbr0: flags=3D4099<UP,BROADCAST,MULTICAST> mtu 1500
>
> inet 10.0.3.1 netmask 255.255.255.0 broadcast 0.0.0.0
>
> ether 00:16:3e:00:00:00 txqueuelen 1000 (Ethernet)
>
> RX packets 0 bytes 0 (0.0 B)
>
> RX errors 0 dropped 0 overruns 0 frame 0
>
> TX packets 0 bytes 0 (0.0 B)
>
> TX errors 0 dropped 0 overruns 0 carrier 0 collisions 0
>
>
> Output of uhd_config_info --version
>
> UHD 4.0.0.0-240-gb38c9d83
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------UwJjgCvZbY4YEDX1ebM7oiaT
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 04/12/2023 08:47,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:purva.joshi@ph=
d.unipi.it">purva.joshi@phd.unipi.it</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:4uVmt5iObZFOmwzxogIAD4WNphOveekYOoaBTCapk@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Output of ifconfig:</p>
      <p><strong>enp1s0f0:
          flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt; mtu 9000</st=
rong></p>
      <p><strong> inet 192.168.20.2 netmask 255.255.255.0 broadcast
          192.168.20.255</strong></p>
      <p><strong> inet6 fe80::f19:8894:c467:688d prefixlen 64 scopeid
          0x20&lt;link&gt;</strong></p>
      <p><strong> ether f8:f2:1e:41:49:d4 txqueuelen 1000 (Ethernet)</str=
ong></p>
      <p><strong> RX packets 6 bytes 1444 (1.4 KB)</strong></p>
      <p><strong> RX errors 0 dropped 0 overruns 0 frame 0</strong></p>
      <p><strong> TX packets 20 bytes 2675 (2.6 KB)</strong></p>
      <p><strong> TX errors 0 dropped 0 overruns 0 carrier 0 collisions
          0</strong></p>
    </blockquote>
    <strong>Pretty sue that the problem is that you've programmed your
      *HOST* interface IPV4 address to the same<br>
      =C2=A0 as your radio -- it has to have a different address.=C2=A0 I=
n this
      situation, 192.168.20.1 would work.=C2=A0 This implies<br>
      =C2=A0 that you're running the FPGA image that programs SFP0 for
      10GiGe, and 192.168.20.2 as the IPV4 address.<br>
      <br>
      <br>
    </strong>
    <blockquote type=3D"cite"
cite=3D"mid:4uVmt5iObZFOmwzxogIAD4WNphOveekYOoaBTCapk@lists.ettus.com">
      <p>enp1s0f1: flags=3D4099&lt;UP,BROADCAST,MULTICAST&gt; mtu 1500</p=
>
      <p> ether f8:f2:1e:41:49:d5 txqueuelen 1000 (Ethernet)</p>
      <p> RX packets 0 bytes 0 (0.0 B)</p>
      <p> RX errors 0 dropped 0 overruns 0 frame 0</p>
      <p> TX packets 0 bytes 0 (0.0 B)</p>
      <p> TX errors 0 dropped 0 overruns 0 carrier 0 collisions 0</p>
      <p>enp4s0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt; mtu
        1500</p>
      <p> inet 131.114.52.179 netmask 255.255.252.0 broadcast
        131.114.55.255</p>
      <p> inet6 fe80::36ae:b44d:431f:f99 prefixlen 64 scopeid
        0x20&lt;link&gt;</p>
      <p> ether 04:d4:c4:a9:ab:b2 txqueuelen 1000 (Ethernet)</p>
      <p> RX packets 2907134 bytes 289367402 (289.3 MB)</p>
      <p> RX errors 0 dropped 0 overruns 0 frame 0</p>
      <p> TX packets 78367 bytes 23270497 (23.2 MB)</p>
      <p> TX errors 0 dropped 0 overruns 0 carrier 0 collisions 0</p>
      <p>lo: flags=3D73&lt;UP,LOOPBACK,RUNNING&gt; mtu 65536</p>
      <p> inet 127.0.0.1 netmask 255.0.0.0</p>
      <p> inet6 ::1 prefixlen 128 scopeid 0x10&lt;host&gt;</p>
      <p> loop txqueuelen 1000 (Local Loopback)</p>
      <p> RX packets 121516 bytes 2614645259 (2.6 GB)</p>
      <p> RX errors 0 dropped 0 overruns 0 frame 0</p>
      <p> TX packets 121516 bytes 2614645259 (2.6 GB)</p>
      <p> TX errors 0 dropped 0 overruns 0 carrier 0 collisions 0</p>
      <p>lxcbr0: flags=3D4099&lt;UP,BROADCAST,MULTICAST&gt; mtu 1500</p>
      <p> inet 10.0.3.1 netmask 255.255.255.0 broadcast 0.0.0.0</p>
      <p> ether 00:16:3e:00:00:00 txqueuelen 1000 (Ethernet)</p>
      <p> RX packets 0 bytes 0 (0.0 B)</p>
      <p> RX errors 0 dropped 0 overruns 0 frame 0</p>
      <p> TX packets 0 bytes 0 (0.0 B)</p>
      <p> TX errors 0 dropped 0 overruns 0 carrier 0 collisions 0</p>
      <p><br>
      </p>
      <p>Output of uhd_config_info --version</p>
      <p>UHD 4.0.0.0-240-gb38c9d83</p>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------UwJjgCvZbY4YEDX1ebM7oiaT--

--===============2814089607527073536==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2814089607527073536==--
