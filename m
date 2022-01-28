Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4342949FE11
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jan 2022 17:30:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 610C0385272
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jan 2022 11:30:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="kSmqMQA4";
	dkim-atps=neutral
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id AD1D938467B
	for <usrp-users@lists.ettus.com>; Fri, 28 Jan 2022 11:30:01 -0500 (EST)
Received: by mail-yb1-f179.google.com with SMTP id c6so20091863ybk.3
        for <usrp-users@lists.ettus.com>; Fri, 28 Jan 2022 08:30:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FMf/ZqSCYLZnaP4kwg95S02PXxyhg63zlXJySG7tIBQ=;
        b=kSmqMQA4LRYspK8SYEttsuBRjHAaoYvGG3YT3TFGrIPtNGFEWQCtoZxVrwna0onxAt
         zWDGXp6qb5SVx65EI7vxQ6EfrGPy4H/mvbqhrI2DoWGYCOJr4AxN+VoM+c8AAHiAGOTW
         Fl5EKrG3z2/oUQYEqDCM/7/oG/0wl0LYbuGw3eSsRsN53P0is7I4uuEJiAYQigjLC2xW
         CwUmrSZNRL3wHwqr3cBKiTUDAupnHkJMSB4LmK3YKab9t4C1AF5q0J5bQEenhWcJnpe2
         GMNfj4BFRxHXIBi1jURdkevA4kaDhT/drwaGuxy135aFJE9iVqkwjkfpRIEd2qapFC0w
         Q2ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FMf/ZqSCYLZnaP4kwg95S02PXxyhg63zlXJySG7tIBQ=;
        b=w9OYu4P9wWF56oVlxpmkYlTDzk6LgcsKk6BdqL7VgooOpQNMpSW1m068PaLB4JH4pU
         Mc1cWNqRfIunREY3p3ggpTtuKBtwmv3xyvOT+DEGb9j20x6SyxmekYTSnqErtZI86qU7
         tvDoS44VS9kXIw/GBGlg5kbtAmFh1FlSAJ4K8EbHuW8l+5+HLrFyyVBt7xIqyVndi2rN
         efBoLmfzouErCt5LtYhAZoRq3Qbqjny1gMzeI91O070aT0PxPJSdPZ7xjn6IMhzPcV5e
         WbXUQulDEQ07DXhV6Zqgjh63S6qOSl2P3y7WHqWLeDzFUQLYpjRb9Ep8e2bqSucgfezc
         q7lw==
X-Gm-Message-State: AOAM5322Hx1Uj4R8d0nHRgd6m4xnjeHEtT9/+ghrYyz536+h20bmoQrz
	s/Z8phgi6zV5slnr9wjBn1vUsZBlzK58uWubggak8QLd
X-Google-Smtp-Source: ABdhPJx6fbVwa2LsJPqXSD+cE7TFWUlFgibyPfd9mIlsxv98p1Wp2kgN5Ftnp4YokzzcIyLhUf0T+hFgW5s3UOI/xqg=
X-Received: by 2002:a25:25c4:: with SMTP id l187mr14108519ybl.13.1643387400929;
 Fri, 28 Jan 2022 08:30:00 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PvV6NA4U=SrDmm2L3CA6_g0OZCcJfdK2-gaifODX_ROoA@mail.gmail.com>
In-Reply-To: <CAA=S3PvV6NA4U=SrDmm2L3CA6_g0OZCcJfdK2-gaifODX_ROoA@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 28 Jan 2022 10:29:45 -0600
Message-ID: <CAFche=jptvFDO6DRVmtaw7MpPOcg1keCHV=F_4YxX1CJoo7OXg@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: RUPWGXXQLDEJCRAJORJWELL2XALUTJG3
X-Message-ID-Hash: RUPWGXXQLDEJCRAJORJWELL2XALUTJG3
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: When i want to add FFT block in FPGA image X300, I have errors 'NoneType' object has no attribute 'keys'
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RUPWGXXQLDEJCRAJORJWELL2XALUTJG3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8234755514561451289=="

--===============8234755514561451289==
Content-Type: multipart/alternative; boundary="00000000000042d2e605d6a6f259"

--00000000000042d2e605d6a6f259
Content-Type: text/plain; charset="UTF-8"

Hi,

The line "EN_FFT_SHIFT: 1" needs to be indented. It's supposed to be part
of the "parameters:" block.

If you have jsonschema installed then the error messages are a bit more
useful:  "Additional properties are not allowed ('EN_FFT_SHIFT' was
unexpected)"

Thanks,

Wade

On Fri, Jan 28, 2022 at 4:12 AM sp h <stackprogramer@gmail.com> wrote:

> When I want to add an FFT block in FPGA image X300, I have errors
>  'NoneType' object has no attribute 'keys'
> I read the below link but I was faced with errors.
>
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0
>
>  I shared the file for x300_core.yml below...
> how can I fix the errors...
>
> Traceback (most recent call last):
>   File "/usr/local/bin/rfnoc_image_builder", line 228, in <module>
>     sys.exit(main())
>   File "/usr/local/bin/rfnoc_image_builder", line 209, in main
>     image_builder.build_image(
>   File
> "/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py",
> line 924, in build_image
>     builder_conf = ImageBuilderConfig(config, blocks, device_conf)
>   File
> "/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py",
> line 182, in __init__
>     self._collect_noc_ports()
>   File
> "/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py",
> line 225, in _collect_noc_ports
>     for key in block["parameters"].keys():
> AttributeError: 'NoneType' object has no attribute 'keys'
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000042d2e605d6a6f259
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>The line &quot;EN_FFT_SH=
IFT: 1&quot; needs to be indented. It&#39;s supposed to be part of the &quo=
t;parameters:&quot; block.</div><div><br></div><div>If you have jsonschema =
installed then the error messages are a bit more useful:=C2=A0 &quot;Additi=
onal properties are not allowed (&#39;EN_FFT_SHIFT&#39; was unexpected)&quo=
t;</div><div><br></div><div>Thanks,</div><div><br></div><div>Wade<br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Fri, Jan 28, 2022 at 4:12 AM sp h &lt;<a href=3D"mailto:stackprogramer@g=
mail.com">stackprogramer@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">When I want to add an FF=
T block in FPGA image X300, I have errors =C2=A0&#39;NoneType&#39; object h=
as no attribute &#39;keys&#39;<div>I read the below link but I was faced wi=
th errors.</div><div><br></div><div><a href=3D"https://kb.ettus.com/Getting=
_Started_with_RFNoC_in_UHD_4.0" target=3D"_blank">https://kb.ettus.com/Gett=
ing_Started_with_RFNoC_in_UHD_4.0</a></div><div><br></div><div>=C2=A0I shar=
ed the file for x300_core.yml below...</div><div>how can I fix the errors..=
.<br><div><br></div><div><font size=3D"1">Traceback (most recent call last)=
:<br>=C2=A0 File &quot;/usr/local/bin/rfnoc_image_builder&quot;, line 228, =
in &lt;module&gt;<br>=C2=A0 =C2=A0 sys.exit(main())<br>=C2=A0 File &quot;/u=
sr/local/bin/rfnoc_image_builder&quot;, line 209, in main<br>=C2=A0 =C2=A0 =
image_builder.build_image(<br>=C2=A0 File &quot;/usr/local/lib/python3/dist=
-packages/uhd/imgbuilder/image_builder.py&quot;, line 924, in build_image<b=
r>=C2=A0 =C2=A0 builder_conf =3D ImageBuilderConfig(config, blocks, device_=
conf)<br>=C2=A0 File &quot;/usr/local/lib/python3/dist-packages/uhd/imgbuil=
der/image_builder.py&quot;, line 182, in __init__<br>=C2=A0 =C2=A0 self._co=
llect_noc_ports()<br>=C2=A0 File &quot;/usr/local/lib/python3/dist-packages=
/uhd/imgbuilder/image_builder.py&quot;, line 225, in _collect_noc_ports<br>=
=C2=A0 =C2=A0 for key in block[&quot;parameters&quot;].keys():<br>Attribute=
Error: &#39;NoneType&#39; object has no attribute &#39;keys&#39;</font><br>=
</div><div><br></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000042d2e605d6a6f259--

--===============8234755514561451289==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8234755514561451289==--
