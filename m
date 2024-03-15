Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E6187C771
	for <lists+usrp-users@lfdr.de>; Fri, 15 Mar 2024 03:21:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 449C73852CB
	for <lists+usrp-users@lfdr.de>; Thu, 14 Mar 2024 22:21:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710469280; bh=fkH8UFL5fDrStsbDiiQzZOaKQm/cjAYpMZYQukHLnKA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=OKPxlJBslmkZYKYjuR7dDhxjvvPbDXYqBNOre4WdpzMPU+KnrPPFSV8gb9XNSOoms
	 OWGqzFyoK/NnIejdvtKaCP/XXkO50GrQb1uhqemg+MMi6bDVem52nZmoFDm/kTY2n9
	 +So9pG4sB8IsQOMSR1Q26Qu5vNmVOYHrwre7g5Mn38Az+agwCwpPBdhr0BF5cYy0FS
	 wqYDUKPwb+U4YZ2hmInRPsepn+fLkxEzW9YoGu3chfVWJsUiS0AbuS/ONg94/EscXN
	 qR5+MCYMUNMxeMRauvIeAyfO5n+aPv3m9OVhKSpPLpkLWhJB5yw+sw4VDg6V8mSNR6
	 6XxoVGaTmtGhA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mm2.emwd.com (Postfix) with ESMTPS id CB28338525E
	for <usrp-users@lists.ettus.com>; Thu, 14 Mar 2024 22:21:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=dolphinsystem-jp.20230601.gappssmtp.com header.i=@dolphinsystem-jp.20230601.gappssmtp.com header.b="Nvo/AT1B";
	dkim-atps=neutral
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-5ce12b4c1c9so1070152a12.1
        for <usrp-users@lists.ettus.com>; Thu, 14 Mar 2024 19:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dolphinsystem-jp.20230601.gappssmtp.com; s=20230601; t=1710469260; x=1711074060; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+/ssn9t3isND6lin4isxkDMDNKJdb7fuy7Ji1aWZ5lM=;
        b=Nvo/AT1Bc/shIIZi2/5tZbGvqCmgs7/uO+lCoZwzbo+kt68M1On+3wJgeoTwVZWU33
         ziqSGIvvwC/+0+tX8AK4HY+t0xWOmfKy9uTPmlZO2zFod6L4eNEZ2SGkqi4j+zo3azMa
         ifNoJW4BIob9aFQav06K8m66YUViIEQ+njl3hyoZ1BS8rPKooC2OAw8NgPZMfFTBsDLD
         SmuHdlhpUMEU9X+VgdJkaODyQUGpCwcPztaDgDrpZhn55EatZHj62G+Evp6ECuD4rfdG
         ICz3eOBm96vN9Kh/h+FV/QkxTOctxkCcaF2EiNcFs48nGQQ39oTdqbKzFlTgKoZTC7fx
         scog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710469260; x=1711074060;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+/ssn9t3isND6lin4isxkDMDNKJdb7fuy7Ji1aWZ5lM=;
        b=iKlLbqzefZLuiwr1Pu7jjlr0pAd+et1jhlNZgKyZJPz3GUaKOuEPABuhvC0gedZbGk
         jTgKfC4LQJXIJsH91QqcRmuvt1uHxS6oVcba8xws8zxMM0ZxTeE7ietV/ayXWKgYVjbY
         VDeOnBzVKjUKeO6j2kBS8ub53kZ3InTOupN4Opk8acAbj9FJ4Q1hpLpfW6Z/uQv8d6X2
         9RzB8BeCBqDl3gmhEQ1C3UXuvBdmwCnl/NQ1pyWAPpz7R1uBIVRyqVhIVumMgQTgxo6C
         L3IrrIEcgCBo70R7G92bXes0qCYMs5PO6h1bTXq9MNU4IMJuNHxgeo9a9fpmgYQJ2FUV
         F1eg==
X-Gm-Message-State: AOJu0YzV5tDDhZuplysVVyrF0v+VrVGjQmHHZdkn1OA1L8WOaTaDqTmy
	+NdO606DyAWuhzTH0ZP62o9ND2CAuHSKOgV777592Lxutyg55qJAtfSKJPx/Qk5Xh5IXMaktNGC
	WJx70wjLKhJ2UbNXPS0jkT7QafGBxfNerN6AkCbr3Sq3giH06g8E=
X-Google-Smtp-Source: AGHT+IEuz9GVy5OvTljP15ACVTAX87XvCXmK6Yec66gld1u0sS0vds2zNb/WGFa/+Z1fUIXg35uX+1SMaD8cDDxyBik=
X-Received: by 2002:a05:6a20:9184:b0:1a3:4777:7913 with SMTP id
 v4-20020a056a20918400b001a347777913mr2858770pzd.10.1710469259590; Thu, 14 Mar
 2024 19:20:59 -0700 (PDT)
MIME-Version: 1.0
References: <yNBXUYQosdUA6cLC6Z9QFc8QuvTuuIAh8Ohorf0UoU@lists.ettus.com>
In-Reply-To: <yNBXUYQosdUA6cLC6Z9QFc8QuvTuuIAh8Ohorf0UoU@lists.ettus.com>
From: Mikio Fukushima <mikio@dolphinsystem.jp>
Date: Fri, 15 Mar 2024 11:20:24 +0900
Message-ID: <CABfZwcczsGy2=ZT_bPRA3wiPMQEhvdBGQMNrFquh5uFFC62G-A@mail.gmail.com>
To: zackkomo@utexas.edu
Message-ID-Hash: PMJLJN5I65OZQDONJ2EYBRL33AQ3M5AC
X-Message-ID-Hash: PMJLJN5I65OZQDONJ2EYBRL33AQ3M5AC
X-MailFrom: mikio@dolphinsystem.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Get DPDK working with UHD 4.6 with USRP x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PMJLJN5I65OZQDONJ2EYBRL33AQ3M5AC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0001475265830557803=="

--===============0001475265830557803==
Content-Type: multipart/alternative; boundary="0000000000009e1d0d0613a9a806"

--0000000000009e1d0d0613a9a806
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Zack
your /etc/default/grub is Ok.

This problem may be caused by a NIC device driver. Can you upgrade the DPDK
version?
I use Ubuntu 22 and UHD 4.4 and DPDK 21.

Regards,


2024=E5=B9=B43=E6=9C=8814=E6=97=A5(=E6=9C=A8) 23:55 <zackkomo@utexas.edu>:

> Hi Mikio,
>
> Below are the contents of  /etc/default/grub
>
> # If you change this file, run 'update-grub' afterwards to update
>
> # /boot/grub/grub.cfg.
>
> # For full documentation of the options in this file, see:
>
> #   info -f grub -n 'Simple configuration'
>
> GRUB_DEFAULT=3D0
>
> GRUB_TIMEOUT_STYLE=3Dhidden
>
> GRUB_TIMEOUT=3D0
>
> GRUB_DISTRIBUTOR=3D`lsb_release -i -s 2> /dev/null || echo Debian`
>
> GRUB_CMDLINE_LINUX_DEFAULT=3D"quiet splash iommu=3Dpt intel_iommu=3Don hu=
gepages=3D2048 pti=3Doff spectre_v2=3Doff l1tf=3Doff nospec_store_bypass_di=
sable no_stf_barrier"
>
> GRUB_CMDLINE_LINUX=3D""
>
> # Uncomment to enable BadRAM filtering, modify to suit your needs
>
> # This works with Linux (no patch required) and with any kernel that obta=
ins
>
> # the memory map information from GRUB (GNU Mach, kernel of FreeBSD ...)
>
> #GRUB_BADRAM=3D"0x01234567,0xfefefefe,0x89abcdef,0xefefefef"
>
> # Uncomment to disable graphical terminal (grub-pc only)
>
> #GRUB_TERMINAL=3Dconsole
>
> # The resolution used on graphical terminal
>
> # note that you can use only modes which your graphic card supports via V=
BE
>
> # you can see them in real GRUB with the command `vbeinfo'
>
> #GRUB_GFXMODE=3D640x480
>
> # Uncomment if you don't want GRUB to pass "root=3DUUID=3Dxxx" parameter =
to Linux
>
> #GRUB_DISABLE_LINUX_UUID=3Dtrue
>
> # Uncomment to disable generation of recovery mode menu entries
>
> #GRUB_DISABLE_RECOVERY=3D"true"
>
> # Uncomment to get a beep at grub start
>
> #GRUB_INIT_TUNE=3D"480 440 1"
>
> I=E2=80=99m assuming you want to check the GRUB_CMDLINE_LINUX_DEFAULT? Is
> hugepages=3D2048 correct for hugepages?
>
> Thanks!
>
> Zack
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>


--=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
 =E7=A6=8F=E5=B3=B6 =E5=B9=B9=E9=9B=84 (Mikio Fukushima)
 =E6=A0=AA=E5=BC=8F=E4=BC=9A=E7=A4=BE=E3=83=89=E3=83=AB=E3=83=95=E3=82=A3=
=E3=83=B3=E3=82=B7=E3=82=B9=E3=83=86=E3=83=A0 (Dolphin System Co.,Ltd)

=E3=80=92170-0014 =E6=9D=B1=E4=BA=AC=E9=83=BD=E8=B1=8A=E5=B3=B6=E5=8C=BA=E6=
=B1=A0=E8=A2=8B=EF=BC=91=EF=BC=8D=EF=BC=98=EF=BC=8D=EF=BC=95
=E3=83=9F=E3=83=B3=E3=83=88=E3=83=AD=E3=83=B3=E3=83=93=E3=83=AB=EF=BC=95=EF=
=BC=A6

Mail: mikio@dolphinsystem.jp
URL : http://www.dolphinsystem.jp/
TEL/FAX : 03-6658-4949
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

--0000000000009e1d0d0613a9a806
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Zack<br>your /etc/default/grub is Ok.<br><div><br></div=
><div>This problem may be caused by a NIC device driver. Can you upgrade th=
e DPDK version?<br></div><div>I use Ubuntu 22 and UHD 4.4 and DPDK 21.</div=
><div><br></div><div>Regards,</div><div><br></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">2024=E5=B9=B43=E6=9C=8814=
=E6=97=A5(=E6=9C=A8) 23:55 &lt;<a href=3D"mailto:zackkomo@utexas.edu">zackk=
omo@utexas.edu</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><p>Hi Mikio,</p><p>Below are the contents of =C2=A0/etc/default/gru=
b</p><pre><code># If you change this file, run &#39;update-grub&#39; afterw=
ards to update</code></pre><pre><code># /boot/grub/grub.cfg.</code></pre><p=
re><code># For full documentation of the options in this file, see:</code><=
/pre><pre><code>#   info -f grub -n &#39;Simple configuration&#39;</code></=
pre><pre><code>GRUB_DEFAULT=3D0</code></pre><pre><code>GRUB_TIMEOUT_STYLE=
=3Dhidden</code></pre><pre><code>GRUB_TIMEOUT=3D0</code></pre><pre><code>GR=
UB_DISTRIBUTOR=3D`lsb_release -i -s 2&gt; /dev/null || echo Debian`</code><=
/pre><pre><code>GRUB_CMDLINE_LINUX_DEFAULT=3D&quot;quiet splash iommu=3Dpt =
intel_iommu=3Don hugepages=3D2048 pti=3Doff spectre_v2=3Doff l1tf=3Doff nos=
pec_store_bypass_disable no_stf_barrier&quot;</code></pre><pre><code>GRUB_C=
MDLINE_LINUX=3D&quot;&quot;</code></pre><pre><code># Uncomment to enable Ba=
dRAM filtering, modify to suit your needs</code></pre><pre><code># This wor=
ks with Linux (no patch required) and with any kernel that obtains</code></=
pre><pre><code># the memory map information from GRUB (GNU Mach, kernel of =
FreeBSD ...)</code></pre><pre><code>#GRUB_BADRAM=3D&quot;0x01234567,0xfefef=
efe,0x89abcdef,0xefefefef&quot;</code></pre><pre><code># Uncomment to disab=
le graphical terminal (grub-pc only)</code></pre><pre><code>#GRUB_TERMINAL=
=3Dconsole</code></pre><pre><code># The resolution used on graphical termin=
al</code></pre><pre><code># note that you can use only modes which your gra=
phic card supports via VBE</code></pre><pre><code># you can see them in rea=
l GRUB with the command `vbeinfo&#39;</code></pre><pre><code>#GRUB_GFXMODE=
=3D640x480</code></pre><pre><code># Uncomment if you don&#39;t want GRUB to=
 pass &quot;root=3DUUID=3Dxxx&quot; parameter to Linux</code></pre><pre><co=
de>#GRUB_DISABLE_LINUX_UUID=3Dtrue</code></pre><pre><code># Uncomment to di=
sable generation of recovery mode menu entries</code></pre><pre><code>#GRUB=
_DISABLE_RECOVERY=3D&quot;true&quot;</code></pre><pre><code># Uncomment to =
get a beep at grub start</code></pre><pre><code>#GRUB_INIT_TUNE=3D&quot;480=
 440 1&quot;</code></pre><p>I=E2=80=99m assuming you want to check the GRUB=
_CMDLINE_LINUX_DEFAULT? Is hugepages=3D2048 correct for hugepages?</p><p>Th=
anks!</p><p>Zack</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><span style=3D"color:=
rgb(34,34,34)">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><br></div><div>=C2=A0=E7=
=A6=8F=E5=B3=B6 =E5=B9=B9=E9=9B=84 (Mikio Fukushima)</div><div>=C2=A0=E6=A0=
=AA=E5=BC=8F=E4=BC=9A=E7=A4=BE=E3=83=89=E3=83=AB=E3=83=95=E3=82=A3=E3=83=B3=
=E3=82=B7=E3=82=B9=E3=83=86=E3=83=A0 (Dolphin System Co.,Ltd)</div><div><br=
></div><div>=E3=80=92170-0014 =E6=9D=B1=E4=BA=AC=E9=83=BD=E8=B1=8A=E5=B3=B6=
=E5=8C=BA=E6=B1=A0=E8=A2=8B=EF=BC=91=EF=BC=8D=EF=BC=98=EF=BC=8D=EF=BC=95</d=
iv><div>=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=83=9F=E3=
=83=B3=E3=83=88=E3=83=AD=E3=83=B3=E3=83=93=E3=83=AB=EF=BC=95=EF=BC=A6</div>=
<div><br></div><div>Mail: <a href=3D"mailto:mikio@dolphinsystem.jp" target=
=3D"_blank">mikio@dolphinsystem.jp</a></div><div>URL : <a href=3D"http://ww=
w.dolphinsystem.jp/" target=3D"_blank">http://www.dolphinsystem.jp/</a></di=
v><div>TEL/FAX : 03-6658-4949</div><div><span style=3D"color:rgb(34,34,34)"=
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><br></div></div></div></div></div>

--0000000000009e1d0d0613a9a806--

--===============0001475265830557803==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0001475265830557803==--
