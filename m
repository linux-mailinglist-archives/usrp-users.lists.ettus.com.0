Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 502CE417648
	for <lists+usrp-users@lfdr.de>; Fri, 24 Sep 2021 15:54:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E3663380D1C
	for <lists+usrp-users@lfdr.de>; Fri, 24 Sep 2021 09:54:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZFu341EV";
	dkim-atps=neutral
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 39671383FBC
	for <usrp-users@lists.ettus.com>; Fri, 24 Sep 2021 09:50:47 -0400 (EDT)
Received: by mail-qk1-f178.google.com with SMTP id t4so27867069qkb.9
        for <usrp-users@lists.ettus.com>; Fri, 24 Sep 2021 06:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=V6KO4gnNWhcYbjKskoxFj4qRixLQFJrwtXckDLxVSqg=;
        b=ZFu341EVefnXhMEBLLvv1eDCz7FeC11WWuqepEc+TgRZSWPFanVsDe1CpqyRLnCApU
         t+DaDSB4bu3RIyg1uwEE4luRK96DupN0nhE9nFf9vVPueP5ycUCNNbEmq2P4QlYF4Kao
         hL9i+zmjNqoPbRRikghU5MwstkRkH/Bor3XcX2ykvVZ6h5IZ6VBNZtOhCCeMiGq+5D8y
         rZW6DbXAVsk2+7P6LIwEMDoLXk5ArsuJjSFi0c6i5lxxU4UHU6Jv39x1yvg9TD1ZzDhc
         j4xRtSebfvGi1e1Sg/7DoNWe1H7HqXQjf34yBfKlMZKNhjR+p0PoQF91CIhOLbdlYH/r
         Dzwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=V6KO4gnNWhcYbjKskoxFj4qRixLQFJrwtXckDLxVSqg=;
        b=Ih4CWUKYX/geFsN7238ladrUkVLm9I8S53I5RuoukIBduFvbDqPmBVSVgffjUqXAZ1
         esjd4+mVpYnrZqw4sHGBH7ieec4f95DEKGxwE1xsuQDMH/NUbxsz1tLIt61KTc3U8ie1
         oVTD5TBYSYYTpvU25ckdCaOznS23kdetgnmDOfa71KE5lNYNNL59vhMu/sep9p5uQtZP
         hpjINxJ5sPwPNeVUBvdytN4A6sgDHXq1M2v47qiMZzzdQXPfvfxsIvO586/2WB7gwsmr
         TLGwrb+YT8/aWfdjMPBJrOeh2R4DlFWQ6ZgWUBoC4PIpDfS7OAsu1vuvMY3l7iPzIvI1
         Cybw==
X-Gm-Message-State: AOAM530wekNPlBwmaNUJY0vMCbZiBs9u8MqH/yvYnLkMkPyKUP5A3sA5
	DB1FJxCqbSq3j3iML8o3ZBbkWJVk8lk4GA==
X-Google-Smtp-Source: ABdhPJxaFWLgXcPZCrK8QYTETaupgSkVzEtFgKqbX7CsMPqbE70mU2SaJIEm1xnNb6vFYb0Wyn4ANQ==
X-Received: by 2002:a37:a20a:: with SMTP id l10mr10593472qke.273.1632491446269;
        Fri, 24 Sep 2021 06:50:46 -0700 (PDT)
Received: from [192.168.2.234] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id l13sm6546718qkj.130.2021.09.24.06.50.45
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Sep 2021 06:50:45 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <yvihFszum0xbmZ1alvfvUJLHqDePaIDR6hXw7IPGiw@lists.ettus.com>
 <f033c3497b9948beb010df9452c3184a@komro.net>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <b6ffe3ea-cc05-a9e0-482a-62c4ef7983e6@gmail.com>
Date: Fri, 24 Sep 2021 09:50:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <f033c3497b9948beb010df9452c3184a@komro.net>
Content-Language: en-US
Message-ID-Hash: UXAU2UH23XGI3IRCTPTXQ2EZ7IA5OO25
X-Message-ID-Hash: UXAU2UH23XGI3IRCTPTXQ2EZ7IA5OO25
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help_Failed to build UHD in Ubuntu 20.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UXAU2UH23XGI3IRCTPTXQ2EZ7IA5OO25/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1441235587551994395=="

This is a multi-part message in MIME format.
--===============1441235587551994395==
Content-Type: multipart/alternative;
 boundary="------------A773EC2839F519647158356B"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------A773EC2839F519647158356B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-24 5:06 a.m., Thangaraj Mukara Dhakshinamoorthy wrote:
>
> Hallo Markus,
>
> The VM is not recognizing the Ettus N320, but the windows host can see=20
> and ping successfully!
>
> *_In Windows Host OS:_*
>
> C:\Program Files\UHD\bin>ipconfig
>
> Windows-IP-Konfiguration
>
> Unbekannter Adapter Management:
>
> Verbindungsspezifisches DNS-Suffix:
>
> IPv4-Adresse=C2=A0 . . . . . . . . . . : 10.2.35.84
>
> Subnetzmaske=C2=A0 . . . . . . . . . . : 255.255.255.255
>
> Standardgateway . . . . . . . . . :
>
> Ethernet-Adapter Ethernet:
>
> Verbindungsspezifisches DNS-Suffix: fritz.box
>
> Verbindungslokale IPv6-Adresse=C2=A0 . : fe80::e868:6c6:349a:434e%14
>
> IPv4-Adresse=C2=A0 . . . . . . . . . . : 192.168.178.43
>
> Subnetzmaske=C2=A0 . . . . . . . . . . : 255.255.255.0
>
> Standardgateway . . . . . . . . . : 192.168.178.1
>
> Ethernet-Adapter VirtualBox Host-Only Network:
>
> Verbindungsspezifisches DNS-Suffix:
>
> Verbindungslokale IPv6-Adresse=C2=A0 . : fe80::68b9:4e91:4875:8e30%9
>
> IPv4-Adresse=C2=A0 . . . . . . . . . . : 192.168.56.1
>
> Subnetzmaske=C2=A0 . . . . . . . . . . : 255.255.255.0
>
> Standardgateway . . . . . . . . . :
>
> Ethernet-Adapter Ethernet 2:
>
> Verbindungsspezifisches DNS-Suffix:
>
> Verbindungslokale IPv6-Adresse=C2=A0 . : fe80::ec39:375b:1411:4ebb%4
>
> IPv4-Adresse (Auto. Konfiguration): *169.254.78.187*
>
> Subnetzmaske=C2=A0 . . . . . . . . . . : 255.255.0.0
>
> Standardgateway . . . . . . . . . :
>
> C:\Program Files\UHD\bin>ping 169.254.78.187
>
> Ping wird ausgef=C3=BChrt f=C3=BCr 169.254.78.187 mit 32 Bytes Daten:
>
> Antwort von 169.254.78.187: Bytes=3D32 Zeit<1ms TTL=3D128
>
> Antwort von 169.254.78.187: Bytes=3D32 Zeit<1ms TTL=3D128
>
> Antwort von 169.254.78.187: Bytes=3D32 Zeit<1ms TTL=3D128
>
> Antwort von 169.254.78.187: Bytes=3D32 Zeit<1ms TTL=3D128
>
> Ping-Statistik f=C3=BCr 169.254.78.187:
>
> Pakete: Gesendet =3D 4, Empfangen =3D 4, Verloren =3D 0
>
> (0% Verlust),
>
> Ca. Zeitangaben in Millisek.:
>
> Minimum =3D 0ms, Maximum =3D 0ms, Mittelwert =3D 0ms
>
> C:\Program Files\UHD\bin>uhd_find_devices.exe
>
> [INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_107000;=20
> UHD_4.1.0.1-release
>
> [ERROR] [X300] X300 Network discovery error receive_from: Eine=20
> vorhandene Verbindung wurde vom Remotehost geschlossen
>
> [ERROR] [UHD] Device discovery error: receive_from: Eine vorhandene=20
> Verbindung wurde vom Remotehost geschlossen
>
> [ERROR] [UHD] Device discovery error: receive_from: Eine vorhandene=20
> Verbindung wurde vom Remotehost geschlossen
>
> No UHD Devices Found
>
> [ERROR] [UHD] Device discovery error: receive_from: Eine vorhandene=20
> Verbindung wurde vom Remotehost geschlossen
>
> C:\Program Files\UHD\bin>uhd_usrp_probe.exe
>
> [INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_107000;=20
> UHD_4.1.0.1-release
>
> Error: LookupError: KeyError: No devices found for ----->
>
> Empty Device Address
>
> *_In Virtualbox Ubuntu Guest OS:_*
>
> *__*
>
> thangz@thangz-VirtualBox:~/Desktop$ ifconfig
>
> enp0s3: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 1500
>
> inet 10.0.2.15=C2=A0 netmask 255.255.255.0=C2=A0 broadcast 10.0.2.255
>
> inet6 fe80::99d7:4c84:8bab:2aff=C2=A0 prefixlen 64=C2=A0 scopeid 0x20<l=
ink>
>
> ether 08:00:27:89:05:93=C2=A0 txqueuelen 1000=C2=A0 (Ethernet)
>
> RX packets 1179=C2=A0 bytes 1293603 (1.2 MB)
>
> RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=C2=A0 frame 0
>
> TX packets 757=C2=A0 bytes 79260 (79.2 KB)
>
> TX errors 0=C2=A0 dropped 0 overruns 0=C2=A0 carrier 0=C2=A0 collisions=
 0
>
> lo: flags=3D73<UP,LOOPBACK,RUNNING>=C2=A0 mtu 65536
>
> inet 127.0.0.1=C2=A0 netmask 255.0.0.0
>
> inet6 ::1=C2=A0 prefixlen 128=C2=A0 scopeid 0x10<host>
>
> loop=C2=A0 txqueuelen 1000=C2=A0 (Local Loopback)
>
> RX packets 250=C2=A0 bytes 22074 (22.0 KB)
>
> RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=C2=A0 frame 0
>
> TX packets 250=C2=A0 bytes 22074 (22.0 KB)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0TX errors 0=C2=A0 dropped 0 overrun=
s 0=C2=A0 carrier 0 collisions 0
>
> Apparently, the Virtualbox is not recognizing the Ettus N320!
>
> Looking forward to your kind advice.
>
> Regards,
>
> Thangaraj
>
> *Von:*markus.freund@etit.tu-chemnitz.de=20
> <markus.freund@etit.tu-chemnitz.de>
> *Gesendet:* Freitag, 24. September 2021 07:47
> *An:* usrp-users@lists.ettus.com
> *Betreff:* [USRP-users] Re: Help_Failed to build UHD in Ubuntu 20.04
>
> Hello Thangaraj,
>
> you need to check the=C2=A0 IP-Address of the virtual machine. There=E2=
=80=99s two=20
> different addresses for each SFP on the USRP device. They are=20
> depending on both the port and the speed. On mine (X310) they are=20
> 192.168.10.2 for the 1GBit/s and 192.168.30.2 or 192.168.40.2. =C2=A0I=20
> guess it is the same with yours. You can first try to ping the device=20
> both on the host and the VM.
>
> Best Markus
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
Your PING example is pinging the IP address of the host, NOT the USRP=20
N320.=C2=A0 This will always succeed.

You'll need to change the IP address of that network interface to=20
192.168.10.1, so that it is on the same subnet as the USRP N320 default=20
address for the SFP0 port
 =C2=A0 of 192.168.10.2.

Please read:

https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Probe=
_the_USRP



--------------A773EC2839F519647158356B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-24 5:06 a.m., Thangaraj
      Mukara Dhakshinamoorthy wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:f033c3497b9948beb010df9452c3184a@komro.net">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}p.msonormal0, li.msonormal0, div.ms=
onormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}span.E-MailFormatvorlage19
	{mso-style-type:personal-reply;
	font-family:"Verdana",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Hallo
            Markus,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">The
            VM is not recognizing the Ettus N320, but the windows host
            can see and ping successfully!<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><b><u><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">In
                Windows Host OS:<o:p></o:p></span></u></b></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow;mso-fareast-language:EN-US">C:\Program
            Files\UHD\bin&gt;ipconfig</span><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Windows-IP-Konfiguration<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Unbekannter
            Adapter Management:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0
            Verbindungsspezifisches DNS-Suffix:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0
            IPv4-Adresse=C2=A0 . . . . . . . . . . : 10.2.35.84<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0
            Subnetzmaske=C2=A0 . . . . . . . . . . : 255.255.255.255<o:p>=
</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0
            Standardgateway . . . . . . . . . :<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Ethernet-Adapter
            Ethernet:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0
            Verbindungsspezifisches DNS-Suffix: fritz.box<o:p></o:p></spa=
n></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0
            Verbindungslokale IPv6-Adresse=C2=A0 . :
            fe80::e868:6c6:349a:434e%14<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0
            IPv4-Adresse=C2=A0 . . . . . . . . . . : 192.168.178.43<o:p><=
/o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0
            Subnetzmaske=C2=A0 . . . . . . . . . . : 255.255.255.0<o:p></=
o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0
            Standardgateway . . . . . . . . . : 192.168.178.1<o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Ethernet-Adapter
            VirtualBox Host-Only Network:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0
            Verbindungsspezifisches DNS-Suffix:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0
            Verbindungslokale IPv6-Adresse=C2=A0 . :
            fe80::68b9:4e91:4875:8e30%9<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0
            IPv4-Adresse=C2=A0 . . . . . . . . . . : 192.168.56.1<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0
            Subnetzmaske=C2=A0 . . . . . . . . . . : 255.255.255.0<o:p></=
o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0
            Standardgateway . . . . . . . . . :<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow;mso-fareast-language:EN-US">Ethernet-A=
dapter
            Ethernet 2:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow;mso-fareast-language:EN-US"><o:p>=C2=A0=
</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow;mso-fareast-language:EN-US">=C2=A0=C2=A0
            Verbindungsspezifisches DNS-Suffix:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow;mso-fareast-language:EN-US">=C2=A0=C2=A0
            Verbindungslokale IPv6-Adresse=C2=A0 . :
            fe80::ec39:375b:1411:4ebb%4<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow;mso-fareast-language:EN-US">=C2=A0=C2=A0
            IPv4-Adresse (Auto. Konfiguration):
            <b>169.254.78.187</b><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow;mso-fareast-language:EN-US">=C2=A0=C2=A0
            Subnetzmaske=C2=A0 . . . . . . . . . . : 255.255.0.0<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow;mso-fareast-language:EN-US">=C2=A0=C2=A0
            Standardgateway . . . . . . . . . :</span><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow;mso-fareast-language:EN-US">C:\Program
            Files\UHD\bin&gt;ping 169.254.78.187</span><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Ping
            wird ausgef=C3=BChrt f=C3=BCr 169.254.78.187 mit 32 Bytes Dat=
en:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Antwort
            von 169.254.78.187: Bytes=3D32 Zeit&lt;1ms TTL=3D128<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Antwort
            von 169.254.78.187: Bytes=3D32 Zeit&lt;1ms TTL=3D128<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Antwort
            von 169.254.78.187: Bytes=3D32 Zeit&lt;1ms TTL=3D128<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Antwort
            von 169.254.78.187: Bytes=3D32 Zeit&lt;1ms TTL=3D128<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Ping-Statistik
            f=C3=BCr 169.254.78.187:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0=C2=A0
            Pakete: Gesendet =3D 4, Empfangen =3D 4, Verloren =3D 0<o:p><=
/o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0=C2=A0
            (0% Verlust),<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Ca.
            Zeitangaben in Millisek.:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0=C2=A0
            Minimum =3D 0ms, Maximum =3D 0ms, Mittelwert =3D 0ms<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow;mso-fareast-language:EN-US">C:\Program
            Files\UHD\bin&gt;uhd_find_devices.exe</span><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">[INFO]
            [UHD] Win32; Microsoft Visual C++ version 14.1;
            Boost_107000; UHD_4.1.0.1-release<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">[ERROR]
            [X300] X300 Network discovery error receive_from: Eine
            vorhandene Verbindung wurde vom Remotehost geschlossen<o:p></=
o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">[ERROR]
            [UHD] Device discovery error: receive_from: Eine vorhandene
            Verbindung wurde vom Remotehost geschlossen<o:p></o:p></span>=
</p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">[ERROR]
            [UHD] Device discovery error: receive_from: Eine vorhandene
            Verbindung wurde vom Remotehost geschlossen<o:p></o:p></span>=
</p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">No
            UHD Devices Found<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">[ERROR]
            [UHD] Device discovery error: receive_from: Eine vorhandene
            Verbindung wurde vom Remotehost geschlossen<o:p></o:p></span>=
</p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow;mso-fareast-language:EN-US">C:\Program
            Files\UHD\bin&gt;uhd_usrp_probe.exe</span><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">[INFO]
            [UHD] Win32; Microsoft Visual C++ version 14.1;
            Boost_107000; UHD_4.1.0.1-release<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Error:
            LookupError: KeyError: No devices found for -----&gt;<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Empty
            Device Address<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><b><u><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">In
                Virtualbox Ubuntu Guest OS:<o:p></o:p></span></u></b></p>
        <p class=3D"MsoNormal"><b><u><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p><span
                    style=3D"text-decoration:none">=C2=A0</span></o:p></s=
pan></u></b></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow;mso-fareast-language:EN-US">thangz@tha=
ngz-VirtualBox:~/Desktop$
            ifconfig</span><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">enp0s3:
            flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;=C2=A0 mtu =
1500<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            inet 10.0.2.15=C2=A0 netmask 255.255.255.0=C2=A0 broadcast 10=
.0.2.255<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            inet6 fe80::99d7:4c84:8bab:2aff=C2=A0 prefixlen 64=C2=A0 scop=
eid
            0x20&lt;link&gt;<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            ether 08:00:27:89:05:93=C2=A0 txqueuelen 1000=C2=A0 (Ethernet=
)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            RX packets 1179=C2=A0 bytes 1293603 (1.2 MB)<o:p></o:p></span=
></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=C2=A0 frame 0<o:=
p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            TX packets 757=C2=A0 bytes 79260 (79.2 KB)<o:p></o:p></span><=
/p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            TX errors 0=C2=A0 dropped 0 overruns 0=C2=A0 carrier 0=C2=A0 =
collisions 0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">lo:
            flags=3D73&lt;UP,LOOPBACK,RUNNING&gt;=C2=A0 mtu 65536<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            inet 127.0.0.1=C2=A0 netmask 255.0.0.0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            inet6 ::1=C2=A0 prefixlen 128=C2=A0 scopeid 0x10&lt;host&gt;<=
o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            loop=C2=A0 txqueuelen 1000=C2=A0 (Local Loopback)<o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            RX packets 250=C2=A0 bytes 22074 (22.0 KB)<o:p></o:p></span><=
/p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            RX errors 0=C2=A0 dropped 0=C2=A0 overruns 0=C2=A0 frame 0<o:=
p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            TX packets 250=C2=A0 bytes 22074 (22.0 KB)<o:p></o:p></span><=
/p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">=C2=A0
            =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0TX errors 0=C2=A0 dropped=
 0 overruns 0=C2=A0 carrier 0=C2=A0
            collisions 0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow;mso-fareast-language:EN-US">Apparently=
,
            the Virtualbox is not recognizing the Ettus N320!</span><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Looking
            forward to your kind advice.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Regards,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Thangaraj<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><b><span
              style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,s=
ans-serif">Von:</span></b><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">
            <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:markus.f=
reund@etit.tu-chemnitz.de">markus.freund@etit.tu-chemnitz.de</a>
            <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:markus.freu=
nd@etit.tu-chemnitz.de">&lt;markus.freund@etit.tu-chemnitz.de&gt;</a>
            <br>
            <b>Gesendet:</b> Freitag, 24. September 2021 07:47<br>
            <b>An:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mail=
to:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
            <b>Betreff:</b> [USRP-users] Re: Help_Failed to build UHD in
            Ubuntu 20.04<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p style=3D"margin-bottom:12.0pt">Hello Thangaraj,<o:p></o:p></p>
        <p>you need to check the=C2=A0 IP-Address of the virtual machine.
          There=E2=80=99s two different addresses for each SFP on the USR=
P
          device. They are depending on both the port and the speed. On
          mine (X310) they are 192.168.10.2 for the 1GBit/s and
          192.168.30.2 or 192.168.40.2. =C2=A0I guess it is the same with
          yours. You can first try to ping the device both on the host
          and the VM.<o:p></o:p></p>
        <p>=C2=A0<o:p></o:p></p>
        <p>Best Markus<o:p></o:p></p>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    Your PING example is pinging the IP address of the host, NOT the
    USRP N320.=C2=A0 This will always succeed.<br>
    <br>
    You'll need to change the IP address of that network interface to
    192.168.10.1, so that it is on the same subnet as the USRP N320
    default address for the SFP0 port<br>
    =C2=A0 of 192.168.10.2.<br>
    <br>
    Please read:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP_N300=
/N310/N320/N321_Getting_Started_Guide#Probe_the_USRP">https://kb.ettus.co=
m/USRP_N300/N310/N320/N321_Getting_Started_Guide#Probe_the_USRP</a><br>
    <br>
    <br>
  </body>
</html>

--------------A773EC2839F519647158356B--

--===============1441235587551994395==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1441235587551994395==--
