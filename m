Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC88760A0D
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jul 2023 08:09:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DD275384B21
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jul 2023 02:08:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690265338; bh=ICoMZE+FFVEYfMvEEx3dwNMRQb/b8R/ftekAbkCRT2E=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=J7F4flO5p//0AZXNZ6oEtNOv8ugm3cev+5GfyAzx/iuFM/WLW0GU8GO1eiqWmCFTe
	 zbfbe8+4gdtG5Rmdv++QGamg1mqbzYSGRwTXVLVv6WlGoz9mW6hXy41JTERu7cuk2s
	 Yf+n0jOvYLkDVZ+uGt+CnKXnBLh+j0dkzmVsn9dIbjTdwP6UX95X/J6jmmtZKdGoyg
	 wpvYM8DrQ5JPzFhLUTOO+G9mOmkcL4kY/aK1S0xK8uN2Bmbe2eZLWfcwyevrVdSVwI
	 RKIySZHV2qIW0ChYhgYNWnCORV4AvWtNrQXHGsSivyxgVfJFTVgg7A4EkQPm3t4qb3
	 Kt/YJqMiHIH0g==
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 7E794384B1A
	for <usrp-users@lists.ettus.com>; Tue, 25 Jul 2023 02:08:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=g-ecc-u-tokyo-ac-jp.20221208.gappssmtp.com header.i=@g-ecc-u-tokyo-ac-jp.20221208.gappssmtp.com header.b="JqoMIPmm";
	dkim-atps=neutral
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-51e429e1eabso7597719a12.2
        for <usrp-users@lists.ettus.com>; Mon, 24 Jul 2023 23:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=g-ecc-u-tokyo-ac-jp.20221208.gappssmtp.com; s=20221208; t=1690265298; x=1690870098;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nS3IRZkiJIwFB0tsHBunATC2Db9Nc/f5XJDn7LuAlgM=;
        b=JqoMIPmmIK8YrhaU8Unot71yQMA/g2VANG6YGK3labzGTsFG8+24WMw3PSa1OEHxL1
         /g3Ap0xDjindB44gHrXdiLCiYHEgADW32eOOKQSAENXBDQEpzgsp9DxiCOGfViGvPaYM
         HQoCZ9wwJhgPHCnhQYfJkwXMwi6R67SgEMnBT9Ju8Hxfw8zgXpFiwGudAF1fwVhYWRtL
         qMPil5U1Jt4WvuHwYh+AOo2oaSbzvOuLRTXLTTfbtdkRsAQsdd00BILyy11UueKq1e3t
         pNvOnFp/sD8VRnwSiYf2kqAFFt5/XABk0jg7UhZ9LzXoC1lWLCfVKhZGR36BTnTNRt5+
         kcPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690265298; x=1690870098;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nS3IRZkiJIwFB0tsHBunATC2Db9Nc/f5XJDn7LuAlgM=;
        b=jySzWZo0MRkPLFj1lh+RqF1PAoR8GAbqQ2/XroImmuV79IFpqaT5FuJhsE7qAMxpM0
         CtqGHbYG/L7g/xCk7GPRUrLtOuVEwIUpluTEjxa/iHMdYKUnh8hZTHcsgmVoTXRLqpcu
         BFgbXmvmi+J533PgrLZXA85CJUj2xITDc8UZmrgdTQVPOtmOnfQuABAOzJjRkhP3dcgY
         IGjQI6w572lybo3agM5pEgJaUs7bfgv+OMtCTUQc+PAbX9GNmGizwaUn3k5PX8blVoO/
         lq/Y4kwisVzY9AWGyxW5R9vAAhjG630esN576u8nhczB66r1gOX3WZgKg85QzOjmB6ag
         LyhQ==
X-Gm-Message-State: ABy/qLYpUQYQr+l9ktwKElGqcMc+i/+cakwAFAqHp9LHoT1Nu92JiaMx
	UTWBr/mW20X1N9aRUj6gUjXiC//l5Wq+PU00H5Vihg==
X-Google-Smtp-Source: APBJJlFp+tOcZNo+u8okm3AsjpCfhBuTaQdjFfuOIQ3PkE85mA1O6mRsO7vcunmo/1a4wkYh/AtbQ9HuRXlEN+5V2Ew=
X-Received: by 2002:aa7:cf93:0:b0:51e:24e1:c0e9 with SMTP id
 z19-20020aa7cf93000000b0051e24e1c0e9mr9997752edx.10.1690265298176; Mon, 24
 Jul 2023 23:08:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAOcHjoKkjXQUK-w8433gJy-Cb+PdvUKmkhQ5xj=fx10cN1NyKg@mail.gmail.com>
 <CAFche=g57Ywga6p2x3O4zyiWSj660CC8gwkLYX-4x14i6fwQCQ@mail.gmail.com>
In-Reply-To: <CAFche=g57Ywga6p2x3O4zyiWSj660CC8gwkLYX-4x14i6fwQCQ@mail.gmail.com>
From: Aerman TUERXUN <armantursun@g.ecc.u-tokyo.ac.jp>
Date: Tue, 25 Jul 2023 15:08:06 +0900
Message-ID: <CAOcHjoJVc=xFaTbs4D7Zci9TT6DXHHa0TsE5bu_TETW5nqBJ7Q@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: GKWUFVPEGM3KO7LMPLUCHE5REEBIMQSU
X-Message-ID-Hash: GKWUFVPEGM3KO7LMPLUCHE5REEBIMQSU
X-MailFrom: armantursun@g.ecc.u-tokyo.ac.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building Bitstream for USRP X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GKWUFVPEGM3KO7LMPLUCHE5REEBIMQSU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0504801341092680109=="

--===============0504801341092680109==
Content-Type: multipart/alternative; boundary="000000000000aca1f80601498e0c"

--000000000000aca1f80601498e0c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Wade,

Thank you for your reply.
I got this error when I ran "make x410_100_rfnoc_image_core".
And I am using UHD-4.2 and Vivado 2019.1.1.

How can I check the required IP version of UHD? Is there any way to know
whether I should upgrade or downgrade the Vivado version?
Also, I am holding a University License of Vivado, is it possible that IP
is not available for my license?
Thanks.

Regards,
Arman


On Tue, Jul 25, 2023 at 7:04=E2=80=AFAM Wade Fife <wade.fife@ettus.com> wro=
te:

> Hi,
>
> What did you run to get this error? Which version of the UHD repo are you
> using?
>
> Building the FPGA requires a Vivado license, but all of the IP is include=
d
> with Vivado. Assuming you have a working Vivado license, please ensure yo=
u
> have the correct version of Vivado installed for the version of the FPGA
> you are building. The error message you received seems to suggest the
> version of Vivado you have installed doesn't match the version the IP is
> expecting:
>
> ERROR: [Common 17-69] Command failed: * IP definition '10G/25G Ethernet
> Subsystem (3.0)' for IP 'xge_pcs_pma' (customized with software release
> 2019.1.1) has a different revision in the IP Catalog.
>
> If the version of the IP that's included in your Vivado installation
> doesn't match the version of the IP that the UHD repo uses then Vivado wi=
ll
> "lock" the IP, causing the build to fail.
>
> Thanks,
>
> Wade
>
> On Sun, Jul 23, 2023 at 12:48=E2=80=AFAM Aerman TUERXUN <
> armantursun@g.ecc.u-tokyo.ac.jp> wrote:
>
>> Hi USRP users,
>>
>> I am trying to build a gain block on USRP X410.
>> When I tried to build bitstream for X410_XG_100, I got the following
>> errors.
>> Seems some IP is locked for USRP X410.
>> Does that mean I need to purchase the IPs for building bitstream?
>> It's odd to me that we still need to buy specific IPs to build bitsstrea=
m
>> with RFNoC.
>> How can I build a bitstream for X410?
>> Thanks in advance.
>>
>> Environment successfully initialized.
>> BUILDER: Checking tools...
>> * GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)
>> * Python 3.8.10
>> * Vivado v2019.1 (64-bit)
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
>> BUILDER: Building IP xge_pcs_pma
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
>> BUILDER: Staging IP in build directory...
>> BUILDER: Reserving IP location:
>> /uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma
>> BUILDER: Retargeting IP to part zynquplusRFSOC/xczu28dr/ffvg1517/-1/e...
>> BUILDER: Building IP...
>> [00:00:00] Executing command: vivado -mode batch -source
>> /uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log xge_pcs_pma.log
>> -nojournal
>> WARNING: [IP_Flow 19-2162] IP 'xge_pcs_pma' is locked:
>> CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the
>> following file is locked:
>> /uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pc=
s_pma.xci
>> CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for th=
e
>> following file is locked:
>> /uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pc=
s_pma.xci
>> [00:00:09] Current task: Initialization +++ Current Phase: Starting
>> [00:00:09] Current task: Initialization +++ Current Phase: Finished
>> [00:00:09] Executing Tcl: synth_design -top xge_pcs_pma -part
>> xczu28dr-ffvg1517-1-e -mode out_of_context
>> [00:00:09] Starting Synthesis Command
>> WARNING: [Vivado_Tcl 4-391] The following IPs are missing output product=
s
>> for Synthesis target. These output products could be required for
>> synthesis, please generate the output products using the generate_target=
 or
>> synth_ip command before running synth_design.
>> WARNING: [Vivado_Tcl 4-391] The following IPs are missing output product=
s
>> for Implementation target. These output products could be required for
>> synthesis, please generate the output products using the generate_target=
 or
>> synth_ip command before running synth_design.
>> WARNING: [IP_Flow 19-2162] IP 'xge_pcs_pma' is locked:
>> ERROR: [Synth 8-439] module 'xge_pcs_pma' not found
>> ERROR: [Common 17-69] Command failed: Synthesis failed - please see the
>> console or run log file for details
>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>> elaborated, synthesized or implemented design before executing this comm=
and.
>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>> elaborated, synthesized or implemented design before executing this comm=
and.
>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>> elaborated, synthesized or implemented design before executing this comm=
and.
>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>> elaborated, synthesized or implemented design before executing this comm=
and.
>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>> elaborated, synthesized or implemented design before executing this comm=
and.
>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>> elaborated, synthesized or implemented design before executing this comm=
and.
>> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
>> '/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_p=
cs_pma.xml'
>> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
>> '/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_p=
cs_pma.xml'
>> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
>> '/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_p=
cs_pma.xml'
>> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
>> '/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_p=
cs_pma.xml'
>> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
>> '/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_p=
cs_pma.xml'
>> ERROR: [Vivado 12-398] No designs are open
>> ERROR: [Common 17-69] Command failed: * IP definition '10G/25G Ethernet
>> Subsystem (3.0)' for IP 'xge_pcs_pma' (customized with software release
>> 2019.1.1) has a different revision in the IP Catalog.
>> [00:00:23] Current task: Synthesis +++ Current Phase: Starting
>> [00:00:23] Current task: Synthesis +++ Current Phase: Finished
>> [00:00:23] Process terminated. Status: Failure
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
>> Warnings:           4
>> Critical Warnings:  7
>> Errors:             10
>>
>> BUILDER: Releasing IP location:
>> /uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma
>> make[5]: *** [/uhd/fpga/usrp3/top/x400/ip/xge_pcs_pma/Makefile.inc:43:
>> /uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pc=
s_pma.xci.out]
>> Error 1
>> make[4]: *** [Makefile:129: X410_XG_100] Error 2
>> Built target x410_rfnoc_image_core
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000aca1f80601498e0c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Wade,</div><div><br></div><div>Thank you for your =
reply.</div><div>I got this error when I ran &quot;make x410_100_rfnoc_imag=
e_core&quot;.</div><div>And I am using UHD-4.2 and Vivado 2019.1.1.</div><d=
iv><br></div><div>How can I check the required IP version of UHD? Is there =
any way to know whether I should upgrade or downgrade the Vivado version?<b=
r></div><div>Also, I am holding a University License of Vivado, is it possi=
ble that IP is not available for my license?</div><div>Thanks.</div><div><b=
r></div><div>Regards,</div><div>Arman<br></div><div><br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 2=
5, 2023 at 7:04=E2=80=AFAM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.=
com">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi,</div><div><br></div><div>=
What did you run to get this error? Which version of the UHD repo are you u=
sing?<br></div><div><br></div><div>Building the FPGA requires a Vivado lice=
nse, but all of the IP is included with Vivado. Assuming you have a working=
 Vivado license, please ensure you have the correct version of Vivado insta=
lled for the version of the FPGA you are building. The error message you re=
ceived seems to suggest the version of Vivado you have installed doesn&#39;=
t match the version the IP is expecting:</div><div><br></div><div>
ERROR: [Common 17-69] Command failed: * IP definition &#39;10G/25G Ethernet=
=20
Subsystem (3.0)&#39; for IP &#39;xge_pcs_pma&#39; (customized with software=
 release=20
2019.1.1) has a different revision in the IP Catalog.</div><div><br></div><=
div>If the version of the IP that&#39;s included in your Vivado installatio=
n doesn&#39;t match the version of the IP that the UHD repo uses then Vivad=
o will &quot;lock&quot; the IP, causing the build to fail. <br></div><div><=
br></div><div>Thanks,</div><div><br></div><div>Wade<br>

</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Sun, Jul 23, 2023 at 12:48=E2=80=AFAM Aerman TUERXUN &lt;<a href=
=3D"mailto:armantursun@g.ecc.u-tokyo.ac.jp" target=3D"_blank">armantursun@g=
.ecc.u-tokyo.ac.jp</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div>Hi USRP users,</div><div><br></div>=
<div>I am trying to build a gain block on USRP X410.</div><div>When I tried=
 to build bitstream for X410_XG_100, I got the following errors.</div><div>=
Seems some IP is locked for USRP X410.</div><div>Does that mean I need to p=
urchase the IPs for building bitstream?</div><div>It&#39;s odd to me that w=
e still need to buy specific IPs to build bitsstream with RFNoC.</div><div>=
How can I build a bitstream for X410?</div><div>Thanks in advance. <br></di=
v><div><br></div><div>Environment successfully initialized.<br>BUILDER: Che=
cking tools...<br>* GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gn=
u)<br>* Python 3.8.10<br>* Vivado v2019.1 (64-bit)<br>=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
>BUILDER: Building IP xge_pcs_pma<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>BUILDER: Stagi=
ng IP in build directory...<br>BUILDER: Reserving IP location: /uhd/fpga/us=
rp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma<br>BUILDER: Retargeti=
ng IP to part zynquplusRFSOC/xczu28dr/ffvg1517/-1/e...<br>BUILDER: Building=
 IP...<br>[00:00:00] Executing command: vivado -mode batch -source /uhd/fpg=
a/usrp3/tools/scripts/viv_generate_ip.tcl -log xge_pcs_pma.log -nojournal<b=
r>WARNING: [IP_Flow 19-2162] IP &#39;xge_pcs_pma&#39; is locked:<br>CRITICA=
L WARNING: [filemgmt 20-1366] Unable to reset target(s) for the following f=
ile is locked: /uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pc=
s_pma/xge_pcs_pma.xci<br>CRITICAL WARNING: [filemgmt 20-1365] Unable to gen=
erate target(s) for the following file is locked: /uhd/fpga/usrp3/top/x400/=
build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pcs_pma.xci<br>[00:00:09] Curr=
ent task: Initialization +++ Current Phase: Starting<br>[00:00:09] Current =
task: Initialization +++ Current Phase: Finished<br>[00:00:09] Executing Tc=
l: synth_design -top xge_pcs_pma -part xczu28dr-ffvg1517-1-e -mode out_of_c=
ontext<br>[00:00:09] Starting Synthesis Command<br>WARNING: [Vivado_Tcl 4-3=
91] The following IPs are missing output products for Synthesis target. The=
se output products could be required for synthesis, please generate the out=
put products using the generate_target or synth_ip command before running s=
ynth_design.<br>WARNING: [Vivado_Tcl 4-391] The following IPs are missing o=
utput products for Implementation target. These output products could be re=
quired for synthesis, please generate the output products using the generat=
e_target or synth_ip command before running synth_design.<br>WARNING: [IP_F=
low 19-2162] IP &#39;xge_pcs_pma&#39; is locked:<br>ERROR: [Synth 8-439] mo=
dule &#39;xge_pcs_pma&#39; not found<br>ERROR: [Common 17-69] Command faile=
d: Synthesis failed - please see the console or run log file for details<br=
>ERROR: [Common 17-53] User Exception: No open design. Please open an elabo=
rated, synthesized or implemented design before executing this command.<br>=
ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.<br>E=
RROR: [Common 17-53] User Exception: No open design. Please open an elabora=
ted, synthesized or implemented design before executing this command.<br>ER=
ROR: [Common 17-53] User Exception: No open design. Please open an elaborat=
ed, synthesized or implemented design before executing this command.<br>ERR=
OR: [Common 17-53] User Exception: No open design. Please open an elaborate=
d, synthesized or implemented design before executing this command.<br>ERRO=
R: [Common 17-53] User Exception: No open design. Please open an elaborated=
, synthesized or implemented design before executing this command.<br>CRITI=
CAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file &#39;/uhd/fpga=
/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pcs_pma.xml&#3=
9;<br>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file &#3=
9;/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pcs=
_pma.xml&#39;<br>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized B=
OM file &#39;/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_=
pma/xge_pcs_pma.xml&#39;<br>CRITICAL WARNING: [IP_Flow 19-4739] Writing unc=
ustomized BOM file &#39;/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-=
1e/xge_pcs_pma/xge_pcs_pma.xml&#39;<br>CRITICAL WARNING: [IP_Flow 19-4739] =
Writing uncustomized BOM file &#39;/uhd/fpga/usrp3/top/x400/build-ip/xczu28=
drffvg1517-1e/xge_pcs_pma/xge_pcs_pma.xml&#39;<br>ERROR: [Vivado 12-398] No=
 designs are open<br>ERROR: [Common 17-69] Command failed: * IP definition =
&#39;10G/25G Ethernet Subsystem (3.0)&#39; for IP &#39;xge_pcs_pma&#39; (cu=
stomized with software release 2019.1.1) has a different revision in the IP=
 Catalog.<br>[00:00:23] Current task: Synthesis +++ Current Phase: Starting=
<br>[00:00:23] Current task: Synthesis +++ Current Phase: Finished<br>[00:0=
0:23] Process terminated. Status: Failure<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>Wa=
rnings: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4<br>Critical Warnings: =C2=A07<=
br>Errors: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 10<br><br>BUILDER: Rel=
easing IP location: /uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/x=
ge_pcs_pma<br>make[5]: *** [/uhd/fpga/usrp3/top/x400/ip/xge_pcs_pma/Makefil=
e.inc:43: /uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma=
/xge_pcs_pma.xci.out] Error 1<br>make[4]: *** [Makefile:129: X410_XG_100] E=
rror 2<br>Built target x410_rfnoc_image_core</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000aca1f80601498e0c--

--===============0504801341092680109==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0504801341092680109==--
