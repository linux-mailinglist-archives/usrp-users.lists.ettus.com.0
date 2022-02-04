Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2D54A9AC6
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 15:15:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4F552385F72
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 09:15:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="sFceGlvg";
	dkim-atps=neutral
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 7B4A7385CF2
	for <usrp-users@lists.ettus.com>; Fri,  4 Feb 2022 09:14:54 -0500 (EST)
Received: by mail-vk1-f175.google.com with SMTP id o15so3785133vki.2
        for <usrp-users@lists.ettus.com>; Fri, 04 Feb 2022 06:14:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=57mvJ3sX4Ix/k0gygJU5MO6qI9ppt3k4aLA/TYBSfqE=;
        b=sFceGlvghYWKEXyHlS/bY9ApJ+FVIukqviRAMgsJ5PaaoWefbWiynMj5sNWTJMzd3X
         jSV0cRPortEA1Rva/n2CIQixeKM+8TelMCacFu1+typIiwObUeQxALupGLzPyaC7NgCU
         4fxdjL2gU/unZQz1ctlb7VamztEO3pOmfGSk8DssK/I/kRQROiE3Gh9DV9C1wbPQuNdu
         O4oyzmDsfT9zbIUVN0yYhEZjeDfRVnKLY0bNPaI8YfthQ8LItruZsU4DBKNe3nNOVvYL
         z3MR7dyV5J3W4n8e9bkJLJ1fxDI6l6wZSpBYU59G5/epS5VbeEl/xbLzRDHxXneYP3rf
         zvzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=57mvJ3sX4Ix/k0gygJU5MO6qI9ppt3k4aLA/TYBSfqE=;
        b=XUwMJEvgUvJiv9Yq52xXk5CWetl7nqpzWLL38+dCKPrSImahvZzNANiTEUW4Jf+9Mm
         qst5Cle+NI8PWop9a0H3gdAqXR1YuqJIrjxM+/jHpngR8VTufdv1EfoVBgZktCuocXW5
         ycLK23CCimCH/+ta6U/XldOZ/ZardYT9gRApKsCYe+qt8X/bjqjWCvtMaa6DeZ4PoMmH
         Vz4NRQKXoPN3zaOmWSfjE/ume8IqGz+N5TaSsBdvr2cEvFczXrfmT5JwwNr/RJNkItPs
         XUP5d2xS4tMH3xnP/PzdMnMl9ETginUiFsyDSfFmJ14rhKOEjellcx/BKhtPZEuh3ysE
         9YTQ==
X-Gm-Message-State: AOAM533SXYXTpUDYFI1/ZraXPgQrn7JMQa2rqUY6/jkaLmyZNqUr2MyB
	I96EF/ia9FRKEoZO+qxlW1Cqekk7XEp5AOAGB+Nkioj9MZUcxg==
X-Google-Smtp-Source: ABdhPJzeL5gPNFEhRpiyfBGYKgtzp/KTFf39SHeicFEGyWwwARz6uAcJvPEhD5nUvjn0OVjBsXUFtzxH5tTJOKDgD+M=
X-Received: by 2002:ac5:c209:: with SMTP id m9mr1058789vkk.22.1643984093646;
 Fri, 04 Feb 2022 06:14:53 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PsErhg-2ScEfGRxKxjF7j1dO1bifVg8_bmY4vHUMipPHw@mail.gmail.com>
 <CAA=S3PtGaWu0pd2q4UV6v0ca9A=juysZQJOMS1hpbrLRBdLG2A@mail.gmail.com>
In-Reply-To: <CAA=S3PtGaWu0pd2q4UV6v0ca9A=juysZQJOMS1hpbrLRBdLG2A@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Fri, 4 Feb 2022 09:14:17 -0500
Message-ID: <CAL7q81v_UDMMqWvtj=Tz6iC7hC7CUGbFxazwZnBsxhSV0U2fvg@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: AZF2OSQNOEJNXFFTT6HHNWE3FPRN3SC5
X-Message-ID-Hash: AZF2OSQNOEJNXFFTT6HHNWE3FPRN3SC5
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building FPGA [00:12:48] Process terminated. Status: Failure How much can I debug?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AZF2OSQNOEJNXFFTT6HHNWE3FPRN3SC5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2844328443777944568=="

--===============2844328443777944568==
Content-Type: multipart/alternative; boundary="000000000000eb235705d731dfb3"

--000000000000eb235705d731dfb3
Content-Type: text/plain; charset="UTF-8"

Hi,

Are you running your FPGA build in a VM or on a system with a limited
amount of RAM?

Jonathon

On Fri, Feb 4, 2022 at 8:44 AM sp h <stackprogramer@gmail.com> wrote:

> Finally, I found that...
> In Vivado there is a limit for the number of warnings and errors which are
> displayed by the tool for a particular error or warning; the default value
> of this limit is 100.
>
>
> I concluded that:
> *The synthesis not completed might be unrelated.  This specific "warning"
> is one of the annoying "optimizations are warnings" cases.  This might come
> up if you have an incorrect clock/reset configuration, unconnected outputs,
> or constant inputs in some cases*
>
>
>
> https://forum.digilentinc.com/topic/4781-message-synth-8-3332-appears-100-times-and-further-instances-of-the-messages-will-be-disabled-use-the-tcl-command-set_msg_config-to-change-the-current-settings/
>
>
> https://support.xilinx.com/s/article/53034?language=en_US
>
> On Thu, Feb 3, 2022 at 1:29 PM sp h <stackprogramer@gmail.com> wrote:
>
>> When I want to build a new image configuration for USRP X300 I was faced
>> with  [00:12:48] Process terminated. Status: Failure
>> my new RFNOC core image YAML file, I attached here...
>> *And when I want to build I used these commands:*
>>
>> source setupenv.sh  --vivado-path=/home/sp/xilinx/Vivado
>> rfnoc_image_builder -y x300_with_fft.yml -t X300_HG
>> --fpga-dir=/home/sp/Documents/uhd-4.1.0.5/fpga
>> --vivado-path=/home/sp/xilinx/Vivado
>>
>> *Errors: I was faced with these errors...*
>>
>> [00:12:48] Current task: Synthesis +++ Current Phase: Finished
>> [00:12:48] Process terminated. Status: Failure
>>
>> ========================================================
>> Warnings:           715
>> Critical Warnings:  30
>> Errors:             0
>>
>> make[1]: *** [Makefile.x300.inc:127: bin] Error 1
>> make[1]: Leaving directory
>> '/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300'
>> make: *** [Makefile:90: X300_HG] Error 2
>>
>> *Build log file:*
>> I added the end part of the build log file here, I don't see any errors...
>>
>> *my question is how can solve my problem? How much can I debug? as in the
>> build log file and terminal I can not see any errors?*
>> *thanks in advance*
>>
>> genblk1[73].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>> 'cic_interpolate:/genblk1[74].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>> 'cic_interpolate:/genblk1[75].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>> 'cic_interpolate:/genblk1[76].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>> 'cic_interpolate:/genblk1[77].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>> 'cic_interpolate:/genblk1[78].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>> 'cic_interpolate:/genblk1[79].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>> 'cic_interpolate:/genblk1[80].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>> 'cic_interpolate:/genblk1[82].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>> 'cic_interpolate:/genblk1[83].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>> 'cic_interpolate:/genblk1[84].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>> 'cic_interpolate:/genblk1[85].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>> 'cic_interpolate:/genblk1[86].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>> 'cic_interpolate:/genblk1[87].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>> 'cic_interpolate:/genblk1[88].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>> 'cic_interpolate:/genblk1[89].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>> 'cic_interpolate:/genblk1[90].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>> 'cic_interpolate:/genblk1[91].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>> 'cic_interpolate:/genblk1[92].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>> 'cic_interpolate:/genblk1[93].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>> 'cic_interpolate:/genblk1[94].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>> 'cic_interpolate:/genblk1[95].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>> 'cic_interpolate:/genblk1[96].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>> 'cic_interpolate:/genblk1[97].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>> 'cic_interpolate:/genblk1[98].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>> 'cic_interpolate:/genblk1[99].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>> 'cic_interpolate:/genblk1[100].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>> 'cic_interpolate:/genblk1[101].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>> 'cic_interpolate:/genblk1[103].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>> 'cic_interpolate:/genblk1[104].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>> 'cic_interpolate:/genblk1[105].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>> 'cic_interpolate:/genblk1[106].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>> 'cic_interpolate:/genblk1[107].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>> 'cic_interpolate:/genblk1[108].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>> 'cic_interpolate:/genblk1[109].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>> 'cic_interpolate:/genblk1[110].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>> 'cic_interpolate:/genblk1[111].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>> 'cic_interpolate:/genblk1[112].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>> 'cic_interpolate:/genblk1[113].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>> 'cic_interpolate:/genblk1[114].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>> 'cic_interpolate:/genblk1[115].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>> 'cic_interpolate:/genblk1[116].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>> 'cic_interpolate:/genblk1[117].axi_round'
>> INFO: [Synth 8-223] decloning instance
>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>> 'cic_interpolate:/genblk1[118].axi_round'
>> INFO: [Common 17-14] Message 'Synth 8-223' appears 100 times and further
>> instances of the messages will be disabled. Use the Tcl command
>> set_msg_config to change the current settings.
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000eb235705d731dfb3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Are you running your FPGA build in =
a VM or on a system with a limited amount of RAM?</div><div><br></div><div>=
Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Feb 4, 2022 at 8:44 AM sp h &lt;<a href=3D"mailto:s=
tackprogramer@gmail.com">stackprogramer@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Finally, =
I found that...<div><span style=3D"color:rgb(51,51,51);font-family:Roboto,s=
ans-serif;font-size:12px">In Vivado=C2=A0there is a limit for the number of=
 warnings and errors which are displayed by the tool for a particular error=
 or warning; the default value of this limit is 100.=C2=A0</span><br></div>=
<div><span style=3D"color:rgb(51,51,51);font-family:Roboto,sans-serif;font-=
size:12px"><br></span></div><div><span style=3D"color:rgb(51,51,51);font-fa=
mily:Roboto,sans-serif;font-size:12px"><br></span></div><div><span style=3D=
"color:rgb(51,51,51);font-family:Roboto,sans-serif;font-size:12px">I conclu=
ded that:</span></div><div><span style=3D"color:rgb(53,60,65);font-family:I=
nter,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px">=
<b>The synthesis not completed might be unrelated.=C2=A0 This specific &quo=
t;warning&quot; is one of the annoying &quot;optimizations are warnings&quo=
t; cases.=C2=A0 This might come up if you have an incorrect clock/reset con=
figuration, unconnected outputs, or constant inputs in some cases</b></span=
><span style=3D"color:rgb(51,51,51);font-family:Roboto,sans-serif;font-size=
:12px"><br></span></div><div><span style=3D"color:rgb(53,60,65);font-family=
:Inter,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px=
"><b><br></b></span></div><div><span style=3D"color:rgb(53,60,65);font-fami=
ly:Inter,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14=
px"><b><br></b></span></div><div><a href=3D"https://forum.digilentinc.com/t=
opic/4781-message-synth-8-3332-appears-100-times-and-further-instances-of-t=
he-messages-will-be-disabled-use-the-tcl-command-set_msg_config-to-change-t=
he-current-settings/" target=3D"_blank">https://forum.digilentinc.com/topic=
/4781-message-synth-8-3332-appears-100-times-and-further-instances-of-the-m=
essages-will-be-disabled-use-the-tcl-command-set_msg_config-to-change-the-c=
urrent-settings/</a><span style=3D"color:rgb(53,60,65);font-family:Inter,&q=
uot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px"><b><br>=
</b></span></div><div><br></div><div><br></div><div><a href=3D"https://supp=
ort.xilinx.com/s/article/53034?language=3Den_US" target=3D"_blank">https://=
support.xilinx.com/s/article/53034?language=3Den_US</a><br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Fe=
b 3, 2022 at 1:29 PM sp h &lt;<a href=3D"mailto:stackprogramer@gmail.com" t=
arget=3D"_blank">stackprogramer@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>When I want =
to build a new image configuration for USRP X300 I was faced with=C2=A0=C2=
=A0[00:12:48] Process terminated. Status: Failure<br><div>my new RFNOC core=
 image YAML file, I attached here...</div><div><b>And when I want to build =
I used these commands:</b></div><div><br></div><div>source setupenv.sh =C2=
=A0--vivado-path=3D/home/sp/xilinx/Vivado<br></div><div>rfnoc_image_builder=
 -y x300_with_fft.yml -t X300_HG =C2=A0 --fpga-dir=3D/home/sp/Documents/uhd=
-4.1.0.5/fpga =C2=A0 --vivado-path=3D/home/sp/xilinx/Vivado =C2=A0<br><br><=
/div><div><b>Errors: I was=C2=A0faced with these errors...</b></div><div><b=
r></div><div>[00:12:48] Current task: Synthesis +++ Current Phase: Finished=
<br>[00:12:48] Process terminated. Status: Failure<br><br>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>Warnings: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 715<br>Critical Warning=
s: =C2=A030<br>Errors: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0<br><br>m=
ake[1]: *** [Makefile.x300.inc:127: bin] Error 1<br>make[1]: Leaving direct=
ory &#39;/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300&#39;<br>make: *=
** [Makefile:90: X300_HG] Error 2<br></div><div><br></div><div><b>Build log=
 file:</b></div><div>I added the end part of the build log file here, I don=
&#39;t see any errors...</div><div><br></div><div><b>my question is how can=
 solve my problem? How much=C2=A0can I debug? as in the build log file and =
terminal I can not see any errors?</b></div><div><b>thanks in advance</b></=
div></div><div><br></div><div>genblk1[73].axi_round&#39;<br>INFO: [Synth 8-=
223] decloning instance &#39;cic_interpolate:/genblk1[65].axi_round&#39; (a=
xi_round__parameterized16) to &#39;cic_interpolate:/genblk1[74].axi_round&#=
39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1=
[65].axi_round&#39; (axi_round__parameterized16) to &#39;cic_interpolate:/g=
enblk1[75].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;ci=
c_interpolate:/genblk1[65].axi_round&#39; (axi_round__parameterized16) to &=
#39;cic_interpolate:/genblk1[76].axi_round&#39;<br>INFO: [Synth 8-223] decl=
oning instance &#39;cic_interpolate:/genblk1[65].axi_round&#39; (axi_round_=
_parameterized16) to &#39;cic_interpolate:/genblk1[77].axi_round&#39;<br>IN=
FO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[65].axi_=
round&#39; (axi_round__parameterized16) to &#39;cic_interpolate:/genblk1[78=
].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpo=
late:/genblk1[65].axi_round&#39; (axi_round__parameterized16) to &#39;cic_i=
nterpolate:/genblk1[79].axi_round&#39;<br>INFO: [Synth 8-223] decloning ins=
tance &#39;cic_interpolate:/genblk1[65].axi_round&#39; (axi_round__paramete=
rized16) to &#39;cic_interpolate:/genblk1[80].axi_round&#39;<br>INFO: [Synt=
h 8-223] decloning instance &#39;cic_interpolate:/genblk1[81].axi_round&#39=
; (axi_round__parameterized17) to &#39;cic_interpolate:/genblk1[82].axi_rou=
nd&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/gen=
blk1[81].axi_round&#39; (axi_round__parameterized17) to &#39;cic_interpolat=
e:/genblk1[83].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#3=
9;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__parameterized17) =
to &#39;cic_interpolate:/genblk1[84].axi_round&#39;<br>INFO: [Synth 8-223] =
decloning instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_ro=
und__parameterized17) to &#39;cic_interpolate:/genblk1[85].axi_round&#39;<b=
r>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[81].=
axi_round&#39; (axi_round__parameterized17) to &#39;cic_interpolate:/genblk=
1[86].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_int=
erpolate:/genblk1[81].axi_round&#39; (axi_round__parameterized17) to &#39;c=
ic_interpolate:/genblk1[87].axi_round&#39;<br>INFO: [Synth 8-223] decloning=
 instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__para=
meterized17) to &#39;cic_interpolate:/genblk1[88].axi_round&#39;<br>INFO: [=
Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[81].axi_round=
&#39; (axi_round__parameterized17) to &#39;cic_interpolate:/genblk1[89].axi=
_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:=
/genblk1[81].axi_round&#39; (axi_round__parameterized17) to &#39;cic_interp=
olate:/genblk1[90].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance=
 &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__parameterized=
17) to &#39;cic_interpolate:/genblk1[91].axi_round&#39;<br>INFO: [Synth 8-2=
23] decloning instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (ax=
i_round__parameterized17) to &#39;cic_interpolate:/genblk1[92].axi_round&#3=
9;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[=
81].axi_round&#39; (axi_round__parameterized17) to &#39;cic_interpolate:/ge=
nblk1[93].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic=
_interpolate:/genblk1[81].axi_round&#39; (axi_round__parameterized17) to &#=
39;cic_interpolate:/genblk1[94].axi_round&#39;<br>INFO: [Synth 8-223] declo=
ning instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__=
parameterized17) to &#39;cic_interpolate:/genblk1[95].axi_round&#39;<br>INF=
O: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[81].axi_r=
ound&#39; (axi_round__parameterized17) to &#39;cic_interpolate:/genblk1[96]=
.axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpol=
ate:/genblk1[81].axi_round&#39; (axi_round__parameterized17) to &#39;cic_in=
terpolate:/genblk1[97].axi_round&#39;<br>INFO: [Synth 8-223] decloning inst=
ance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__parameter=
ized17) to &#39;cic_interpolate:/genblk1[98].axi_round&#39;<br>INFO: [Synth=
 8-223] decloning instance &#39;cic_interpolate:/genblk1[81].axi_round&#39;=
 (axi_round__parameterized17) to &#39;cic_interpolate:/genblk1[99].axi_roun=
d&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genb=
lk1[81].axi_round&#39; (axi_round__parameterized17) to &#39;cic_interpolate=
:/genblk1[100].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#3=
9;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__parameterized17) =
to &#39;cic_interpolate:/genblk1[101].axi_round&#39;<br>INFO: [Synth 8-223]=
 decloning instance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_=
round__parameterized18) to &#39;cic_interpolate:/genblk1[103].axi_round&#39=
;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[1=
02].axi_round&#39; (axi_round__parameterized18) to &#39;cic_interpolate:/ge=
nblk1[104].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;ci=
c_interpolate:/genblk1[102].axi_round&#39; (axi_round__parameterized18) to =
&#39;cic_interpolate:/genblk1[105].axi_round&#39;<br>INFO: [Synth 8-223] de=
cloning instance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_rou=
nd__parameterized18) to &#39;cic_interpolate:/genblk1[106].axi_round&#39;<b=
r>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[102]=
.axi_round&#39; (axi_round__parameterized18) to &#39;cic_interpolate:/genbl=
k1[107].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_i=
nterpolate:/genblk1[102].axi_round&#39; (axi_round__parameterized18) to &#3=
9;cic_interpolate:/genblk1[108].axi_round&#39;<br>INFO: [Synth 8-223] declo=
ning instance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_round_=
_parameterized18) to &#39;cic_interpolate:/genblk1[109].axi_round&#39;<br>I=
NFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[102].ax=
i_round&#39; (axi_round__parameterized18) to &#39;cic_interpolate:/genblk1[=
110].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_inte=
rpolate:/genblk1[102].axi_round&#39; (axi_round__parameterized18) to &#39;c=
ic_interpolate:/genblk1[111].axi_round&#39;<br>INFO: [Synth 8-223] declonin=
g instance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_round__pa=
rameterized18) to &#39;cic_interpolate:/genblk1[112].axi_round&#39;<br>INFO=
: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[102].axi_r=
ound&#39; (axi_round__parameterized18) to &#39;cic_interpolate:/genblk1[113=
].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpo=
late:/genblk1[102].axi_round&#39; (axi_round__parameterized18) to &#39;cic_=
interpolate:/genblk1[114].axi_round&#39;<br>INFO: [Synth 8-223] decloning i=
nstance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_round__param=
eterized18) to &#39;cic_interpolate:/genblk1[115].axi_round&#39;<br>INFO: [=
Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[102].axi_roun=
d&#39; (axi_round__parameterized18) to &#39;cic_interpolate:/genblk1[116].a=
xi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolat=
e:/genblk1[102].axi_round&#39; (axi_round__parameterized18) to &#39;cic_int=
erpolate:/genblk1[117].axi_round&#39;<br>INFO: [Synth 8-223] decloning inst=
ance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_round__paramete=
rized18) to &#39;cic_interpolate:/genblk1[118].axi_round&#39;<br>INFO: [Com=
mon 17-14] Message &#39;Synth 8-223&#39; appears 100 times and further inst=
ances of the messages will be disabled. Use the Tcl command set_msg_config =
to change the current settings.<br></div></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000eb235705d731dfb3--

--===============2844328443777944568==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2844328443777944568==--
