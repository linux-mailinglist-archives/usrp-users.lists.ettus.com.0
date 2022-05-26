Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B92153518C
	for <lists+usrp-users@lfdr.de>; Thu, 26 May 2022 17:38:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 79263384B3E
	for <lists+usrp-users@lfdr.de>; Thu, 26 May 2022 11:38:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653579527; bh=+p5jWcp7/pfORepGtDKygDn/+zzmT9a45jMYC8cEM8Y=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=IEttIbqOlVY2TTsWbusx/7xWX/emlppzz6BJ/VnvhXMU5H1/uXVEKFyuovkWlxG4X
	 H2HzEaph6QJvyBldZI9OC1D4qz6eYxIn9OHSXvxPK5EGErMdP9j+ZSl0nD6x0m0zGu
	 0XM8GCIuyOxQm8WTVSuetbFfhDi0nLz5Pni0JLk8oKg7fl7g3WAjylQuoTDJPPR59q
	 ioIqs6M4GPoSNtWg0gS/xRvrIWQOeigbonlHLeSwHoFvUsRquwXUeABFSdiCGs3You
	 oRVaPgZu8dcHwKTdttU/YvRB8WFtmbJICZfzUIVfscVPPesRLRuZ93tA88rf87qaaR
	 icLE0wHzLpvMQ==
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by mm2.emwd.com (Postfix) with ESMTPS id B5CB63849E3
	for <usrp-users@lists.ettus.com>; Thu, 26 May 2022 11:37:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="wVHrFBh7";
	dkim-atps=neutral
Received: by mail-yb1-f180.google.com with SMTP id o80so3564700ybg.1
        for <usrp-users@lists.ettus.com>; Thu, 26 May 2022 08:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ArWZXu7A/85uWXkMKGO+OKW8TxFnBW5tU7gP5by3xSQ=;
        b=wVHrFBh7VeHNvc+8HeHA6ZsEXNXok1fx8NcyV0hMAn3aMJp56AgsXLlSFJUeAiaoQ1
         Pio+cD3taTVJyMO1blBq66bqv7WI00ckQE+tOMMCgDE3rvAWfUUKLGI4OQtUr5JjMKyT
         /aYBy20LdDcePkJSywkDH4O76BTsCzp9vzwhgVvASWHO6nNzVjyjKKFzbXQkZKTVFvqz
         0DeZv0jGSAr2+WV4ZnT2WDo0zfVGWO6gdIV0Ld2UYLwZ46uW6s58CPhbtfTQtM6DuRj1
         ddouVOgcLuD0r0I+p0Ls/r8r8snyf0znoFDgRSwju9evgomsGZAkRLFAGLxLV/Qjy21D
         q13g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ArWZXu7A/85uWXkMKGO+OKW8TxFnBW5tU7gP5by3xSQ=;
        b=XC+7CsNiRgCKhOs3TQX6g5ilSajzBBGjYYE1NlKHb7uwsCMNtOejg6XArqHT8cJz/W
         OSfEF6Tc+duJ7oDsdksRHaSddMuRRKa6d0kWxNDG1x7vaLjEXp2I6EQ4LL8fuHSEMVe0
         FJd30RPx99eZlU16ZNke9DBiljFELoEIhlXBZ43pHiDSNV7f5GZmkpcRuSAGFxkATIMG
         mCvvZ21TrHsHc1Xd8EMcr7I+nua1QeJsL1PtO2YsTaSo+52r3u1yRTanY38MLW4PYO8X
         qkmDV1x6PE0kKSZsGdbob63QNZz0yh0KlVB6QftGBxaMa3hid2caKIE0Qa2wq5poJLXj
         LM7Q==
X-Gm-Message-State: AOAM530CPyK9J3EvGFjubgtNElkCn8l7Sz9vuQWTjTnurgfL8xlDShYA
	SiqjZxeGRsbuUfPEKSlKaF1cnjKJh+bSrqTcBWjjS+g/vk2JxNfB
X-Google-Smtp-Source: ABdhPJyHtsmwiaCo5XQjEpILjzQF4vMhYtZrMjEqcv/E3k+vkHSE0dUqnko0m8xyI+w3Ew1RF/huoeTeb/xEz+Zbru8=
X-Received: by 2002:a25:2583:0:b0:657:952e:e9aa with SMTP id
 l125-20020a252583000000b00657952ee9aamr1784669ybl.476.1653579468973; Thu, 26
 May 2022 08:37:48 -0700 (PDT)
MIME-Version: 1.0
References: <lrlDTDkE2cGyZDMRJrwkVF4KpHaPluLMUnA3u3qNqg@lists.ettus.com> <CAEXYVK4SbAmwHdL8pkrb=5izfG=xsmPQRqggGbDPgpnxWeeEUw@mail.gmail.com>
In-Reply-To: <CAEXYVK4SbAmwHdL8pkrb=5izfG=xsmPQRqggGbDPgpnxWeeEUw@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 26 May 2022 10:37:33 -0500
Message-ID: <CAFche=j7a3TpJcqM1aufQCnSOMRm1sL4Xux8Xf1kBDvoYzc1zw@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: VU232WDSC7BUM5IKUET6ILG6OGUGCFLK
X-Message-ID-Hash: VU232WDSC7BUM5IKUET6ILG6OGUGCFLK
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: luca.vigna@argotecgroup.com, "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X300 DDC - Filter Taps
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VU232WDSC7BUM5IKUET6ILG6OGUGCFLK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6323475747850585808=="

--===============6323475747850585808==
Content-Type: multipart/alternative; boundary="000000000000db3fad05dfebf85d"

--000000000000db3fad05dfebf85d
Content-Type: text/plain; charset="UTF-8"

 If you prefer the coefficients in decimal, they are pulled from this file
for the first and second stage:

https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x300/coregen_dsp/hb47.coe

And this file for the third stage:

https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x300/coregen_dsp/hb63.coe

Those COE files are referenced in the CoreGen IP files for these filters.
You can see all the IP settings here:

https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x300/coregen_dsp/hbdec1.xco
https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x300/coregen_dsp/hbdec2.xco
https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x300/coregen_dsp/hbdec3.xco

Wade

On Thu, May 26, 2022 at 10:22 AM Brian Padalino <bpadalino@gmail.com> wrote:

> On Thu, May 26, 2022 at 10:43 AM <luca.vigna@argotecgroup.com> wrote:
>
>> Hi all!
>>
>>
>> I am starting to look through some of the FPGA code of the USRP X300 in
>> order to understand which is the DDC chain configuration in the default
>> image.
>>
>>
>> I have understood that in the DDC chain there is 1 CIC filter + 3
>> Halfband filters. Since I want to characterize the DDC chain I have the
>> following questions:
>>
>>    1.
>>
>>    How are they used? I suppose that the halfband filters are used based
>>    on the decimation factor we need (max. 1024)
>>    2.
>>
>>    Which is the order of the CIC filter?
>>    3.
>>
>>    How many taps each halfband filters have? Which are the taps?
>>
>>
> Taking a look at the ddc.v file is the best insight.  The cic_decimate has
> an N which is the order it's given:
>
>
> https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/ddc.v#L283
>
> Here it's listed as 4.
>
> In general, the CIC is used for bulk decimation up to 2, 4, or 8x
> oversampled - ideally 8x.  The hbdec1 is the first, hbdec2 is the next, and
> hbdec3 is the last.  Their coefficients can be found here:
>
>
> https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/top/x300/coregen_dsp/hbdec1.mif
>
> https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/top/x300/coregen_dsp/hbdec2.mif
>
> https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/top/x300/coregen_dsp/hbdec3.mif
>
> If the desired decimation rate is divisible by 8, then all 3 halfbands are
> used.  If not, a division by 4 is checked, and 2 are used.  If not, a
> division by 2 is checked and 1 is used.  If not, only the CIC is used.
>
> If you want to test your model against the HDL itself, a testbench is
> located here:
>
>
> https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_ddc/rfnoc_block_ddc_tb.sv
>
> But it's probably easier and much faster to pass samples through the
> actual RFNoC block in a custom graph that just exercises the DDC.
>
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000db3fad05dfebf85d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<div>If you prefer the coefficients in decimal, they are pulled from this f=
ile for the first and second stage:</div><div><br></div><div><a href=3D"htt=
ps://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x300/coregen_d=
sp/hb47.coe">https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/to=
p/x300/coregen_dsp/hb47.coe</a></div><div><br></div><div>And this file for =
the third stage:</div><div><br></div><div><a href=3D"https://github.com/Ett=
usResearch/uhd/blob/master/fpga/usrp3/top/x300/coregen_dsp/hb63.coe">https:=
//github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x300/coregen_dsp/=
hb63.coe</a></div><div><br></div><div>Those COE files are referenced in the=
 CoreGen IP files for these filters. You can see all the IP settings here:<=
br></div><div><br></div><div><a href=3D"https://github.com/EttusResearch/uh=
d/blob/master/fpga/usrp3/top/x300/coregen_dsp/hbdec1.xco">https://github.co=
m/EttusResearch/uhd/blob/master/fpga/usrp3/top/x300/coregen_dsp/hbdec1.xco<=
/a></div><div><a href=3D"https://github.com/EttusResearch/uhd/blob/master/f=
pga/usrp3/top/x300/coregen_dsp/hbdec2.xco">https://github.com/EttusResearch=
/uhd/blob/master/fpga/usrp3/top/x300/coregen_dsp/hbdec2.xco</a></div><div><=
a href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x=
300/coregen_dsp/hbdec3.xco">https://github.com/EttusResearch/uhd/blob/maste=
r/fpga/usrp3/top/x300/coregen_dsp/hbdec3.xco</a></div><div><br></div><div>W=
ade</div>

</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Thu, May 26, 2022 at 10:22 AM Brian Padalino &lt;<a href=3D"mailto:bpada=
lino@gmail.com">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Thu=
, May 26, 2022 at 10:43 AM &lt;<a href=3D"mailto:luca.vigna@argotecgroup.co=
m" target=3D"_blank">luca.vigna@argotecgroup.com</a>&gt; wrote:<br></div><d=
iv class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<p>Hi all!</p><p><br></p><p>I am starting to look through some of the FPGA =
code of the USRP X300 in order to understand which is the DDC chain configu=
ration in the default image.</p><p><br></p><p>I have understood that in the=
 DDC chain there is 1 CIC filter + 3 Halfband filters. Since I want to char=
acterize the DDC chain I have the following questions:</p><ol><li><p>How ar=
e they used? I suppose that the halfband filters are used based on the deci=
mation factor we need (max. 1024)</p></li><li><p>Which is the order of the =
CIC filter?</p></li><li><p>How many taps each halfband filters have? Which =
are the taps?</p></li></ol></blockquote><div><br></div><div>Taking a look a=
t the ddc.v file is the best insight.=C2=A0 The cic_decimate has an N which=
 is the order it&#39;s given:</div><div><br></div><div>=C2=A0=C2=A0<a href=
=3D"https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c=
7f68d82e57f/fpga/usrp3/lib/rfnoc/ddc.v#L283" target=3D"_blank">https://gith=
ub.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga=
/usrp3/lib/rfnoc/ddc.v#L283</a></div><div><br></div><div>Here it&#39;s list=
ed as 4.</div><div><br></div><div>In general, the CIC is used for bulk deci=
mation up to 2, 4, or 8x oversampled - ideally 8x.=C2=A0 The hbdec1 is the =
first, hbdec2 is the next, and hbdec3 is the last.=C2=A0 Their coefficients=
 can be found here:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"https:/=
/github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f=
/fpga/usrp3/top/x300/coregen_dsp/hbdec1.mif" target=3D"_blank">https://gith=
ub.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga=
/usrp3/top/x300/coregen_dsp/hbdec1.mif</a></div><div>=C2=A0=C2=A0<a href=3D=
"https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f6=
8d82e57f/fpga/usrp3/top/x300/coregen_dsp/hbdec2.mif" target=3D"_blank">http=
s://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e=
57f/fpga/usrp3/top/x300/coregen_dsp/hbdec2.mif</a></div><div>=C2=A0=C2=A0<a=
 href=3D"https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a=
9ea1c7f68d82e57f/fpga/usrp3/top/x300/coregen_dsp/hbdec3.mif" target=3D"_bla=
nk">https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c=
7f68d82e57f/fpga/usrp3/top/x300/coregen_dsp/hbdec3.mif</a></div><div><br></=
div><div>If the desired decimation rate is divisible by 8, then all 3 halfb=
ands are used.=C2=A0 If not, a division by 4 is checked, and 2 are used.=C2=
=A0 If not, a division by 2 is checked and 1 is used.=C2=A0 If not, only th=
e CIC is used.</div><div><br></div><div>If you want to test your model agai=
nst the HDL itself, a testbench is located here:</div><div><br></div><div>=
=C2=A0=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/5333d3d12f=
fc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_ddc/=
rfnoc_block_ddc_tb.sv" target=3D"_blank">https://github.com/EttusResearch/u=
hd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/block=
s/rfnoc_block_ddc/rfnoc_block_ddc_tb.sv</a></div><div><br></div><div>But it=
&#39;s probably easier and much faster to pass samples through the actual R=
FNoC block in a custom graph that just exercises the DDC.</div><div><br></d=
iv><div>Brian</div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000db3fad05dfebf85d--

--===============6323475747850585808==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6323475747850585808==--
