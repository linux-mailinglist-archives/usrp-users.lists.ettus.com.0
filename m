Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FAD92D8141
	for <lists+usrp-users@lfdr.de>; Fri, 11 Dec 2020 22:49:21 +0100 (CET)
Received: from [::1] (port=55928 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1knqHu-00016u-6S; Fri, 11 Dec 2020 16:49:18 -0500
Received: from mail-vs1-f49.google.com ([209.85.217.49]:46363)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1knqHq-0000xn-C2
 for usrp-users@lists.ettus.com; Fri, 11 Dec 2020 16:49:14 -0500
Received: by mail-vs1-f49.google.com with SMTP id q10so5582442vsr.13
 for <usrp-users@lists.ettus.com>; Fri, 11 Dec 2020 13:48:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lvtBRhJ5Uj73op7ysTuXv7ElDoRcdpxdYwC8YreNlWQ=;
 b=aNJtDCvdvuAm5rI9vXClIjNxzZkWuLruU+BU54SCCDNmWiNEugdA02uEVgMiYsdhm0
 kU0Nk5xfFELw4qa3YSIkxzHeMVoIiTcJGDYrc4hAaSyeJU2SPnKgKR0H9405USNAoWIl
 jbUXv0ryDZX9tj5gxiAdJfVkvelaYo73HMXlDz01oEnvcY5uC25eOhmxenRmw1iYm2Zv
 +nsk23dZjlTzCQsDj+NXZsUsEpz+SdSn4tG4+jDMJcqD2+wTTeAjdAwhvDrkRO0AuQmI
 UU0VWUfpBCQrZAA1SsRyevH48ddPktYtTqsQQHFBEV9vfLOj9jG3GeTctn6yBYMSH37v
 c2Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lvtBRhJ5Uj73op7ysTuXv7ElDoRcdpxdYwC8YreNlWQ=;
 b=QpM0VcwQEY3lg4g7jlbSsVHRdAooxZTR+3TdmVWDzo+arxqyl2//S48aw+LdKAbKny
 SsvAhIxoJWKnwndcvz+GfuBcr5sC4VFmxJauR3lVdxJgLuQcLsGvGhp6BfwRHYEXktER
 O+cw1eCi0++UN2fdnF/Y6SGXD8elBKGTX/rcLS1e4MBsIsGBkTnLG3pIPBsBz7xP370x
 aasVpNk8kWkLQghz42WSQGqvaceiMreF9izt7n57ThZ6e2O09uucwmR3a3EAZ4aEUH/p
 plfUj1omP9It/piNqFmzyAucvA/9WKbCE/RMCcOpaXlxEPIKssxAWMvCaYq3J/hLX9e1
 ht2g==
X-Gm-Message-State: AOAM532rzsx2sWXxxt9RLqqFMZAkeByOaQs/fM0bDqGqZK7oFZURm+zK
 q+0VVOj8gwuZwNL0X2LyuTvIhryoSNitohhdkmoH2hhJ
X-Google-Smtp-Source: ABdhPJzd5JIgbSYcHLsRcYav5x8SGHk2gqkUYf4BX6fDxE2ryHv5xGHycTP19jZOLwBw/qqKKLOOU2+ohvXC6oHWRx0=
X-Received: by 2002:a05:6102:2da:: with SMTP id
 h26mr14781009vsh.27.1607723313561; 
 Fri, 11 Dec 2020 13:48:33 -0800 (PST)
MIME-Version: 1.0
References: <0de28dac284d443f97212f5559446f66@gtri.gatech.edu>
 <72b3782485534f1c843149b5b70ef955@gtri.gatech.edu>
In-Reply-To: <72b3782485534f1c843149b5b70ef955@gtri.gatech.edu>
Date: Fri, 11 Dec 2020 16:47:57 -0500
Message-ID: <CAL7q81uuY5BK8RGHk0M_Wgo_9gheOzWJ1t=RstwWFAn=zBbS_A@mail.gmail.com>
To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC passing metadata on the dataplane
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============4949014632725611716=="
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

--===============4949014632725611716==
Content-Type: multipart/alternative; boundary="00000000000000bc5005b63741e0"

--00000000000000bc5005b63741e0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jeff,

RFNoC3 / UHD 3.15 does not support metadata. That is a new feature in
RFNoC4 / UHD 4.0, so option 2 is not possible.

If you want to send out metadata in RFNoC3, I would suggest prepending it
to packets you send to AXI wrapper. You can still use SIMPLE_MODE as long
as you are producing a packet for every packet consumed. The different
input/output packet lengths do not matter as AXI wrapper internally
calculates the output packet length and updates the header automatically.

Jonathon

On Fri, Dec 11, 2020 at 3:48 PM Hodges, Jeff via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I meant rfnoc_create_verilog.py
>
>
>
> https://github.com/EttusResearch/uhd/blob/master/host/utils/rfnoc_blockto=
ol/rfnoc_create_verilog.py
>
>
> jeff
> ------------------------------
> *From:* Hodges, Jeff
> *Sent:* Friday, December 11, 2020 3:44:41 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* RFNoC passing metadata on the dataplane
>
>
> I'd like to pass metadata over the dataplane using the available space in
> the CHDR header.  However, I cannot find an easy way to do this using
> UHD3.15.
>
>
> I've identified two possible approaches but I'm not sure either will work=
:
> (1) Set AXI_Wrapper (Simple_Mode =3D0) to require user provided CHDR head=
er.
> It's unclear how to provide the header, and if this can be modified quick=
ly.
>
> (2) Expose the AXI-Stream CHDR interface the way UHD4.0 does it:
>
> In UHD4.0 the verilog_image_builder.py includes the options to expose HDL
> interface:
>
> o Definition: Which HDL interface to expose
> o Options: =E2=80=9CAXI-Stream CHDR=E2=80=9D (axis_chdr), =E2=80=9CAXI-St=
ream Payload Context=E2=80=9D
> (axis_pyld_ctxt), or =E2=80=9CAXI-Stream Data=E2=80=9D (axis_data)
>
> If Option (2) is the recommended, can I just copy the code from
> verilog_image_builder.py TEMPLATE such as below, or were other changes ma=
de
> to make it incompatible with 3.15?
>
>  %if config['data']['fpga_iface'] =3D=3D
> "axis_pyld_ctxt":
> assign axis_data_clk =3D
> ${config['data']['clk_domain']}_clk;
> assign axis_data_rst =3D
> ${config['data']['clk_domain']}_rst;
>  <%include file=3D"/modules/axis_pyld_ctxt_modules_template.mako"/>
>
>
>
> Thanks,
>
> Jeff
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000000bc5005b63741e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jeff,<div><br></div><div>RFNoC3 / UHD 3.15 does not sup=
port metadata. That is a new feature in RFNoC4 / UHD 4.0, so option 2 is no=
t possible.</div><div><br></div><div>If you want to send out metadata in RF=
NoC3, I would suggest prepending it to packets you send to AXI wrapper. You=
 can still use SIMPLE_MODE as long as you are producing a packet for every =
packet consumed. The different input/output packet lengths do not matter as=
 AXI wrapper internally calculates the output packet length and updates the=
 header automatically.</div><div><br></div><div>Jonathon</div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 1=
1, 2020 at 3:48 PM Hodges, Jeff via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">

<div id=3D"gmail-m_-3086681405321088638gmail-m_2884275641335174869divtagdef=
aultwrapper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,H=
elvetica,sans-serif" dir=3D"ltr">
<p>I meant rfnoc_create_verilog.py<br>
</p>
<p><br>
</p>
<p><a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/utils/r=
fnoc_blocktool/rfnoc_create_verilog.py" id=3D"gmail-m_-3086681405321088638g=
mail-m_2884275641335174869LPlnk889110" target=3D"_blank">https://github.com=
/EttusResearch/uhd/blob/master/host/utils/rfnoc_blocktool/rfnoc_create_veri=
log.py</a></p>
<p><br>
</p>
<p>jeff<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-3086681405321088638gmail-m_2884275641335174869divRplyFw=
dMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" style=3D"font-size:11p=
t" color=3D"#000000"><b>From:</b> Hodges, Jeff<br>
<b>Sent:</b> Friday, December 11, 2020 3:44:41 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> RFNoC passing metadata on the dataplane</font>
<div>=C2=A0</div>
</div>
<div>
<div id=3D"gmail-m_-3086681405321088638gmail-m_2884275641335174869divtagdef=
aultwrapper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,H=
elvetica,sans-serif" dir=3D"ltr">
<p>I&#39;d like to pass metadata over the dataplane using the available spa=
ce in the CHDR header.=C2=A0 However, I cannot find an easy way to do this =
using UHD3.15.</p>
<p><br>
</p>
<p>I&#39;ve identified two possible approaches but I&#39;m not sure either =
will work:<br>
(1) Set AXI_Wrapper (Simple_Mode =3D0) to require user provided CHDR header=
. It&#39;s unclear how to provide the header, and if this can be modified q=
uickly.</p>
<p>(2) Expose the AXI-Stream CHDR interface the way UHD4.0 does it:<br>
</p>
<p>In UHD4.0 the verilog_image_builder.py includes the options to expose HD=
L interface:</p>
<p></p>
<div>o Definition: Which HDL interface to expose<br>
o Options: =E2=80=9CAXI-Stream CHDR=E2=80=9D (axis_chdr), =E2=80=9CAXI-Stre=
am Payload Context=E2=80=9D (axis_pyld_ctxt), or =E2=80=9CAXI-Stream Data=
=E2=80=9D (axis_data)</div>
<div><br>
</div>
<div>If Option (2) is the recommended, can I just copy the code from verilo=
g_image_builder.py TEMPLATE such as below, or were other changes made to ma=
ke it incompatible with 3.15?</div>
<div><br>
</div>
<div>
<div>=C2=A0%if config[&#39;data&#39;][&#39;fpga_iface&#39;] =3D=3D &quot;ax=
is_pyld_ctxt&quot;:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0
<br>
</div>
<div>assign axis_data_clk =3D ${config[&#39;data&#39;][&#39;clk_domain&#39;=
]}_clk;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0
<br>
</div>
<div>assign axis_data_rst =3D ${config[&#39;data&#39;][&#39;clk_domain&#39;=
]}_rst;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
<br>
=C2=A0&lt;%include file=3D&quot;/modules/axis_pyld_ctxt_modules_template.ma=
ko&quot;/&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </div>
<br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>Thanks,</div>
<div><br>
</div>
<div>Jeff<br>
</div>
<div><br>
</div>
<div><br>
</div>
<br>
<p></p>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000000bc5005b63741e0--


--===============4949014632725611716==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4949014632725611716==--

