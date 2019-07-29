Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5340878BBF
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2019 14:27:03 +0200 (CEST)
Received: from [::1] (port=45234 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hs4k1-0003Oz-73; Mon, 29 Jul 2019 08:27:01 -0400
Received: from mail-ed1-f49.google.com ([209.85.208.49]:36838)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bertolini.rodolphe@gmail.com>)
 id 1hs4jx-0003Km-En
 for usrp-users@lists.ettus.com; Mon, 29 Jul 2019 08:26:57 -0400
Received: by mail-ed1-f49.google.com with SMTP id k21so59163381edq.3
 for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2019 05:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+XyS0MuqWqPwQ5/kDoSld6/Mjja14POqZH+hAHKHAF0=;
 b=SRcCodrS5eESd5/0czwckN6V87T0jM1e4jzgvaUQdzjoJOBt1pmq/1kSHiglTzSRnl
 5N2fdiOK0HXa390CFeOX+djnZUeY4r1PjKWsHzXc+2ooTnD3i0xq/I3o9YVCSMAvlFTl
 AepdB+7xdGwAGac62ZaC6CqPG6OhzOKau2WdNeVWvY756oH0AZ9QPH8aW5TM3bovV94i
 nDUxhnMuVCHmDIgDkY3WYolM9KpTrLMPghIahzZxkhS1ce+M2JouhRf0A39kDtAb2DeA
 EFfnpJ2YyDcCA5CFZmesLgNSbagzVasXKeB24nJSxAE18iZfTY9ibvVZlHm/0AUFgsre
 IfEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+XyS0MuqWqPwQ5/kDoSld6/Mjja14POqZH+hAHKHAF0=;
 b=qJgcEKBW4OtGX5ZXsfZzY8CRWjrIH+mD8mJFxn3XnubecuKr6Dp3VLA/2b9D0x2Mf/
 9LBFPKfMLjVAalcjbN8bpc1qd03ExSkI4iU4+mrARQjx3oeMeUslUldMS/QaFbfAMQLd
 qPJjk8qQtgAwzkjY/wdMHKS1Stf2kMAI7UC5KHtL/yQwh3cMrX4nGHAIRb3B4CDwT6GJ
 5vOtXqbJdHiohv3Kg6hNdHCEZPya8HQVS+7QDumns/x1siiz1TNuv3G+rVJs+sSv3ZGo
 sAVNcVVijMJndHkiGVkvMbChRFG5+gnyFrZ8LSzQxXz5IWwMgCvDXK3gJZSXGd2nqJr9
 9Ulg==
X-Gm-Message-State: APjAAAU2OGGCjbGfA3d1TWoMTDwHpft3YPqDx7eobAyuu44s+tzjxNYB
 Q/OM9tcnjSK7DfOqbeiDau0AjcIJ3qsUyu2WX+UeYQ==
X-Google-Smtp-Source: APXvYqyCWhEFr6VcgTsiPoIDx1Cf1Da8EwfsvlJkdds6r1Ru08mp5NaAceSgXp7DmTaRk8OMIQ2sFGbdQyhaBrionOk=
X-Received: by 2002:a17:906:4e8f:: with SMTP id
 v15mr82995951eju.47.1564403176386; 
 Mon, 29 Jul 2019 05:26:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAKaLowRdx_s9nF2bg+s4=iTmfREBvKfwUV0pD3mqF-Y219r0=w@mail.gmail.com>
 <CAEXYVK6WSc77QJACE+kxjAFVzwk3oPd5fCWcWZ1aJTcMZ5VWbA@mail.gmail.com>
In-Reply-To: <CAEXYVK6WSc77QJACE+kxjAFVzwk3oPd5fCWcWZ1aJTcMZ5VWbA@mail.gmail.com>
Date: Mon, 29 Jul 2019 14:26:05 +0200
Message-ID: <CAKaLowRDOFGUQnYsRbnunSFdnEk8XwZASZ_XPaCw+x0XuK41qQ@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Subject: Re: [USRP-users] UHD not showing USB version through which my X310
 is connected
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
From: Rodolphe Bertolini via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rodolphe Bertolini <bertolini.rodolphe@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0833505559156021781=="
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

--===============0833505559156021781==
Content-Type: multipart/alternative; boundary="0000000000009d34a7058ed0ff32"

--0000000000009d34a7058ed0ff32
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Brian, Sam,

Thank you for your replies.
Indeed I am using  a USB =E2=87=94 RJ45 dongle. Its "USB 3.0" LED blinks bu=
t I
wasn't sure if I could trust this information or not. If X310 doesn't know
what is over the RJ45 connection (which totally makes sense once I think
about it ...), then I have no other choice than trusting it.

As for why am I doing this : my workstation has only one network card, its
RJ45 port is already used and I cannot get rid of this connection. I am
working on OpenAirInterface that interacts with USRP through UHD.

Regards,
Rodolphe Bertolini

Le mer. 24 juil. 2019 =C3=A0 16:51, Brian Padalino <bpadalino@gmail.com> a
=C3=A9crit :

> On Wed, Jul 24, 2019 at 8:11 AM Rodolphe Bertolini via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> I apologize if this is a duplicated email.
>>
>> Hello community,
>>
>> uhd_usrp_probe (and all the others commands) doesn't log the USB version
>> to which the USRP is operating.
>>
>> Instead it gives me the following:
>>
>> $ uhd_usrp_probe
>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.=
14.1.0-release
>> [INFO] [X300] X300 initialization sequence...
>> [INFO] [X300] Maximum frame size: 1472 bytes.
>> [INFO] [X300] Radio 1x clock: 200 MHz
>> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000=
000)
>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
>> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD10000000000=
1)
>> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD10000000000=
1)
>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
>> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
>> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
>>   _____________________________________________________
>>  /
>> |       Device: X-Series Device
>> |     _____________________________________________________
>> |    /
>> |   |       Mboard: X310
>> |   |   revision: 11
>> |   |   revision_compat: 7
>> [...]
>>
>> Any thought?
>>
>
> The X310 has a USB JTAG connection but that isn't really handled through
> UHD.
>
> What are you hoping to do over USB with UHD on an X310?
>
> Brian
>

--0000000000009d34a7058ed0ff32
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Brian, Sam,<div><br></div><div>Thank you for your replies.=
</div><div>Indeed I am using=C2=A0 a USB =E2=87=94 RJ45 dongle. Its &quot;U=
SB 3.0&quot; LED blinks but I wasn&#39;t sure if I could trust this informa=
tion or not. If X310 doesn&#39;t know what is over the RJ45 connection (whi=
ch totally makes sense once I think about it ...), then I have no other cho=
ice than trusting it.</div><div><br></div><div>As for why am I doing this :=
 my workstation has only one network card, its RJ45 port is already used an=
d I cannot get rid of this connection. I am working on OpenAirInterface tha=
t interacts with USRP through UHD.</div><div><br></div><div>Regards,</div><=
div>Rodolphe Bertolini</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Le=C2=A0mer. 24 juil. 2019 =C3=A0=C2=A016:51,=
 Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.=
com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Wed, Jul 24, 2019 at 8=
:11 AM Rodolphe Bertolini via USRP-users &lt;<a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:=
<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">I apologize if this is a dupl=
icated email.</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Hello commun=
ity,<div><br></div><div>uhd_usrp_probe (and all the others commands) doesn&=
#39;t log the USB version to which the USRP is operating.</div><div><br></d=
iv><div>Instead it gives me the following:</div><div><pre style=3D"white-sp=
ace:pre-wrap">$ uhd_usrp_probe=20
[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.14.=
1.0-release
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
  _____________________________________________________
 /
|       Device: X-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: X310
|   |   revision: 11
|   |   revision_compat: 7
[...]</pre></div><div>Any thought?</div></div></div></blockquote><div><br><=
/div><div>The X310 has a USB JTAG connection but that isn&#39;t really hand=
led through UHD.</div><div><br></div><div>What are you hoping to do over US=
B with UHD on an X310?</div><div><br></div><div>Brian</div></div></div>
</blockquote></div>

--0000000000009d34a7058ed0ff32--


--===============0833505559156021781==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0833505559156021781==--

