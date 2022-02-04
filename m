Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B054A9A3D
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 14:45:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 33A7A385CE6
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 08:45:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VX+88EyX";
	dkim-atps=neutral
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 28A69385CDF
	for <usrp-users@lists.ettus.com>; Fri,  4 Feb 2022 08:44:39 -0500 (EST)
Received: by mail-yb1-f178.google.com with SMTP id g14so18774538ybs.8
        for <usrp-users@lists.ettus.com>; Fri, 04 Feb 2022 05:44:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=WvdeiBxxNkBxnpq4I+hDVuH9lwa4juCW/VFPZi/YE5g=;
        b=VX+88EyXNatvt3cfu5wnsDmhiOmvG6sI1rnNoIWu2zluwvmi4R62Zso2zrfXN3T9Az
         r10qHfh+0/YaTKqJX8ZSc1lCr1qx9n+A3OnSVS2rLbDVINMpbJPHh85F57cbYwnRHoN+
         ny2YEBYwKpnHRoEgMHlDg+s85oTNy/eXWjJp9f3y5hljEk6fSoKFgGYuj4JGD83+VtH9
         0RYMUY3WRhZe96l/esByEI+arL43q68xFyhSr68c3dL9zMfmYD6/9LTA4N3ShHcEGkpo
         ZnvHd/ZQSsLvyU8cB7bLhI9gm5Wm4tpv6J7zs+UMrT2o+yryZFJUuvM7jlaI9hSFL0LE
         6v0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=WvdeiBxxNkBxnpq4I+hDVuH9lwa4juCW/VFPZi/YE5g=;
        b=bWDgeklrG5ZPAHQ0uzMWG7DsfopmLeruzPkzXYEVUeatjfgl8TUWaiwwVfO8xi45lV
         IuFY5NGma/jaIrj8M5I69W5+GWsS+Gc/nWINZyI7nCkcGBVZgnUK93bBukYpfDa4i3ik
         MhSVVfIPh5itOK3QsI7MXUaOp/4Bo7kKKi7tlO+QrFqG9mtC1KqqhHldj+4BnSnjBb5/
         O35IWYnM8hUi0x3SiryzmklYsgMgRXg9lsENXDMnnMKo2Ota9efuBLxk0Fc6ISZ0Wf4u
         rRNShv6LY+o9aE5em3/TCPhaO7A1XOHL/m6c6sdCGIyxn1g7X7GCB/iRNJhfFY6HRabF
         lkGQ==
X-Gm-Message-State: AOAM531YlRIRkGa2WydktaDI/TW1JSKQsj909DLUApIqL/5GY5rZtI3o
	r6sMF7gC+sceGI3fqiJRGwFZoyOLA8lTVLRUuTXGXdZ5K1y/tIJa
X-Google-Smtp-Source: ABdhPJwV4VpTb1sFrpEUlWsLi/GqvDUBNO5uljkLWIMW+K1BBLSHVVNqUDAGo1QpaELJknpYEP23cvPsX3rpeS2srpQ=
X-Received: by 2002:a5b:548:: with SMTP id r8mr2700596ybp.717.1643982278840;
 Fri, 04 Feb 2022 05:44:38 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PsErhg-2ScEfGRxKxjF7j1dO1bifVg8_bmY4vHUMipPHw@mail.gmail.com>
In-Reply-To: <CAA=S3PsErhg-2ScEfGRxKxjF7j1dO1bifVg8_bmY4vHUMipPHw@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Fri, 4 Feb 2022 17:14:10 +0330
Message-ID: <CAA=S3PtGaWu0pd2q4UV6v0ca9A=juysZQJOMS1hpbrLRBdLG2A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: M2UTOLGUNVLLDY4LAONPZK7EEHGB4UHE
X-Message-ID-Hash: M2UTOLGUNVLLDY4LAONPZK7EEHGB4UHE
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building FPGA [00:12:48] Process terminated. Status: Failure How much can I debug?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M2UTOLGUNVLLDY4LAONPZK7EEHGB4UHE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6139896918383936004=="

--===============6139896918383936004==
Content-Type: multipart/alternative; boundary="000000000000bf53cb05d73173af"

--000000000000bf53cb05d73173af
Content-Type: text/plain; charset="UTF-8"

Finally, I found that...
In Vivado there is a limit for the number of warnings and errors which are
displayed by the tool for a particular error or warning; the default value
of this limit is 100.


I concluded that:
*The synthesis not completed might be unrelated.  This specific "warning"
is one of the annoying "optimizations are warnings" cases.  This might come
up if you have an incorrect clock/reset configuration, unconnected outputs,
or constant inputs in some cases*


https://forum.digilentinc.com/topic/4781-message-synth-8-3332-appears-100-times-and-further-instances-of-the-messages-will-be-disabled-use-the-tcl-command-set_msg_config-to-change-the-current-settings/


https://support.xilinx.com/s/article/53034?language=en_US

On Thu, Feb 3, 2022 at 1:29 PM sp h <stackprogramer@gmail.com> wrote:

> When I want to build a new image configuration for USRP X300 I was faced
> with  [00:12:48] Process terminated. Status: Failure
> my new RFNOC core image YAML file, I attached here...
> *And when I want to build I used these commands:*
>
> source setupenv.sh  --vivado-path=/home/sp/xilinx/Vivado
> rfnoc_image_builder -y x300_with_fft.yml -t X300_HG
> --fpga-dir=/home/sp/Documents/uhd-4.1.0.5/fpga
> --vivado-path=/home/sp/xilinx/Vivado
>
> *Errors: I was faced with these errors...*
>
> [00:12:48] Current task: Synthesis +++ Current Phase: Finished
> [00:12:48] Process terminated. Status: Failure
>
> ========================================================
> Warnings:           715
> Critical Warnings:  30
> Errors:             0
>
> make[1]: *** [Makefile.x300.inc:127: bin] Error 1
> make[1]: Leaving directory
> '/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300'
> make: *** [Makefile:90: X300_HG] Error 2
>
> *Build log file:*
> I added the end part of the build log file here, I don't see any errors...
>
> *my question is how can solve my problem? How much can I debug? as in the
> build log file and terminal I can not see any errors?*
> *thanks in advance*
>
> genblk1[73].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
> 'cic_interpolate:/genblk1[74].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
> 'cic_interpolate:/genblk1[75].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
> 'cic_interpolate:/genblk1[76].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
> 'cic_interpolate:/genblk1[77].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
> 'cic_interpolate:/genblk1[78].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
> 'cic_interpolate:/genblk1[79].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
> 'cic_interpolate:/genblk1[80].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
> 'cic_interpolate:/genblk1[82].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
> 'cic_interpolate:/genblk1[83].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
> 'cic_interpolate:/genblk1[84].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
> 'cic_interpolate:/genblk1[85].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
> 'cic_interpolate:/genblk1[86].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
> 'cic_interpolate:/genblk1[87].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
> 'cic_interpolate:/genblk1[88].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
> 'cic_interpolate:/genblk1[89].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
> 'cic_interpolate:/genblk1[90].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
> 'cic_interpolate:/genblk1[91].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
> 'cic_interpolate:/genblk1[92].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
> 'cic_interpolate:/genblk1[93].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
> 'cic_interpolate:/genblk1[94].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
> 'cic_interpolate:/genblk1[95].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
> 'cic_interpolate:/genblk1[96].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
> 'cic_interpolate:/genblk1[97].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
> 'cic_interpolate:/genblk1[98].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
> 'cic_interpolate:/genblk1[99].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
> 'cic_interpolate:/genblk1[100].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
> 'cic_interpolate:/genblk1[101].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
> 'cic_interpolate:/genblk1[103].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
> 'cic_interpolate:/genblk1[104].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
> 'cic_interpolate:/genblk1[105].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
> 'cic_interpolate:/genblk1[106].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
> 'cic_interpolate:/genblk1[107].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
> 'cic_interpolate:/genblk1[108].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
> 'cic_interpolate:/genblk1[109].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
> 'cic_interpolate:/genblk1[110].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
> 'cic_interpolate:/genblk1[111].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
> 'cic_interpolate:/genblk1[112].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
> 'cic_interpolate:/genblk1[113].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
> 'cic_interpolate:/genblk1[114].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
> 'cic_interpolate:/genblk1[115].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
> 'cic_interpolate:/genblk1[116].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
> 'cic_interpolate:/genblk1[117].axi_round'
> INFO: [Synth 8-223] decloning instance
> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
> 'cic_interpolate:/genblk1[118].axi_round'
> INFO: [Common 17-14] Message 'Synth 8-223' appears 100 times and further
> instances of the messages will be disabled. Use the Tcl command
> set_msg_config to change the current settings.
>

--000000000000bf53cb05d73173af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Finally, I found that...<div><span style=3D"color:rgb(51,5=
1,51);font-family:Roboto,sans-serif;font-size:12px">In Vivado=C2=A0there is=
 a limit for the number of warnings and errors which are displayed by the t=
ool for a particular error or warning; the default value of this limit is 1=
00.=C2=A0</span><br></div><div><span style=3D"color:rgb(51,51,51);font-fami=
ly:Roboto,sans-serif;font-size:12px"><br></span></div><div><span style=3D"c=
olor:rgb(51,51,51);font-family:Roboto,sans-serif;font-size:12px"><br></span=
></div><div><span style=3D"color:rgb(51,51,51);font-family:Roboto,sans-seri=
f;font-size:12px">I concluded that:</span></div><div><span style=3D"color:r=
gb(53,60,65);font-family:Inter,&quot;Helvetica Neue&quot;,Helvetica,Arial,s=
ans-serif;font-size:14px"><b>The synthesis not completed might be unrelated=
.=C2=A0 This specific &quot;warning&quot; is one of the annoying &quot;opti=
mizations are warnings&quot; cases.=C2=A0 This might come up if you have an=
 incorrect clock/reset configuration, unconnected outputs, or constant inpu=
ts in some cases</b></span><span style=3D"color:rgb(51,51,51);font-family:R=
oboto,sans-serif;font-size:12px"><br></span></div><div><span style=3D"color=
:rgb(53,60,65);font-family:Inter,&quot;Helvetica Neue&quot;,Helvetica,Arial=
,sans-serif;font-size:14px"><b><br></b></span></div><div><span style=3D"col=
or:rgb(53,60,65);font-family:Inter,&quot;Helvetica Neue&quot;,Helvetica,Ari=
al,sans-serif;font-size:14px"><b><br></b></span></div><div><a href=3D"https=
://forum.digilentinc.com/topic/4781-message-synth-8-3332-appears-100-times-=
and-further-instances-of-the-messages-will-be-disabled-use-the-tcl-command-=
set_msg_config-to-change-the-current-settings/">https://forum.digilentinc.c=
om/topic/4781-message-synth-8-3332-appears-100-times-and-further-instances-=
of-the-messages-will-be-disabled-use-the-tcl-command-set_msg_config-to-chan=
ge-the-current-settings/</a><span style=3D"color:rgb(53,60,65);font-family:=
Inter,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px"=
><b><br></b></span></div><div><br></div><div><br></div><div><a href=3D"http=
s://support.xilinx.com/s/article/53034?language=3Den_US">https://support.xi=
linx.com/s/article/53034?language=3Den_US</a><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 3, 2022 =
at 1:29 PM sp h &lt;<a href=3D"mailto:stackprogramer@gmail.com">stackprogra=
mer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div>When I want to build a new image configu=
ration for USRP X300 I was faced with=C2=A0=C2=A0[00:12:48] Process termina=
ted. Status: Failure<br><div>my new RFNOC core image YAML file, I attached =
here...</div><div><b>And when I want to build I used these commands:</b></d=
iv><div><br></div><div>source setupenv.sh =C2=A0--vivado-path=3D/home/sp/xi=
linx/Vivado<br></div><div>rfnoc_image_builder -y x300_with_fft.yml -t X300_=
HG =C2=A0 --fpga-dir=3D/home/sp/Documents/uhd-4.1.0.5/fpga =C2=A0 --vivado-=
path=3D/home/sp/xilinx/Vivado =C2=A0<br><br></div><div><b>Errors: I was=C2=
=A0faced with these errors...</b></div><div><br></div><div>[00:12:48] Curre=
nt task: Synthesis +++ Current Phase: Finished<br>[00:12:48] Process termin=
ated. Status: Failure<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>Warnings: =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 715<br>Critical Warnings: =C2=A030<br>Errors: =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0<br><br>make[1]: *** [Makefile.x300.inc=
:127: bin] Error 1<br>make[1]: Leaving directory &#39;/home/sp/Documents/uh=
d-4.1.0.5/fpga/usrp3/top/x300&#39;<br>make: *** [Makefile:90: X300_HG] Erro=
r 2<br></div><div><br></div><div><b>Build log file:</b></div><div>I added t=
he end part of the build log file here, I don&#39;t see any errors...</div>=
<div><br></div><div><b>my question is how can solve my problem? How much=C2=
=A0can I debug? as in the build log file and terminal I can not see any err=
ors?</b></div><div><b>thanks in advance</b></div></div><div><br></div><div>=
genblk1[73].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;c=
ic_interpolate:/genblk1[65].axi_round&#39; (axi_round__parameterized16) to =
&#39;cic_interpolate:/genblk1[74].axi_round&#39;<br>INFO: [Synth 8-223] dec=
loning instance &#39;cic_interpolate:/genblk1[65].axi_round&#39; (axi_round=
__parameterized16) to &#39;cic_interpolate:/genblk1[75].axi_round&#39;<br>I=
NFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[65].axi=
_round&#39; (axi_round__parameterized16) to &#39;cic_interpolate:/genblk1[7=
6].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interp=
olate:/genblk1[65].axi_round&#39; (axi_round__parameterized16) to &#39;cic_=
interpolate:/genblk1[77].axi_round&#39;<br>INFO: [Synth 8-223] decloning in=
stance &#39;cic_interpolate:/genblk1[65].axi_round&#39; (axi_round__paramet=
erized16) to &#39;cic_interpolate:/genblk1[78].axi_round&#39;<br>INFO: [Syn=
th 8-223] decloning instance &#39;cic_interpolate:/genblk1[65].axi_round&#3=
9; (axi_round__parameterized16) to &#39;cic_interpolate:/genblk1[79].axi_ro=
und&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/ge=
nblk1[65].axi_round&#39; (axi_round__parameterized16) to &#39;cic_interpola=
te:/genblk1[80].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#=
39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__parameterized17)=
 to &#39;cic_interpolate:/genblk1[82].axi_round&#39;<br>INFO: [Synth 8-223]=
 decloning instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_r=
ound__parameterized17) to &#39;cic_interpolate:/genblk1[83].axi_round&#39;<=
br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[81]=
.axi_round&#39; (axi_round__parameterized17) to &#39;cic_interpolate:/genbl=
k1[84].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_in=
terpolate:/genblk1[81].axi_round&#39; (axi_round__parameterized17) to &#39;=
cic_interpolate:/genblk1[85].axi_round&#39;<br>INFO: [Synth 8-223] declonin=
g instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__par=
ameterized17) to &#39;cic_interpolate:/genblk1[86].axi_round&#39;<br>INFO: =
[Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[81].axi_roun=
d&#39; (axi_round__parameterized17) to &#39;cic_interpolate:/genblk1[87].ax=
i_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate=
:/genblk1[81].axi_round&#39; (axi_round__parameterized17) to &#39;cic_inter=
polate:/genblk1[88].axi_round&#39;<br>INFO: [Synth 8-223] decloning instanc=
e &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__parameterize=
d17) to &#39;cic_interpolate:/genblk1[89].axi_round&#39;<br>INFO: [Synth 8-=
223] decloning instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (a=
xi_round__parameterized17) to &#39;cic_interpolate:/genblk1[90].axi_round&#=
39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1=
[81].axi_round&#39; (axi_round__parameterized17) to &#39;cic_interpolate:/g=
enblk1[91].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;ci=
c_interpolate:/genblk1[81].axi_round&#39; (axi_round__parameterized17) to &=
#39;cic_interpolate:/genblk1[92].axi_round&#39;<br>INFO: [Synth 8-223] decl=
oning instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round_=
_parameterized17) to &#39;cic_interpolate:/genblk1[93].axi_round&#39;<br>IN=
FO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[81].axi_=
round&#39; (axi_round__parameterized17) to &#39;cic_interpolate:/genblk1[94=
].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpo=
late:/genblk1[81].axi_round&#39; (axi_round__parameterized17) to &#39;cic_i=
nterpolate:/genblk1[95].axi_round&#39;<br>INFO: [Synth 8-223] decloning ins=
tance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__paramete=
rized17) to &#39;cic_interpolate:/genblk1[96].axi_round&#39;<br>INFO: [Synt=
h 8-223] decloning instance &#39;cic_interpolate:/genblk1[81].axi_round&#39=
; (axi_round__parameterized17) to &#39;cic_interpolate:/genblk1[97].axi_rou=
nd&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/gen=
blk1[81].axi_round&#39; (axi_round__parameterized17) to &#39;cic_interpolat=
e:/genblk1[98].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#3=
9;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__parameterized17) =
to &#39;cic_interpolate:/genblk1[99].axi_round&#39;<br>INFO: [Synth 8-223] =
decloning instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_ro=
und__parameterized17) to &#39;cic_interpolate:/genblk1[100].axi_round&#39;<=
br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[81]=
.axi_round&#39; (axi_round__parameterized17) to &#39;cic_interpolate:/genbl=
k1[101].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_i=
nterpolate:/genblk1[102].axi_round&#39; (axi_round__parameterized18) to &#3=
9;cic_interpolate:/genblk1[103].axi_round&#39;<br>INFO: [Synth 8-223] declo=
ning instance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_round_=
_parameterized18) to &#39;cic_interpolate:/genblk1[104].axi_round&#39;<br>I=
NFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[102].ax=
i_round&#39; (axi_round__parameterized18) to &#39;cic_interpolate:/genblk1[=
105].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_inte=
rpolate:/genblk1[102].axi_round&#39; (axi_round__parameterized18) to &#39;c=
ic_interpolate:/genblk1[106].axi_round&#39;<br>INFO: [Synth 8-223] declonin=
g instance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_round__pa=
rameterized18) to &#39;cic_interpolate:/genblk1[107].axi_round&#39;<br>INFO=
: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[102].axi_r=
ound&#39; (axi_round__parameterized18) to &#39;cic_interpolate:/genblk1[108=
].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpo=
late:/genblk1[102].axi_round&#39; (axi_round__parameterized18) to &#39;cic_=
interpolate:/genblk1[109].axi_round&#39;<br>INFO: [Synth 8-223] decloning i=
nstance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_round__param=
eterized18) to &#39;cic_interpolate:/genblk1[110].axi_round&#39;<br>INFO: [=
Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[102].axi_roun=
d&#39; (axi_round__parameterized18) to &#39;cic_interpolate:/genblk1[111].a=
xi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolat=
e:/genblk1[102].axi_round&#39; (axi_round__parameterized18) to &#39;cic_int=
erpolate:/genblk1[112].axi_round&#39;<br>INFO: [Synth 8-223] decloning inst=
ance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_round__paramete=
rized18) to &#39;cic_interpolate:/genblk1[113].axi_round&#39;<br>INFO: [Syn=
th 8-223] decloning instance &#39;cic_interpolate:/genblk1[102].axi_round&#=
39; (axi_round__parameterized18) to &#39;cic_interpolate:/genblk1[114].axi_=
round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/=
genblk1[102].axi_round&#39; (axi_round__parameterized18) to &#39;cic_interp=
olate:/genblk1[115].axi_round&#39;<br>INFO: [Synth 8-223] decloning instanc=
e &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_round__parameteriz=
ed18) to &#39;cic_interpolate:/genblk1[116].axi_round&#39;<br>INFO: [Synth =
8-223] decloning instance &#39;cic_interpolate:/genblk1[102].axi_round&#39;=
 (axi_round__parameterized18) to &#39;cic_interpolate:/genblk1[117].axi_rou=
nd&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/gen=
blk1[102].axi_round&#39; (axi_round__parameterized18) to &#39;cic_interpola=
te:/genblk1[118].axi_round&#39;<br>INFO: [Common 17-14] Message &#39;Synth =
8-223&#39; appears 100 times and further instances of the messages will be =
disabled. Use the Tcl command set_msg_config to change the current settings=
.<br></div></div>
</blockquote></div>

--000000000000bf53cb05d73173af--

--===============6139896918383936004==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6139896918383936004==--
