Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF44D126819
	for <lists+usrp-users@lfdr.de>; Thu, 19 Dec 2019 18:29:33 +0100 (CET)
Received: from [::1] (port=47244 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ihzcB-0001Dl-RJ; Thu, 19 Dec 2019 12:29:31 -0500
Received: from mail-vk1-f178.google.com ([209.85.221.178]:43005)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ejkreinar@gmail.com>) id 1ihzc7-00014u-7q
 for usrp-users@lists.ettus.com; Thu, 19 Dec 2019 12:29:27 -0500
Received: by mail-vk1-f178.google.com with SMTP id s142so1843578vkd.9
 for <usrp-users@lists.ettus.com>; Thu, 19 Dec 2019 09:29:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=crxuV+u8RRQIDyR4q2m+aAs/L6r3jzfe/Tn/8YGC+L4=;
 b=Do3yxWeyO2KlLNH0QTfy+qZPrgSxKwoHS98P2wlcmqA+QeQqfxghOPyH0Cj05oLfV0
 hZhAC5n7f/fHG0lZWV2yqpHBrjQGGQSbypve0KdsdnOgkDjKUmEOih6IIr6lX6ayEiaC
 8n+DhnoSRrKEtwBiEuS9XsEKQ7LKTwUw+XEG02JywiqOqqLgCdcoNA5hYFv4bYVtW5xS
 uepOCDwbMAeviWCf2qRP9jmmTFVa+SCaFn8q3ULHqCMlR0Mr1XXSgX23kNZYRx341Y8v
 8U5/R/v07ozK98Fv6z02uZN5apwpdkKQ3HizLLPmrEUF0EBwMrHaGgrNwqX7oOHB+9dz
 UGVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=crxuV+u8RRQIDyR4q2m+aAs/L6r3jzfe/Tn/8YGC+L4=;
 b=rYHFuU+LTFrIdwgimcio3aUzSPJjVJ9Ao34FeaRihg1YL+yRBRpnQCbfaMi2SkcR7t
 3DUPdizsNB1OOphoe0eAg9y7/bgHwt+ic42SloRb4b57GXNXaOXS6MJm4zmuUHt79GeB
 519M4g0N2EK2s39BC07PmUUzMTM5i889PNtyzijjBi07JoembW61JyDMR5m28MI7tCS3
 UkP0DJh1rvx8ImjSHp9hPPmqsE34V5Te3LaWnC9VSnVehtfUA9XjoUXXFrE/DTvfyt8B
 5N0HbeZIOJlmZla+0LVS+yA1fR1xQ17tinY1yjfkL5Cp38Ii2u8otGJph1V7K1gPsPkA
 TZ/g==
X-Gm-Message-State: APjAAAV3Wd6SPkJtssU0pYKauTaT4Q3/CxcX8ptc0hZuvKBMauUpduV0
 wNwiO+yWaZ7AHG2Z4dzAVZ/bEeYPFedXencvtos=
X-Google-Smtp-Source: APXvYqyBmvsJf4C398yHygPrt3eTis8ZppywKN/tJX+MDuY1mAzAVehl32qoCWFYco1+2qylCdgvvOO2ll1o9VtLKUc=
X-Received: by 2002:a1f:94c1:: with SMTP id w184mr6444231vkd.40.1576776526475; 
 Thu, 19 Dec 2019 09:28:46 -0800 (PST)
MIME-Version: 1.0
References: <d509cd368f8d4167a1fdff12613c35a2@dlr.de>
 <CAL263iwKA_R=30JEohT88GPAP6xm-V1VLSL2mNtk1UbJJ9bJPw@mail.gmail.com>
 <CAL263iyqgz_ALuntLoCcpum7k20eXKEXYHUZhqNouUr9r7cwig@mail.gmail.com>
 <23a286638bd44719a36b213cbfad0fa5@dlr.de>
 <CAL263izHBHnBjKEYLzEyy-KP67kwKWVzN6LZCwdsmKKdqfWj9w@mail.gmail.com>
 <b7eebc15f5414fc8974d6bff6e597a2b@dlr.de>
 <a70f323b443e4642babc303f482ee157@dlr.de>
 <CADRnH21VEAsgapngZ__=B1WpEsTst6o=t3ME2zDHaZqPwpDpBQ@mail.gmail.com>
 <BN6PR19MB1635996E17A73C996A346A24A4520@BN6PR19MB1635.namprd19.prod.outlook.com>
In-Reply-To: <BN6PR19MB1635996E17A73C996A346A24A4520@BN6PR19MB1635.namprd19.prod.outlook.com>
Date: Thu, 19 Dec 2019 12:28:35 -0500
Message-ID: <CADRnH23sddChq07yWakGvsNfyyDEuEQnQ7heq1KQ9B9f8Cg53w@mail.gmail.com>
To: Jeff S <e070832@hotmail.com>
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
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0161642698014727064=="
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

--===============0161642698014727064==
Content-Type: multipart/alternative; boundary="000000000000c03928059a11e48f"

--000000000000c03928059a11e48f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ah, Sorry for the confusion. I assume anyone using the split_stream block
is already building FPGA images from source... To clarify, I'm referring to
rebuilding the FPGA images from source using the uhd-fpga repo, which
follows the instructions here:
https://files.ettus.com/manual_archive/v3.14.1.1/html/md_usrp3_build_instru=
ctions.html

Depending on the target platform you may also need a Vivado license (or
trial license). You'll want to clone the uhd-fpga repo, then `git checkout
UHD-3.14`, then `git cherry-pick 1102779f`, THEN build the images.

Definitely a bummer there's not a patched image released. I didnt realize
there were images "in the wild" that used split stream block

EJ

On Thu, Dec 19, 2019 at 11:05 AM Jeff S via USRP-users <
usrp-users@lists.ettus.com> wrote:

> EJ,
>
> I'm finding that I have the same problem after installing 3.14.1.1.
>
> I did the following:
>
> $ uhd_images_downloader
> $ uhd_image_loader --args "type=3Dn3xx"
>
>
> which is what I thought we were supposed to do, but I got the same error
> on my uhd_usrp_probe that Robert did.
>
> I'll see if I can figure out how to cherry-pick the fpga branch.  That ma=
y
> be more research since I have a lot of new stuff I "git" to learn.
>
> Jeff
>
>
> ------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of EJ
> Kreinar via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Thursday, December 19, 2019 7:44 AM
> *To:* Robert.Poehlmann@dlr.de <Robert.Poehlmann@dlr.de>
> *Cc:* USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Default RFNoC image for N310 does not compile
>
> The split stream bug seems to have been fixed in October on the master
> branch: https://
> github.com/EttusResearch/fpga/commit/1102779f49d44c9e8b88ce7251d203eb62ae=
26c9 (but
> not yet ported onto 3.14)
>
> I just cherry-picked 1102779f onto my uhd-fpga UHD-3.14 and it cleaned it
> up for me.
>
> I assume this will eventually make it to the UHD-3.14 branch? But if not
> the cherry pick works fine
>
> EJ
>
> On Thu, Dec 19, 2019, 4:00 AM Robert via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hi Nate,
>
>
> some news from my side about this issue:
>
> - For v3.15.0.0-rc2, the error shows up when using split_stream or
> packet_resizer block (and possibly others)
>
>
> I then followed your advice and went back to v3.14.1.1, which should be
> stable. Here two problems pop up:
>
> - Timing constraints are no fulfilled (using Viado 2017.4)
>
> - A similar error pops up when probing the device:
>
>
> [INFO] [0/PacketResizer_0] Initializing block control (NOC ID:
> 0x12E5000000000000)
> [ERROR] [UHD] Exception caught in safe-call.
>   in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with
> uhd::endianness_t _endianness =3D (uhd::endianness_t)0]
>   at /usr/local/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:52
> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl
> (CE_10_Port_D0) no response packet - AssertionError: bool(buff)
>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
> [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64_t =
=3D long
> unsigned int]
>   at /usr/local/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142
>
> [ERROR] [MPMD] Failure during block enumeration: EnvironmentError:
> IOError: [0/PacketResizer_0] sr_read64() failed: EnvironmentError: IOErro=
r:
> Block ctrl (CE_10_Port_D0) no response packet - AssertionError: bool(buff=
)
>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
> [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64_t =
=3D long
> unsigned int]
>   at /usr/local/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142
>
> Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()
>
>
> Is there a fix available for ctrl_iface.cpp?
>
>
> Regards,
>
> Robert
> ------------------------------
> *Von:* P=C3=B6hlmann, Robert
> *Gesendet:* Mittwoch, 11. Dezember 2019 12:14:40
> *An:* Nate Temple
> *Cc:* USRP-users@lists.ettus.com
> *Betreff:* AW: [USRP-users] Default RFNoC image for N310 does not compile
>
>
> Hi Nate,
>
>
> the image does compile now with the patch. However there still seems to b=
e
> s.th. wrong on the host side. When running uhd_usrp_probe, it fails when
> it reaches the split_stream block:
>
>
> [INFO] [0/SplitStream_0] Initializing block control (NOC ID:
> 0x5757000000000000)
> [ERROR] [MPMD] Failure during block enumeration: EnvironmentError:
> IOError: [0/SplitStream_0] sr_write() failed: AssertionError: not
> _outstanding_seqs.empty()
>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
> [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64_t =
=3D long
> unsigned int]
>   at /usr/local/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:139
>
> Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()
>
>
>
> Regards,
>
> Robert
> ------------------------------
> *Von:* Nate Temple <nate.temple@ettus.com>
> *Gesendet:* Dienstag, 10. Dezember 2019 17:57:20
> *An:* P=C3=B6hlmann, Robert
> *Cc:* USRP-users@lists.ettus.com
> *Betreff:* Re: [USRP-users] Default RFNoC image for N310 does not compile
>
> Hi Robert,
>
> This patch/line change detailed below should resolve that issue and will
> be included in the official 3.15.0.0 release:
>
> ---
>  usrp3/lib/rfnoc/noc_shell.v | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/usrp3/lib/rfnoc/noc_shell.v b/usrp3/lib/rfnoc/noc_shell.v
> index 927f40a70..732d41afa 100644
> --- a/usrp3/lib/rfnoc/noc_shell.v
> +++ b/usrp3/lib/rfnoc/noc_shell.v
> @@ -267,7 +267,7 @@ module noc_shell
>            .o_tdata({set_addr_bclk[8*k+7:8*k],
> set_data_bclk[32*k+31:32*k]}),
>            .o_tvalid(set_stb_bclk[k]), .o_tready(set_stb_bclk[k]));
>
> -       localparam [31:0] STR_SINK_FIFO_SIZE_BYTES =3D
> 2**(STR_SINK_FIFOSIZE[8*k+7:8*k]+3);
> +       localparam [31:0] STR_SINK_FIFO_SIZE_BYTES =3D (k < INPUT_PORTS) =
?
> 2**(STR_SINK_FIFOSIZE[8*k+7:8*k]+3) : 0;
>         // "Lines" is the most useful unit for the command FIFO size, sin=
ce
>         // commands take either 2 or 3 lines. Software can do the rest of
> the
>         // math to figure out how many actual command packets it can send=
.
>
>
>
> Regards,
> Nate Temple
>
> On Tue, Dec 10, 2019 at 8:46 AM <Robert.Poehlmann@dlr.de> wrote:
>
> Hi Nate!
>
>
>
> I followed the guide in
> https://files.ettus.com/manual/md_usrp3_build_instructions.html, thus
> ended up with Vivado 2018.3 and then later found out this requires UHD
> 3.15. Thanks for pointing me to the Vivado bug. I thought with 2018.3.1
> this would be fixed, but apparently that is not the case. Now I went back
> to 2018.3 (clean re-install) and installed the patch AR#71898. The standa=
rd
> N310 image compiles fine now.
>
>
>
> The other error
>
> ERROR: [Synth 8-524] part-select [15:8] out of range of prefix
> 'STR_SINK_FIFOSIZE'
> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]
>
> seems to be happening only for few specific RFNoC blocks (fosphor and
> split_stream, specifically). Leaving these out, the RFNoC image does
> compile. Not sure what exactly is the problem, though. The recent commit
> https://github.com/EttusResearch/fpga/commit/1102779f49d44c9e8b88ce7251d2=
03eb62ae26c9
> did not help (tried both versions, neither of them works).
>
>
>
> Regards
>
> Robert
>
>
>
>
>
> *From:* Nate Temple [mailto:nate.temple@ettus.com]
> *Sent:* Monday, December 09, 2019 8:43 PM
> *To:* P=C3=B6hlmann, Robert
> *Cc:* USRP-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Default RFNoC image for N310 does not compile
>
>
>
> Hi Robert,
>
>
>
> So this is a bug related to Vivado, you will need to install this linked
> below patch and it should resolve it.
>
>
>
> https://www.xilinx.com/support/answers/71898.html
>
>
>
> Regards,
>
> Nate Temple
>
>
>
> On Mon, Dec 9, 2019 at 10:38 AM Nate Temple <nate.temple@ettus.com> wrote=
:
>
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
>
>
> On Mon, Dec 9, 2019 at 7:33 AM Robert via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hi all!
>
>
>
> I tried to compile the default RFNoC image for the N310, using UHD on tag
> v3.15.0.0-rc2 and Xilinx Vivado 2018.3.1.
>
>
>
> Running "make N310_RFNOC_XG", the IP cores are compiled successfully, but
> then Vivado shows the following errors:
>
>
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
>
>
> The full build.log file is attached. I did not modify any files, just
> trying to compile the RFNoC example as provided.
>
>
>
>
>
>
>
> Btw I also tried to build the default image with "make N310_XG", this one
> compiles but failed later during DRC:
>
> [DRC BIVC-1] Bank IO standard Vcc: Conflicting Vcc voltages in bank 34.
> For example, the following two ports in this bank have conflicting VCCOs:
> ddr3_ck_p[0] (DIFF_SSTL15, requiring VCCO=3D1.500) and ddr3_addr[15]
> (LVCMOS18, requiring VCCO=3D1.800)
>
> [Vivado_Tcl 4-23] Error(s) found during DRC. Placer not run.
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000c03928059a11e48f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ah, Sorry for the confusion. I assume anyone using the spl=
it_stream block is already building FPGA images from source... To clarify, =
I&#39;m referring to rebuilding the FPGA images from source using the uhd-f=
pga repo, which follows the instructions here:=C2=A0<a href=3D"https://file=
s.ettus.com/manual_archive/v3.14.1.1/html/md_usrp3_build_instructions.html"=
>https://files.ettus.com/manual_archive/v3.14.1.1/html/md_usrp3_build_instr=
uctions.html</a><div><br></div><div>Depending on the target platform you ma=
y also need a Vivado license (or trial license). You&#39;ll want to clone t=
he uhd-fpga repo, then `git checkout UHD-3.14`, then `git cherry-pick 11027=
79f`, THEN build the images.</div><div><br></div><div>Definitely a bummer t=
here&#39;s not a patched image released. I didnt realize there were images =
&quot;in the wild&quot; that used split stream block</div><div><br></div><d=
iv>EJ</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Thu, Dec 19, 2019 at 11:05 AM Jeff S via USRP-users &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
EJ,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I&#39;m finding that I have the same problem after installing 3.14.1.1.</di=
v>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I did the following:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<blockquote style=3D"margin-top:0px;margin-bottom:0px">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ uhd_images_downloader<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ uhd_image_loader --args &quot;type=3Dn3xx&quot;<br>
</div>
</blockquote>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
which is what I thought we were supposed to do, but I got the same error on=
 my uhd_usrp_probe that Robert did.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I&#39;ll see if I can figure out how to cherry-pick the fpga branch.=C2=A0 =
That may be more research since I have a lot of new stuff I &quot;git&quot;=
 to learn.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Jeff<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div id=3D"gmail-m_-4851837339978986592Signature"><br>
<div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-4851837339978986592divRplyFwdMsg" dir=3D"ltr"><font sty=
le=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>Fro=
m:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com"=
 target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of =
EJ Kreinar via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
 target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Thursday, December 19, 2019 7:44 AM<br>
<b>To:</b> <a href=3D"mailto:Robert.Poehlmann@dlr.de" target=3D"_blank">Rob=
ert.Poehlmann@dlr.de</a> &lt;<a href=3D"mailto:Robert.Poehlmann@dlr.de" tar=
get=3D"_blank">Robert.Poehlmann@dlr.de</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">=
USRP-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Default RFNoC image for N310 does not comp=
ile</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"auto">
<div dir=3D"auto"></div>
<div dir=3D"auto">The split stream bug seems to have been fixed in October =
on the master branch: https<font face=3D"sans-serif"><span style=3D"font-si=
ze:12.8px">://</span></font><a href=3D"http://github.com/EttusResearch/fpga=
/commit/1102779f49d44c9e8b88ce7251d203eb62ae26c9" target=3D"_blank">github.=
com/EttusResearch/fpga/commit/1102779f49d44c9e8b88ce7251d203eb62ae26c9</a>=
=C2=A0(but
 not yet ported onto 3.14)</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">I just cherry-picked 1102779f onto my uhd-fpga UHD-3.14 a=
nd it cleaned it up for me.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">I assume this will eventually make it to the UHD-3.14 bra=
nch? But if not the cherry pick works fine</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">EJ</div>
<div dir=3D"auto"><br>
</div>
<div>
<div dir=3D"ltr">On Thu, Dec 19, 2019, 4:00 AM Robert via USRP-users &lt;<a=
 href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer" target=3D"_b=
lank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div id=3D"gmail-m_-4851837339978986592x_m_5202243192553878687m_53260292099=
02199952divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt;color:rgb=
(0,0,0);font-family:Calibri,Helvetica,sans-serif">
<p><span>Hi Nate,</span></p>
<p><span><br>
</span></p>
<p><span>some news from my side about this issue:<br>
</span></p>
<p><span>- For <span>v3.15.0.0-rc2</span>, the error shows up when using sp=
lit_stream or packet_resizer block (and possibly others)</span></p>
<p><span><br>
</span></p>
<p><span>I then followed your advice and went back to v3.14.1.1, which shou=
ld be stable. Here two problems pop up:</span></p>
<p><span>- Timing constraints are no fulfilled (using Viado 2017.4)</span><=
/p>
<p><span>- A similar error pops up when probing the device:</span></p>
<p><span><br>
</span></p>
<p><span></span></p>
<div>[INFO] [0/PacketResizer_0] Initializing block control (NOC ID: 0x12E50=
00000000000)<br>
[ERROR] [UHD] Exception caught in safe-call.<br>
=C2=A0 in ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl() [with uhd:=
:endianness_t _endianness =3D (uhd::endianness_t)0]<br>
=C2=A0 at /usr/local/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:52<br>
this-&gt;send_cmd_pkt(0, 0, true); -&gt; EnvironmentError: IOError: Block c=
trl (CE_10_Port_D0) no response packet - AssertionError: bool(buff)<br>
=C2=A0 in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, d=
ouble) [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64=
_t =3D long unsigned int]<br>
=C2=A0 at /usr/local/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142<br>
<br>
[ERROR] [MPMD] Failure during block enumeration: EnvironmentError: IOError:=
 [0/PacketResizer_0] sr_read64() failed: EnvironmentError: IOError: Block c=
trl (CE_10_Port_D0) no response packet - AssertionError: bool(buff)<br>
=C2=A0 in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, d=
ouble) [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64=
_t =3D long unsigned int]<br>
=C2=A0 at /usr/local/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142<br>
<br>
Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()</div>
<div><br>
</div>
<div><br>
</div>
<div>Is there a fix available for <span>ctrl_iface.cpp?</span><br>
</div>
<p></p>
<p><br>
</p>
<p>Regards,</p>
<p>Robert<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-4851837339978986592x_m_5202243192553878687m_53260292099=
02199952divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"C=
alibri, sans-serif" color=3D"#000000"><b>Von:</b> P=C3=B6hlmann, Robert<br>
<b>Gesendet:</b> Mittwoch, 11. Dezember 2019 12:14:40<br>
<b>An:</b> Nate Temple<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer =
noreferrer" target=3D"_blank">
USRP-users@lists.ettus.com</a><br>
<b>Betreff:</b> AW: [USRP-users] Default RFNoC image for N310 does not comp=
ile</font>
<div>=C2=A0</div>
</div>
<div>
<div id=3D"gmail-m_-4851837339978986592x_m_5202243192553878687m_53260292099=
02199952divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt;color:rgb=
(0,0,0);font-family:Calibri,Helvetica,sans-serif">
<p>Hi Nate,</p>
<p><br>
</p>
<p>the image does compile now with the patch. However there still seems to =
be <a href=3D"http://s.th" rel=3D"noreferrer noreferrer" target=3D"_blank">
s.th</a>. wrong on the host side. When running uhd_usrp_probe, it fails whe=
n it reaches the split_stream block:</p>
<p><br>
</p>
<p></p>
<div>[INFO] [0/SplitStream_0] Initializing block control (NOC ID: 0x5757000=
000000000)<br>
[ERROR] [MPMD] Failure during block enumeration: EnvironmentError: IOError:=
 [0/SplitStream_0] sr_write() failed: AssertionError: not _outstanding_seqs=
.empty()<br>
=C2=A0 in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, d=
ouble) [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64=
_t =3D long unsigned int]<br>
=C2=A0 at /usr/local/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:139<br>
<br>
Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()<br>
</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
Regards,
<p></p>
<p>Robert<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-4851837339978986592x_m_5202243192553878687m_53260292099=
02199952divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"C=
alibri, sans-serif" color=3D"#000000"><b>Von:</b> Nate Temple &lt;<a href=
=3D"mailto:nate.temple@ettus.com" rel=3D"noreferrer noreferrer" target=3D"_=
blank">nate.temple@ettus.com</a>&gt;<br>
<b>Gesendet:</b> Dienstag, 10. Dezember 2019 17:57:20<br>
<b>An:</b> P=C3=B6hlmann, Robert<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer =
noreferrer" target=3D"_blank">
USRP-users@lists.ettus.com</a><br>
<b>Betreff:</b> Re: [USRP-users] Default RFNoC image for N310 does not comp=
ile</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div style=3D"font-family:arial,helvetica,sans-serif">Hi Robert,<br>
<br>
This patch/line change detailed below should resolve that issue and will be=
 included in the official 3.15.0.0 release:<br>
<br>
---<br>
=C2=A0usrp3/lib/rfnoc/noc_shell.v | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/usrp3/lib/rfnoc/noc_shell.v b/usrp3/lib/rfnoc/noc_shell.v<br>
index 927f40a70..732d41afa 100644<br>
--- a/usrp3/lib/rfnoc/noc_shell.v<br>
+++ b/usrp3/lib/rfnoc/noc_shell.v<br>
@@ -267,7 +267,7 @@ module noc_shell<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.o_tdata({set_addr_bclk[8*k+7:8*k]=
, set_data_bclk[32*k+31:32*k]}),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.o_tvalid(set_stb_bclk[k]), .o_tre=
ady(set_stb_bclk[k]));<br>
=C2=A0<br>
- =C2=A0 =C2=A0 =C2=A0 localparam [31:0] STR_SINK_FIFO_SIZE_BYTES =3D 2**(S=
TR_SINK_FIFOSIZE[8*k+7:8*k]+3);<br>
+ =C2=A0 =C2=A0 =C2=A0 localparam [31:0] STR_SINK_FIFO_SIZE_BYTES =3D (k &l=
t; INPUT_PORTS) ? 2**(STR_SINK_FIFOSIZE[8*k+7:8*k]+3) : 0;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 // &quot;Lines&quot; is the most useful unit fo=
r the command FIFO size, since<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 // commands take either 2 or 3 lines. Software =
can do the rest of the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 // math to figure out how many actual command p=
ackets it can send.<br>
<br>
<br>
<br>
Regards,<br>
Nate Temple</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Tue, Dec 10, 2019 at 8:46 AM &lt;<a href=3D"mailto:Robe=
rt.Poehlmann@dlr.de" rel=3D"noreferrer noreferrer" target=3D"_blank">Robert=
.Poehlmann@dlr.de</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div lang=3D"EN-US">
<div>
<p>Hi Nate!<u></u><u></u></p>
<p><u></u>=C2=A0<u></u></p>
<p>I followed the guide in <a href=3D"https://files.ettus.com/manual/md_usr=
p3_build_instructions.html" rel=3D"noreferrer noreferrer" target=3D"_blank"=
>
https://files.ettus.com/manual/md_usrp3_build_instructions.html</a>, thus e=
nded up with Vivado 2018.3 and then later found out this requires UHD 3.15.=
 Thanks for pointing me to the Vivado bug. I thought with 2018.3.1 this wou=
ld be fixed, but apparently that
 is not the case. Now I went back to 2018.3 (clean re-install) and installe=
d the patch AR#71898. The standard N310 image compiles fine now.<u></u><u><=
/u></p>
<p><u></u>=C2=A0<u></u></p>
<p>The other error<u></u><u></u></p>
<p><span style=3D"color:black">ERROR: [Synth 8-524] part-select [15:8] out =
of range of prefix &#39;STR_SINK_FIFOSIZE&#39; [/usr/local/src/uhd/fpga-src=
/usrp3/lib/rfnoc/noc_shell.v:270]</span><u></u><u></u></p>
<p>seems to be happening only for few specific RFNoC blocks (fosphor and sp=
lit_stream, specifically). Leaving these out, the RFNoC image does compile.=
 Not sure what exactly is the problem, though. The recent commit
<a href=3D"https://github.com/EttusResearch/fpga/commit/1102779f49d44c9e8b8=
8ce7251d203eb62ae26c9" rel=3D"noreferrer noreferrer" target=3D"_blank">
https://github.com/EttusResearch/fpga/commit/1102779f49d44c9e8b88ce7251d203=
eb62ae26c9</a> did not help (tried both versions, neither of them works).<u=
></u><u></u></p>
<p><u></u>=C2=A0<u></u></p>
<p>Regards<u></u><u></u></p>
<p>Robert<span style=3D"font-size:11pt;color:rgb(31,73,125)"> <u>
</u><u></u></span></p>
<p><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(3=
1,73,125)"><u></u>=C2=A0<u></u></span></p>
<p><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(3=
1,73,125)"><u></u>=C2=A0<u></u></span></p>
<p><b><span style=3D"font-size:10pt;font-family:Tahoma,sans-serif">From:</s=
pan></b><span style=3D"font-size:10pt;font-family:Tahoma,sans-serif"> Nate =
Temple [mailto:<a href=3D"mailto:nate.temple@ettus.com" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">nate.temple@ettus.com</a>]
<br>
<b>Sent:</b> Monday, December 09, 2019 8:43 PM<br>
<b>To:</b> P=C3=B6hlmann, Robert<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer =
noreferrer" target=3D"_blank">
USRP-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] Default RFNoC image for N310 does not comp=
ile<u></u><u></u></span></p>
<p><u></u>=C2=A0<u></u></p>
<div>
<div>
<p><span style=3D"font-family:Arial,sans-serif">Hi Robert, <u>
</u><u></u></span></p>
</div>
<div>
<p><span style=3D"font-family:Arial,sans-serif"><u></u>=C2=A0<u></u></span>=
</p>
</div>
<div>
<p><span style=3D"font-family:Arial,sans-serif">So this is a bug related to=
 Vivado, you will need to install this linked below patch and it should res=
olve it.<u></u><u></u></span></p>
</div>
<div>
<p><span style=3D"font-family:Arial,sans-serif"><u></u>=C2=A0<u></u></span>=
</p>
</div>
<div>
<p><a href=3D"https://www.xilinx.com/support/answers/71898.html" rel=3D"nor=
eferrer noreferrer" target=3D"_blank"><span style=3D"font-family:Arial,sans=
-serif">https://www.xilinx.com/support/answers/71898.html</span></a><span s=
tyle=3D"font-family:Arial,sans-serif"><u></u><u></u></span></p>
</div>
<div>
<p><span style=3D"font-family:Arial,sans-serif"><u></u>=C2=A0<u></u></span>=
</p>
</div>
<div>
<p><span style=3D"font-family:Arial,sans-serif">Regards,<u></u><u></u></spa=
n></p>
</div>
<div>
<p><span style=3D"font-family:Arial,sans-serif">Nate Temple<u></u><u></u></=
span></p>
</div>
</div>
<p><u></u>=C2=A0<u></u></p>
<div>
<div>
<p>On Mon, Dec 9, 2019 at 10:38 AM Nate Temple &lt;<a href=3D"mailto:nate.t=
emple@ettus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">nate.templ=
e@ettus.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0cm 0cm 0cm 6pt;margin:5pt 0cm 5pt 4.8pt">
<div>
<div>
<p><span style=3D"font-family:Arial,sans-serif">Hi Robert,<br>
<br>
Thanks for the bug report. <br>
<br>
If you&#39;re just trying to use RFNoC at this point, I would recommend to =
stick with the latest stable release, which at this time is v3.14.1.1.
<br>
<br>
Note, 3.14.x.x UHD will require Vivado 2017.4.<br>
<br>
<br>
Regards,<br>
Nate Temple<u></u><u></u></span></p>
</div>
</div>
<p><u></u>=C2=A0<u></u></p>
<div>
<div>
<p>On Mon, Dec 9, 2019 at 7:33 AM Robert via USRP-users &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com" rel=3D"noreferrer noreferrer" target=3D"_bla=
nk">usrp-users@lists.ettus.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0cm 0cm 0cm 6pt;margin:5pt 0cm 5pt 4.8pt">
<div>
<div id=3D"gmail-m_-4851837339978986592x_m_5202243192553878687m_53260292099=
02199952gmail-m_-6331373918561515169gmail-m_-7724419252963540251gmail-m_150=
3436027014080033divtagdefaultwrapper">
<div>
<p><span style=3D"font-family:Calibri,sans-serif;color:black">Hi all!<u></u=
><u></u></span></p>
</div>
<div>
<p><span style=3D"font-family:Calibri,sans-serif;color:black"><u></u>=C2=A0=
<u></u></span></p>
</div>
<div>
<p><span style=3D"font-family:Calibri,sans-serif;color:black">I tried to co=
mpile the default RFNoC image for the N310, using UHD on tag v3.15.0.0-rc2 =
and Xilinx Vivado 2018.3.1.
<u></u><u></u></span></p>
</div>
<div>
<p><span style=3D"font-family:Calibri,sans-serif;color:black"><u></u>=C2=A0=
<u></u></span></p>
</div>
<div>
<p><span style=3D"font-family:Calibri,sans-serif;color:black">Running</span=
><code><span style=3D"font-size:10pt;color:black"> &quot;make N310_RFNOC_XG=
&quot;, the IP cores are compiled successfully, but then Vivado shows the f=
ollowing errors:</span></code><span style=3D"font-family:Calibri,sans-serif=
;color:black"><u></u><u></u></span></p>
</div>
<div>
<p><span style=3D"font-family:Calibri,sans-serif;color:black"><u></u>=C2=A0=
<u></u></span></p>
</div>
<div>
<p><span style=3D"font-family:Calibri,sans-serif;color:black">ERROR: [Synth=
 8-524] part-select [15:8] out of range of prefix &#39;STR_SINK_FIFOSIZE&#3=
9; [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]<br>
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
/src/uhd/fpga-src/usrp3/top/n3xx/dboards/mg/n3xx.v:13]<u></u><u></u></span>=
</p>
</div>
<div>
<p><span style=3D"font-family:Calibri,sans-serif;color:black"><u></u>=C2=A0=
<u></u></span></p>
</div>
<div>
<p><span style=3D"font-family:Calibri,sans-serif;color:black">The full buil=
d.log file is attached. I did not modify any files, just trying to compile =
the RFNoC example as provided.<u></u><u></u></span></p>
</div>
<p><span style=3D"font-family:Calibri,sans-serif;color:black"><u></u>=C2=A0=
<u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif;color:black"><u></u>=C2=A0=
<u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif;color:black"><u></u>=C2=A0=
<u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif;color:black">Btw I also tr=
ied to build the default image with &quot;make N310_XG&quot;, this one comp=
iles but failed later during DRC:<u></u><u></u></span></p>
<div>
<p><span style=3D"font-family:Calibri,sans-serif;color:black">[DRC BIVC-1] =
Bank IO standard Vcc: Conflicting Vcc voltages in bank 34. For example, the=
 following two ports in this bank have conflicting VCCOs:
<br>
ddr3_ck_p[0] (DIFF_SSTL15, requiring VCCO=3D1.500) and ddr3_addr[15] (LVCMO=
S18, requiring VCCO=3D1.800)<u></u><u></u></span></p>
</div>
<div>
<div>
<p style=3D"margin-bottom:12pt"><span style=3D"font-family:Calibri,sans-ser=
if;color:black">[Vivado_Tcl 4-23] Error(s) found during DRC. Placer not run=
.<u></u><u></u></span></p>
</div>
<p><span style=3D"font-family:Calibri,sans-serif;color:black"><u></u>=C2=A0=
<u></u></span></p>
</div>
</div>
</div>
<p>_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><u></u><u></u></p>
</blockquote>
</div>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
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

--000000000000c03928059a11e48f--


--===============0161642698014727064==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0161642698014727064==--

