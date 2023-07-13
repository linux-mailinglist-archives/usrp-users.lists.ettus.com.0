Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 564F8752A13
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jul 2023 19:56:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 80715384AB9
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jul 2023 13:56:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689271001; bh=r+MaPpp952XFmLspK/8NfMyR7SOhhzeaA3UNOiScOBg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=zafuD2e8xaNlkfnFom+8YqbIe/hTP5HeUceFWsvHugGyrnSxBxKSQB/f9HBSK8vw/
	 EifByCyQbArg+L3rmhBe0lNSiihFCq5HPXvkkC4Qg70Lieq/SGrpnXjSwsjF8U1OPx
	 GoY3ZamvjO4gFrLsDvjY3y6leMF4rSQBG8Z357QpcQ70B4mDlCpD3qRR+YT3Q+wQZH
	 G/vs8NcZUl9G0PzIMU+g+CQcY5I0RnKIKyb5T3Kp8McKM+LT2nic1R7tFzSYJTA5bs
	 MUfWmLsoQj3r9d+biyL3yld8CWb8PSNibBO5RlUAo+nRZhsi9oHyvYLe6Ay2RFenqL
	 7AiRx706KFrrA==
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 9641F384529
	for <usrp-users@lists.ettus.com>; Thu, 13 Jul 2023 13:55:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="3y/jNFMh";
	dkim-atps=neutral
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-3fbf1b82dc7so9475655e9.2
        for <usrp-users@lists.ettus.com>; Thu, 13 Jul 2023 10:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1689270956; x=1691862956;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qnx+IYQfB+foZ/uAezaTbzfP47ucBeeBVxCScWrDmSk=;
        b=3y/jNFMhg2SPXgQwfMPYkiTCWlsvADc2Cd3o/PVHfzcFtsY18VFgJl3wbRUpxxqhnS
         OkzMeFBJOGtHteqjxXqkd/o9tG+FZIjlj0LJ8Z6qiCe9T+OSq2jzvx8BBgnpxCj8+wYe
         YA/gs2H1e4SsEBIf0I70g++YcvmISY1w9WFFKqGEB20dFrI7fVF4IM0xybKLenaFKeH1
         Trkli69M4KPuX4GmbKUKSPWUbfVwkrsluTBY2fzoBiBea+wGWdX6aYpfPq8TsEMeItpG
         efAf+f42tvrxJqys2xiL6zNBUP1I3j/KApfTZuAge1PP0jw7Tv9vVgOKr0BkQzN50Tfz
         bgJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689270956; x=1691862956;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qnx+IYQfB+foZ/uAezaTbzfP47ucBeeBVxCScWrDmSk=;
        b=b9Gbd7w64uS/aXRQZuNnaixEL2X88vWR2QTdwJXqSiv7QWJ7vLQYol5+pR4o3BVsCl
         TQc0yd3ZrHAN640JW3EQ4ZkNDMt03I4Km0hP93HiDoSPI/Rx5KkC0fEZbLvwZLypV45k
         Is1oud51gecU5x5Dx1NUZJaXKEH81ExFZJ1urz4YzEkHDFX0Iuz/4/+H2U9eurgLPyAO
         yT5/w0ATEK5RLAR0/Q5JYQFXiYTfE6HWlsQEX1EIr+grGe29SP1hso6rcl778zgJlEsu
         9w4CgPoRqT25PdNP//+cppkJisLuvJZCDTs4yhsA0emT/KI1uI7oKDSqHyXG/627WFzV
         SdBg==
X-Gm-Message-State: ABy/qLY5Y5otVoMnH3omXlxdfvbr+wG625c7XXez4LAoIh5qSeFa0DGw
	jSCGfTFh5MV/7SFQ2glg0JNIJlhkwgSBnkknQ/ByCAw4+z9yQ4Uxl3vQzQ==
X-Google-Smtp-Source: APBJJlEx8Fmmk3zayNhLGGV/jzwtXjyFx7c6OQSlN0ndUfag9oq3kM5xltktErCB4orzghZBAsS5EUx1TWb0y2IL7zg=
X-Received: by 2002:a5d:5082:0:b0:315:89c5:9d2f with SMTP id
 a2-20020a5d5082000000b0031589c59d2fmr2106705wrt.53.1689270956158; Thu, 13 Jul
 2023 10:55:56 -0700 (PDT)
MIME-Version: 1.0
References: <a8347b099c6c4bd3b6426f878b2827f9@iis.fraunhofer.de>
 <CAFche=iwSbhjjufezRYPK4ByFLJx-mHgTEFuoe9rsHj1MP-UuQ@mail.gmail.com>
 <2b4732022e1240bfbc9fcdbae6e6cadd@iis.fraunhofer.de> <CAFche=iq0DhoYCBnr6ytQ2sxeTdQdkKHK9XERyxbo_Rqx=0BHQ@mail.gmail.com>
 <aaac21228f9541f68da3f5c08a6d61c7@iis.fraunhofer.de>
In-Reply-To: <aaac21228f9541f68da3f5c08a6d61c7@iis.fraunhofer.de>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 13 Jul 2023 11:47:08 -0600
Message-ID: <CAFche=iFeSd-o4CnBH-O0SDSjjL1L+TatUA1+=Nrc9c3S9qoCA@mail.gmail.com>
To: "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>
Message-ID-Hash: UWL5ONHNF6A4SS3K7YOG66FUAIPZ2EN3
X-Message-ID-Hash: UWL5ONHNF6A4SS3K7YOG66FUAIPZ2EN3
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>, "Nieland, Michael" <michael.nieland@iis.fraunhofer.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Image Builder: two problems with Vitis HLS
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UWL5ONHNF6A4SS3K7YOG66FUAIPZ2EN3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1730179264457685008=="

--===============1730179264457685008==
Content-Type: multipart/alternative; boundary="000000000000458c100600620b9c"

--000000000000458c100600620b9c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That UHD-4.3 branch should work. You could try 4.4 but 4.3 used the same
Vivado version.

Just to be clear we're using the same process, here's how I would start the
build:

git clone https://github.com/EttusResearch/uhd
git checkout UHD-4.3
cd ./uhd/fpga/usrp3/top/n3xx
source setupenv.sh
make N310_XG

Make sure there are no errors or warnings when running "source setup.env".
If that still doesn't work then I would guess there's something unusual
about your Vivado installation, but I don't know what the issue is.

Is it possible you didn't install support for the required FPGA types? You
should have Zynq-7000 and Kintex-7 support installed. I don't know for sure
if Kintex support is required but some of the shared IP targets Kintex by
default.

Could it be a licensing issue? Building this FPGA requires a Vivado license
but I would expect another error message for that.

You said you were able to upgrade the IP to allow some IP to build. It'd be
interesting to see a diff of the XCI file to see what exactly changed to
allow it to build. That might provide a clue.

If you want to remove the HLS IP from the build, try removing this line.
Unfortunately, I'm traveling this week so I can't test it myself.

https://github.com/EttusResearch/uhd/blob/UHD-4.3/fpga/usrp3/top/n3xx/Makef=
ile.n3xx.inc#L24

Wade

On Thu, Jul 13, 2023, 7:34 AM Bachmaier, Luca <
luca.bachmaier@iis.fraunhofer.de> wrote:

> Hello Wade,
>
>
>
> if this is an indicator for a version mismatch, am I using the wrong
> version of UHD? I cloned this branch:
> https://github.com/EttusResearch/uhd/tree/UHD-4.3 (commit 1f8fd3457 uhd:
> Prepare branch for 4.3.0.0 release)
>
> To make sure that we=E2=80=99re on the same page, I reset my repo clone t=
o this
> commit and deleted the folders build-ip/ and build-N3X0_IP/. When trying =
to
> build I still get the error:
>
> CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the
> following file is locked:
> /home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/axi_hb31/=
axi_hb31.xci
>
> =E2=80=A6
>
> ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources
> specified
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this comma=
nd.
>
>
>
> Detailed =E2=80=9Clog=E2=80=9D:
>
> BUILDER: Releasing IP location:
> /home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/axi_fft
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
>
> BUILDER: Building IP axi_hb31
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
>
> BUILDER: Staging IP in build directory...
>
> BUILDER: Reserving IP location:
> /home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/axi_hb31
>
> BUILDER: Retargeting IP to part zynq/xc7z100/ffg900/-2...
>
> BUILDER: Building IP...
>
> [00:00:00] Executing command: vivado -mode batch -source
> /home/fobp/sdr/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log
> axi_hb31.log -nojournal
>
> [00:00:08] Current task: Initialization +++ Current Phase: Starting
>
> WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is locked:
>
> CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the
> following file is locked:
> /home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/axi_hb31/=
axi_hb31.xci
>
> CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the
> following file is locked:
> /home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/axi_hb31/=
axi_hb31.xci
>
> [00:00:08] Current task: Initialization +++ Current Phase: Finished
>
> [00:00:08] Executing Tcl: synth_design -top axi_hb31 -part xc7z100ffg900-=
2
> -mode out_of_context
>
> [00:00:08] Starting Synthesis Command
>
> WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products
> for Synthesis target. These output products could be required for
> synthesis, please generate the output products using the generate_target =
or
> synth_ip command before running synth_design.
>
> WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is locked:
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
> '/home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/axi_hb31=
/axi_hb31.xml'
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/axi_hb31=
/axi_hb31.xml'
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/axi_hb31=
/axi_hb31.xml'
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/axi_hb31=
/axi_hb31.xml'
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/axi_hb31=
/axi_hb31.xml'
>
> ERROR: [Vivado 12-398] No designs are open
>
> [00:00:08] Current task: Synthesis +++ Current Phase: Starting
>
> [00:00:08] Current task: Synthesis +++ Current Phase: Finished
>
> [00:00:08] Process terminated. Status: Failure
>
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
>
> Warnings:           138
>
> Critical Warnings:  7
>
> Errors:             8
>
>
>
> BUILDER: Releasing IP location:
> /home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/axi_hb31
>
> make[1]: ***
> [/home/fobp/sdr/uhd/fpga/usrp3/lib/ip/axi_hb31/Makefile.inc:20:
> LIB_IP_AXI_HB31_TRGT] Error 1
>
> make[1]: Leaving directory '/home/fobp/sdr/uhd/fpga/usrp3/top/n3xx'
>
> make: *** [Makefile:90: N3X0_IP] Error 2
>
>
>
>
>
> Other than that, commenting out the line
> https://github.com/EttusResearch/uhddev/blob/UHD-4.3/fpga/usrp3/lib/hls/M=
akefile.inc#L7
> gave me this error:
>
> ERROR: [Vivado 12-3437] This command only supports sub-design files
> marked for netlist generation.  To enable this functionality, set the
> GENERATE_SYNTH_CHECKPOINT property to true.  If the
> GENERATE_SYNTH_CHECKPOINT property is marked read-only, then select 'Repo=
rt
> IP Status' from the 'Tools' menu, or run the 'report_ip_status' Tcl
> command to see why the sub-design is locked.
>
>
>
>
>
> Best regards
>
> Luca
>
>
>
> *Von:* Wade Fife <wade.fife@ettus.com>
> *Gesendet:* Donnerstag, 13. Juli 2023 09:05
> *An:* Bachmaier, Luca <luca.bachmaier@iis.fraunhofer.de>
> *Cc:* usrp-users <usrp-users@lists.ettus.com>; Nieland, Michael <
> michael.nieland@iis.fraunhofer.de>
> *Betreff:* Re: [USRP-users] RFNoC Image Builder: two problems with Vitis
> HLS
>
>
>
> The errors about locked IP usually means the Vivado version doesn't match=
.
> But you say it reports 2021.1_AR76780, which seems correct. Running "make
> cleanall" (cleanall is one word in this case) should clean out any stale
> files that may have been generated with the wrong version. Just to be sur=
e,
> make sure the generated IP folder is deleted before you try a clean build=
.
>
>
>
> /home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/
>
>
>
> You should be able to build all the IP without error. Upgrading the IP
> shouldn't do anything because it is already the correct version
> for 2021.1_AR76780.
>
>
>
> Wade
>
>
>
> On Wed, Jul 12, 2023, 1:44 AM Bachmaier, Luca <
> luca.bachmaier@iis.fraunhofer.de> wrote:
>
> Hi Wade,
>
>
>
> thank you for your reply. Running `make cleanall` and rebuilding gives me
> the error that I originally fixed by manually upgrading the IPs:
>
>
> [00:00:08] Current task: Initialization +++ Current Phase: Starting
>
> WARNING: [IP_Flow 19-2162] IP 'hb47_1to2' is locked:
>
> CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the
> following file is locked:
> /home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2=
/hb47_1to2.xci
>
> =E2=80=A6
>
> WARNING: [IP_Flow 19-2162] IP 'hb47_1to2' is locked:
>
> ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources
> specified
>
> ...
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to=
2/hb47_1to2.xml'
>
> ERROR: [Vivado 12-398] No designs are open
>
>
>
> Something else I noticed when rebuilding is that I get a whole bunch of
> warnings like the following:
>
>
>
> WARNING: [Runs 36-547] Tool Strategy 'Rodin Implementation Defaults' from
> file '/tools/Xilinx/Vivado/2021.1/strategies/RDI13.psg' discarded because
> strategy with same name already parsed from
> '/tools/Xilinx/Vivado/2021.1//strategies/RDI13.psg'
>
>
>
> I=E2=80=99m confused by the comparison of the second path with the =E2=80=
=9C//=E2=80=9D. Aren=E2=80=99t
> both paths listed here the same? Could this be the mismatch you wrote abo=
ut
> in your mail? The patch should be installed properly though, when I start
> the script I get the version info =E2=80=9C* Vivado v2021.1_AR76780 (64-b=
it)=E2=80=9D.
>
>
>
> To add, did you perhaps mean `make clean all` instead of `make cleanall`?
> These two commands give me two different outputs. The latter you suggeste=
d
> just returns =E2=80=9CCleaning targets and IP...=E2=80=9D whereas the for=
mer actually
> starts up Vivado and then throws this error:
>
>
>
> WARNING: [Device 21-436] No parts matched 'ERROR: Invalid target format.
> Must be
> <arch>/<device>/<package>/<speedgrade>[/<temperaturegrade>[/<silicon_revi=
sion>]]
>
> ERROR: Parsed only 2 tokens'
>
> ERROR: [Coretcl 2-106] Specified part could not be found.
>
> [00:00:06] Current task: Initialization +++ Current Phase: Finished
>
> [00:00:06] Process terminated. Status: Failure
>
>
>
> I will report back on your suggestion of commenting out the line ASAP. I
> would be very happy to hear feedback from you regarding the errors/warnin=
gs
> above in the meantime.
>
>
>
> Regards
>
> Luca
>
>
>
>
>
>
>
> *Von:* Wade Fife <wade.fife@ettus.com>
> *Gesendet:* Mittwoch, 5. Juli 2023 06:35
> *An:* Bachmaier, Luca <luca.bachmaier@iis.fraunhofer.de>
> *Cc:* usrp-users@lists.ettus.com; Nieland, Michael <
> michael.nieland@iis.fraunhofer.de>
> *Betreff:* Re: [USRP-users] RFNoC Image Builder: two problems with Vitis
> HLS
>
>
>
> Hi Luca,
>
>
>
> Can you try going into the uhd/fpga/usrp3/top/n3xx/ and running `make
> cleanall` and running the build again? You should not have had to manuall=
y
> upgrade IP unless there was some kind of mismatch somewhere. Perhaps you
> tried building first without the patch but didn't clean out the old IP th=
at
> was generated? A version mismatch might explain the HLS error you're
> getting. If the HLS IP continues to give you problems, you could try
> commenting out this line.
>
>
>
>
> https://github.com/EttusResearch/uhddev/blob/UHD-4.3/fpga/usrp3/lib/hls/M=
akefile.inc#L7
>
>
>
> Wade
>
>
>
> On Tue, Jul 4, 2023 at 5:50=E2=80=AFAM Bachmaier, Luca <
> luca.bachmaier@iis.fraunhofer.de> wrote:
>
> Hello everyone,
>
>
>
> I'm currently stuck with creating a custom RFNoC bitfile with
> rfnoc_image_builder. I'm building the image for a USRP N310 and the
> software I'm using is the following:
>
>      - Debian 12
>
>      - Python 3.11.2
>
>      - UHD 4.3.0.0
>
>      - Vivado 2021.1 (installed with the additional patch)
>
>
>
> The command I use to build the image is (I created the file
> n310_rfnoc_fosphor.yml myself):
>
>      rfnoc_image_builder -F ~/uhd/fpga -y
> ~/core_yml/n310_rfnoc_fosphor.yml -t N310_XG
>
>
>
>
>
> After an unsuccessful build, the image builder gets stuck with HLS:
>
>      =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
>      BUILDER: Building HLS IP addsub_hls
>
>      =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
>      BUILDER: Staging HLS IP in build directory...
>
>      Waiting for concurrent IP build to finish... (1800s [Ctrl-C to
> proceed])
>
>
>
> I was wondering if there was a way to skip the concurrent IP build, using
> Ctrl-C only causes the entire rfnoc_image_builder to exit unsuccessfully
> with:
>
>      make: *** [Makefile:90: N3X0_IP] Interrupt
>
>
>
>
>
> Waiting for the timeout after 1800 seconds throws the following error tha=
t
> I do not understand at all:
>
>      source /tools/Xilinx/Vitis_HLS/2021.1/scripts/vitis_hls/hls.tcl
> -notrace
>
>      can't read "zny": no such variable
>
>           while executing
>
>      "0Nyy-&ur-r$$!$-9-)n$ v t-n q- !$zny-%vz'yn&v! -v s!$zn&v!
> -zr%%ntr%-n$r-v -&uv%-svyr-"
>
>           (file
> "/tools/Xilinx/Vitis_HLS/2021.1/common/scripts/error_message.tcl" line 2)
>
>            invoked from within
>
>
>
>
>
> Additional info: before that, I had to upgrade two IP cores provided by
> UHD in Vivado manually because rfnoc_image_builder threw the error:
>
>      CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for
> the following file is locked:
>
>
> /home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2=
/hb47_1to2.xci
>
>
>
>
>
> I would be happy to hear any help or pointers to how I could solve this
> problem.
>
>
>
>
>
> Thank you and regards
>
> Luca Bachmaier
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--000000000000458c100600620b9c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>That UHD-4.3 branch should work. You could try 4.4 b=
ut 4.3 used the same Vivado version.</div><div dir=3D"auto"><br></div><div =
dir=3D"auto"><div dir=3D"auto">Just to be clear we&#39;re using the same pr=
ocess, here&#39;s how I would start the build:</div><div dir=3D"auto"><br><=
/div><div dir=3D"auto">git clone=C2=A0<a href=3D"https://github.com/EttusRe=
search/uhd">https://github.com/EttusResearch/uhd</a></div><div dir=3D"auto"=
>git checkout UHD-4.3</div><div dir=3D"auto">cd ./uhd/fpga/usrp3/top/n3xx</=
div><div dir=3D"auto">source setupenv.sh</div><div dir=3D"auto">make N310_X=
G</div><div dir=3D"auto"><br></div><div dir=3D"auto">Make sure there are no=
 errors or warnings when running &quot;source setup.env&quot;. If that stil=
l doesn&#39;t work then I would guess there&#39;s something unusual about y=
our Vivado installation, but I don&#39;t know what the issue is.</div></div=
><div dir=3D"auto"><br></div><div dir=3D"auto">Is it possible you didn&#39;=
t install support for the required FPGA types? You should have Zynq-7000 an=
d Kintex-7 support installed. I don&#39;t know for sure if Kintex support i=
s required but some of the shared IP targets Kintex by default.</div><div d=
ir=3D"auto"><br></div><div dir=3D"auto">Could it be a licensing issue? Buil=
ding this FPGA requires a Vivado license but I would expect another error m=
essage for that.</div><div dir=3D"auto"><br></div><div dir=3D"auto">You sai=
d you were able to upgrade the IP to allow some IP to build. It&#39;d be in=
teresting to see a diff of the XCI file to see what exactly changed to allo=
w it to build. That might provide a clue.</div><div dir=3D"auto"></div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">If you want to remove the HLS IP =
from the build, try removing this line. Unfortunately, I&#39;m traveling th=
is week so I can&#39;t test it myself.</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto"><a href=3D"https://github.com/EttusResearch/uhd/blob/UHD-4.3=
/fpga/usrp3/top/n3xx/Makefile.n3xx.inc#L24">https://github.com/EttusResearc=
h/uhd/blob/UHD-4.3/fpga/usrp3/top/n3xx/Makefile.n3xx.inc#L24</a><br></div><=
div dir=3D"auto"><br></div><div dir=3D"auto">Wade</div><div dir=3D"auto"><b=
r><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Thu, Jul 13, 2023, 7:34 AM Bachmaier, Luca &lt;<a href=3D"mailto:lu=
ca.bachmaier@iis.fraunhofer.de">luca.bachmaier@iis.fraunhofer.de</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"DE" link=3D"blue" vlink=3D"purple">
<div class=3D"m_7707605114704087515WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">Hello Wade,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">if this is an indicato=
r for a version mismatch, am I using the wrong version of UHD? I cloned thi=
s branch:
<a href=3D"https://github.com/EttusResearch/uhd/tree/UHD-4.3" target=3D"_bl=
ank" rel=3D"noreferrer">https://github.com/EttusResearch/uhd/tree/UHD-4.3</=
a> (commit 1f8fd3457 uhd: Prepare branch for 4.3.0.0 release)<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">To make sure that we=
=E2=80=99re on the same page, I reset my repo clone to this commit and dele=
ted the folders build-ip/ and build-N3X0_IP/.
 When trying to build I still get the error:<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
f497d">CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for t=
he following file is locked:
 /home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/axi_hb31/a=
xi_hb31.xci<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
f497d">=E2=80=A6<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
f497d">ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sourc=
es specified<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
f497d">ERROR: [Common 17-53] User Exception: No open design. Please open an=
 elaborated, synthesized
 or implemented design before executing this command.<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">Detailed =E2=80=9Clog=
=E2=80=9D:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">BUILDER: Releasing IP =
location: /home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/a=
xi_fft<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">BUILDER: Building IP a=
xi_hb31<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">BUILDER: Staging IP in=
 build directory...<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">BUILDER: Reserving IP =
location: /home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/a=
xi_hb31<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">BUILDER: Retargeting I=
P to part zynq/xc7z100/ffg900/-2...<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">BUILDER: Building IP..=
.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">[00:00:00] Executing c=
ommand: vivado -mode batch -source /home/fobp/sdr/uhd/fpga/usrp3/tools/scri=
pts/viv_generate_ip.tcl
 -log axi_hb31.log -nojournal<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">[00:00:08] Current tas=
k: Initialization +++ Current Phase: Starting<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">WARNING: [IP_Flow 19-2=
162] IP &#39;axi_hb31&#39; is locked:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">CRITICAL WARNING: [fil=
emgmt 20-1366] Unable to reset target(s) for the following file is locked: =
/home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/axi_hb31/ax=
i_hb31.xci<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">CRITICAL WARNING: [fil=
emgmt 20-1365] Unable to generate target(s) for the following file is locke=
d: /home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/axi_hb31=
/axi_hb31.xci<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">[00:00:08] Current tas=
k: Initialization +++ Current Phase: Finished<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">[00:00:08] Executing T=
cl: synth_design -top axi_hb31 -part xc7z100ffg900-2 -mode out_of_context<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">[00:00:08] Starting Sy=
nthesis Command<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">WARNING: [Vivado_Tcl 4=
-391] The following IPs are missing output products for Synthesis target. T=
hese output products
 could be required for synthesis, please generate the output products using=
 the generate_target or synth_ip command before running synth_design.<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">WARNING: [IP_Flow 19-2=
162] IP &#39;axi_hb31&#39; is locked:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">ERROR: [Designutils 20=
-414] HRTInvokeSpec : No Verilog or VHDL sources specified<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">ERROR: [Common 17-53] =
User Exception: No open design. Please open an elaborated, synthesized or i=
mplemented design before
 executing this command.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">ERROR: [Common 17-53] =
User Exception: No open design. Please open an elaborated, synthesized or i=
mplemented design before
 executing this command.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">ERROR: [Common 17-53] =
User Exception: No open design. Please open an elaborated, synthesized or i=
mplemented design before
 executing this command.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">ERROR: [Common 17-53] =
User Exception: No open design. Please open an elaborated, synthesized or i=
mplemented design before
 executing this command.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">ERROR: [Common 17-53] =
User Exception: No open design. Please open an elaborated, synthesized or i=
mplemented design before
 executing this command.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">ERROR: [Common 17-53] =
User Exception: No open design. Please open an elaborated, synthesized or i=
mplemented design before
 executing this command.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">CRITICAL WARNING: [IP_=
Flow 19-4739] Writing uncustomized BOM file &#39;/home/fobp/sdr/uhd/fpga/us=
rp3/top/n3xx/build-ip/xc7z100ffg900-2/axi_hb31/axi_hb31.xml&#39;<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">CRITICAL WARNING: [IP_=
Flow 19-4739] Writing uncustomized BOM file &#39;/home/fobp/sdr/uhd/fpga/us=
rp3/top/n3xx/build-ip/xc7z100ffg900-2/axi_hb31/axi_hb31.xml&#39;<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">CRITICAL WARNING: [IP_=
Flow 19-4739] Writing uncustomized BOM file &#39;/home/fobp/sdr/uhd/fpga/us=
rp3/top/n3xx/build-ip/xc7z100ffg900-2/axi_hb31/axi_hb31.xml&#39;<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">CRITICAL WARNING: [IP_=
Flow 19-4739] Writing uncustomized BOM file &#39;/home/fobp/sdr/uhd/fpga/us=
rp3/top/n3xx/build-ip/xc7z100ffg900-2/axi_hb31/axi_hb31.xml&#39;<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">CRITICAL WARNING: [IP_=
Flow 19-4739] Writing uncustomized BOM file &#39;/home/fobp/sdr/uhd/fpga/us=
rp3/top/n3xx/build-ip/xc7z100ffg900-2/axi_hb31/axi_hb31.xml&#39;<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">ERROR: [Vivado 12-398]=
 No designs are open<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">[00:00:08] Current tas=
k: Synthesis +++ Current Phase: Starting<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">[00:00:08] Current tas=
k: Synthesis +++ Current Phase: Finished<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">[00:00:08] Process ter=
minated. Status: Failure<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">Warnings:=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 138<u></u><u></u></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">Critical Warnings:=C2=
=A0 7<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">Errors:=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 8<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">BUILDER: Releasing IP =
location: /home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/a=
xi_hb31<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">make[1]: *** [/home/fo=
bp/sdr/uhd/fpga/usrp3/lib/ip/axi_hb31/Makefile.inc:20: LIB_IP_AXI_HB31_TRGT=
] Error 1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">make[1]: Leaving direc=
tory &#39;/home/fobp/sdr/uhd/fpga/usrp3/top/n3xx&#39;<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">make: *** [Makefile:90=
: N3X0_IP] Error 2<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">Other than that, comme=
nting out the line
<a href=3D"https://github.com/EttusResearch/uhddev/blob/UHD-4.3/fpga/usrp3/=
lib/hls/Makefile.inc#L7" target=3D"_blank" rel=3D"noreferrer">
https://github.com/EttusResearch/uhddev/blob/UHD-4.3/fpga/usrp3/lib/hls/Mak=
efile.inc#L7</a> gave me this error:<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.25pt"><code><span lang=3D"EN=
-US" style=3D"font-size:10.5pt;font-family:Consolas;border:none windowtext =
1.0pt;padding:0cm;background:white">ERROR: [Vivado=C2=A012-3437] This comma=
nd only supports sub-design files marked=C2=A0for</span></code><span lang=
=3D"EN-US" style=3D"font-size:10.5pt;font-family:Consolas;color:#333333;bac=
kground:white">=C2=A0</span><code><span lang=3D"EN-US" style=3D"font-size:1=
0.5pt;font-family:Consolas;border:none windowtext 1.0pt;padding:0cm;backgro=
und:white">netlist
 generation.=C2=A0 To enable=C2=A0this</span></code><span lang=3D"EN-US" st=
yle=3D"font-size:10.5pt;font-family:Consolas;color:#333333;background:white=
">=C2=A0</span><code><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-fa=
mily:Consolas;border:none windowtext 1.0pt;padding:0cm;background:white">fu=
nctionality,
 set the GENERATE_SYNTH_CHECKPOINT property to=C2=A0true.=C2=A0 If the GENE=
RATE_SYNTH_CHECKPOINT property is marked read-only, then select=C2=A0&#39;R=
eport IP Status&#39;</span></code><span lang=3D"EN-US" style=3D"font-size:1=
0.5pt;font-family:Consolas;color:#333333;background:white">=C2=A0</span><co=
de><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Consolas;bord=
er:none windowtext 1.0pt;padding:0cm;background:white">from
 the=C2=A0&#39;Tools&#39;</span></code><span lang=3D"EN-US" style=3D"font-s=
ize:10.5pt;font-family:Consolas;color:#333333;background:white">=C2=A0</spa=
n><code><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Consolas=
;border:none windowtext 1.0pt;padding:0cm;background:white">menu,
 or run the=C2=A0&#39;report_ip_status&#39;</span></code><span lang=3D"EN-U=
S" style=3D"font-size:10.5pt;font-family:Consolas;color:#333333;background:=
white">=C2=A0</span><code><span lang=3D"EN-US" style=3D"font-size:10.5pt;fo=
nt-family:Consolas;border:none windowtext 1.0pt;padding:0cm;background:whit=
e">Tcl
 command to see why the sub-design is locked.</span></code><span lang=3D"EN=
-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;c=
olor:#1f497d"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">Best regards<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">Luca</span><span lang=
=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #e1e1e1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">Von:</span></b><span style=3D"font-size:11.0pt;f=
ont-family:&quot;Calibri&quot;,sans-serif"> Wade Fife &lt;<a href=3D"mailto=
:wade.fife@ettus.com" target=3D"_blank" rel=3D"noreferrer">wade.fife@ettus.=
com</a>&gt;
<br>
<b>Gesendet:</b> Donnerstag, 13. Juli 2023 09:05<br>
<b>An:</b> Bachmaier, Luca &lt;<a href=3D"mailto:luca.bachmaier@iis.fraunho=
fer.de" target=3D"_blank" rel=3D"noreferrer">luca.bachmaier@iis.fraunhofer.=
de</a>&gt;<br>
<b>Cc:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt;; Niela=
nd, Michael &lt;<a href=3D"mailto:michael.nieland@iis.fraunhofer.de" target=
=3D"_blank" rel=3D"noreferrer">michael.nieland@iis.fraunhofer.de</a>&gt;<br=
>
<b>Betreff:</b> Re: [USRP-users] RFNoC Image Builder: two problems with Vit=
is HLS<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">The errors about locked IP usually means the Vivado =
version doesn&#39;t match. But you say it reports 2021.1_AR76780, which see=
ms correct. Running &quot;make cleanall&quot; (cleanall is one word in this=
 case) should clean out any stale files that may
 have been generated with the wrong version. Just to be sure, make sure the=
 generated IP folder is deleted before you try a clean build.<u></u><u></u>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">/home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/<u><=
/u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">You should be able to build all the IP without error=
. Upgrading the IP shouldn&#39;t do anything because it is already the corr=
ect version for=C2=A02021.1_AR76780.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Wade=C2=A0<u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Wed, Jul 12, 2023, 1:44 AM Bachmaier, Luca &lt;<a=
 href=3D"mailto:luca.bachmaier@iis.fraunhofer.de" target=3D"_blank" rel=3D"=
noreferrer">luca.bachmaier@iis.fraunhofer.de</a>&gt; wrote:<u></u><u></u></=
p>
</div>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">Hi Wade,</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">thank you for your rep=
ly. Running `make cleanall` and rebuilding gives me the error that
 I originally fixed by manually upgrading the IPs:</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt">
<span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:#1f497d"><br>
[00:00:08] Current task: Initialization +++ Current Phase: Starting</span><=
u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt">
<span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:#1f497d">WARNING: [IP_Flow 19-2162] IP &#39;hb47_1to2&=
#39; is locked:</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt">
<span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:#1f497d">CRITICAL WARNING: [filemgmt 20-1366] Unable t=
o reset target(s) for the following file is locked: /home/fobp/sdr/uhd/fpga=
/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1to2.xci</span><u><=
/u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt">
<span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:#1f497d">=E2=80=A6</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt">
<span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:#1f497d">WARNING: [IP_Flow 19-2162] IP &#39;hb47_1to2&=
#39; is locked:</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt">
<span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:#1f497d">ERROR: [Designutils 20-414] HRTInvokeSpec : N=
o Verilog or VHDL sources specified</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt">
<span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:#1f497d">...</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt">
<span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:#1f497d">CRITICAL WARNING: [IP_Flow 19-4739] Writing u=
ncustomized BOM file &#39;/home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/x=
c7z100ffg900-2/hb47_1to2/hb47_1to2.xml&#39;</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt">
<span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:#1f497d">ERROR: [Vivado 12-398] No designs are open</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=C2=A0</span><u></u><u=
></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">Something else I notic=
ed when rebuilding is that I get a whole bunch of warnings like
 the following:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=C2=A0</span><u></u><u=
></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.25pt">
<span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:#1f497d">WARNING: [Runs 36-547] Tool Strategy &#39;Rod=
in Implementation Defaults&#39; from file &#39;/tools/Xilinx/Vivado/2021.1/=
strategies/RDI13.psg&#39; discarded because strategy with same
 name already parsed from &#39;/tools/Xilinx/Vivado/2021.1//strategies/RDI1=
3.psg&#39;</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=C2=A0</span><u></u><u=
></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">I=E2=80=99m confused b=
y the comparison of the second path with the =E2=80=9C//=E2=80=9D. Aren=E2=
=80=99t both paths listed
 here the same? Could this be the mismatch you wrote about in your mail? Th=
e patch should be installed properly though, when I start the script I get =
the version info =E2=80=9C* Vivado v2021.1_AR76780 (64-bit)=E2=80=9D.</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=C2=A0</span><u></u><u=
></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">To add, did you perhap=
s mean `make clean all` instead of `make cleanall`? These two commands
 give me two different outputs. The latter you suggested just returns =E2=
=80=9CCleaning targets and IP...=E2=80=9D whereas the former actually start=
s up Vivado and then throws this error:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=C2=A0</span><u></u><u=
></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt">
<span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:#1f497d">WARNING: [Device 21-436] No parts matched &#3=
9;ERROR: Invalid target format. Must be &lt;arch&gt;/&lt;device&gt;/&lt;pac=
kage&gt;/&lt;speedgrade&gt;[/&lt;temperaturegrade&gt;[/&lt;silicon_revision=
&gt;]]</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt">
<span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:#1f497d">ERROR: Parsed only 2 tokens&#39;</span><u></u=
><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt">
<span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:#1f497d">ERROR: [Coretcl 2-106] Specified part could n=
ot be found.</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt">
<span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:#1f497d">[00:00:06] Current task: Initialization +++ C=
urrent Phase: Finished</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt">
<span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:#1f497d">[00:00:06] Process terminated. Status: Failur=
e</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=C2=A0</span><u></u><u=
></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">I will report back on =
your suggestion of commenting out the line ASAP. I would be very
 happy to hear feedback from you regarding the errors/warnings above in the=
 meantime.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=C2=A0</span><u></u><u=
></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">Regards</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">Luca</span><u></u><u><=
/u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=C2=A0</span><u></u><u=
></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #e1e1e1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">Von:</span></b><span style=3D"font-size:11.0pt;f=
ont-family:&quot;Calibri&quot;,sans-serif"> Wade Fife &lt;<a href=3D"mailto=
:wade.fife@ettus.com" target=3D"_blank" rel=3D"noreferrer">wade.fife@ettus.=
com</a>&gt;
<br>
<b>Gesendet:</b> Mittwoch, 5. Juli 2023 06:35<br>
<b>An:</b> Bachmaier, Luca &lt;<a href=3D"mailto:luca.bachmaier@iis.fraunho=
fer.de" target=3D"_blank" rel=3D"noreferrer">luca.bachmaier@iis.fraunhofer.=
de</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" =
rel=3D"noreferrer">usrp-users@lists.ettus.com</a>; Nieland, Michael &lt;<a =
href=3D"mailto:michael.nieland@iis.fraunhofer.de" target=3D"_blank" rel=3D"=
noreferrer">michael.nieland@iis.fraunhofer.de</a>&gt;<br>
<b>Betreff:</b> Re: [USRP-users] RFNoC Image Builder: two problems with Vit=
is HLS</span><u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<div>
<p class=3D"MsoNormal">Hi Luca,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Can you try going into the uhd/fpga/usrp3/top/n3xx/ =
and running `make cleanall` and running the build again? You should not hav=
e had to manually upgrade IP unless there was some
 kind of mismatch somewhere. Perhaps you tried building first without the p=
atch but didn&#39;t clean out the old IP that was generated? A version mism=
atch might explain the HLS error you&#39;re getting. If the HLS IP continue=
s to give you problems, you could try commenting
 out this line.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"https://github.com/EttusResearch/uhddev/b=
lob/UHD-4.3/fpga/usrp3/lib/hls/Makefile.inc#L7" target=3D"_blank" rel=3D"no=
referrer">https://github.com/EttusResearch/uhddev/blob/UHD-4.3/fpga/usrp3/l=
ib/hls/Makefile.inc#L7</a><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Wade<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, Jul 4, 2023 at 5:50=E2=80=AFAM Bachmaier, Lu=
ca &lt;<a href=3D"mailto:luca.bachmaier@iis.fraunhofer.de" target=3D"_blank=
" rel=3D"noreferrer">luca.bachmaier@iis.fraunhofer.de</a>&gt; wrote:<u></u>=
<u></u></p>
</div>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0cm;margin-=
bottom:5.0pt">
<div>
<div>
<div>
<p class=3D"MsoNormal">Hello everyone,<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#39;m currently stuck with cr=
eating a custom RFNoC bitfile with rfnoc_image_builder. I&#39;m building th=
e image for a USRP N310 and the software I&#39;m using is the following:</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 - Debi=
an 12</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 - Pyth=
on 3.11.2</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 - UHD =
4.3.0.0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 - Viva=
do 2021.1 (installed with the additional patch)</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The command I use to build the =
image is (I created the file n310_rfnoc_fosphor.yml myself):</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 rfnoc_=
image_builder -F ~/uhd/fpga -y ~/core_yml/n310_rfnoc_fosphor.yml -t N310_XG=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">After an unsuccessful build, th=
e image builder gets stuck with HLS:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 =3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 BUILDE=
R: Building HLS IP addsub_hls</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 =3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 BUILDE=
R: Staging HLS IP in build directory...</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 Waitin=
g for concurrent IP build to finish... (1800s [Ctrl-C to proceed])</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I was wondering if there was a =
way to skip the concurrent IP build, using Ctrl-C only causes the entire rf=
noc_image_builder to exit unsuccessfully with:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 make: =
*** [Makefile:90: N3X0_IP] Interrupt</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Waiting for the timeout after 1=
800 seconds throws the following error that I do not understand at all:</sp=
an><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 source=
 /tools/Xilinx/Vitis_HLS/2021.1/scripts/vitis_hls/hls.tcl -notrace</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 can&#3=
9;t read &quot;zny&quot;: no such variable</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0
</span>while executing<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 &quot;0Nyy-&amp;ur-r$$!$-9-=
)n$ v t-n q- !$zny-%vz&#39;yn&amp;v! -v s!$zn&amp;v! -zr%%ntr%-n$r-v -&amp;=
uv%-svyr-&quot;<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0
<span lang=3D"EN-US">(file &quot;/tools/Xilinx/Vitis_HLS/2021.1/common/scri=
pts/error_message.tcl&quot; line 2)</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 invoked from within</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Additional info: before that, I=
 had to upgrade two IP cores provided by UHD in Vivado manually because rfn=
oc_image_builder threw the error:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 CRITIC=
AL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the following =
file is locked:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 /home/=
fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1t=
o2.xci</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I would be happy to hear any he=
lp or pointers to how I could solve this problem.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal">Thank you and regards<u></u><u></u></p>
<p class=3D"MsoNormal">Luca Bachmaier<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">
usrp-users-leave@lists.ettus.com</a><u></u><u></u></p>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>

</blockquote></div></div></div>

--000000000000458c100600620b9c--

--===============1730179264457685008==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1730179264457685008==--
