Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF83A52DDD4
	for <lists+usrp-users@lfdr.de>; Thu, 19 May 2022 21:30:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B591A384CBA
	for <lists+usrp-users@lfdr.de>; Thu, 19 May 2022 15:30:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652988657; bh=Kncmk3m7XeZ0qBwfwjhNKh6xfdc1KJ06k987yMaOJ+0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=AF98YQ/bvEdpiJpMHOryIyYcfU63VdEmTGANjrYNnEJ6oPrIpkv4dlyhYdckQ6sHB
	 DVdtNggFsenckndZrjH/yUE8Xh0DtpRHPjNAS2Nls636Vn1DflosX657lvrdE7lizj
	 1DXFpOQv07bzfzfuW1afGjB1KBcsNw9cZYhdXMXiNxfby1nBkdxWIh7n6iaYBMR0MA
	 AOX3++NY89kt7H69VRM4WFkBUSBBr3nVEXjSfPz1N9xFQo5WWk2NOui8XUEly75trM
	 /MlqdBIPTRsqB64XhaAOlADGgONGYlkTOEwS0Vy+GIH1FLc74475Uk1VV8GlJdrvmW
	 oaCsW3ztuV1qw==
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	by mm2.emwd.com (Postfix) with ESMTPS id C5F253846C5
	for <usrp-users@lists.ettus.com>; Thu, 19 May 2022 15:29:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="pLC5icTn";
	dkim-atps=neutral
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-2ec42eae76bso66727037b3.10
        for <usrp-users@lists.ettus.com>; Thu, 19 May 2022 12:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7WlY/zBBd6U2VG1Dt91Uwg4ksqoiiEhfv2pCzBFtfbU=;
        b=pLC5icTnYiZO7SxaBOGaaE8HMghm6XUeMtICvxNkPE4hTvEmU8zBguW8TGPFB2fCHN
         m+P3HO0p5nnGOk1VCZC8uBlXvqQTp1TtKIHfjLlN3BSxU7Ncr8klEM8jEE6dv802PsAO
         uTSCSV29fS15TZn/BK7O332iG0sl3RaU9K4rhiXK5/4gLEepnLd8Btul3kB3gx7UwFOs
         1OuoO4XF1ooDGZymK/hzKp0CjBYeEVqePBk+xFqGfJztVEhAGRinV53mkmTvVvPn4xXk
         zjOZtmhrmN4LcF9PtilpVnRsX+8qXoedv3LmDW05GbpiQWCivFli6nnhQSTU9AVKOUP8
         U2Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7WlY/zBBd6U2VG1Dt91Uwg4ksqoiiEhfv2pCzBFtfbU=;
        b=64wkghLvCs7/qYr2Bcwf5wS+rxH2EEw/wQr9ZWe594OsYLeEIK05TXradEQPV+4d4k
         tRsLbElRlgxxmaMDO7jZFtw8XRTGPKEQf1qZ5WaD2Czp8Urx4BVAdt2P111GlZn3lAGH
         NMRhb5HSH0iKOhRy4hwGGOPbK7tEkEBZWKFXJfSJ363+i/6/T3+/O8jBvbtIiqyIT01D
         K/fhVWmVzF0jzXffZansyNc+PY6KotJ2cGfx80Tv0CcMYKThMyOys2kCtFIykYwgJofe
         R2D4yAoR+tqjpmBr1ocl8Up7SKvPtbKzC9CrkQUT21CS0GM7qCClg8FKEvQPmSj44dKr
         QXHA==
X-Gm-Message-State: AOAM532jFdqoRdjb2gc9310dCZg11GzCk1tr0ucM0ZhSukj/039zo/bR
	1jGSpaJYvF6QycS0VlGkULQU0TJ/4TEgf1g20UrES5U4
X-Google-Smtp-Source: ABdhPJxAUmg00YjMkD2S45ImqvG5o5Ifr8awJuaywQjTACheV+o0ddqppMyznHu/c1Xed1X6e78ssuSWFg1XulrWl9w=
X-Received: by 2002:a81:ac5b:0:b0:2ff:45c:2e85 with SMTP id
 z27-20020a81ac5b000000b002ff045c2e85mr6585545ywj.16.1652988596096; Thu, 19
 May 2022 12:29:56 -0700 (PDT)
MIME-Version: 1.0
References: <1652294738824.26535@unibw.de> <c20f56be-97d7-26dc-014f-fa5828627e96@gmail.com>
 <1652297098503.13596@unibw.de> <294650d1-0eb7-d077-d024-f8a4e75ccafa@gmail.com>
 <20220512085008.t5jsg4uojzhalmiz@barbe> <1652360244186.66576@unibw.de>
 <1ec218ac-86dd-555d-623d-dc918a382b7d@gmail.com> <1652368743151.58468@unibw.de>
 <1652967412443.25901@unibw.de> <CAB__hTTBPJ0tfM-q8udVP7eeeX2rw7T=_4n-=Br5YymPB0XLMQ@mail.gmail.com>
In-Reply-To: <CAB__hTTBPJ0tfM-q8udVP7eeeX2rw7T=_4n-=Br5YymPB0XLMQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 19 May 2022 14:29:40 -0500
Message-ID: <CAFche=gUkEmE48BEWD9W-+jnVvd9KyyvC7JTcReRj4pdDic=OQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: 2OEXMPHYTQM3J4XVK725APQ36VUZ5S5V
X-Message-ID-Hash: 2OEXMPHYTQM3J4XVK725APQ36VUZ5S5V
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Dobler, Anton" <anton.dobler@unibw.de>, "discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC image builder problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2OEXMPHYTQM3J4XVK725APQ36VUZ5S5V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7966511489702500191=="

--===============7966511489702500191==
Content-Type: multipart/alternative; boundary="00000000000016a1d205df626670"

--00000000000016a1d205df626670
Content-Type: text/plain; charset="UTF-8"

I think I had this problem when I installed UHD to a non-standard location.
I did this to my PYTHONPATH variable:

export
PYTHONPATH=$PYTHONPATH:<UHD_INSTALL_LOCATION>/lib/python3.8/site-packages

Where <UHD_INSTALL_LOCATION> is the location where I had UHD installed.
Also the Python version (3.8) in that path might be different for you.

Wade

On Thu, May 19, 2022 at 9:22 AM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Anton,
> Did you install all of the dependencies listed here
> <https://files.ettus.com/manual/page_build_guide.html#build_dependencies_ubuntu>?
> The error is a python error in not finding a needed package. It is possible
> you need to configure PYTHONPATH to point to a UHD folder.  Did you specify
> the FPGA_DIR option to rfnoc_image_builder?
> Rob
>
> On Thu, May 19, 2022 at 9:42 AM Dobler, Anton <anton.dobler@unibw.de>
> wrote:
>
>> Dear community,
>>
>> does anyone have an idea what the problem is about that import error?
>>
>> I checked the files for UHD4.0 (the rfnoc_image_builder runs fine here)
>> but I am not experienced enough to find the problem...
>>
>> Any help would be very appreciated!
>>
>> BR,
>>
>> Anton
>> ________________________________________
>> Von: Dobler, Anton
>> Gesendet: Donnerstag, 12. Mai 2022 17:19
>> An: discuss-gnuradio@gnu.org; usrp-users@lists.ettus.com
>> Betreff: RFNoC image builder problem
>>
>> Dear community,
>>
>> I am running UHD4.2 on Ubuntu 20.04. When I try to run
>> rfnoc_image_builder, I get the following error:
>>
>> rfnoc_image_builder --help
>> Traceback (most recent call last):
>>   File "/usr/local/bin/rfnoc_image_builder", line 29, in <module>
>>     from uhd.imgbuilder import image_builder
>> ImportError: cannot import name 'image_builder' from 'uhd.imgbuilder'
>> (unknown location)
>>
>> What is the issue here? I tried UHD4.1 but got the same issue here...
>>
>> Any help is very appreciated!
>>
>> BR,
>>
>> Anton
>>
>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000016a1d205df626670
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I think I had this problem when I installed UHD to a =
non-standard location. I did this to my PYTHONPATH variable:</div><div><br>=
</div><div>export PYTHONPATH=3D$PYTHONPATH:&lt;UHD_INSTALL_LOCATION&gt;/lib=
/python3.8/site-packages</div><div><br></div><div>Where=20
&lt;UHD_INSTALL_LOCATION&gt; is the location where I had UHD installed. Als=
o the Python version (3.8) in that path might be different for you.<br></di=
v><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Thu, May 19, 2022 at 9:22 AM Rob Kos=
sler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div dir=3D"ltr"><img src=3D"https://ssl.gstatic.com/ui/v1/icons/mail/imag=
es/cleardot.gif">Hi Anton,<div>Did you install all of the dependencies list=
ed <a href=3D"https://files.ettus.com/manual/page_build_guide.html#build_de=
pendencies_ubuntu" target=3D"_blank">here</a>?=C2=A0 The error is a python =
error in not finding a needed package. It is possible you need to configure=
 PYTHONPATH to point to a UHD folder.=C2=A0 Did you specify the FPGA_DIR op=
tion to rfnoc_image_builder?</div><div>Rob</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 19, 2022 at 9:4=
2 AM Dobler, Anton &lt;<a href=3D"mailto:anton.dobler@unibw.de" target=3D"_=
blank">anton.dobler@unibw.de</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">Dear community,<br>
<br>
does anyone have an idea what the problem is about that import error?<br>
<br>
I checked the files for UHD4.0 (the rfnoc_image_builder runs fine here) but=
 I am not experienced enough to find the problem...<br>
<br>
Any help would be very appreciated!<br>
<br>
BR,<br>
<br>
Anton <br>
________________________________________<br>
Von: Dobler, Anton<br>
Gesendet: Donnerstag, 12. Mai 2022 17:19<br>
An: <a href=3D"mailto:discuss-gnuradio@gnu.org" target=3D"_blank">discuss-g=
nuradio@gnu.org</a>; <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a><br>
Betreff: RFNoC image builder problem<br>
<br>
Dear community,<br>
<br>
I am running UHD4.2 on Ubuntu 20.04. When I try to run rfnoc_image_builder,=
 I get the following error:<br>
<br>
rfnoc_image_builder --help<br>
Traceback (most recent call last):<br>
=C2=A0 File &quot;/usr/local/bin/rfnoc_image_builder&quot;, line 29, in &lt=
;module&gt;<br>
=C2=A0 =C2=A0 from uhd.imgbuilder import image_builder<br>
ImportError: cannot import name &#39;image_builder&#39; from &#39;uhd.imgbu=
ilder&#39; (unknown location)<br>
<br>
What is the issue here? I tried UHD4.1 but got the same issue here...<br>
<br>
Any help is very appreciated!<br>
<br>
BR,<br>
<br>
Anton<br>
<br>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000016a1d205df626670--

--===============7966511489702500191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7966511489702500191==--
