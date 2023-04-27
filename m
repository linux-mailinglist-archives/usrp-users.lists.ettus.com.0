Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F69C6EFEF6
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 03:30:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 46AE1384111
	for <lists+usrp-users@lfdr.de>; Wed, 26 Apr 2023 21:30:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682559038; bh=IkD0XMNy8+Xb/ThlBlLlVGffJ1t0WP1nbsgJIve7pPk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=eRX4l6SU+PEYAT2cmN3LF56mW1J5nLMDo/kLDuBM102byMHAhwUgYqUXsVvHxy+83
	 f/VHF2O1a5LB48Fj/gkV67gEMRkLQIwJVBSXpGq6Nxdmp36aO1lNRi70/KRzqlGXcp
	 8zrrgRg+5nyk/F1ipo9KFa+stwQlMZbPV2AsAdBE0iD2fETk8etKOqTMkdGExeYl+O
	 2XDvkttD213+6BdKFh9HTSN/LWd2A5Lk7TAkmSMNWKNyK2b/wEdr+UA222rbbp5x2B
	 kMnmX25Ndu5YXDxsW1P96yyEvL2yRLEeabqGJPNnZzXbTnji5Ck5fdTWlAYF5Rsqpf
	 NfZhsV79vyD7g==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 5A750383F8A
	for <usrp-users@lists.ettus.com>; Wed, 26 Apr 2023 21:29:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fuONzCXF";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-751319e0dbfso78379085a.0
        for <usrp-users@lists.ettus.com>; Wed, 26 Apr 2023 18:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682558996; x=1685150996;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=deYelRcbBRDeZyiwOrASwJN14o6/TLyy1Cy5N4SokxE=;
        b=fuONzCXFhZZe7wtQtIPKtO17kD697Jljd27G/V8Rc5OOSX55fT6U7GQWrFXLEeLtNe
         CFgavAzyTWV/YxsMv3Cl+21aViCRXSqIQqIdY+sWzot4s3Bi23Zj+ygrrfRJXkXgug0r
         L4Dtfe/C9XQiMv6M5IfMJzhQVJdtMurkaiyP+DySKQ1/ete2oRPJg8gpWd5yu95i5RCr
         o7YGYKQY11mFqLTmDgdLtREx2on5U3mIG8na0Be2fTmqHBLnPKC5Nns1ZWBuT8MLaRM2
         M0H/QLkgN7Ek9Ww8SHPoPTk4P9vs/6cAi0qfgCPHepMjAXqpLtIYljqDKdIqIz7WMgzo
         Vj1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682558996; x=1685150996;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=deYelRcbBRDeZyiwOrASwJN14o6/TLyy1Cy5N4SokxE=;
        b=AvKNBKqpFv3x5K8xcJYWMd3ptnqED36YzuMfHr4y9rR6ecB01MxSsas01fCaaqwTwa
         C74RaW49REFtDdH3Fh9PFYourg9J7+FgJDJLnMM+0Jx1p1Wg10tfd0/ViFfSOxcQdJBa
         p/YbH9FdBJHDvFWRTahPbSs53xF/rHONOleL2hZ5G6CoxYYWQJUOGcua8Nyaf1Kd37SE
         HqEtsBhbhPp9FvxMqWy0xH1I+IpyJkof63N18U3uo2nPjX9flPJeo2NLB2LNOvLCZ8dd
         q6WUdQo5O8Ytk3PR6/9OsNydlG4G3UcHdANkXcZLnbKjiGF1KXBVk2ur3/tlezUlekHA
         yGhQ==
X-Gm-Message-State: AC+VfDxgYgVf5eKhdi1bGZOeVfHLkMBvnmlFHW1w4St4axbiN5VdF8CH
	87EHgkV+zsKgJvrQ+iWsdUGtrfqaAOU=
X-Google-Smtp-Source: ACHHUZ76Te3c9HInNdJqX+yUWUtStyszPUgHmdjdbXFnA68urqsFjqInIOk535aPGiqcY6563K+QdQ==
X-Received: by 2002:a05:622a:2c7:b0:3ee:dffa:5b30 with SMTP id a7-20020a05622a02c700b003eedffa5b30mr300359qtx.24.1682558996374;
        Wed, 26 Apr 2023 18:29:56 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id r2-20020a05622a034200b003ef42f84532sm5821557qtw.49.2023.04.26.18.29.55
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Apr 2023 18:29:56 -0700 (PDT)
Message-ID: <0b6be8ca-e9d1-8e9f-22d0-200e36b506f6@gmail.com>
Date: Wed, 26 Apr 2023 21:29:55 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <aSrdGeWl9EgGwP9IYIsbo0lWXd5dNgm1hp1oRcaSSA@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <aSrdGeWl9EgGwP9IYIsbo0lWXd5dNgm1hp1oRcaSSA@lists.ettus.com>
Message-ID-Hash: 4JOLYCPKIKSCLZPWQ55CK6KSLMPSB6NN
X-Message-ID-Hash: 4JOLYCPKIKSCLZPWQ55CK6KSLMPSB6NN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus N321 SFP streaming issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4JOLYCPKIKSCLZPWQ55CK6KSLMPSB6NN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8395843507272896109=="

This is a multi-part message in MIME format.
--===============8395843507272896109==
Content-Type: multipart/alternative;
 boundary="------------qORY0gaNfsGcDLf3dnWTyZ2P"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------qORY0gaNfsGcDLf3dnWTyZ2P
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/04/2023 20:26, jmaloyan@umass.edu wrote:
>
> Hello,
>
> I currently have an issue trying to stream packets through the SFP=20
> ports. Currently, when I ssh into the Ettus N321 and use ifconfig, I=20
> get the following output
>
>     eth0 Link encap:Ethernet HWaddr 00:80:2F:35:25:BE
>
>     inet addr:192.168.1.151 Bcast:192.168.1.255 Mask:255.255.255.0
>
>     UP BROADCAST RUNNING MULTICAST MTU:1500 Metric:1
>
>     RX packets:108385 errors:211 dropped:0 overruns:96 frame:115
>
>     TX packets:92510 errors:0 dropped:0 overruns:0 carrier:0
>
>     collisions:0 txqueuelen:1000
>
>     RX bytes:57550685 (54.8 MiB) TX bytes:25439541 (24.2 MiB)
>
>     Interrupt:27 Base address:0xb000
>
>
>
>     int0 Link encap:Ethernet HWaddr 6E:C0:18:F0:B5:B5
>
>     inet addr:169.254.0.1 Bcast:169.254.0.255 Mask:255.255.255.0
>
>     UP BROADCAST RUNNING MULTICAST MTU:9000 Metric:1
>
>     RX packets:5342 errors:0 dropped:0 overruns:0 frame:0
>
>     TX packets:1797 errors:0 dropped:0 overruns:0 carrier:0
>
>     collisions:0 txqueuelen:1000
>
>     RX bytes:5608732 (5.3 MiB) TX bytes:123539 (120.6 KiB)
>
>     lo Link encap:Local Loopback
>
>     inet addr:127.0.0.1 Mask:255.0.0.0
>
>     UP LOOPBACK RUNNING MTU:65536 Metric:1
>
>     RX packets:116 errors:0 dropped:0 overruns:0 frame:0
>
>     TX packets:116 errors:0 dropped:0 overruns:0 carrier:0
>
>     collisions:0 txqueuelen:1000
>
>     RX bytes:10067 (9.8 KiB) TX bytes:10067 (9.8 KiB)
>
>     sfp0 Link encap:Ethernet HWaddr 00:80:2F:35:25:BF
>
>     inet addr:192.168.10.2 Bcast:192.168.10.255 Mask:255.255.255.0
>
>     UP BROADCAST MULTICAST MTU:9000 Metric:1
>
>     RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>
>     TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
>
>     collisions:0 txqueuelen:1000
>
>     RX bytes:0 (0.0 B) TX bytes:0 (0.0 B)
>
>     sfp1 Link encap:Ethernet HWaddr 00:80:2F:35:25:C0
>
>     inet addr:192.168.20.2 Bcast:192.168.20.255 Mask:255.255.255.0
>
>     UP BROADCAST RUNNING MULTICAST MTU:9000 Metric:1
>
>     RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>
>     TX packets:28 errors:0 dropped:0 overruns:0 carrier:0
>
>     collisions:0 txqueuelen:1000
>
>     RX bytes:0 (0.0 B) TX bytes:5252 (5.1 KiB)
>
> However, when I try to stream through the address port, either sfp0 or=20
> sfp1, I get the following timeout error
>
>     [ERROR] [RFNOC::MGMT] EnvironmentError: IOError: Timed out getting
>     recv buff for management transaction
>
>     [ERROR] [RFNOC::GRAPH] IO Error during GSM initialization.
>     EnvironmentError: IOError: Timed out getting recv buff for
>     management transaction
>
>     [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
>     EnvironmentError: IOError: Timed out getting recv buff for
>     management transaction
>
> I have double checked my host computer configuration and it appears=20
> again that I am using the correct configuration.
>
> When I use =E2=80=9Cuhd_find_devices"=E2=80=9C, it appears the address =
used for data=20
> is the same that is used for management, even though my guess is the=20
> argument =E2=80=9Caddr=E2=80=9D should be either =E2=80=9C192.168.10.2=E2=
=80=9D or =E2=80=9C192.168.20.2=E2=80=9D. I=20
> believe this is probably related to the error I am receiving, however,=20
> I am unsure how to proceed from here. The output of uhd_find_devices=20
> is as follows=E2=80=A6
>
>     --------------------------------------------------
>
>     -- UHD Device 0
>
>     --------------------------------------------------
>
>     Device Address:
>
>     serial: 3255102
>
>     addr: 192.168.1.151
>
>     claimed: False
>
>     fpga: HG
>
>     mgmt_addr: 192.168.1.151
>
>     name: ni-n3xx-3255102
>
>     product: n320
>
>     type: n3xx
>
> Thanks
>
> Joe
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
When you use "find_devices", it sends out a broadcast on all the ports=20
that are "up" on your machine.=C2=A0=C2=A0=C2=A0 So, it found the
 =C2=A0 management port of your N321 at 192.168.1.151.

What happens if you:

uhd_usrp_probe --args addr=3D192.168.1.151

and then

uhd_usrp_probe --args addr=3D192.168.10.2


--------------qORY0gaNfsGcDLf3dnWTyZ2P
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/04/2023 20:26, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.ed=
u</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:aSrdGeWl9EgGwP9IYIsbo0lWXd5dNgm1hp1oRcaSSA@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello,</p>
      <p>I currently have an issue trying to stream packets through the
        SFP ports. Currently, when I ssh into the Ettus N321 and use
        ifconfig, I get the following output</p>
      <blockquote>
        <p>eth0 Link encap:Ethernet HWaddr 00:80:2F:35:25:BE </p>
        <p> inet addr:192.168.1.151 Bcast:192.168.1.255
          Mask:255.255.255.0</p>
        <p> UP BROADCAST RUNNING MULTICAST MTU:1500 Metric:1</p>
        <p> RX packets:108385 errors:211 dropped:0 overruns:96 frame:115<=
/p>
        <p> TX packets:92510 errors:0 dropped:0 overruns:0 carrier:0</p>
        <p> collisions:0 txqueuelen:1000 </p>
        <p> RX bytes:57550685 (54.8 MiB) TX bytes:25439541 (24.2 MiB)</p>
        <p> Interrupt:27 Base address:0xb000 </p>
        <p><br>
        </p>
        <p><br>
        </p>
        <p>int0 Link encap:Ethernet HWaddr 6E:C0:18:F0:B5:B5 </p>
        <p> inet addr:169.254.0.1 Bcast:169.254.0.255 Mask:255.255.255.0<=
/p>
        <p> UP BROADCAST RUNNING MULTICAST MTU:9000 Metric:1</p>
        <p> RX packets:5342 errors:0 dropped:0 overruns:0 frame:0</p>
        <p> TX packets:1797 errors:0 dropped:0 overruns:0 carrier:0</p>
        <p> collisions:0 txqueuelen:1000 </p>
        <p> RX bytes:5608732 (5.3 MiB) TX bytes:123539 (120.6 KiB)</p>
        <p>lo Link encap:Local Loopback </p>
        <p> inet addr:127.0.0.1 Mask:255.0.0.0</p>
        <p> UP LOOPBACK RUNNING MTU:65536 Metric:1</p>
        <p> RX packets:116 errors:0 dropped:0 overruns:0 frame:0</p>
        <p> TX packets:116 errors:0 dropped:0 overruns:0 carrier:0</p>
        <p> collisions:0 txqueuelen:1000 </p>
        <p> RX bytes:10067 (9.8 KiB) TX bytes:10067 (9.8 KiB)</p>
        <p>sfp0 Link encap:Ethernet HWaddr 00:80:2F:35:25:BF </p>
        <p> inet addr:192.168.10.2 Bcast:192.168.10.255
          Mask:255.255.255.0</p>
        <p> UP BROADCAST MULTICAST MTU:9000 Metric:1</p>
        <p> RX packets:0 errors:0 dropped:0 overruns:0 frame:0</p>
        <p> TX packets:0 errors:0 dropped:0 overruns:0 carrier:0</p>
        <p> collisions:0 txqueuelen:1000 </p>
        <p> RX bytes:0 (0.0 B) TX bytes:0 (0.0 B)</p>
        <p>sfp1 Link encap:Ethernet HWaddr 00:80:2F:35:25:C0 </p>
        <p> inet addr:192.168.20.2 Bcast:192.168.20.255
          Mask:255.255.255.0</p>
        <p> UP BROADCAST RUNNING MULTICAST MTU:9000 Metric:1</p>
        <p> RX packets:0 errors:0 dropped:0 overruns:0 frame:0</p>
        <p> TX packets:28 errors:0 dropped:0 overruns:0 carrier:0</p>
        <p> collisions:0 txqueuelen:1000 </p>
        <p> RX bytes:0 (0.0 B) TX bytes:5252 (5.1 KiB)</p>
      </blockquote>
      <p>However, when I try to stream through the address port, either
        sfp0 or sfp1, I get the following timeout error</p>
      <blockquote>
        <p>[ERROR] [RFNOC::MGMT] EnvironmentError: IOError: Timed out
          getting recv buff for management transaction</p>
        <p>[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization.
          EnvironmentError: IOError: Timed out getting recv buff for
          management transaction</p>
        <p>[ERROR] [RFNOC::GRAPH] Caught exception while initializing
          graph: EnvironmentError: IOError: Timed out getting recv buff
          for management transaction</p>
      </blockquote>
      <p>I have double checked my host computer configuration and it
        appears again that I am using the correct configuration. </p>
      <p>When I use =E2=80=9Cuhd_find_devices"=E2=80=9C, it appears the a=
ddress used for
        data is the same that is used for management, even though my
        guess is the argument =E2=80=9Caddr=E2=80=9D should be either =E2=
=80=9C192.168.10.2=E2=80=9D or
        =E2=80=9C192.168.20.2=E2=80=9D. I believe this is probably relate=
d to the error
        I am receiving, however, I am unsure how to proceed from here.
        The output of uhd_find_devices is as follows=E2=80=A6</p>
      <blockquote>
        <p>--------------------------------------------------</p>
        <p>-- UHD Device 0</p>
        <p>--------------------------------------------------</p>
        <p>Device Address:</p>
        <p> serial: 3255102</p>
        <p> addr: 192.168.1.151</p>
        <p> claimed: False</p>
        <p> fpga: HG</p>
        <p> mgmt_addr: 192.168.1.151</p>
        <p> name: ni-n3xx-3255102</p>
        <p> product: n320</p>
        <p> type: n3xx</p>
      </blockquote>
      <p>Thanks</p>
      <p>Joe</p>
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
    When you use "find_devices", it sends out a broadcast on all the
    ports that are "up" on your machine.=C2=A0=C2=A0=C2=A0 So, it found t=
he<br>
    =C2=A0 management port of your N321 at 192.168.1.151.<br>
    <br>
    What happens if you:<br>
    <br>
    uhd_usrp_probe --args addr=3D192.168.1.151<br>
    <br>
    and then<br>
    <br>
    uhd_usrp_probe --args addr=3D192.168.10.2<br>
    <br>
    <br>
  </body>
</html>

--------------qORY0gaNfsGcDLf3dnWTyZ2P--

--===============8395843507272896109==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8395843507272896109==--
