Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DFA75194B
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jul 2023 09:05:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8235B384AD4
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jul 2023 03:05:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689231938; bh=+anLWbVH97C7w39W8RdFm2vjderkhfhfV7SRoXzDk0c=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=N0TkzAG4KxQiTuMEQ5gCEFza/S/UvAQ84qMiubZFDpY3U4Yop8+v3YQ2xYRs54i1r
	 DEDYLmvSnWt83kY8ju2pm02864UbT9ZbhJGuiqmitTL9H2QNP+z4M3QmuW1+OX8ITt
	 cN4Vre5OV/bHge//RdlK+AKAhnCPHKlZ/UwmpvRGEIas+2OXFbFJ6fX3nv8qT+ROEJ
	 5Q17ltW9w+BdS1nc4f2NfeVpDhWu0ohOigkw49AYf4+bckAPIAouRWzxUxdruB23cl
	 4/j6Iy/O3hw30BP6GgmyaK7/Mmj7PLJuIJw8r3UxFzVLgX2XZhNzZYRRlIs4jCr80o
	 tCwKjd6oUsMjg==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 87FD6384A90
	for <usrp-users@lists.ettus.com>; Thu, 13 Jul 2023 03:05:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="4ZGtfpIX";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-986d8332f50so62742066b.0
        for <usrp-users@lists.ettus.com>; Thu, 13 Jul 2023 00:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1689231899; x=1691823899;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3k7gqYFjsne4aOcSMNJIN9lQEasAWPsfg220d9Xiwww=;
        b=4ZGtfpIXkgc6zVX7E0kmCshZnV9M7oRjHqaJ2YguLwNX0gKI3Ohqfw3+d3Sjh8Nk+f
         GWJKlxsxZxPLTyzVakJDjVYzRAGe88fXPnoTmj7hrwWsso3kH5c42+VwxbHS8Y7lBALf
         VHvXWYoGGl96i3a64nm9qHx2185pNLre1/1xIjLHx34UH/U9Y5Wd5q0/ZOb6q4aD8fiy
         qYnJLov7lY/bhrznuWVqYW34JPZsP/qFQOYO1xYYm6bySmu0xBIuK3KLba7OoGM4t1cC
         Hj+g8pN/5g1vdxLHJWCvGgPby8TciOw4Unpsxm2u9zxmdFbhgJP/od5my8T8skl+9qpm
         Sc0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689231899; x=1691823899;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3k7gqYFjsne4aOcSMNJIN9lQEasAWPsfg220d9Xiwww=;
        b=Cat6q8asOhaW06rysy4c+SFJfp11gYYsKhHpJAhuGO3azIoDtEKGL24RIzyLLlBgzo
         QCSbE8OmAGt8XQhX2TotzNiYkipTPx79NlSMvnzpU26JMNHZT/GZc6C5NDJiRKVphpPa
         KhAvyrGDUIwPHjnK+8MkvN7XilIbMRHGt3Q8D7CZ22g/83lq863IgesA2gUSsB25L3EW
         dtb5g2b1QLc2EOaZ4WXuqmCMO1DjjpA2037h6vOCmJeA4JkkbwWsnGg1WLrEPw2te0nJ
         pWXJdGX8Vwobg/+JqeE1WoW6wQJIsnMFJGhEZ4WR7Cr0IiYYzq41IjhTFPDxd7RT96m5
         jvHA==
X-Gm-Message-State: ABy/qLbWhdwwPnYG75Udj45bMd2qxFIOxkMKIbIXw6RKa+9ihCpGGWeM
	vzuiDdK7yhWqzyHxdLJm8JRiZ0RImIi8Fw3BvQjgePUT
X-Google-Smtp-Source: APBJJlFid9sgnzO05Aow1yDeoCrzhu5o5WaML1Z0ipIdQwA91D0B+z6/KS/YQRhrmT9izINEXDyaPUkdto7+Jh1E8vY=
X-Received: by 2002:a17:906:c30e:b0:988:7d68:9fee with SMTP id
 s14-20020a170906c30e00b009887d689feemr603122ejz.34.1689231899175; Thu, 13 Jul
 2023 00:04:59 -0700 (PDT)
MIME-Version: 1.0
References: <a8347b099c6c4bd3b6426f878b2827f9@iis.fraunhofer.de>
 <CAFche=iwSbhjjufezRYPK4ByFLJx-mHgTEFuoe9rsHj1MP-UuQ@mail.gmail.com> <2b4732022e1240bfbc9fcdbae6e6cadd@iis.fraunhofer.de>
In-Reply-To: <2b4732022e1240bfbc9fcdbae6e6cadd@iis.fraunhofer.de>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 13 Jul 2023 01:04:42 -0600
Message-ID: <CAFche=iq0DhoYCBnr6ytQ2sxeTdQdkKHK9XERyxbo_Rqx=0BHQ@mail.gmail.com>
To: "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>
Message-ID-Hash: RXMN23DEX7OAD6VOJ5FGOI3EZWL2JVXF
X-Message-ID-Hash: RXMN23DEX7OAD6VOJ5FGOI3EZWL2JVXF
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>, "Nieland, Michael" <michael.nieland@iis.fraunhofer.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Image Builder: two problems with Vitis HLS
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RXMN23DEX7OAD6VOJ5FGOI3EZWL2JVXF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8994179599286563286=="

--===============8994179599286563286==
Content-Type: multipart/alternative; boundary="0000000000004b43b6060058f392"

--0000000000004b43b6060058f392
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The errors about locked IP usually means the Vivado version doesn't match.
But you say it reports 2021.1_AR76780, which seems correct. Running "make
cleanall" (cleanall is one word in this case) should clean out any stale
files that may have been generated with the wrong version. Just to be sure,
make sure the generated IP folder is deleted before you try a clean build.

/home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/

You should be able to build all the IP without error. Upgrading the IP
shouldn't do anything because it is already the correct version
for 2021.1_AR76780.

Wade

On Wed, Jul 12, 2023, 1:44 AM Bachmaier, Luca <
luca.bachmaier@iis.fraunhofer.de> wrote:

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

--0000000000004b43b6060058f392
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto">The errors about locked IP usually mean=
s the Vivado version doesn&#39;t match. But you say it reports 2021.1_AR767=
80, which seems correct. Running &quot;make cleanall&quot; (cleanall is one=
 word in this case) should clean out any stale files that may have been gen=
erated with the wrong version. Just to be sure, make sure the generated IP =
folder is deleted before you try a clean build.</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto">/home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/<br=
></div><div dir=3D"auto"><br></div><div dir=3D"auto">You should be able to =
build all the IP without error. Upgrading the IP shouldn&#39;t do anything =
because it is already the correct version for=C2=A02021.1_AR76780.</div><di=
v dir=3D"auto"><br></div><div dir=3D"auto">Wade=C2=A0</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 12, 2023=
, 1:44 AM Bachmaier, Luca &lt;<a href=3D"mailto:luca.bachmaier@iis.fraunhof=
er.de" rel=3D"noreferrer noreferrer" target=3D"_blank">luca.bachmaier@iis.f=
raunhofer.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"DE" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">Hi Wade,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">thank you for your rep=
ly. Running `make cleanall` and rebuilding gives me the error that I origin=
ally fixed by manually
 upgrading the IPs:<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
f497d"><br>
[00:00:08] Current task: Initialization +++ Current Phase: Starting<u></u><=
u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
f497d">WARNING: [IP_Flow 19-2162] IP &#39;hb47_1to2&#39; is locked:<u></u><=
u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
f497d">CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for t=
he following file is locked:
 /home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/=
hb47_1to2.xci<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
f497d">=E2=80=A6<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
f497d">WARNING: [IP_Flow 19-2162] IP &#39;hb47_1to2&#39; is locked:<u></u><=
u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
f497d">ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sourc=
es specified<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
f497d">...<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
f497d">CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file &#=
39;/home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to=
2/hb47_1to2.xml&#39;<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
f497d">ERROR: [Vivado 12-398] No designs are open<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">Something else I notic=
ed when rebuilding is that I get a whole bunch of warnings like the followi=
ng:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#=
1f497d">WARNING: [Runs 36-547] Tool Strategy &#39;Rodin Implementation Defa=
ults&#39; from file &#39;/tools/Xilinx/Vivado/2021.1/strategies/RDI13.psg&#=
39;
 discarded because strategy with same name already parsed from &#39;/tools/=
Xilinx/Vivado/2021.1//strategies/RDI13.psg&#39;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">I=E2=80=99m confused b=
y the comparison of the second path with the =E2=80=9C//=E2=80=9D. Aren=E2=
=80=99t both paths listed here the same? Could this be
 the mismatch you wrote about in your mail? The patch should be installed p=
roperly though, when I start the script I get the version info =E2=80=9C* V=
ivado v2021.1_AR76780 (64-bit)=E2=80=9D.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">To add, did you perhap=
s mean `make clean all` instead of `make cleanall`? These two commands give=
 me two different outputs.
 The latter you suggested just returns =E2=80=9CCleaning targets and IP...=
=E2=80=9D whereas the former actually starts up Vivado and then throws this=
 error:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
f497d">WARNING: [Device 21-436] No parts matched &#39;ERROR: Invalid target=
 format. Must be &lt;arch&gt;/&lt;device&gt;/&lt;package&gt;/&lt;speedgrade=
&gt;[/&lt;temperaturegrade&gt;[/&lt;silicon_revision&gt;]]<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
f497d">ERROR: Parsed only 2 tokens&#39;<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
f497d">ERROR: [Coretcl 2-106] Specified part could not be found.<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
f497d">[00:00:06] Current task: Initialization +++ Current Phase: Finished<=
u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
f497d">[00:00:06] Process terminated. Status: Failure<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">I will report back on =
your suggestion of commenting out the line ASAP. I would be very happy to h=
ear feedback from you
 regarding the errors/warnings above in the meantime.<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">Regards<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">Luca<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #e1e1e1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">Von:</span></b><span style=3D"font-size:11.0pt;f=
ont-family:&quot;Calibri&quot;,sans-serif"> Wade Fife &lt;<a href=3D"mailto=
:wade.fife@ettus.com" rel=3D"noreferrer noreferrer noreferrer" target=3D"_b=
lank">wade.fife@ettus.com</a>&gt;
<br>
<b>Gesendet:</b> Mittwoch, 5. Juli 2023 06:35<br>
<b>An:</b> Bachmaier, Luca &lt;<a href=3D"mailto:luca.bachmaier@iis.fraunho=
fer.de" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">luca.bac=
hmaier@iis.fraunhofer.de</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer =
noreferrer noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a>; Ni=
eland, Michael &lt;<a href=3D"mailto:michael.nieland@iis.fraunhofer.de" rel=
=3D"noreferrer noreferrer noreferrer" target=3D"_blank">michael.nieland@iis=
.fraunhofer.de</a>&gt;<br>
<b>Betreff:</b> Re: [USRP-users] RFNoC Image Builder: two problems with Vit=
is HLS<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<div>
<p class=3D"MsoNormal">Hi Luca,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Can you try going into the uhd/fpga/usrp3/top/n3xx/ =
and running `make cleanall` and running the build again? You should not hav=
e had to manually upgrade IP unless there was some kind of mismatch somewhe=
re. Perhaps you tried building first
 without the patch but didn&#39;t clean out the old IP that was generated? =
A version mismatch might explain the HLS error you&#39;re getting. If the H=
LS IP continues to give you problems, you could try commenting out this lin=
e.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"https://github.com/EttusResearch/uhddev/b=
lob/UHD-4.3/fpga/usrp3/lib/hls/Makefile.inc#L7" rel=3D"noreferrer noreferre=
r noreferrer" target=3D"_blank">https://github.com/EttusResearch/uhddev/blo=
b/UHD-4.3/fpga/usrp3/lib/hls/Makefile.inc#L7</a><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Wade<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, Jul 4, 2023 at 5:50=E2=80=AFAM Bachmaier, Lu=
ca &lt;<a href=3D"mailto:luca.bachmaier@iis.fraunhofer.de" rel=3D"noreferre=
r noreferrer noreferrer" target=3D"_blank">luca.bachmaier@iis.fraunhofer.de=
</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
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
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer noreferrer noreferrer" target=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><u></u><u></u></p>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>

</blockquote></div></div>

--0000000000004b43b6060058f392--

--===============8994179599286563286==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8994179599286563286==--
