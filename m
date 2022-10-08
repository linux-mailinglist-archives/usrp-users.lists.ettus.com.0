Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 720305F8752
	for <lists+usrp-users@lfdr.de>; Sat,  8 Oct 2022 22:22:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D8A64383D14
	for <lists+usrp-users@lfdr.de>; Sat,  8 Oct 2022 16:22:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665260551; bh=3FiHuaytyJemG61mHJnvSkh5mZS3yn3iKbfMmihfrE8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=bzkKJ0Py70L/09JcviQnDNOtxjJGUj26lltOHHIgP9YVFG5a1lEOzSFnx5o7ta6Pp
	 KIODJgcByUi6UoaISDVl51DJzl4fsIMoujK+cneBx+eL/W/q0+r645RiaIUtzPQTCV
	 pStmkxcsHaFs0X5AiDKRnhqV6xq3fDvpVI92F5kfie21r4lDkxBvSegJjatcMhmvfo
	 pXkkp9P2ewVC3MUsbXaeFGriI9+9nf/+Mb3mHL7CmaJRT4DBWwrL6Fc0rF8ImudJpX
	 L2f9t3Vx0plUK5cAZg+SVBXJPR+mkBXQuwMUR+F1PalNsI5ZiAd8vNcs/KdjPpILN5
	 rg1OYs5erc0Og==
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 056C3383A42
	for <usrp-users@lists.ettus.com>; Sat,  8 Oct 2022 16:21:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="oVfLt6XT";
	dkim-atps=neutral
Received: by mail-ej1-f54.google.com with SMTP id d26so10667901eje.10
        for <usrp-users@lists.ettus.com>; Sat, 08 Oct 2022 13:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kW6zgzIV+iLm6Zxw//daZpTiNXMjYWm5ikFdCnfjLCE=;
        b=oVfLt6XT+zRNlQDHbm9ZirIwgXb2MyRSwBMyF/P+PP6msJQNvRdd/QLbVXloxgoFW6
         qMi+ZWUdgeVKX6TL+usYUZtU7cjXGCMJPXcN5CeZgwnQF67IxdTgTPnSNh5XlwG8OWm0
         dMfJiCo6T6g7l7I/0oqzhZaf7bdxUn9en9paYLsM/oNPesZ1hYNqMEnkP9jAuAFnZOHG
         ZgI6vXMwrTjnp3MTq12mfxqF6HdvDWpMDXhDbd+25RZOzx327YJ9yx25YLfVnRKkH9FX
         1WRa9P52fv9Qf4G0OpZO4J0DSyycTKuYzaiLbJgPbOOnQvmSSuX4Y0T0p3tWP2tH/Vj3
         3w8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kW6zgzIV+iLm6Zxw//daZpTiNXMjYWm5ikFdCnfjLCE=;
        b=i9o30tNSZxDdsT3d0e2TTSb34nU5NgkCmIDaHK0Oy1Z0BqzKIeMCOfwRwyM5+qZcSL
         DZ9t0qCuK3/1SzwVovm83Kk6PgzOwcDFGh2QLBw/fjxfcmPEIGgKOS975VAFcPX2TotO
         jh+XiWvkSBzfdSeyItrh2PrR9uxNT/cnKOI1PUKH0AiL8Bik6QUnWOKQHk3/rUFdaFlp
         Mz/2KOzXQwjItEGunzJdkI1VpfHYw7gDThe+zTxAHJPUHJWNYPz23p9sHf4VwJzDZQvp
         jIebdDr6mSjrZNV7RK9TRHxLIfumoz78m0ckYIGo6HLUg9ezNhC51q3COSq4B0azTn5z
         ljbg==
X-Gm-Message-State: ACrzQf2lOsySLUny4EgeB4b4vKOYmH7+9RLWNySXTBGpE0qgrD4aJ8vE
	+lcLEWxnNW1q2X254EveEE+hJG6Y2XSyz3gLHSd1Gb2X
X-Google-Smtp-Source: AMsMyM7hRWYrcf9u8RdjNdCgF4jdWI8l67v73KZ95hHsTD/y803Fw1bVbWuEw/isNWtKyjDtolOMzCa2gXemcB5l2Fw=
X-Received: by 2002:a17:907:9605:b0:6f5:c66:7c13 with SMTP id
 gb5-20020a170907960500b006f50c667c13mr9264754ejc.66.1665260484816; Sat, 08
 Oct 2022 13:21:24 -0700 (PDT)
MIME-Version: 1.0
References: <EbasC4jqL8NsjYCfvd0kGjD4BnqgJ2p9unBBxfQeXXo@lists.ettus.com>
In-Reply-To: <EbasC4jqL8NsjYCfvd0kGjD4BnqgJ2p9unBBxfQeXXo@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Sat, 8 Oct 2022 15:21:08 -0500
Message-ID: <CAFche=gg5i+SMzxKS6tZOB-Qj=_VgsjSQ2uoTNh7gS0JGqX=DA@mail.gmail.com>
To: adri96roll@gmail.com
Message-ID-Hash: 4H76YGMHP7DTLMGKE4Q6HBRLST6F2NNY
X-Message-ID-Hash: 4H76YGMHP7DTLMGKE4Q6HBRLST6F2NNY
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Synthesis of Xilinx IP in RFNOC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4H76YGMHP7DTLMGKE4Q6HBRLST6F2NNY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4782619956606658637=="

--===============4782619956606658637==
Content-Type: multipart/alternative; boundary="000000000000a807c305ea8bab6d"

--000000000000a807c305ea8bab6d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Adr=C3=ADan,

Was it an error or a warning that you received? Sometimes black boxes get
resolved in a later build stage.

Was the message output during the generation of the IP, or synthesis of the
E320? Normally when you build the FPGA, it first builds all the IP. So I'm
wondering if that step was completed successfully.

Does it build without this IP? Since you're targeting a different USRP
(E320 instead of X310) it'd be good to make sure that works before adding
new IP.

At a glance, I wonder if you should not put synth/fifo_generator_0.vhd as a
part of LIB_IP_FIFO_GENERATOR_SRCS. The cmplx_mul example didn't do it that
way. I think you should be able to copy the cmplx_mul example exactly, and
just change the names. I don't see anything obviously wrong.

Wade

On Wed, Oct 5, 2022 at 4:54 AM <adri96roll@gmail.com> wrote:

> Hi every one!
>
>
> I=C2=B4m facing some problems to synthesize a proyect that has a Xilinx I=
P, a
> FIFO Generator. I=C2=B4ve been following this example but it didnt work.
>
>
> https://github.com/EttusResearch/uhd/tree/master/host/examples/rfnoc-exam=
ple
>
> The synthesis return me this:
>
> 'fifo_generator_0' has undefined contents and is considered a black box.
> The contents of this cell must be defined for opt_design to complete
> successfully.
>
>
> These are the modifications I have made:
>
> In rfnoc/fpga, i added the folder ip/fifo_generator_0 with the next
> Makefile.inc
>
> include $(TOOLS_DIR)/make/viv_ip_builder.mak
>
> LIB_IP_FIFO_GENERATOR_SRCS =3D $(addprefix
> $(IP_BUILD_DIR)/fifo_generator_0/, \
>
> fifo_generator_0.xci \
>
> synth/fifo_generator_0.vhd \
>
> )
>
> .INTERMEDIATE: LIB_FIFO_GENERATOR_TRGT
>
> $(LIB_IP_FIFO_GENERATOR_SRCS): LIB_IP_FIFO_GENERATOR_TRGT
>
> @:
>
> LIB_IP_FIFO_GENERATOR_TRGT:
> $(OOT_FPGA_DIR)/ip/fifo_generator_0/fifo_generator_0.xci
>
> $(call
> BUILD_VIVADO_IP,fifo_generator_0,$(ARCH),$(PART_ID),$(OOT_FPGA_DIR)/ip,$(=
IP_BUILD_DIR),0
> )
>
> and in the Makefile.src of rfnoc/fpga i added:
>
> include $(OOT_FPGA_DIR)/ip/fifo_generator_0/Makefile.inc
>
> LIB_IP_XCI_SRCS +=3D $(LIB_IP_FIFO_GENERATOR_SRCS)
>
> In the Makefile of my rfnoc, i added these lines:
>
> OOT_FPGA_DIR =3D $(dir $(abspath $(firstword $(MAKEFILE_LIST))))/../
>
> include $(OOT_FPGA_DIR)/ip/fifo_generator_0/Makefile.inc
>
> Finally, I have made sure that Makefile.e320.inx had LIB_IP_XCI_SRCS.
>
>
> How can i solve it?
>
>
> Kind Regards
>
>
> Adr=C3=ADan
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a807c305ea8bab6d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi=20
Adr=C3=ADan,</div><div><br></div><div>Was it an error or a warning that you=
 received? Sometimes black boxes get resolved in a later build stage.<br></=
div><div><br></div><div>Was the message output during the generation of the=
 IP, or synthesis of the E320? Normally when you build the FPGA, it first b=
uilds all the IP. So I&#39;m wondering if that step was completed successfu=
lly.</div><div><br></div><div>Does it build without this IP? Since you&#39;=
re targeting a different USRP (E320 instead of X310) it&#39;d be good to ma=
ke sure that works before adding new IP.<br></div><div><br></div><div>At a =
glance, I wonder if you should not put synth/fifo_generator_0.vhd as a part=
 of LIB_IP_FIFO_GENERATOR_SRCS. The cmplx_mul example didn&#39;t do it that=
 way. I think you should be able to copy the cmplx_mul example exactly, and=
 just change the names. I don&#39;t see anything obviously wrong.<br></div>=
<div><br></div><div>Wade<br></div><div><code></code>

</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Wed, Oct 5, 2022 at 4:54 AM &lt;<a href=3D"mailto:adri96roll@gmail=
.com">adri96roll@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><p>Hi every one!</p><p><br></p><p>I=C2=B4m facing=
 some problems to synthesize a proyect that has a Xilinx IP, a FIFO Generat=
or. I=C2=B4ve been following this example but it didnt work.</p><p><a href=
=3D"https://github.com/EttusResearch/uhd/tree/master/host/examples/rfnoc-ex=
ample" target=3D"_blank">https://github.com/EttusResearch/uhd/tree/master/h=
ost/examples/rfnoc-example</a></p><p>The synthesis return me this:</p><p>&#=
39;fifo_generator_0&#39; has undefined contents and is considered a black b=
ox.  The contents of this cell must be defined for opt_design to complete s=
uccessfully.</p><p><br></p><p>These are the modifications I have made:</p><=
p>In rfnoc/fpga, i added the folder ip/fifo_generator_0 with the next Makef=
ile.inc</p><p><code>include $(TOOLS_DIR)/make/viv_ip_builder.mak</code></p>=
<p><code>LIB_IP_FIFO_GENERATOR_SRCS =3D $(addprefix $(IP_BUILD_DIR)/fifo_ge=
nerator_0/, \</code></p><p><code>fifo_generator_0.xci \</code></p><p><code>=
synth/fifo_generator_0.vhd \</code></p><p><code>)</code></p><p><code>.INTER=
MEDIATE: LIB_FIFO_GENERATOR_TRGT</code></p><p><code>$(LIB_IP_FIFO_GENERATOR=
_SRCS): LIB_IP_FIFO_GENERATOR_TRGT</code></p><p><code>	@:</code></p><p><cod=
e>LIB_IP_FIFO_GENERATOR_TRGT: $(OOT_FPGA_DIR)/ip/fifo_generator_0/fifo_gene=
rator_0.xci</code></p><p><code>	$(call BUILD_VIVADO_IP,fifo_generator_0,$(A=
RCH),$(PART_ID),$(OOT_FPGA_DIR)/ip,$(IP_BUILD_DIR),0</code>)</p><p>and in t=
he Makefile.src of rfnoc/fpga i added:</p><p><code>include $(OOT_FPGA_DIR)/=
ip/fifo_generator_0/Makefile.inc</code></p><p><code>LIB_IP_XCI_SRCS +=3D $(=
LIB_IP_FIFO_GENERATOR_SRCS)</code></p><p>In the Makefile of my rfnoc, i add=
ed these lines:</p><p><code>OOT_FPGA_DIR =3D $(dir $(abspath $(firstword $(=
MAKEFILE_LIST))))/../</code></p><p><code>include $(OOT_FPGA_DIR)/ip/fifo_ge=
nerator_0/Makefile.inc</code></p><p>Finally, I have made sure that Makefile=
.e320.inx had LIB_IP_XCI_SRCS.</p><p><br></p><p>How can i solve it?</p><p><=
br></p><p>Kind Regards</p><p><br></p><p>Adr=C3=ADan</p><p><br></p><p><br></=
p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a807c305ea8bab6d--

--===============4782619956606658637==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4782619956606658637==--
