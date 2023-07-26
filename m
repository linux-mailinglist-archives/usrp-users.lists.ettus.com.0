Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2B0764056
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jul 2023 22:12:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2470A384C3A
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jul 2023 16:12:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690402335; bh=oraqbH7N6wG95CIUpva8WQ8oJnSU+yqhZwXLhTnuU78=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=r9E9UNir5+jyoca4JGI/rrDBlDn7g6iTAgdi9BufbsEs/eaNtVQod803Qth5aD9JC
	 imnH5mexEFGKnImKJnBpSxpMms0PhGiLOuGQa5SZdHyICbvrQzzwMa1VvPqlWwPLDZ
	 oIBdTsO6XHLcUI09oUCTV0HYbX2jxonv94ztGq86mkrck16u5f00Cz9qKoUtQ7CH8e
	 kxoY2tEWjeRtelmSQbyzRh911/8xVc9Yc7SC+mPsWGa9rTkIM2kuQB4X0Fjy0M62X9
	 W6kbW+ZksvFrHNg94zx8eB95ID3Uuw68Ltr+dXNYhL3obwPyp4hN8MuOSSZKFdHQpH
	 eRJBm7YfUrsHQ==
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	by mm2.emwd.com (Postfix) with ESMTPS id E548B383B8C
	for <usrp-users@lists.ettus.com>; Wed, 26 Jul 2023 16:11:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="aKejji3T";
	dkim-atps=neutral
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-4fe0fe622c3so298379e87.2
        for <usrp-users@lists.ettus.com>; Wed, 26 Jul 2023 13:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1690402294; x=1691007094;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5E2GuFe78S36HXl8YUL8P+VYr8n8SOvhm6WJYMQM3Kw=;
        b=aKejji3TbdH36SERKdQzD9rHvIOAxiJrOPz0s8V6UC7ZxMPMSUs0jeghRw6ChBv317
         pppxul/RBD/ikS5JAaJ1P7udfDwzDdnomLnA0TZ9Gx8spJoUQJEr2M23Sf8ncgHwwi83
         aP+FSVACskzxel2Kmvczjz+czCdFNTMYvrDs1E+wK+dJu5Og3jwlFAgh4diPP9M9rrnY
         dQOLUmsVnD2WpovkVQKc5xcDnNrqsnQzUhItXR41SwjOaUlniYBWxOwIawrsslHq1fxu
         zsij7JuAOy502ybwLSpdxWf4SUM7T+fE6pdCYYqG7OuTPiRdk+abdavCdy/raw8oJHqw
         sM1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690402294; x=1691007094;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5E2GuFe78S36HXl8YUL8P+VYr8n8SOvhm6WJYMQM3Kw=;
        b=HAFuQfMphdZfNRLJeocJ88nzw0DphOODTlJRvMiK+wwi+S/9kFdATvcJHSiXtREAki
         HMVz4wLddLxfYY6PAAHYAKOGmRQif0e+ivXdPAuM0gWDyZvKs+8QlkLIiSg77QIe0jPd
         LQPSsSPmUt6gg+PiTmi32gvwxtTV26CNWPi1owAoL8pWpPR7QI6xtD3Tt8gJkk0dUdNe
         q/5EJv9pipQWlCjZnf1l4GFfOFK9umCFfuuSXAOJ30Aefm0vey4UpfQh0MXJICczhS9T
         frM7H17dJE5xrmbvEkCUkGDmdW+LYICsU7ZWhofw2THCdj5/QJCd5xWGj4X3QT4RKpRR
         QNxw==
X-Gm-Message-State: ABy/qLZTgWo6omuokcmHyiJy/xRlTyIcrntlMIapGqS7XBccafr6OW3h
	aHUsv2qA4tjMawTLiJcIFwyNI/DCDcHI5XvDnzUd4FtS
X-Google-Smtp-Source: APBJJlHvLkpHWCY7Bf9dSGLSE/pi22bK58Of7C+Rv0Z+SynQa0UH2NJvE96uxQIYuFz5hxuS2K8LnKqhrFgt+N3h8DY=
X-Received: by 2002:a2e:b004:0:b0:2b8:3ff3:cd93 with SMTP id
 y4-20020a2eb004000000b002b83ff3cd93mr100414ljk.7.1690402294127; Wed, 26 Jul
 2023 13:11:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAOcHjoKkjXQUK-w8433gJy-Cb+PdvUKmkhQ5xj=fx10cN1NyKg@mail.gmail.com>
 <CAFche=g57Ywga6p2x3O4zyiWSj660CC8gwkLYX-4x14i6fwQCQ@mail.gmail.com> <CAOcHjoJVc=xFaTbs4D7Zci9TT6DXHHa0TsE5bu_TETW5nqBJ7Q@mail.gmail.com>
In-Reply-To: <CAOcHjoJVc=xFaTbs4D7Zci9TT6DXHHa0TsE5bu_TETW5nqBJ7Q@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 26 Jul 2023 15:11:18 -0500
Message-ID: <CAFche=iCczogFBEd_UGNL+m7MUXWLbOe54L0t_icDcNhMd1hAQ@mail.gmail.com>
To: Aerman TUERXUN <armantursun@g.ecc.u-tokyo.ac.jp>
Message-ID-Hash: GP27H6YVJVOBP5FTYHDBTQSLG5LT7PW7
X-Message-ID-Hash: GP27H6YVJVOBP5FTYHDBTQSLG5LT7PW7
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building Bitstream for USRP X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GP27H6YVJVOBP5FTYHDBTQSLG5LT7PW7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8713470546802369427=="

--===============8713470546802369427==
Content-Type: multipart/alternative; boundary="00000000000044f6b9060169743e"

--00000000000044f6b9060169743e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The exact Vivado version required for UHD 4.2 is 2019.1.1_AR73068. Make
sure you have Vivado patch AR 73068 installed:
https://github.com/EttusResearch/uhd/blob/UHD-4.2/fpga/usrp3/top/x400/setup=
env.sh#L9

Running `source setupenv.sh` should check the Vivado version and provide an
error message if the version is not correct.

In your case, it failed on xge_pcs_pma which needs to be version 3.0 of
xxv_ethernet:
https://github.com/EttusResearch/uhd/blob/UHD-4.2/fpga/usrp3/top/x400/ip/xg=
e_pcs_pma/xge_pcs_pma.xci#L10

In general, the first step is to make sure you have the right Vivado
version and patches installed. Then try building an unmodified FPGA to make
sure things are working:

cd uhd/fpga/usrp3/top/x400
source setupenv.sh
make X410_XG_100

Once that's working, then try building your custom FPGA again.

Wade

On Tue, Jul 25, 2023 at 1:08=E2=80=AFAM Aerman TUERXUN <
armantursun@g.ecc.u-tokyo.ac.jp> wrote:

> Hi Wade,
>
> Thank you for your reply.
> I got this error when I ran "make x410_100_rfnoc_image_core".
> And I am using UHD-4.2 and Vivado 2019.1.1.
>
> How can I check the required IP version of UHD? Is there any way to know
> whether I should upgrade or downgrade the Vivado version?
> Also, I am holding a University License of Vivado, is it possible that IP
> is not available for my license?
> Thanks.
>
> Regards,
> Arman
>
>
> On Tue, Jul 25, 2023 at 7:04=E2=80=AFAM Wade Fife <wade.fife@ettus.com> w=
rote:
>
>> Hi,
>>
>> What did you run to get this error? Which version of the UHD repo are yo=
u
>> using?
>>
>> Building the FPGA requires a Vivado license, but all of the IP is
>> included with Vivado. Assuming you have a working Vivado license, please
>> ensure you have the correct version of Vivado installed for the version =
of
>> the FPGA you are building. The error message you received seems to sugge=
st
>> the version of Vivado you have installed doesn't match the version the I=
P
>> is expecting:
>>
>> ERROR: [Common 17-69] Command failed: * IP definition '10G/25G Ethernet
>> Subsystem (3.0)' for IP 'xge_pcs_pma' (customized with software release
>> 2019.1.1) has a different revision in the IP Catalog.
>>
>> If the version of the IP that's included in your Vivado installation
>> doesn't match the version of the IP that the UHD repo uses then Vivado w=
ill
>> "lock" the IP, causing the build to fail.
>>
>> Thanks,
>>
>> Wade
>>
>> On Sun, Jul 23, 2023 at 12:48=E2=80=AFAM Aerman TUERXUN <
>> armantursun@g.ecc.u-tokyo.ac.jp> wrote:
>>
>>> Hi USRP users,
>>>
>>> I am trying to build a gain block on USRP X410.
>>> When I tried to build bitstream for X410_XG_100, I got the following
>>> errors.
>>> Seems some IP is locked for USRP X410.
>>> Does that mean I need to purchase the IPs for building bitstream?
>>> It's odd to me that we still need to buy specific IPs to build
>>> bitsstream with RFNoC.
>>> How can I build a bitstream for X410?
>>> Thanks in advance.
>>>
>>> Environment successfully initialized.
>>> BUILDER: Checking tools...
>>> * GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)
>>> * Python 3.8.10
>>> * Vivado v2019.1 (64-bit)
>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
>>> BUILDER: Building IP xge_pcs_pma
>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
>>> BUILDER: Staging IP in build directory...
>>> BUILDER: Reserving IP location:
>>> /uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma
>>> BUILDER: Retargeting IP to part zynquplusRFSOC/xczu28dr/ffvg1517/-1/e..=
.
>>> BUILDER: Building IP...
>>> [00:00:00] Executing command: vivado -mode batch -source
>>> /uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log xge_pcs_pma.log
>>> -nojournal
>>> WARNING: [IP_Flow 19-2162] IP 'xge_pcs_pma' is locked:
>>> CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the
>>> following file is locked:
>>> /uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_p=
cs_pma.xci
>>> CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for
>>> the following file is locked:
>>> /uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_p=
cs_pma.xci
>>> [00:00:09] Current task: Initialization +++ Current Phase: Starting
>>> [00:00:09] Current task: Initialization +++ Current Phase: Finished
>>> [00:00:09] Executing Tcl: synth_design -top xge_pcs_pma -part
>>> xczu28dr-ffvg1517-1-e -mode out_of_context
>>> [00:00:09] Starting Synthesis Command
>>> WARNING: [Vivado_Tcl 4-391] The following IPs are missing output
>>> products for Synthesis target. These output products could be required =
for
>>> synthesis, please generate the output products using the generate_targe=
t or
>>> synth_ip command before running synth_design.
>>> WARNING: [Vivado_Tcl 4-391] The following IPs are missing output
>>> products for Implementation target. These output products could be requ=
ired
>>> for synthesis, please generate the output products using the
>>> generate_target or synth_ip command before running synth_design.
>>> WARNING: [IP_Flow 19-2162] IP 'xge_pcs_pma' is locked:
>>> ERROR: [Synth 8-439] module 'xge_pcs_pma' not found
>>> ERROR: [Common 17-69] Command failed: Synthesis failed - please see the
>>> console or run log file for details
>>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>>> elaborated, synthesized or implemented design before executing this com=
mand.
>>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>>> elaborated, synthesized or implemented design before executing this com=
mand.
>>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>>> elaborated, synthesized or implemented design before executing this com=
mand.
>>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>>> elaborated, synthesized or implemented design before executing this com=
mand.
>>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>>> elaborated, synthesized or implemented design before executing this com=
mand.
>>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>>> elaborated, synthesized or implemented design before executing this com=
mand.
>>> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
>>> '/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_=
pcs_pma.xml'
>>> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
>>> '/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_=
pcs_pma.xml'
>>> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
>>> '/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_=
pcs_pma.xml'
>>> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
>>> '/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_=
pcs_pma.xml'
>>> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
>>> '/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_=
pcs_pma.xml'
>>> ERROR: [Vivado 12-398] No designs are open
>>> ERROR: [Common 17-69] Command failed: * IP definition '10G/25G Ethernet
>>> Subsystem (3.0)' for IP 'xge_pcs_pma' (customized with software release
>>> 2019.1.1) has a different revision in the IP Catalog.
>>> [00:00:23] Current task: Synthesis +++ Current Phase: Starting
>>> [00:00:23] Current task: Synthesis +++ Current Phase: Finished
>>> [00:00:23] Process terminated. Status: Failure
>>>
>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
>>> Warnings:           4
>>> Critical Warnings:  7
>>> Errors:             10
>>>
>>> BUILDER: Releasing IP location:
>>> /uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma
>>> make[5]: *** [/uhd/fpga/usrp3/top/x400/ip/xge_pcs_pma/Makefile.inc:43:
>>> /uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_p=
cs_pma.xci.out]
>>> Error 1
>>> make[4]: *** [Makefile:129: X410_XG_100] Error 2
>>> Built target x410_rfnoc_image_core
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--00000000000044f6b9060169743e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The exact Vivado version required for UHD 4.2 is 2019=
.1.1_AR73068. Make sure you have Vivado patch AR 73068 installed:</div><div=
><a href=3D"https://github.com/EttusResearch/uhd/blob/UHD-4.2/fpga/usrp3/to=
p/x400/setupenv.sh#L9">https://github.com/EttusResearch/uhd/blob/UHD-4.2/fp=
ga/usrp3/top/x400/setupenv.sh#L9</a></div><div><br></div><div>Running `sour=
ce setupenv.sh` should check the Vivado version and provide an error messag=
e if the version is not correct.<br></div><div><br></div><div>In your case,=
 it failed on
xge_pcs_pma which needs to be version 3.0 of xxv_ethernet:</div><div><a hre=
f=3D"https://github.com/EttusResearch/uhd/blob/UHD-4.2/fpga/usrp3/top/x400/=
ip/xge_pcs_pma/xge_pcs_pma.xci#L10">https://github.com/EttusResearch/uhd/bl=
ob/UHD-4.2/fpga/usrp3/top/x400/ip/xge_pcs_pma/xge_pcs_pma.xci#L10</a></div>=
<div><br></div><div>In general, the first step is to make sure you have the=
 right Vivado version and patches installed. Then try building an unmodifie=
d FPGA to make sure things are working:</div><div><br></div><div>cd uhd/fpg=
a/usrp3/top/x400</div><div>source setupenv.sh</div><div>make X410_XG_100</d=
iv><div><br></div><div>Once that&#39;s working, then try building your cust=
om FPGA again.<br></div><div><br></div><div>Wade</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 25, 2023=
 at 1:08=E2=80=AFAM Aerman TUERXUN &lt;<a href=3D"mailto:armantursun@g.ecc.=
u-tokyo.ac.jp">armantursun@g.ecc.u-tokyo.ac.jp</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Wade=
,</div><div><br></div><div>Thank you for your reply.</div><div>I got this e=
rror when I ran &quot;make x410_100_rfnoc_image_core&quot;.</div><div>And I=
 am using UHD-4.2 and Vivado 2019.1.1.</div><div><br></div><div>How can I c=
heck the required IP version of UHD? Is there any way to know whether I sho=
uld upgrade or downgrade the Vivado version?<br></div><div>Also, I am holdi=
ng a University License of Vivado, is it possible that IP is not available =
for my license?</div><div>Thanks.</div><div><br></div><div>Regards,</div><d=
iv>Arman<br></div><div><br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 25, 2023 at 7:04=E2=80=AFAM Wa=
de Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.f=
ife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div>Hi,</div><div><br></div><div>What did yo=
u run to get this error? Which version of the UHD repo are you using?<br></=
div><div><br></div><div>Building the FPGA requires a Vivado license, but al=
l of the IP is included with Vivado. Assuming you have a working Vivado lic=
ense, please ensure you have the correct version of Vivado installed for th=
e version of the FPGA you are building. The error message you received seem=
s to suggest the version of Vivado you have installed doesn&#39;t match the=
 version the IP is expecting:</div><div><br></div><div>
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
</blockquote></div>

--00000000000044f6b9060169743e--

--===============8713470546802369427==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8713470546802369427==--
