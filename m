Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 852FF28C3DA
	for <lists+usrp-users@lfdr.de>; Mon, 12 Oct 2020 23:13:21 +0200 (CEST)
Received: from [::1] (port=38394 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kS58B-0008A6-N3; Mon, 12 Oct 2020 17:13:19 -0400
Received: from mail-oi1-f180.google.com ([209.85.167.180]:33780)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kS588-00083C-06
 for usrp-users@lists.ettus.com; Mon, 12 Oct 2020 17:13:16 -0400
Received: by mail-oi1-f180.google.com with SMTP id s21so2325065oij.0
 for <usrp-users@lists.ettus.com>; Mon, 12 Oct 2020 14:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XEVXVfBJH9lQaNzNoDaEB8/5jlCK5R+02bNqLG66bK8=;
 b=XbtobcNbdQnwnkRe4uG5vhHUbTo6n+v4dQvOOamm/rVd+azcDyV3sQMDpYJ+Zr2xUE
 lTjtb3gFjXJ4Pn9/ST3bR3KsJHCMEfkYikoiOLUmlcgHvSfDGh9c+J6FNnU/obg6UNyH
 eGNUhM7LV6ojlgKGA7gDtEOfdvJrf5JqXrWDGHfQ8OkN1psS/j52Fp3jl4rXJFL/sWBz
 Lry34rfSwqLYvLmzFiKlx03Gg4SMmSsYw6wzdJvBEaHnAfaJIBHx7uyTVfNNR+nGjmtr
 OxqyUwvD6U9G0/XzgboDn49BzahjT4/uTffr+vdg6/Po89tTvrEv5tyagQh3SJ8oeiSg
 CgQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XEVXVfBJH9lQaNzNoDaEB8/5jlCK5R+02bNqLG66bK8=;
 b=kKGvuA8r78w46tzq0x57ISESqXpP7IA8qU9RlNHZi+0UcSbmK3pocxu9Wj2t5bGojk
 Gep9PYM5U3Q+kquQW6iP0lIeuxC7MeKXPjBblAAWi2d2judke6gzmsAvv/liT1POasZv
 13gtDzdpy+qDG/kas7DmozwSowo+w1aZ2Gce0nQT0H2pNHzH/O+87LfflsNwZclNv2eb
 Bb1oCZBZBGBiWtMP4k7Zj8RWpshRHXICgHn2NF6g7/ejiR3af2N7i0divBbHj+TPWLQG
 vt35nwqXIKDqfoZPFKijx3AvTrBdw2sYpDiJMPyRIQDW4JA3TY/+2MHtjsde6V/A0/US
 G1Fw==
X-Gm-Message-State: AOAM532bD57yhC7oTrfs0oCdLuruNrRKoJJRWV8czfR7bPfkNzNUZKTV
 Zsn4Hpu+h87t0dnjf1zWKFeeU5lbHIzsCgWne8Oit8UlNrk=
X-Google-Smtp-Source: ABdhPJz6RRiJUQ0t8+d78Q4kyUtjVvXWln151BGO1889guWU9DLFQ3RVulSlDVdL/ZvlBh9LzzPHsp5L3O8z7eFoxGw=
X-Received: by 2002:aca:5515:: with SMTP id j21mr11483207oib.150.1602537154915; 
 Mon, 12 Oct 2020 14:12:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQ66fKZiDJLS+JskvOOmJ7BRatHLTSoZozoLbP+L1iKLA@mail.gmail.com>
 <MN2PR12MB33127F51EFE54032BF0ECD11B8080@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB33127F51EFE54032BF0ECD11B8080@MN2PR12MB3312.namprd12.prod.outlook.com>
Date: Mon, 12 Oct 2020 17:12:24 -0400
Message-ID: <CAB__hTR-tc2Lp4i_aVveC6TsPOQys=24zvuAUNVuiheLFKshSA@mail.gmail.com>
To: Jim Palladino <jim@gardettoengineering.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] New mender instructions?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3469461909401427070=="
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

--===============3469461909401427070==
Content-Type: multipart/alternative; boundary="000000000000dbfc5905b17fc173"

--000000000000dbfc5905b17fc173
Content-Type: text/plain; charset="UTF-8"

Thanks Jim,
This worked fine for me without any "force flag" on my N310.
Rob

On Fri, Oct 9, 2020 at 7:27 AM Jim Palladino <jim@gardettoengineering.com>
wrote:

> Hi Rob,
>
> Per (https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_rasm_mender) I
> used the following on an E320:
>
> mender install /home/root/usrp_e320_fs.mender
>
> I'm pretty sure I needed to add a force flag to it as well.
>
> Jim
>
> ------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Rob
> Kossler via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Thursday, October 8, 2020 3:10 PM
> *To:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] New mender instructions?
>
> Hi,
> What is the new mender command to use on the N310 under UHD 4 file
> system?  The -rootfs option from the following instructions is not a
> valid option.
>
> root@ni-n3xx-serial:~# mender -rootfs /home/root/usrp_n3xx_fs.mender
>
>

--000000000000dbfc5905b17fc173
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Jim,<div>This worked fine for me without any &quot;=
force flag&quot; on my N310.</div><div>Rob</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 9, 2020 at 7:27=
 AM Jim Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com">jim@ga=
rdettoengineering.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hi Rob,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Per (<a href=3D"https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_ras=
m_mender" id=3D"gmail-m_-7284234604475866126LPlnk695367" target=3D"_blank">=
https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_rasm_mender</a>)=C2=
=A0I used the following on an E320:<br>
<br>
mender install /home/root/usrp_e320_fs.mender<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-se=
rif;font-size:12pt">I&#39;m pretty sure I needed to add a force flag to it =
as well.</span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"gmail-m_-7284234604475866126appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-7284234604475866126divRplyFwdMsg" dir=3D"ltr"><font fac=
e=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>Fro=
m:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com"=
 target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of =
Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Thursday, October 8, 2020 3:10 PM<br>
<b>To:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] New mender instructions?</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Hi,<br>
<div>What is the new mender command to use on the N310 under UHD 4 file sys=
tem?=C2=A0 The -rootfs option from the following instructions is not a vali=
d=C2=A0option.</div>
<div><br>
</div>
<div>
<pre style=3D"font-family:monospace,Courier;color:rgb(0,0,0);background-col=
or:rgb(249,249,249);border:1px solid rgb(221,221,221);padding:1em;white-spa=
ce:pre-wrap;line-height:1.3em;font-size:14px">root@ni-n3xx-serial:~# mender=
 -rootfs /home/root/usrp_n3xx_fs.mender</pre>
</div>
</div>
</div>
</div>

</blockquote></div>

--000000000000dbfc5905b17fc173--


--===============3469461909401427070==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3469461909401427070==--

