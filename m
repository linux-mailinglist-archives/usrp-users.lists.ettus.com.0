Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E786B1A2B8B
	for <lists+usrp-users@lfdr.de>; Wed,  8 Apr 2020 23:56:03 +0200 (CEST)
Received: from [::1] (port=58176 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jMIfx-0003zP-SA; Wed, 08 Apr 2020 17:56:01 -0400
Received: from mail-ot1-f52.google.com ([209.85.210.52]:45641)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1jMIfu-0003ss-AK
 for usrp-users@lists.ettus.com; Wed, 08 Apr 2020 17:55:58 -0400
Received: by mail-ot1-f52.google.com with SMTP id 60so5537523otl.12
 for <usrp-users@lists.ettus.com>; Wed, 08 Apr 2020 14:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/4FusAS/OflpYGJMN5hC0BUghvTKz5VvaLsNjkjuINo=;
 b=YydyBIuuGlhLJ4xe2KSRhyTcPV6KWqUU6sDCoFTIy7JeRetdcyAqgscNGTMnp0Tp6t
 7qoGxHbBLBxkk3+lBPHv9Z9FW6RDc22sDL0v31JfbARpq7wjP8osRPPvXMW8gAqDR22h
 P4pawk6VAFM8djGWIMr6xoiGkKW0s5qHp7SwCq7y8FuwXjCi+lQkj48gEaaKY3D+uUkQ
 egQGCbWE5F/RxPnyjQ8G52KgZZMw6hzdU45uEyA8WboAYSefqv9NIWFdnQH29g5v7k3v
 1tl2fA48RW3yZG+SvPn459VVjQMF8SMs1AW50pb3ueOE6e36VVKY9SHMspe1s9nVoBfr
 DE5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/4FusAS/OflpYGJMN5hC0BUghvTKz5VvaLsNjkjuINo=;
 b=eQ9g12aQ0Ks3D9VOcyw7nBxPgDsKojein5Y4pJ797x/daX6WXyLY7Wsh3Z52Nus378
 IzJjyA9rFNPECiUW9JXRgeXgo3pisZrR1WAfmBovAjKuxAzSEfVQU6viXeRkJ8Oiolhb
 xKrfTz/d9VRgBSMJlZDPkImo9YXy7xvebPu5UIx8osPpcTOL3zaMaT6K5heMptcZd+Fb
 O76l4G9GhifyYcrN73dGJVeBGse/VWbTx2vyBx71Dm0pNNCYGsCzH3FwpG5N8CLDkKdR
 5NxsJqzJZw0K2di2JHb3HJIiFKpzHFLdqxpgYs3lzrx5+7Ca+Ykom/GkzfRPNxiw9b9x
 DlsA==
X-Gm-Message-State: AGi0PuaWE8uziUeaz1KZIy76KWvdcJM5BTs3MSA1NR6btViJDtXPIE2x
 MIXFPG75S8At2kAoYfJAZ7v938o8AYanRhX6mY8=
X-Google-Smtp-Source: APiQypJ1ExNFHKTTLS/oBjUOVvlZBJHI00lJBSNqw96aLFImi0AAd1eq+xpw8EFDG1YIuMtxQOXX7yRpxMZSxldJF6E=
X-Received: by 2002:a4a:3ed7:: with SMTP id t206mr7619422oot.61.1586382917572; 
 Wed, 08 Apr 2020 14:55:17 -0700 (PDT)
MIME-Version: 1.0
References: <5e8e46e6.1c69fb81.932e0.0af0SMTPIN_ADDED_MISSING@mx.google.com>
In-Reply-To: <5e8e46e6.1c69fb81.932e0.0af0SMTPIN_ADDED_MISSING@mx.google.com>
Date: Wed, 8 Apr 2020 17:55:06 -0400
Message-ID: <CAEXYVK5BR_Rx9UUCN6X3+GENqhSkD3j1wwtDJ3PqU9xabBW_sw@mail.gmail.com>
To: "Tillson, Bob (US)" <robert.tillson@baesystems.com>
Subject: Re: [USRP-users] UBX 10-500 MHz Question
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "usrp-users \(usrp-users@lists.ettus.com\)" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9201908324562708183=="
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

--===============9201908324562708183==
Content-Type: multipart/alternative; boundary="000000000000479dd605a2ce8e37"

--000000000000479dd605a2ce8e37
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 8, 2020 at 5:49 PM Tillson, Bob (US) via USRP-users <
usrp-users@lists.ettus.com> wrote:

> so with the UBX-160 on an X310, there is the following caveat:
>
>
>
> * The UBX 160 transmitter path has 160 MHz of bandwidth throughout the
> full frequency range of the device; the receiver path has 84 MHz of
> bandwidth for center frequencies from 10 MHz to 500 MHz.
>
>
>
> I guess my question is how does this manifest itself?
>

Check the schematic block diagram:

  https://files.ettus.com/schematics/ubx/ubx.pdf


>
>
> If I ask for 100 MHz of BW, do I get 84 or does it fail?
>
>
>
> How would I get 84 given the requirement of sample rate be an even diviso=
r
> of 200 MHz clock?
>
>
>
> If I wanted 100 in that range, would there be any way to get it from a
> single channel in that band?  Most other cards don=E2=80=99t seem to have=
 the BW in
> that range.
>

It shouldn't fail, and you will just get filtered output.  They're just
analog filters in the signal path.

Brian

--000000000000479dd605a2ce8e37
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Apr 8, 2020 at 5:49 PM Tillson, B=
ob (US) via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">us=
rp-users@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-8306936781498416835WordSection1">
<p class=3D"MsoNormal">so with the UBX-160 on an X310, there is the followi=
ng caveat:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:13.5pt;font-family:Arial,sa=
ns-serif;color:rgb(51,51,51)">* The UBX 160 transmitter path has 160 MHz of=
 bandwidth throughout the full frequency range of the device; the receiver =
path has 84 MHz of bandwidth for center
 frequencies from 10 MHz to 500 MHz.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I guess my question is how does this manifest itself=
?</p></div></div></blockquote><div><br></div><div>Check the schematic block=
 diagram:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://files.ett=
us.com/schematics/ubx/ubx.pdf">https://files.ettus.com/schematics/ubx/ubx.p=
df</a></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div lang=3D"EN-US"><div class=3D"gmail-m_-8306936781498416835WordSecti=
on1"><p class=3D"MsoNormal"><u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">If I ask for 100 MHz of BW, do I get 84 or does it f=
ail?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">How would I get 84 given the requirement of sample r=
ate be an even divisor of 200 MHz clock?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">If I wanted 100 in that range, would there be any wa=
y to get it from a single channel in that band?=C2=A0 Most other cards don=
=E2=80=99t seem to have the BW in that range.</p></div></div></blockquote><=
div><br></div><div>It shouldn&#39;t fail, and you will just get filtered ou=
tput.=C2=A0 They&#39;re just analog filters in the signal path.</div><div><=
br></div><div>Brian</div></div></div>

--000000000000479dd605a2ce8e37--


--===============9201908324562708183==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9201908324562708183==--

