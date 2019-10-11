Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE88D4B0C
	for <lists+usrp-users@lfdr.de>; Sat, 12 Oct 2019 01:37:50 +0200 (CEST)
Received: from [::1] (port=43368 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iJ4Tk-0006up-5r; Fri, 11 Oct 2019 19:37:48 -0400
Received: from mail-lf1-f43.google.com ([209.85.167.43]:39070)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <martin.braun@ettus.com>)
 id 1iJ4Tg-0006mn-Vw
 for usrp-users@lists.ettus.com; Fri, 11 Oct 2019 19:37:45 -0400
Received: by mail-lf1-f43.google.com with SMTP id 72so8154338lfh.6
 for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2019 16:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Om+LQM4dsZ14LEk2mlx7HRstAdvY/Ww0i40IFManD3Y=;
 b=DWPV84QLE+RM4Ahk2steVheuOZLkqYz5lBBK571Y8v/xaB36UL9CE81YoY6rXYrE3A
 a2j/wG7pF4y0091BZ3rSvAa8zqntlTd0hal3CK3EnoQ0dcPdK1+H+IZgitx3ecLqKO0g
 UkkDzHU3iuHXkOSdc1Uj2rczH7ujwC9vClW2dyvk5eynoZhJyKo683ENwWVOXqmTqggE
 pNdbLG3PVmV8UlwmRzQLT4cEL3d4HmzOITQ//floe7FV6b3x8o1OnQATQ9480+8XZ8bv
 Wfxve2F4mEZGXoRRuyMIS4585Wtaj/t2NqqbFnDCKOOkcCKU4fKP5lC41FqkCO7UW7Nu
 BpJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Om+LQM4dsZ14LEk2mlx7HRstAdvY/Ww0i40IFManD3Y=;
 b=NMkFF0Jw2ig9WwYaGLNfRZRFsUQx8pmnlGdWATW6W895RukESgU9jYQtF55plCBp7a
 XaeSy9Y+dXvZffQNQLaHqBuNetFZBl7rt/QZzWMX4Gn0fCmfkq16uVC5VtGUb+135MXN
 tQ7RMiCQAxSd01LW2VfCJw0YcmAvQiqSXPR9wx7q9xtw25pwId8bUWH5odlMfQBXFoBO
 0I2nFuYeqPlTdLAM1QZN1d7lbPJLeJJSd9nzygVl7jztZEoF8wXanWgJPCWol+UwV6eh
 4aLyskvpkI6mlHko+o+Hv6bw0rOZoWZLA+PLB2v79sNgc5N31rI4F54UM5FvFmDM9PpA
 /L9w==
X-Gm-Message-State: APjAAAUY7vL4nrVhy0C3b1ctclYwIxocesJgqJz71Xf3zhGITY2kNfaO
 FTEK1Pjj475B3c4CMl6IFAtuGE+h183rwF3YVUgAUpA3
X-Google-Smtp-Source: APXvYqxCOx3ew1yjVoymxYtBZFpfr0PeAZxwHp8A4McVTQQTN+odM8/SEXz/ENCDGwVcKEunaBAP7H87wpKthqnVmCw=
X-Received: by 2002:ac2:414f:: with SMTP id c15mr10198967lfi.157.1570837023476; 
 Fri, 11 Oct 2019 16:37:03 -0700 (PDT)
MIME-Version: 1.0
References: <BN6PR19MB09807166E8446A4DAF62E122A4810@BN6PR19MB0980.namprd19.prod.outlook.com>
In-Reply-To: <BN6PR19MB09807166E8446A4DAF62E122A4810@BN6PR19MB0980.namprd19.prod.outlook.com>
Date: Fri, 11 Oct 2019 16:36:51 -0700
Message-ID: <CAFOi1A76i4Dop8LH64Z1wx7TwqjbKMizF1k2+hka=PEDsj3n+w@mail.gmail.com>
To: Jeff S <e070832@hotmail.com>
Subject: Re: [USRP-users] RFNoC / Vivado Build Failure
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
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7996667309588159456=="
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

--===============7996667309588159456==
Content-Type: multipart/alternative; boundary="000000000000c8e4ea0594aafea9"

--000000000000c8e4ea0594aafea9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Is this with vanilla code, or your own custom code?

On Thu, Sep 26, 2019 at 5:49 PM Jeff S via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I'm trying to take what I learned from GRCon2019 from Neel and company's
> workshop, and I'm trying to perform the uhd_image_builder_gui.py script. =
It
> fails with a message similar to:
>
> [00:12:22] Starting DRC Task
> ERROR: [DRC MDRV-1] Multiple Driver Nets: Net bus_clk_gen/inst/CLK_OUT4 h=
as multiple drivers: radio_clk_gen/inst/clkout1_buf/O, and bus_clk_gen/    =
                     inst/clkout4_buf/O.
> ERROR: [DRC MDRV-1] Multiple Driver Nets: Net radio_reset_sync/reset_doub=
le_sync/synchronizer_false_path/value[9]_9 has multiple drivers: ce_res    =
                     et_sync/reset_double_sync/synchronizer_false_path/stag=
es[9].value_reg[9][0]/Q, and radio_reset_sync/reset_double_sync/synchronize=
r_false_path/st                         ages[9].value_reg[9][0]/Q.
> ERROR: [Vivado_Tcl 4-78] Error(s) found during DRC. Opt_design not run.
>
>
> I have to finish the paperwork to get the real log out of my lab so I can
> post it, but it looked pretty much the same as the log in the unanswered
> archived message at:
>
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-August/0=
60443.html
>
>
> and I wanted to try and get a jumpstart on the issue.
>
> I have an X310
> Vivado 2018.3
>
> Jeff
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000c8e4ea0594aafea9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is this with vanilla code, or your own custom code?<br></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Thu, Sep 26, 2019 at 5:49 PM Jeff S via USRP-users &lt;<a href=3D"mailto:us=
rp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">



<div>
<div>I&#39;m trying to take what I learned from GRCon2019 from Neel and com=
pany&#39;s workshop, and I&#39;m trying to perform the uhd_image_builder_gu=
i.py script. It fails with a message similar to:</div>
<div><br>
</div>
<div>
<pre style=3D"white-space:pre-wrap">[00:12:22] Starting DRC Task
ERROR: [DRC MDRV-1] Multiple Driver Nets: Net bus_clk_gen/inst/CLK_OUT4 has=
 multiple drivers: radio_clk_gen/inst/clkout1_buf/O, and bus_clk_gen/      =
                   inst/clkout4_buf/O.
ERROR: [DRC MDRV-1] Multiple Driver Nets: Net radio_reset_sync/reset_double=
_sync/synchronizer_false_path/value[9]_9 has multiple drivers: ce_res      =
                   et_sync/reset_double_sync/synchronizer_false_path/stages=
[9].value_reg[9][0]/Q, and radio_reset_sync/reset_double_sync/synchronizer_=
false_path/st                         ages[9].value_reg[9][0]/Q.
ERROR: [Vivado_Tcl 4-78] Error(s) found during DRC. Opt_design not run.</pr=
e>
</div>
<div><br>
</div>
<div>I have to finish the paperwork to get the real log out of my lab so I =
can post it, but it looked pretty much the same as the log in the unanswere=
d archived message at:</div>
<div><br>
</div>
<blockquote style=3D"margin:0px 0px 0px 40px;border:medium none;padding:0px=
">
<div dir=3D"auto"><a href=3D"http://lists.ettus.com/pipermail/usrp-users_li=
sts.ettus.com/2019-August/060443.html" target=3D"_blank">http://lists.ettus=
.com/pipermail/usrp-users_lists.ettus.com/2019-August/060443.html</a></div>
</blockquote>
<div><br>
</div>
<div>and I wanted to try and get a jumpstart on the issue.</div>
<div><br>
</div>
<div>I have an X310</div>
<div>Vivado 2018.3</div>
<div><br>
</div>
<div>Jeff</div>
<div id=3D"gmail-m_3439297171821516879composer_signature">
<div style=3D"font-size:85%;color:rgb(87,87,87)" dir=3D"auto"><br>
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

--000000000000c8e4ea0594aafea9--


--===============7996667309588159456==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7996667309588159456==--

