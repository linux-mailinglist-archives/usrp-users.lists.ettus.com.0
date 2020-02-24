Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEEF16AFA6
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2020 19:48:47 +0100 (CET)
Received: from [::1] (port=33222 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6Imc-0005gw-3L; Mon, 24 Feb 2020 13:48:46 -0500
Received: from mail-ot1-f44.google.com ([209.85.210.44]:38997)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <neel.pandeya@ettus.com>)
 id 1j6ImY-0005Yr-FX
 for usrp-users@lists.ettus.com; Mon, 24 Feb 2020 13:48:42 -0500
Received: by mail-ot1-f44.google.com with SMTP id 77so9686152oty.6
 for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2020 10:48:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cmYaKi+HaUSAhoaVfKSvwmSRo0/OUq5BuX5LjnzNNvw=;
 b=L9XUuQUKxfKhWpfLBm2LI7Hgi3GSbMeGqbowSETXZS5Irh+F9Sc2SdBi6aL3yS+6q3
 x5owLFCglWOpGYPxD9TmngXFGPv0Ktc0MTjC09fH/Canw1837kvB+BDrKmiHlsyTm+iA
 RDQio2kAlUOqbzRcjZABBQaq8fUBa1Dx6IAmX/TROn1I1TIeEnh9h9dbkQYEwx5ElY1X
 M0hMRt/NjBKMtXQE6btsUfPKVjkvXHtD0CU9NuwVi7ZWbZ5gutuDTcmDoJ2/eupACuce
 ODAedX8mv5mtwerEI02y4/xbipfk4t1Y8K/i6kl5WDvw9ppk4AV2scWsXxeoBHtzXyUV
 gwfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cmYaKi+HaUSAhoaVfKSvwmSRo0/OUq5BuX5LjnzNNvw=;
 b=NetpMt0AqmA2P+OlPQP2HDBehfJei11wkCuY6qBdSRBc/S32CoMg4jRZWt5ZpNAh8h
 KMDTB1neIVN9ZIaHZgze07f8wx/KjqfaVRQVpTHFXX+lEBh4sD3fTnVIfG9TaqGEthej
 Xfp7eoIeesFbB14heCTVbgisW7vNu1My8apbZkz52q1VWJy+cstyzYIsru4bK7AiEhO9
 BEAYKdrZfgBXAznFVaMWUW9aMTI8PRvnyIaGIP0AQhCwe11v7TsF2zfG1UN387ceAdri
 1UwZsoxLmE1+HXfzPKZ4c56GHGTJmOLOE8/rYAOdor6JI9MqSKZsq29tcLzKz7a/hF64
 tVZg==
X-Gm-Message-State: APjAAAWFNHjcNBaWSq8qVz0UqPcw1ePQ3eTbI5MNoiZXLrxuP8qD6J/3
 2zrEUKJe80NPqV3Br+Ew/SdzHEKgif7rHNbdWhFRtSDz
X-Google-Smtp-Source: APXvYqykJ4MBl0p8FJVue1SiGmPvlFF9cFPJvejosEab5iGpj00J9/+XGhlZ9UuSt/6bI658TYqeI2T2pUxjhRVUJhE=
X-Received: by 2002:a9d:6647:: with SMTP id q7mr43043599otm.35.1582570081754; 
 Mon, 24 Feb 2020 10:48:01 -0800 (PST)
MIME-Version: 1.0
References: <trinity-dcbc347f-cd14-4dcb-890c-9783cc458a06-1582568562308@3c-app-gmx-bs61>
 <CAKJyDk+=5pTvDycx5hWuesTJCZCnX6m-ydEH6d1KtPaMT238pA@mail.gmail.com>
In-Reply-To: <CAKJyDk+=5pTvDycx5hWuesTJCZCnX6m-ydEH6d1KtPaMT238pA@mail.gmail.com>
Date: Mon, 24 Feb 2020 12:47:25 -0600
Message-ID: <CACaXmv8xBkTaWyph1kOxg_pUirLLqWpbS1Pe2cp0O=pZpHS-6w@mail.gmail.com>
To: Lukas Haase <lukashaase@gmx.at>
Subject: Re: [USRP-users] USRP X310 over PCIe: Recommended setup? (Windows,
 Linux, which one?)
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1939159244179661462=="
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

--===============1939159244179661462==
Content-Type: multipart/alternative; boundary="0000000000008e2e28059f56cffa"

--0000000000008e2e28059f56cffa
Content-Type: text/plain; charset="UTF-8"

Hello Lukas:

Do you have the option of using 10 Gbps Ethernet?

It will provide you the equivalent performance on the X300/X310 as the PCIe
interface.

The Intel X710-DA2 network card works very well out-of-the-box with Ubuntu
18.04 and 19.10.

Most people using Linux and GNU Radio with the X300/X310 use Ethernet,
instead of PCIe.

--Neel Pandeya



On Mon, 24 Feb 2020 at 12:38, Robin Coxe via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Lukas.   Most USRP X310 Linux users employ 10gigE to connect to the
> host PC.  PCIe on the USRP X310 uses a proprietary ASIC and the driver is,
> as you discovered, built on an obsolete kernel.  You could attempt to
> appeal directly to NI for support if switching to 10 gigE isn't an option
> for you.
>
> -Robin
>
>
> On Mon, Feb 24, 2020 at 10:23 AM Lukas Haase via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>>
>> I have used USRP X310 over PCIe and gnuradio on Windows for quite a bit.
>> I suffered from large connectivity issues so I wanted to switch to Linux
>> for quite some time. Also, I need to start modifying gnuradio/uhd source
>> which is even more painful in Windows.
>>
>> I set up an Ubuntu 18.04 system (which is not exactly new) and in the
>> last step Linux NI RIO Installation fails. And
>> https://files.ettus.com/manual/page_ni_rio_kernel.html states:
>> "Currently, the latest supported kernel version is 4.2.x.". What a bummer!
>>
>> Is there any way to get USRP X310 + PCIe working on Ubuntu 18.04?
>> If not, what is the recommended setup when someone needs PCIe, gnuradio,
>> source code?
>> I would really prefer a Debian-like Linux system that's not completely
>> outdated (such as pre-bionic).
>>
>> Best,
>> Lukas
>>
>>
>> PS:
>>
>> $ lsb_release -a
>> No LSB modules are available.
>> Distributor ID: Ubuntu
>> Description:    Ubuntu 18.04.4 LTS
>> Release:        18.04
>> Codename:       bionic
>> $ uname -a
>> Linux station 5.3.0-40-generic #32~18.04.1-Ubuntu SMP Mon Feb 3 14:05:59
>> UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000008e2e28059f56cffa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hello Lukas:</div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-family:verdana,sans-serif">Do you have the option of using 10 Gbps Ether=
net?</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sa=
ns-serif">It will provide you the equivalent performance on the X300/X310 a=
s the PCIe interface.</div><div class=3D"gmail_default" style=3D"font-famil=
y:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-=
family:verdana,sans-serif">The Intel X710-DA2 network card works very well =
out-of-the-box with Ubuntu 18.04 and 19.10.</div><div class=3D"gmail_defaul=
t" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_d=
efault" style=3D"font-family:verdana,sans-serif">Most people using Linux an=
d GNU Radio with the X300/X310 use Ethernet, instead of PCIe.<br></div><div=
 class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div=
><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">--Ne=
el Pandeya</div><div class=3D"gmail_default" style=3D"font-family:verdana,s=
ans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:verd=
ana,sans-serif"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Mon, 24 Feb 2020 at 12:38, Robin Coxe via USRP=
-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr">Hi Lukas.=C2=A0 =C2=A0Most USRP X310 Linux users e=
mploy 10gigE to connect to the host PC.=C2=A0 PCIe on the USRP X310 uses a =
proprietary ASIC and the driver is, as you discovered, built on an obsolete=
 kernel.=C2=A0 You could attempt to appeal directly to NI for support if sw=
itching to 10 gigE isn&#39;t an option for you.<div><br></div><div>-Robin<b=
r><div><br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Mon, Feb 24, 2020 at 10:23 AM Lukas Haase via USR=
P-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"=
>usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">Hi,<br>
<br>
I have used USRP X310 over PCIe and gnuradio on Windows for quite a bit. I =
suffered from large connectivity issues so I wanted to switch to Linux for =
quite some time. Also, I need to start modifying gnuradio/uhd source which =
is even more painful in Windows.<br>
<br>
I set up an Ubuntu 18.04 system (which is not exactly new) and in the last =
step Linux NI RIO Installation fails. And <a href=3D"https://files.ettus.co=
m/manual/page_ni_rio_kernel.html" rel=3D"noreferrer" target=3D"_blank">http=
s://files.ettus.com/manual/page_ni_rio_kernel.html</a> states: &quot;Curren=
tly, the latest supported kernel version is 4.2.x.&quot;. What a bummer!<br=
>
<br>
Is there any way to get USRP X310 + PCIe working on Ubuntu 18.04?<br>
If not, what is the recommended setup when someone needs PCIe, gnuradio, so=
urce code?<br>
I would really prefer a Debian-like Linux system that&#39;s not completely =
outdated (such as pre-bionic).<br>
<br>
Best,<br>
Lukas<br>
<br>
<br>
PS:<br>
<br>
$ lsb_release -a<br>
No LSB modules are available.<br>
Distributor ID: Ubuntu<br>
Description:=C2=A0 =C2=A0 Ubuntu 18.04.4 LTS<br>
Release:=C2=A0 =C2=A0 =C2=A0 =C2=A0 18.04<br>
Codename:=C2=A0 =C2=A0 =C2=A0 =C2=A0bionic<br>
$ uname -a<br>
Linux station 5.3.0-40-generic #32~18.04.1-Ubuntu SMP Mon Feb 3 14:05:59 UT=
C 2020 x86_64 x86_64 x86_64 GNU/Linux<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000008e2e28059f56cffa--


--===============1939159244179661462==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1939159244179661462==--

