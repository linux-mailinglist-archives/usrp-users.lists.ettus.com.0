Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C0012688E10
	for <lists+usrp-users@lfdr.de>; Fri,  3 Feb 2023 04:38:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4AF2B383C51
	for <lists+usrp-users@lfdr.de>; Thu,  2 Feb 2023 22:38:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675395500; bh=l16NEFu76m6v/sUYsKlx4crDC/fkAZb4ImMFRaCz3yY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=XDERRXHb9NyfryodPrKlVVu9ETtIwzqWT/ysbwmpsVo11EBgf42pKq61DCkqJ3oDV
	 ox01rgg0GMCVLJqfMUs6H2OJ6U3adTR/pTcSOHbio9P1AdZWXHxfHPq0xm+ZcCi+eD
	 9TkkNeeuYT7YqhwxAsFN1Q/6/wCxspY3DEkuORNW859+tg26vGbXgqlgXuzXNRFw6y
	 zBo1bmDkHK5Q/uCVIYcZxWdHZM7l1jovEG7v6OkS3X45DiTy2MpTK+NG30OBz3Ik6p
	 ApinkEnGQv9vYf+r3/3PHA4hE4I8Z5wkCMgDEM0zENhbZJ7hmBfsHyTgrz4EuO0vwo
	 eu9cRxtl/0z4w==
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id D9C85383BE8
	for <usrp-users@lists.ettus.com>; Thu,  2 Feb 2023 22:38:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="2RX2RfsJ";
	dkim-atps=neutral
Received: by mail-ej1-f43.google.com with SMTP id hx15so11837001ejc.11
        for <usrp-users@lists.ettus.com>; Thu, 02 Feb 2023 19:38:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GAbblg41xrhHtyb80llwys6FKGmk8R7rbeYDR2py/Y8=;
        b=2RX2RfsJhXclzKGp77Rr3LDqtD4ZRlQurxg4XNtzfW3p2+qnxMZpMhqfbNHwLw4D1l
         M/ehgKwVGDtikdHejRZnHU4RdK/vbtDSklRLtJXwylVEB80M3ZoZJlGWElO0M8Mw23Om
         9Eqghj3JEtnk/sG46qnd0dACkQZquCKw7YpndKAyQRhFsbQAB1lad0+E4prcmbRD74gl
         xIyH2niPtb70E27P3o0jya4bYECkRLJ1l1QDemwEHFMAwhk9puOkfZxqxpuzUlfcSALP
         ogOCEMvC9PziFiXTiftN8U0P5LuUg1a/nztsqhY6UZhCFTyxg/vLJePm50EE+4+56i/5
         XwzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GAbblg41xrhHtyb80llwys6FKGmk8R7rbeYDR2py/Y8=;
        b=fEYwNPU1XxwJz4Jobzw9n9SW10uvx9W+NfmYXpG0JqehVr9qfhoAY5RjZwqRfrDgGN
         iW9xSl1yfrOMFAPi6T8iat7EQUa5TAzUtSmBe1Q36nqgALEex5tQo3ym4KeIkeQ+uapS
         qkC4TVIlHZyRFy3euf8QplVV5++J7Wa/WqTixKJjmWOQvUBKxQ62dlvGiq0ToQFR0hQB
         uZq7DV+RD4VmbV8xwG6qUQtqpWC/M7XFZrf4wDtBQYErN572/dWiwQwfDJuUWuQIZt7R
         nQdm0zCxjL1D0gZZAzvfTBQSNLym2T/+RoS45a7Wx5Yiho0SYUB6isMv4YwD2x0tYAIj
         Lnsw==
X-Gm-Message-State: AO0yUKUcUIMRlH4CTkUbp5xIXmTawaBNrulEOWf7aouTHaTOXm2KzLhs
	q9wRO4tVFc+2o/WZ3iBlBVdvKWdBf/zK5VrFpcR7MI20fcz1CpUkr0k=
X-Google-Smtp-Source: AK7set+J9UImG5csG+xJnhkL3EIwy8RK5KVvx+F6Qm4nS3CTEEFYNWncXcuAqDKsJsSd1ktwbaUhnqaN/8GbASIeIVA=
X-Received: by 2002:a17:907:20a5:b0:86e:8b7b:adb0 with SMTP id
 pw5-20020a17090720a500b0086e8b7badb0mr2614252ejb.130.1675395491652; Thu, 02
 Feb 2023 19:38:11 -0800 (PST)
MIME-Version: 1.0
References: <UX8mi9utjbHMzjxx15xWBxXZPMWYdEURx50EsrFtWQ@lists.ettus.com>
 <BYAPR03MB467853DF27EFC17161E17D86D3D09@BYAPR03MB4678.namprd03.prod.outlook.com>
 <BYAPR03MB467806254313359B175385A6D3D09@BYAPR03MB4678.namprd03.prod.outlook.com>
 <BYAPR03MB4678F59BE3B3272608F8DB42D3D09@BYAPR03MB4678.namprd03.prod.outlook.com>
In-Reply-To: <BYAPR03MB4678F59BE3B3272608F8DB42D3D09@BYAPR03MB4678.namprd03.prod.outlook.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 2 Feb 2023 21:37:55 -0600
Message-ID: <CAFche=gpxOnGaTJh=YaO25kCNP7=zhF8t4V+VU_PErhkwGp+fQ@mail.gmail.com>
To: "Minutolo, Lorenzo" <minutolo@caltech.edu>
Message-ID-Hash: 233U3T6IQVA6JEEYG2WP5A3AT6UCCYH5
X-Message-ID-Hash: 233U3T6IQVA6JEEYG2WP5A3AT6UCCYH5
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error when synthesizing example OOT block : IP "cmplx_mul" is locked
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/233U3T6IQVA6JEEYG2WP5A3AT6UCCYH5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2409818839030335728=="

--===============2409818839030335728==
Content-Type: multipart/alternative; boundary="00000000000023817005f3c3697a"

--00000000000023817005f3c3697a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lorenzo,

I tried your steps but couldn't reproduce the issue you're seeing. I wonder
if somehow the patch is not being picked up, or perhaps you somehow have
stale build files. Can you run the following?

cd fpga/usrp3/top/x300/
source setupenv.sh

What's the output of setupenv.sh?
At this point you can try:

make cleanall
make X300_HG

Typically the IP locked issue happens when there is a mismatch between the
version of Vivado that was used to generate the IP and the version of
Vivado that is being used to build the FPGA. You can see the Vivado version
that was used to generate the IP here:

https://github.com/EttusResearch/uhd/blob/UHD-4.4/fpga/usrp3/lib/ip/axi_hb3=
1/axi_hb31.xci#L247

You can see the version of the version of Vivado you're using to build the
FPGA when you run "source setupenv.sh". It is also possible to open the IP
in Vivado and unlock it by fixing whatever version mismatch it sees, but
you should be building with 2021.1_AR76780 or else other IP will give you
similar problems.

Please double check that you don't have changes or untracked files in your
repo (running `git status` should tell you) or old builds laying around
(`make cleanall` should remove those). And make sure that setupenv.sh
reports v2021.1_AR76780. If you have multiple patches or the same patch
installed in multiple places, that might also cause a version mismatch.

Wade

On Tue, Jan 31, 2023 at 5:06 PM Minutolo, Lorenzo <minutolo@caltech.edu>
wrote:

> After reading about this conversation on the mailing list
> https://lists.ettus.com/empathy/thread/DGJBPK6YADKXM2ETKPEVQQ7F5ALJCIDD
> I went ahead and erased my UHD distribution folder and started from
> scratch. Here is how to reproduce what I did:
>
> Given a patched version of Vivado installed on the system:
>
> /tools/Xilinx/Vivado/2021.1/bin/vivado -version
> Vivado v2021.1_AR76780 (64-bit)
> SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021
> IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021
> Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
>
> Commands:
>
> git clone git clone https://github.com/EttusResearch/uhd.git
> cd uhd
> git checkout UHD-4.4
> <optional>
> cd host
> mkdir build && cd build
> cmake ..
> make -j10
> sudo make install
> cd ../..
> <end optional>
> cd fpga/usrp3/top/x300/
> rfnoc_image_builder -c -d x300 -y ./x300_rfnoc_image_core.yml -t X300_HG
> -p /tools/Xilinx/Vivado/
>
> This results in the error reported below.
>
>
> ------------------------------
> *From:* Minutolo, Lorenzo <minutolo@caltech.edu>
> *Sent:* Tuesday, January 31, 2023 2:20 PM
> *To:* jmaloyan@umass.edu <jmaloyan@umass.edu>; usrp-users@lists.ettus.com
> <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: Error when synthesizing example OOT block :
> IP "cmplx_mul" is locked
>
> I tried installing Vivado 2021.1 and applying the right patch, using
> UHD-4.4 I still get the following error message:
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> BUILDER: Building IP axi_hb31
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> BUILDER: Staging IP in build directory...
> BUILDER: Reserving IP location:
> /home/lorenzo/uhd/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/axi_hb31
> BUILDER: Retargeting IP to part kintex7/xc7k325t/ffg900/-2...
> BUILDER: Building IP...
> [00:00:00] Executing command: vivado -mode batch -source
> /home/lorenzo/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log
> axi_hb31.log -nojournal
> WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is locked:
> [00:00:04] Current task: Initialization +++ Current Phase: Starting
> CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the
> following file is locked:
> /home/lorenzo/uhd/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/axi_hb31/=
axi_hb31.xci
> CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the
> following file is locked:
> /home/lorenzo/uhd/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/axi_hb31/=
axi_hb31.xci
> [00:00:04] Current task: Initialization +++ Current Phase: Finished
> [00:00:04] Executing Tcl: synth_design -top axi_hb31 -part
> xc7k325tffg900-2 -mode out_of_context
> [00:00:04] Starting Synthesis Command
> [00:00:04] Current task: Synthesis +++ Current Phase: Starting
> WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products
> for Synthesis target. These output products could be required for
> synthesis, please generate the output products using the generate_target =
or
> synth_ip command before running synth_design.
> WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is locked:
> ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources
> specified
>
>
> Currently looking for a workaround before reverting to 2019.1 and UHD 4.2
>
> Lorenzo
>
> ------------------------------
> *From:* Minutolo, Lorenzo <minutolo@caltech.edu>
> *Sent:* Tuesday, January 31, 2023 11:48 AM
> *To:* jmaloyan@umass.edu <jmaloyan@umass.edu>; usrp-users@lists.ettus.com
> <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: Error when synthesizing example OOT block :
> IP "cmplx_mul" is locked
>
> Same here.
> Since switching to Vivado 2021.1 and UHD-4.3 even compiling the stock
> firmware results in [IP_Flow 19-2162] IP 'axi_hb31' is locked.
> Apparently, this error is well known
> https://support.xilinx.com/s/article/58832?language=3Den_US
>
> I'm trying to switch to UHD 4.4 to see if this error goes away. Everythin=
g
> was working really well in UHD-4.2 and Vivado 2019.1.
>
> Best,
> Lorenzo
> ------------------------------
> *From:* jmaloyan@umass.edu <jmaloyan@umass.edu>
> *Sent:* Friday, January 27, 2023 2:17 PM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Error when synthesizing example OOT block : IP
> "cmplx_mul" is locked
>
>
> Hello,
>
>
> I have run into an issue when trying to synthesize the =E2=80=9Cgain=E2=
=80=9D RFNoC as
> described in the tutorial here
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0
>
>
> I get an error that the module cmplx mul is locked. I found that in the
> verilog file =E2=80=9Crfnoc_block_gain.v=E2=80=9D, the module is instanti=
ated there, but I
> am unsure how I should proceed working around this.
>
>
> Here is the output of the vivado -version
>
> Vivado v2021.1_AR76780 (64-bit)
>
> SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021
>
> IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021
>
> Copyright 1986-2021 Xilinx, Inc. All Rights Reserved
>
> And here is the output of the error
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
>
> BUILDER: Building IP cmplx_mul
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
>
> BUILDER: Staging IP in build directory...
>
> BUILDER: Reserving IP location:
> /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul
>
> BUILDER: Retargeting IP to part zynq/xc7z100/ffg900/-2...
>
> BUILDER: Building IP...
>
> [00:00:00] Executing command: vivado -mode batch -source
> /workarea/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log
> cmplx_mul.log -nojournal
>
> [00:00:05] Current task: Initialization +++ Current Phase: Starting
>
> WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:
>
> CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the
> following file is locked:
> /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmpl=
x_mul.xci
>
> CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the
> following file is locked:
> /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmpl=
x_mul.xci
>
> [00:00:05] Current task: Initialization +++ Current Phase: Finished
>
> [00:00:05] Executing Tcl: synth_design -top cmplx_mul -part
> xc7z100ffg900-2 -mode out_of_context
>
> [00:00:05] Starting Synthesis Command
>
> WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products
> for Synthesis target. These output products could be required for
> synthesis, please generate the output products using the generate_target =
or
> synth_ip command before running synth_design.
>
> WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:
>
> ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources
> specified
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this comma=
nd.
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this comma=
nd.
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this comma=
nd.
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this comma=
nd.
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this comma=
nd.
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this comma=
nd.
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmp=
lx_mul.xml'
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmp=
lx_mul.xml'
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmp=
lx_mul.xml'
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmp=
lx_mul.xml'
>
> [00:00:06] Current task: Synthesis +++ Current Phase: Starting
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmp=
lx_mul.xml'
>
> ERROR: [Vivado 12-398] No designs are open
>
> [00:00:06] Current task: Synthesis +++ Current Phase: Finished
>
> [00:00:06] Process terminated. Status: Failure
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
>
> Warnings: 3
>
> Critical Warnings: 7
>
> Errors: 8
>
> BUILDER: Releasing IP location:
> /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul
>
> make[1]: *** [/rfnoc-foo/fpga//ip/cmplx_mul/Makefile.inc:21:
> LIB_IP_CMPLX_MUL_TRGT] Error 1
>
> make[1]: Leaving directory '/workarea/uhd/fpga/usrp3/top/n3xx'
>
> make: *** [Makefile:90: N3X0_IP] Error 2
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000023817005f3c3697a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Lorenzo,</div><div><br></div><div>I tried your ste=
ps but couldn&#39;t reproduce the issue you&#39;re seeing. I wonder if some=
how the patch is not being picked up, or perhaps you somehow have stale bui=
ld files. Can you run the following?</div><div><br></div><div>
cd fpga/usrp3/top/x300/ <br></div><div>source setupenv.sh</div><div><br></d=
iv><div>What&#39;s the output of setupenv.sh?</div><div>At this point you c=
an try:</div><div><br></div><div>make cleanall<br></div><div>make X300_HG</=
div><div><br></div><div>Typically the IP locked issue happens when there is=
 a mismatch between the version of Vivado that was used to generate the IP =
and the version of Vivado that is being used to build the FPGA. You can see=
 the Vivado version that was used to generate the IP here:</div><div><br></=
div><div><a href=3D"https://github.com/EttusResearch/uhd/blob/UHD-4.4/fpga/=
usrp3/lib/ip/axi_hb31/axi_hb31.xci#L247">https://github.com/EttusResearch/u=
hd/blob/UHD-4.4/fpga/usrp3/lib/ip/axi_hb31/axi_hb31.xci#L247</a></div><div>=
<br></div><div>You can see the version of the version of Vivado you&#39;re =
using to build the FPGA when you run &quot;source setupenv.sh&quot;. It is =
also possible to open the IP in Vivado and unlock it by fixing whatever ver=
sion mismatch it sees, but you should be building with 2021.1_AR76780 or el=
se other IP will give you similar problems.</div><div><br></div><div>Please=
 double check that you don&#39;t have changes or untracked files in your re=
po (running `git status` should tell you) or old builds laying around (`mak=
e cleanall` should remove those). And make sure that setupenv.sh reports v2=
021.1_AR76780. If you have multiple patches or the same patch installed in =
multiple places, that might also cause a version mismatch.</div><div><br></=
div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Tue, Jan 31, 2023 at 5:06 PM Minutolo, Lorenzo &l=
t;<a href=3D"mailto:minutolo@caltech.edu">minutolo@caltech.edu</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D=
"msg2151749560673001324">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
After reading about this conversation on the mailing list=C2=A0<a href=3D"h=
ttps://lists.ettus.com/empathy/thread/DGJBPK6YADKXM2ETKPEVQQ7F5ALJCIDD" id=
=3D"m_2829748491903905892LPNoLPOWALinkPreview" target=3D"_blank">https://li=
sts.ettus.com/empathy/thread/DGJBPK6YADKXM2ETKPEVQQ7F5ALJCIDD</a></div>
<div></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I went ahead and erased my UHD distribution folder and started from scratch=
. Here is how to reproduce what I did:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Given a patched version of Vivado installed on the system:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
/tools/Xilinx/Vivado/2021.1/bin/vivado -version
<div>Vivado v2021.1_AR76780 (64-bit)</div>
<div>SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021</div>
<div>IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021</div>
<div>Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.</div>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Commands:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
git clone git clone <a href=3D"https://github.com/EttusResearch/uhd.git" id=
=3D"m_2829748491903905892LPlnk350834" target=3D"_blank">
https://github.com/EttusResearch/uhd.git</a><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
cd uhd</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
git checkout UHD-4.4</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
&lt;optional&gt;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
cd host</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
mkdir build &amp;&amp; cd build</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
cmake ..</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
make -j10</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
sudo make install</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
cd ../..</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
&lt;end optional&gt;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
cd fpga/usrp3/top/x300/</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
rfnoc_image_builder -c -d x300 -y ./x300_rfnoc_image_core.yml -t X300_HG -p=
 /tools/Xilinx/Vivado/<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
This results in the error reported below.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div></div>
<br>
<div id=3D"m_2829748491903905892appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_2829748491903905892divRplyFwdMsg" dir=3D"ltr"><font style=3D"f=
ont-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> =
Minutolo, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.edu" target=3D"_bl=
ank">minutolo@caltech.edu</a>&gt;<br>
<b>Sent:</b> Tuesday, January 31, 2023 2:20 PM<br>
<b>To:</b> <a href=3D"mailto:jmaloyan@umass.edu" target=3D"_blank">jmaloyan=
@umass.edu</a> &lt;<a href=3D"mailto:jmaloyan@umass.edu" target=3D"_blank">=
jmaloyan@umass.edu</a>&gt;; <a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-=
users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;=
<br>
<b>Subject:</b> [USRP-users] Re: Error when synthesizing example OOT block =
: IP &quot;cmplx_mul&quot; is locked</font>
<div>=C2=A0</div>
</div>

<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I tried installing Vivado 2021.1 and applying the right patch, using UHD-4.=
4 I still get the following error=C2=A0message:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
<div>BUILDER: Building IP axi_hb31</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div>BUILDER: Staging IP in build directory...</div>
<div>BUILDER: Reserving IP location: /home/lorenzo/uhd/fpga/usrp3/top/x300/=
build-ip/xc7k325tffg900-2/axi_hb31</div>
<div>BUILDER: Retargeting IP to part kintex7/xc7k325t/ffg900/-2...</div>
<div>BUILDER: Building IP...</div>
<div>[00:00:00] Executing command: vivado -mode batch -source /home/lorenzo=
/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log axi_hb31.log -nojour=
nal</div>
<div>WARNING: [IP_Flow 19-2162] IP &#39;axi_hb31&#39; is locked:</div>
<div>[00:00:04] Current task: Initialization +++ Current Phase: Starting</d=
iv>
<div>CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the=
 following file is locked: /home/lorenzo/uhd/fpga/usrp3/top/x300/build-ip/x=
c7k325tffg900-2/axi_hb31/axi_hb31.xci</div>
<div>CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for =
the following file is locked: /home/lorenzo/uhd/fpga/usrp3/top/x300/build-i=
p/xc7k325tffg900-2/axi_hb31/axi_hb31.xci</div>
<div>[00:00:04] Current task: Initialization +++ Current Phase: Finished</d=
iv>
<div>[00:00:04] Executing Tcl: synth_design -top axi_hb31 -part xc7k325tffg=
900-2 -mode out_of_context</div>
<div>[00:00:04] Starting Synthesis Command</div>
<div>[00:00:04] Current task: Synthesis +++ Current Phase: Starting</div>
<div>WARNING: [Vivado_Tcl 4-391] The following IPs are missing output produ=
cts for Synthesis target. These output products could be required for synth=
esis, please generate the output products using the generate_target or synt=
h_ip command
 before running synth_design.</div>
<div>WARNING: [IP_Flow 19-2162] IP &#39;axi_hb31&#39; is locked:</div>
<div>ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources=
 specified</div>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Currently looking for a workaround before reverting to 2019.1 and UHD 4.2</=
div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Lorenzo</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div id=3D"m_2829748491903905892x_appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_2829748491903905892x_divRplyFwdMsg" dir=3D"ltr"><font style=3D=
"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b=
> Minutolo, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.edu" target=3D"_=
blank">minutolo@caltech.edu</a>&gt;<br>
<b>Sent:</b> Tuesday, January 31, 2023 11:48 AM<br>
<b>To:</b> <a href=3D"mailto:jmaloyan@umass.edu" target=3D"_blank">jmaloyan=
@umass.edu</a> &lt;<a href=3D"mailto:jmaloyan@umass.edu" target=3D"_blank">=
jmaloyan@umass.edu</a>&gt;; <a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-=
users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;=
<br>
<b>Subject:</b> [USRP-users] Re: Error when synthesizing example OOT block =
: IP &quot;cmplx_mul&quot; is locked</font>
<div>=C2=A0</div>
</div>

<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<span style=3D"font-size:12pt;margin:0px;background-color:rgb(255,255,255)"=
>Same here.</span>
<div style=3D"font-size:12pt;margin:0px;background-color:rgb(255,255,255)">
Since switching to Vivado 2021.1 and UHD-4.3 even compiling the stock firmw=
are results in=C2=A0[IP_Flow 19-2162] IP &#39;axi_hb31&#39; is locked.</div=
>
<div style=3D"font-size:12pt;margin:0px;background-color:rgb(255,255,255)">
Apparently, this error is well known=C2=A0<a href=3D"https://support.xilinx=
.com/s/article/58832?language=3Den_US" style=3D"margin:0px" target=3D"_blan=
k">https://support.xilinx.com/s/article/58832?language=3Den_US</a><br>
<br>
</div>
<div style=3D"font-size:12px;margin:0px">
</div>
<span style=3D"font-size:12pt;margin:0px;background-color:rgb(255,255,255)"=
>I&#39;m trying to switch to UHD 4.4 to see if this error goes away. Everyt=
hing was working really well in UHD-4.2 and Vivado 2019.1.</span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<span style=3D"font-size:12pt;margin:0px;background-color:rgb(255,255,255)"=
><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<span style=3D"font-size:12pt;margin:0px;background-color:rgb(255,255,255)"=
>Best,</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<span style=3D"font-size:12pt">Lorenzo</span></div>
<div id=3D"m_2829748491903905892x_x_appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_2829748491903905892x_x_divRplyFwdMsg" dir=3D"ltr"><font style=
=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:=
</b> <a href=3D"mailto:jmaloyan@umass.edu" target=3D"_blank">jmaloyan@umass=
.edu</a> &lt;<a href=3D"mailto:jmaloyan@umass.edu" target=3D"_blank">jmaloy=
an@umass.edu</a>&gt;<br>
<b>Sent:</b> Friday, January 27, 2023 2:17 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Error when synthesizing example OOT block : IP=
 &quot;cmplx_mul&quot; is locked</font>
<div>=C2=A0</div>
</div>
<div>
<p>Hello,</p>
<p><br>
</p>
<p>I have run into an issue when trying to synthesize the =E2=80=9Cgain=E2=
=80=9D RFNoC as described in the tutorial here <a href=3D"https://kb.ettus.=
com/Getting_Started_with_RFNoC_in_UHD_4.0" target=3D"_blank">https://kb.ett=
us.com/Getting_Started_with_RFNoC_in_UHD_4.0</a>
</p>
<p><br>
</p>
<p>I get an error that the module cmplx mul is locked. I found that in the =
verilog file =E2=80=9Crfnoc_block_gain.v=E2=80=9D, the module is instantiat=
ed there, but I am unsure how I should proceed working around this.</p>
<p><br>
</p>
<p>Here is the output of the vivado -version</p>
<p><code>Vivado v2021.1_AR76780 (64-bit)</code></p>
<p><code>SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021</code></p>
<p><code>IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021</code></p>
<p><code>Copyright 1986-2021 Xilinx, Inc. All Rights Reserved</code></p>
<p>And here is the output of the error</p>
<p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
<p><code>BUILDER: Building IP cmplx_mul</code></p>
<p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
<p><code>BUILDER: Staging IP in build directory...</code></p>
<p><code>BUILDER: Reserving IP location: /workarea/uhd/fpga/usrp3/top/n3xx/=
build-ip/xc7z100ffg900-2/cmplx_mul</code></p>
<p><code>BUILDER: Retargeting IP to part zynq/xc7z100/ffg900/-2...</code></=
p>
<p><code>BUILDER: Building IP...</code></p>
<p><code>[00:00:00] Executing command: vivado -mode batch -source /workarea=
/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log cmplx_mul.log -nojou=
rnal</code></p>
<p><code>[00:00:05] Current task: Initialization +++ Current Phase: Startin=
g</code></p>
<p><code>WARNING: [IP_Flow 19-2162] IP &#39;cmplx_mul&#39; is locked:</code=
></p>
<p><code>CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for=
 the following file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/x=
c7z100ffg900-2/cmplx_mul/cmplx_mul.xci</code></p>
<p><code>CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) =
for the following file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-i=
p/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xci</code></p>
<p><code>[00:00:05] Current task: Initialization +++ Current Phase: Finishe=
d</code></p>
<p><code>[00:00:05] Executing Tcl: synth_design -top cmplx_mul -part xc7z10=
0ffg900-2 -mode out_of_context</code></p>
<p><code>[00:00:05] Starting Synthesis Command</code></p>
<p><code>WARNING: [Vivado_Tcl 4-391] The following IPs are missing output p=
roducts for Synthesis target. These output products could be required for s=
ynthesis, please generate the output products using the generate_target or =
synth_ip command before running
 synth_design.</code></p>
<p><code>WARNING: [IP_Flow 19-2162] IP &#39;cmplx_mul&#39; is locked:</code=
></p>
<p><code>ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sou=
rces specified</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
&#39;/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/c=
mplx_mul.xml&#39;</code></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
&#39;/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/c=
mplx_mul.xml&#39;</code></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
&#39;/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/c=
mplx_mul.xml&#39;</code></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
&#39;/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/c=
mplx_mul.xml&#39;</code></p>
<p><code>[00:00:06] Current task: Synthesis +++ Current Phase: Starting</co=
de></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
&#39;/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/c=
mplx_mul.xml&#39;</code></p>
<p><code>ERROR: [Vivado 12-398] No designs are open</code></p>
<p><code>[00:00:06] Current task: Synthesis +++ Current Phase: Finished</co=
de></p>
<p><code>[00:00:06] Process terminated. Status: Failure</code></p>
<p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
<p><code>Warnings: 3</code></p>
<p><code>Critical Warnings: 7</code></p>
<p><code>Errors: 8</code></p>
<p><code>BUILDER: Releasing IP location: /workarea/uhd/fpga/usrp3/top/n3xx/=
build-ip/xc7z100ffg900-2/cmplx_mul</code></p>
<p><code>make[1]: *** [/rfnoc-foo/fpga//ip/cmplx_mul/Makefile.inc:21: LIB_I=
P_CMPLX_MUL_TRGT] Error 1</code></p>
<p><code>make[1]: Leaving directory &#39;/workarea/uhd/fpga/usrp3/top/n3xx&=
#39;</code></p>
<p><code>make: *** [Makefile:90: N3X0_IP] Error 2</code></p>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--00000000000023817005f3c3697a--

--===============2409818839030335728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2409818839030335728==--
