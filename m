Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E58117608
	for <lists+usrp-users@lfdr.de>; Mon,  9 Dec 2019 20:43:15 +0100 (CET)
Received: from [::1] (port=50122 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ieOw5-0004Dg-Uv; Mon, 09 Dec 2019 14:43:13 -0500
Received: from mail-ot1-f49.google.com ([209.85.210.49]:40753)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1ieOw2-00043p-3O
 for usrp-users@lists.ettus.com; Mon, 09 Dec 2019 14:43:10 -0500
Received: by mail-ot1-f49.google.com with SMTP id i15so13300018oto.7
 for <usrp-users@lists.ettus.com>; Mon, 09 Dec 2019 11:42:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iEyl2Aj3hOeqG01L4RUzURy8qh1b7irsAd4hSYO+ixg=;
 b=zgTC685kAh07TTzEzjti5tGeYMz59VkzODpiCSPVbRprsEJPLGaWu1blUcuJ53yiU+
 z5mxK/9QP71QUIm8YXJ+VaJ1HjZBfiGmVhBH6m3wgaYKJoGKiHI47uKS3QYtn2XI1Jey
 q8cEqrY9x63GWVnOFss7v9tXr/2yDtP39Hq/1CtEd/tF2YF/EFJscDUcDB4HQvHdGyQF
 EjmktQSGWjeelYHX7DSAnj+lm3MUkhn7gXkzZ0TSdWRQT5N9m/0jTlr4XaNrgOmVAPRV
 W8cx10unNmhifQUOyyVWwcgWx0xt7CfTdOks9IxUee+obvwR7LlZOOdKSx4PIj2OJVBr
 CucA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iEyl2Aj3hOeqG01L4RUzURy8qh1b7irsAd4hSYO+ixg=;
 b=Kubx0WLvUi3zzqjgi5wLtkouOtN3zAieVnoNZ4t8ws0Geqk7Ni/kiYByPuYJUD2Z/O
 0JcU6B62bpMPd8ew441rmeIVwDuoAozTWsyh6oGMr5jDDmyyUjQPkP1ncy3kYjUMXEzd
 aRtE2qJzM1MEeKg9aI2VL5dKsA4auzyb/YZGlOysLoQDqOIrNJuTxXkYGkQRUsNQVcnU
 xWgLUFHttiEbvyUyR1rNQR3VeC5zTKu3k6uOncK/XLKAPexQOQEJW+DgI4PhsSKLfL5R
 fglPYiCEMWdeBFlV8qXzaGSDShSKdxoiZjNb1eOUxsAqGjCwowbXYy3iGMxJtUG8x/Rd
 yByA==
X-Gm-Message-State: APjAAAU6RFLQWUFc3+vuwP5MXEASZyMEdh7qwjvqaLTyCYBVyENxp3Vl
 rhZbGhSelGDLW+wUXtl/UtKzpUCdJL3Z4Zjr/jOJWBYJ
X-Google-Smtp-Source: APXvYqz0DEVq8/QfIu7uyzUAgcM+PBd5HNF3AWJrk2fhRMnJyhhrGufbrVTrGK+d7EnIWRLXqV+eLkLRD/pQozgvJHY=
X-Received: by 2002:a05:6830:1e2d:: with SMTP id
 t13mr23445161otr.128.1575920549447; 
 Mon, 09 Dec 2019 11:42:29 -0800 (PST)
MIME-Version: 1.0
References: <d509cd368f8d4167a1fdff12613c35a2@dlr.de>
 <CAL263iwKA_R=30JEohT88GPAP6xm-V1VLSL2mNtk1UbJJ9bJPw@mail.gmail.com>
In-Reply-To: <CAL263iwKA_R=30JEohT88GPAP6xm-V1VLSL2mNtk1UbJJ9bJPw@mail.gmail.com>
Date: Mon, 9 Dec 2019 11:43:25 -0800
Message-ID: <CAL263iyqgz_ALuntLoCcpum7k20eXKEXYHUZhqNouUr9r7cwig@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============3350042264807681628=="
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

--===============3350042264807681628==
Content-Type: multipart/alternative; boundary="0000000000008b6a7805994a9863"

--0000000000008b6a7805994a9863
Content-Type: text/plain; charset="UTF-8"

Hi Robert,

So this is a bug related to Vivado, you will need to install this linked
below patch and it should resolve it.

https://www.xilinx.com/support/answers/71898.html

Regards,
Nate Temple

On Mon, Dec 9, 2019 at 10:38 AM Nate Temple <nate.temple@ettus.com> wrote:

> Hi Robert,
>
> Thanks for the bug report.
>
> If you're just trying to use RFNoC at this point, I would recommend to
> stick with the latest stable release, which at this time is v3.14.1.1.
>
> Note, 3.14.x.x UHD will require Vivado 2017.4.
>
>
> Regards,
> Nate Temple
>
> On Mon, Dec 9, 2019 at 7:33 AM Robert via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi all!
>>
>> I tried to compile the default RFNoC image for the N310, using UHD on tag
>> v3.15.0.0-rc2 and Xilinx Vivado 2018.3.1.
>>
>> Running "make N310_RFNOC_XG", the IP cores are compiled successfully,
>> but then Vivado shows the following errors:
>>
>> ERROR: [Synth 8-524] part-select [15:8] out of range of prefix
>> 'STR_SINK_FIFOSIZE'
>> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]
>> ERROR: [Synth 8-521] parameter assignment could not be resolved to a
>> constant [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]
>> ERROR: [Synth 8-196] conditional expression could not be resolved to a
>> constant [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:239]
>> WARNING: [Synth 8-693] zero replication count - replication ignored
>> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:26]
>> WARNING: [Synth 8-693] zero replication count - replication ignored
>> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:27]
>> WARNING: [Synth 8-693] zero replication count - replication ignored
>> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:31]
>> ERROR: [Synth 8-6156] failed synthesizing module
>> 'noc_shell__parameterized9'
>> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:21]
>> ERROR: [Synth 8-6156] failed synthesizing module 'noc_block_fosphor'
>> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_block_fosphor.v:8]
>> ERROR: [Synth 8-6156] failed synthesizing module 'n3xx_core'
>> [/usr/local/src/uhd/fpga-src/usrp3/top/n3xx/n3xx_core.v:17]
>> ERROR: [Synth 8-6156] failed synthesizing module 'n3xx'
>> [/usr/local/src/uhd/fpga-src/usrp3/top/n3xx/dboards/mg/n3xx.v:13]
>>
>> The full build.log file is attached. I did not modify any files, just
>> trying to compile the RFNoC example as provided.
>>
>>
>>
>>
>> Btw I also tried to build the default image with "make N310_XG", this one
>> compiles but failed later during DRC:
>>
>> [DRC BIVC-1] Bank IO standard Vcc: Conflicting Vcc voltages in bank 34.
>> For example, the following two ports in this bank have conflicting VCCOs:
>> ddr3_ck_p[0] (DIFF_SSTL15, requiring VCCO=1.500) and ddr3_addr[15]
>> (LVCMOS18, requiring VCCO=1.800)
>> [Vivado_Tcl 4-23] Error(s) found during DRC. Placer not run.
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000008b6a7805994a9863
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Robert, <br></div><div class=3D"gmail_default" style=
=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_d=
efault" style=3D"font-family:arial,helvetica,sans-serif">So this is a bug r=
elated to Vivado, you will need to install this linked below patch and it s=
hould resolve it.</div><div class=3D"gmail_default" style=3D"font-family:ar=
ial,helvetica,sans-serif"><br></div><div class=3D"gmail_default" style=3D"f=
ont-family:arial,helvetica,sans-serif"><a href=3D"https://www.xilinx.com/su=
pport/answers/71898.html">https://www.xilinx.com/support/answers/71898.html=
</a></div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:ar=
ial,helvetica,sans-serif">Regards,</div><div class=3D"gmail_default" style=
=3D"font-family:arial,helvetica,sans-serif">Nate Temple<br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, De=
c 9, 2019 at 10:38 AM Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.c=
om">nate.temple@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" styl=
e=3D"font-family:arial,helvetica,sans-serif">Hi Robert,<br><br>Thanks for t=
he bug report. <br><br>If you&#39;re just trying to use RFNoC at this point=
, I would recommend to stick with the latest stable release, which at this =
time is v3.14.1.1. <br><br>Note, 3.14.x.x UHD will require Vivado 2017.4.<b=
r><br><br>Regards,<br>Nate Temple</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 9, 2019 at 7:33 AM Rober=
t via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_-7724419252963540251gmail-m_1503436027014080033divtagdef=
aultwrapper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,H=
elvetica,sans-serif" dir=3D"ltr">
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
</blockquote></div>

--0000000000008b6a7805994a9863--


--===============3350042264807681628==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3350042264807681628==--

