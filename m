Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0285F117461
	for <lists+usrp-users@lfdr.de>; Mon,  9 Dec 2019 19:38:06 +0100 (CET)
Received: from [::1] (port=57898 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ieNv0-0007pH-2i; Mon, 09 Dec 2019 13:38:02 -0500
Received: from mail-ot1-f54.google.com ([209.85.210.54]:44557)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1ieNux-0007jx-0U
 for usrp-users@lists.ettus.com; Mon, 09 Dec 2019 13:37:59 -0500
Received: by mail-ot1-f54.google.com with SMTP id x3so13056174oto.11
 for <usrp-users@lists.ettus.com>; Mon, 09 Dec 2019 10:37:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sBA/u3Zw2zOuYjDoWX5dnsWjrhhciYDeWtufG5h08S0=;
 b=OK0L2SGku3cNSDGrxt3QcCexYftTBSz/dWgw4mhRYjmXKdxFIN3st3GYSfqSV7iSdz
 eiguZONEfopUePH/tx8s3p9FqYepbcMRfnKt6AMiyFkAsfeaAzlK5oukt6DOj6XBo17i
 lsZIoSwQyYZFOUdT21CKvTPkTly5nIUm/6aw3tj3MHQYV9LGfAJnrfWLFQsOjfVlzQHu
 ETf6Lx/2+pwpdTjnQ3b/WZY6kp5sZmwjqSEUaCYVtqPxyTx7XU4MpTZhTGwNMKjA7CZT
 wmEa/FZDBgw7G+mfkLkD9JsRB2kn/lvDlKzi6rKPrhL5YC1d/c5LZ3r5ULVrcCmuBnnk
 SuPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sBA/u3Zw2zOuYjDoWX5dnsWjrhhciYDeWtufG5h08S0=;
 b=mY5znjbB0zBHXk/zrcrwt9wGMA3onEHzpwWQmX1y4EmUXfgqJxtnKxliRpuuCoUoB0
 7yAVEowRsLpIUT8+WY/opjfpcTP1Vt13Or+f3Deau9JMpv2Eyi2oiAu6dlhwTqP6GCEf
 rosEJG7CELAYkhUouBIw7coDSok+UKlOkErqkih5bzQ48hROuVqZlYHORGnY3qkKVrE4
 ASgZYMNSFBJsja+o73Xh9urTLudei/5qQAMGgxbaqyAjVeqZPRUwAZaa0x9oHkXki/Kr
 VVbKPCC3bGIoTerb63E4TbciXuNDJFPsJKt68Akivn1PUYAFBD+nlJhqv83sXjW/0tAb
 kQFA==
X-Gm-Message-State: APjAAAXw9caHx4dyhasDPlc2CztJjaUi9fFE7uBRDAbap7IKoZrhg94N
 4vrdqpqQuTITNvf1vdxhVWMp1KrcvT7lTd7y3RuS6/YuNHGo4g==
X-Google-Smtp-Source: APXvYqwgwm4cVh9mWCFY2+N5VxVgJROokxVOnL0nf+YFb+jrdeP4Z/motLfH451ZKBo4SQRz7yOkVHQ9Js2KvG3rw4M=
X-Received: by 2002:a9d:366:: with SMTP id 93mr1119551otv.183.1575916638211;
 Mon, 09 Dec 2019 10:37:18 -0800 (PST)
MIME-Version: 1.0
References: <d509cd368f8d4167a1fdff12613c35a2@dlr.de>
In-Reply-To: <d509cd368f8d4167a1fdff12613c35a2@dlr.de>
Date: Mon, 9 Dec 2019 10:38:13 -0800
Message-ID: <CAL263iwKA_R=30JEohT88GPAP6xm-V1VLSL2mNtk1UbJJ9bJPw@mail.gmail.com>
To: Robert.Poehlmann@dlr.de
Subject: Re: [USRP-users] Default RFNoC image for N310 does not compile
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2994867572792355519=="
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

--===============2994867572792355519==
Content-Type: multipart/alternative; boundary="0000000000006aa53d059949afe9"

--0000000000006aa53d059949afe9
Content-Type: text/plain; charset="UTF-8"

Hi Robert,

Thanks for the bug report.

If you're just trying to use RFNoC at this point, I would recommend to
stick with the latest stable release, which at this time is v3.14.1.1.

Note, 3.14.x.x UHD will require Vivado 2017.4.


Regards,
Nate Temple

On Mon, Dec 9, 2019 at 7:33 AM Robert via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all!
>
> I tried to compile the default RFNoC image for the N310, using UHD on tag
> v3.15.0.0-rc2 and Xilinx Vivado 2018.3.1.
>
> Running "make N310_RFNOC_XG", the IP cores are compiled successfully, but
> then Vivado shows the following errors:
>
> ERROR: [Synth 8-524] part-select [15:8] out of range of prefix
> 'STR_SINK_FIFOSIZE'
> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]
> ERROR: [Synth 8-521] parameter assignment could not be resolved to a
> constant [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]
> ERROR: [Synth 8-196] conditional expression could not be resolved to a
> constant [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:239]
> WARNING: [Synth 8-693] zero replication count - replication ignored
> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:26]
> WARNING: [Synth 8-693] zero replication count - replication ignored
> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:27]
> WARNING: [Synth 8-693] zero replication count - replication ignored
> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:31]
> ERROR: [Synth 8-6156] failed synthesizing module
> 'noc_shell__parameterized9'
> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:21]
> ERROR: [Synth 8-6156] failed synthesizing module 'noc_block_fosphor'
> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_block_fosphor.v:8]
> ERROR: [Synth 8-6156] failed synthesizing module 'n3xx_core'
> [/usr/local/src/uhd/fpga-src/usrp3/top/n3xx/n3xx_core.v:17]
> ERROR: [Synth 8-6156] failed synthesizing module 'n3xx'
> [/usr/local/src/uhd/fpga-src/usrp3/top/n3xx/dboards/mg/n3xx.v:13]
>
> The full build.log file is attached. I did not modify any files, just
> trying to compile the RFNoC example as provided.
>
>
>
>
> Btw I also tried to build the default image with "make N310_XG", this one
> compiles but failed later during DRC:
>
> [DRC BIVC-1] Bank IO standard Vcc: Conflicting Vcc voltages in bank 34.
> For example, the following two ports in this bank have conflicting VCCOs:
> ddr3_ck_p[0] (DIFF_SSTL15, requiring VCCO=1.500) and ddr3_addr[15]
> (LVCMOS18, requiring VCCO=1.800)
> [Vivado_Tcl 4-23] Error(s) found during DRC. Placer not run.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000006aa53d059949afe9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Robert,<br><br>Thanks for the bug report. <br><br>If=
 you&#39;re just trying to use RFNoC at this point, I would recommend to st=
ick with the latest stable release, which at this time is v3.14.1.1. <br><b=
r>Note, 3.14.x.x UHD will require Vivado 2017.4.<br><br><br>Regards,<br>Nat=
e Temple</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Dec 9, 2019 at 7:33 AM Robert via USRP-users &lt;<a=
 href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_1503436027014080033divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"=
ltr">
<p></p>
<div>Hi all!</div>
<div><br>
</div>
<div>I tried to compile the default RFNoC image for the N310, using UHD on =
tag v3.15.0.0-rc2 and Xilinx Vivado 2018.3.1.
<br>
</div>
<div><br>
</div>
<div>Running<code> &quot;make</code><code> N310_RFNOC_XG&quot;, the IP core=
s are compiled successfully, but then Vivado shows the following errors:</c=
ode></div>
<div><code></code><br>
</div>
<div>ERROR: [Synth 8-524] part-select [15:8] out of range of prefix &#39;ST=
R_SINK_FIFOSIZE&#39; [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell=
.v:270]<br>
ERROR: [Synth 8-521] parameter assignment could not be resolved to a consta=
nt [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]<br>
ERROR: [Synth 8-196] conditional expression could not be resolved to a cons=
tant [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:239]<br>
WARNING: [Synth 8-693] zero replication count - replication ignored [/usr/l=
ocal/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:26]<br>
WARNING: [Synth 8-693] zero replication count - replication ignored [/usr/l=
ocal/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:27]<br>
WARNING: [Synth 8-693] zero replication count - replication ignored [/usr/l=
ocal/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:31]<br>
ERROR: [Synth 8-6156] failed synthesizing module &#39;noc_shell__parameteri=
zed9&#39; [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:21]<br>
ERROR: [Synth 8-6156] failed synthesizing module &#39;noc_block_fosphor&#39=
; [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_block_fosphor.v:8]<br>
ERROR: [Synth 8-6156] failed synthesizing module &#39;n3xx_core&#39; [/usr/=
local/src/uhd/fpga-src/usrp3/top/n3xx/n3xx_core.v:17]<br>
ERROR: [Synth 8-6156] failed synthesizing module &#39;n3xx&#39; [/usr/local=
/src/uhd/fpga-src/usrp3/top/n3xx/dboards/mg/n3xx.v:13]</div>
<div><br>
</div>
<div>The full build.log file is attached. I did not modify any files, just =
trying to compile the RFNoC example as provided.<br>
</div>
<p></p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
<p>Btw I also tried to build the default image with &quot;make N310_XG&quot=
;, this one compiles but failed later during DRC:</p>
<p></p>
<div>[DRC BIVC-1] Bank IO standard Vcc: Conflicting Vcc voltages in bank 34=
. For example, the following two ports in this bank have conflicting VCCOs:
<br>
ddr3_ck_p[0] (DIFF_SSTL15, requiring VCCO=3D1.500) and ddr3_addr[15] (LVCMO=
S18, requiring VCCO=3D1.800)<br>
</div>
<div>
<div>[Vivado_Tcl 4-23] Error(s) found during DRC. Placer not run.<br>
<br>
</div>
<br>
</div>
<p></p>
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

--0000000000006aa53d059949afe9--


--===============2994867572792355519==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2994867572792355519==--

