Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B52BE12FC77
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jan 2020 19:25:58 +0100 (CET)
Received: from [::1] (port=43672 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1inRe1-0008N6-89; Fri, 03 Jan 2020 13:25:57 -0500
Received: from mail-oi1-f174.google.com ([209.85.167.174]:36207)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bpadalino@gmail.com>) id 1inRdx-0008FH-6t
 for usrp-users@lists.ettus.com; Fri, 03 Jan 2020 13:25:53 -0500
Received: by mail-oi1-f174.google.com with SMTP id c16so14781488oic.3
 for <usrp-users@lists.ettus.com>; Fri, 03 Jan 2020 10:25:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6vI+T+kL7ehi0wAEESn/WVjmZkhPcMlviX7qc6XQous=;
 b=J1UwEjeoNFJGlTxbB9Unw/GiKy4PywIGOBZOVgT6RZvVpI4+m/WPEEfdhqKlqzbgT5
 BaUfTFzpSX6y3CPEXBsahPhQCgd21qCXMiDJBjNL+cWsKtqWcZOgaV2u2X1srULMV5sb
 sRAldeQ3CcrD08gjkfnL6J1CVZvpP+fb78tw9IlXzScREptrrTJIv3KVHpiLVq2im/2+
 Z/fQ8sEm0bnJ8N9/W8d1/1xSSf7IudpKAO9mLaZuzuXAsRJRT3H2ej8SNaZs8t3LtRcT
 SQUv7H7knGonEwM0Fe9yRrnjbVExdgGNFHUBhKFlDqmwKgRXW/WIvA6h3ui5H/6AvgMc
 43bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6vI+T+kL7ehi0wAEESn/WVjmZkhPcMlviX7qc6XQous=;
 b=QHS6QIkXZLtoBFsi4I4d3So5xxDJKGdyc3xS9prIyiANHtThKPH8Nv4J8FL7wBWLVM
 vsMY6iwE8z7ltp2ScqEik82xMhSY0UvHMfqcXJXg1fDI+IRkUAEwNU1JSobUVldWMFQF
 Zc1+3p6+ZsXBrMq660kpnjl8gLK0wk1U83GNbhHt+YCDRP+qSov3xkuU9vG2+F80Qwyv
 a0Ud3A4g5e81d48B5AN310Tt+HRbkEX8nJc/AEuejuyoW4vBlG5t/s/SK5UGJUPcISED
 QRormQi7HLfrIXIfuYj05E5qdauyPPK4yQeCW6PHu++LzYAzG3PN4jzptECoyX1HprLH
 2WAg==
X-Gm-Message-State: APjAAAXFGLeZSGbrVZGr6z8jqtdPh/6+Jje1iIiPYh3dzDe5xFPJycV9
 VkfSO11hGcOfr1p5VfkUYFI9NDoGkJ7VxhuvqEDfW3ji
X-Google-Smtp-Source: APXvYqytFG6jZoW1gxti+dn3tYJumjm3opmnWQVxPzincWrZVwOdtTpkuYO1CNXB5OIlZAnQigveWDVTVorCWIUYDNo=
X-Received: by 2002:aca:1a06:: with SMTP id a6mr4279550oia.148.1578075912404; 
 Fri, 03 Jan 2020 10:25:12 -0800 (PST)
MIME-Version: 1.0
References: <3f128547beb4452c88c27a70038afe5d@tudelft.nl>
In-Reply-To: <3f128547beb4452c88c27a70038afe5d@tudelft.nl>
Date: Fri, 3 Jan 2020 13:25:00 -0500
Message-ID: <CAEXYVK5k_9JsOfdD3fOd8yp+5rqMFPhCwyCKXiO6uAz980PjGA@mail.gmail.com>
To: Cherif Diouf <C.E.V.Diouf@tudelft.nl>
Subject: Re: [USRP-users] Building RFNoC image with default blocks fails,
 [DRC MDRV-1] Multiple Driver Nets: Net has multiple drivers
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6987514036628373969=="
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

--===============6987514036628373969==
Content-Type: multipart/alternative; boundary="0000000000003001e0059b406e5b"

--0000000000003001e0059b406e5b
Content-Type: text/plain; charset="UTF-8"

On Fri, Jan 3, 2020 at 1:14 PM Cherif Diouf via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Jerrid,
>
>
>
> Some hints, for info,  I am working with the X310 device, but you can
> take the big picture.
>
>
> I previously met  such issues, those were related to signal re-definitions.
>
>
> The file *rfnoc_ce_auto_inst_x310.v* at lines 19/20 is re-defining the
> ce_clk/ce_rst signals by assigning to them  radio_clk/radio_rst signals.
> The issue here is that ce_clk is a clock of its own and is already defined
> in the top block file *x300.v* at lines 259 and 290. My filepath is
> rfnoc/src/uhd-fpga/usrp3/top/x300/.
>

In the 3.15.0.0 code on github I don't see what you're talking about:


https://github.com/EttusResearch/fpga/blob/fde2a94eb7231af859653db8caaf777ae2b66199/usrp3/top/x300/rfnoc_ce_auto_inst_x300.v

Looking at the history of the file, it looked like that might have been
removed way back in 2016 in commit c98bc14fe0ea2c27a5629a24d47915eb7e0b6700.

Jerrid - do you have those lines that Cherif is describing?

Brian

--0000000000003001e0059b406e5b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Jan 3, 2020 at 1:14 PM Cherif Dio=
uf via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_7756866543538010861divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"=
ltr">
<div id=3D"gmail-m_7756866543538010861divtagdefaultwrapper" dir=3D"ltr" sty=
le=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-se=
rif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,Noto=
ColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbo=
ls">
<p>Hi Jerrid,</p>
<p><br>
</p>
<p><br>
</p>
<p><span><span>Some hints, for info, =C2=A0</span>I am working with the X31=
0 device, but you can take the big picture.</span><br>
</p>
<p><br>
</p>
<p>I previously met=C2=A0 such issues, those were related to signal re-defi=
nitions.</p>
<p><br>
</p>
<p>The file *rfnoc_ce_auto_inst_x310.v* at lines 19/20 is re-defining the c=
e_clk/ce_rst signals by assigning to them=C2=A0 radio_clk/radio_rst signals=
. The issue here is that ce_clk is a clock of its own and is already define=
d in the top block file *x300.v* at lines
 259 and 290. My filepath is <span>rfnoc/src/uhd-fpga/usrp3/top/x300/</span=
>.<br></p></div></div></div></blockquote><div><br></div><div>In the 3.15.0.=
0 code on github I don&#39;t see what you&#39;re talking about:</div><div><=
br></div><div>=C2=A0=C2=A0<a href=3D"https://github.com/EttusResearch/fpga/=
blob/fde2a94eb7231af859653db8caaf777ae2b66199/usrp3/top/x300/rfnoc_ce_auto_=
inst_x300.v">https://github.com/EttusResearch/fpga/blob/fde2a94eb7231af8596=
53db8caaf777ae2b66199/usrp3/top/x300/rfnoc_ce_auto_inst_x300.v</a></div><di=
v><br></div><div>Looking at the history of the file, it looked like that mi=
ght have been removed way back in 2016 in commit=C2=A0c98bc14fe0ea2c27a5629=
a24d47915eb7e0b6700.</div><div>=C2=A0<br></div><div>Jerrid - do you have th=
ose lines that Cherif is describing?</div><div><br></div><div>Brian</div></=
div></div>

--0000000000003001e0059b406e5b--


--===============6987514036628373969==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6987514036628373969==--

