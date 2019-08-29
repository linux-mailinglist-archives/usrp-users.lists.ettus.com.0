Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6769CA1E03
	for <lists+usrp-users@lfdr.de>; Thu, 29 Aug 2019 16:55:15 +0200 (CEST)
Received: from [::1] (port=51356 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i3LpR-0006Yh-UU; Thu, 29 Aug 2019 10:55:13 -0400
Received: from mail-lf1-f52.google.com ([209.85.167.52]:33839)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1i3LpO-0006Qm-5C
 for usrp-users@lists.ettus.com; Thu, 29 Aug 2019 10:55:10 -0400
Received: by mail-lf1-f52.google.com with SMTP id z21so2794889lfe.1
 for <usrp-users@lists.ettus.com>; Thu, 29 Aug 2019 07:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G+6fun5uyJ/TSs8gbAnEVbcp31MKaVEdKFg54s76kpM=;
 b=KvzLZbDwKVoKpM3ZJozxLNQQPzRMDvVzcFVbcD1g3JUwM9LxDoq6R4EKCoJF5p6Q7o
 cCdUNjkFAOY+hAJ4XGnwlK4QS1Ote6CxDUbCW+AVRVQ+uDD8rilfCUx6U5+2xXsFmN2W
 IX8JNE2jmP0mwkTv3Y69NVfo9pGhS/Q686HHYWnMy9IvVLhEvCFEtGR/cFxL/kUc1F9T
 zdU+yA8kU32gLRfwxsruVmLSV1NrxhqWn48B3ocw8YG1+KUJpEAE6aCdgAWodMfaRWpI
 MVy/HC7bB1C1xcYyCw1dqfrVCiEhNQK/TcdmOAHz6XnWQ0huhpO9bFwQGfdjuBB+mVZ3
 aDVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G+6fun5uyJ/TSs8gbAnEVbcp31MKaVEdKFg54s76kpM=;
 b=CZ7nzOyI7sG790U9ckjwIL+RRnrdS80UcsepojM1pqdAV8ZWDWxO5FxL1OBoaEvTZj
 YvLmiyYbrg0FNOkFqtAf8gi1oLCIhLhtP4Z7eo2ewyvgTLUZeNZHjxsErlRDofjG5DXY
 puvpx5maptvPKIxywML8LIEAzfIXPQxiq5GDc7vD7UMo8zVnrwMAPs4eV6f0mYJwQDxt
 1ijEvp8q7f34GzBp27PO3v4HrO6ncbywnk7f8ZM2MF/k8hxz+WWAWl+42jTRDBGsSwmW
 U4aoI7x7j6YwAxy/4Rykr7uK+h+OLO4mJVLbJ2aVGERM/SbSq2NqDMhzWwJ/lTuiv56m
 jGWA==
X-Gm-Message-State: APjAAAXBrgN28nCTYHUO540dcnHSIqudE8Dja3H/B8OjZXzGJAm2TarW
 Annm7KYONe9RZFIwMredpP1VfhnMMDaY+jyj8b1R7Byr
X-Google-Smtp-Source: APXvYqystvzVVd7BAqXhNxtR/J0rypwrp+SwkKZzjdZudBlCxswkJzNNtk0yDme6EACaYIfCId7fexFcFMdF3oosySQ=
X-Received: by 2002:ac2:442d:: with SMTP id w13mr6891290lfl.184.1567090468583; 
 Thu, 29 Aug 2019 07:54:28 -0700 (PDT)
MIME-Version: 1.0
References: <7c488dd82b360fb737d6f203b7b844df@mtit.org>
In-Reply-To: <7c488dd82b360fb737d6f203b7b844df@mtit.org>
Date: Thu, 29 Aug 2019 09:54:17 -0500
Message-ID: <CANf970YL45SR71Q8UgcNjymzTNGXYqLvRu=fqUBGHJaSmDCOEQ@mail.gmail.com>
To: Jakub Rybka <rybka@mtit.org>
Subject: Re: [USRP-users] USB devices not working with recent UHD drivers on
 Windows systems
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0137907320635743489=="
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

--===============0137907320635743489==
Content-Type: multipart/alternative; boundary="000000000000b60c23059142ae01"

--000000000000b60c23059142ae01
Content-Type: text/plain; charset="UTF-8"

Jakub,

I'll look into this. The issues you're reporting with the binary are
probably what I'll want to try to reproduce first. Can you be more specific
as to the behavior of your system during the crash you're reporting?
Screenshots would be useful if there are dialogs present during / after the
crash.

Beyond that, it sounds like you've had this system up and running with a B
series in the past, right? This would imply that you've installed the
Windows USB driver successfully:
http://files.ettus.com/manual/page_transport.html#transport_usb_installwin and
that you can see the B series device in the Windows Device manager when
connected.

Sam

On Thu, Aug 29, 2019 at 3:11 AM Jakub Rybka via USRP-users <
usrp-users@lists.ettus.com> wrote:

>    Hello,
>
> I have encountered a strange problem using UHD 3.13 and 3.14 releases
> under Windows. I am using X310 USRPs for some time now, and didn't have
> any problem with them. My development environment is Windows 10, VS2017,
> boost 1.67 and UHD versions 3.13 and 3.14. When I tried to use my
> software with B200mini USRP device, UHD completely crashed. I did some
> investigation, and found out, that even original Ettus Research binary
> distribution crashes on USB devices.
>
> Even this tiny bit of code crashes when compiled and run under Windows:
>
> int UHD_SAFE_MAIN(int argc, char *argv[])
> {
>    std::string hint = "";
>    uhd::device_addrs_t addrs;
>
>    addrs = uhd::device::find(hint, uhd::device::ANY);
> }
>
> If you want to verify this does not work with USB devices at all, just
> run uhd_find_devices from UHD 3.14.1.0 binary release on bus series
> USRPs. I did use
>
> http://files.ettus.com/binaries/uhd/uhd_003.014.001.000-release/Windows-10-x64/uhd_3.14.1.0-release_Winx64_VS2017.exe
>
> I did trace the problem with uhd::device::find to destructor
> ~libusb_device_impl(void), which calls libusb_unref_device. This should
> be called after libusb_free_device_list in libusb_device_list_impl, but
> when tracing the code, strange jumps occurs, and I suspect devices are
> unreferenced in destructor before they can be freed (but not
> unreferenced) in libusb_free_device_list. This works perfectly under
> linux, but not in Windows. It can be some compiler optimization problem.
>
> This is not the only problem in UHD, just *any* attempts to use USB
> devices fails. uhd::usrp::multi_usrp::make for example runs, but throws
> some 4 exceptions.
>
> More strangely, I suspect there is more to Windows UHD trouble. If I do
> this: uhd::device_addr_t addr; code fails with exception, with no USRP
> devices connected. It is very similar to
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-July/057279.html
> .
>
> Does anyone have any clue how to resolve this issue ? I am using linux
> as primary development OS with UHD, and I am not as fluent with MSVC
> compilers. I am using Windows just to compile Windows version of my USRP
> software.
>
> Variants tested:
>
> Visual Studio 2015 and Visual Studio 2017, in their latest patch
> versions.
> Boost 1.67, 1.68, 1.69 and 1.70
> libusb 1.0.22 and 1.0.23rc3
> debug and release, static and dynamic, and static and dynamic runtime
> versions of all three libraries.
>
> None does work.
>
> Best regards,
>
> Jakub Rybka
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b60c23059142ae01
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Jakub,</div><div class=3D"gmail_default" style=3D"font-family:v=
erdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fam=
ily:verdana,sans-serif">I&#39;ll look into this. The issues you&#39;re repo=
rting with the binary are probably what I&#39;ll want to try to reproduce f=
irst. Can you be more specific as to the behavior of your system during the=
 crash you&#39;re reporting? Screenshots would be useful if there are dialo=
gs present during / after the crash.</div><div class=3D"gmail_default" styl=
e=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default"=
 style=3D"font-family:verdana,sans-serif">Beyond that, it sounds like you&#=
39;ve had this system up and running with a B series in the past, right? Th=
is would imply that you&#39;ve installed the Windows USB driver successfull=
y:=C2=A0<a href=3D"http://files.ettus.com/manual/page_transport.html#transp=
ort_usb_installwin" style=3D"font-family:Arial,Helvetica,sans-serif">http:/=
/files.ettus.com/manual/page_transport.html#transport_usb_installwin</a>=C2=
=A0and that you can see the B series device in the Windows Device manager w=
hen connected.</div><div class=3D"gmail_default" style=3D"font-family:verda=
na,sans-serif"><br></div><div><div dir=3D"ltr" class=3D"gmail_signature" da=
ta-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam=
</div></div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Aug 29, 2019 at 3:11 AM Jakub Rybka v=
ia USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">=C2=A0 =C2=A0Hello,<br>
<br>
I have encountered a strange problem using UHD 3.13 and 3.14 releases <br>
under Windows. I am using X310 USRPs for some time now, and didn&#39;t have=
 <br>
any problem with them. My development environment is Windows 10, VS2017, <b=
r>
boost 1.67 and UHD versions 3.13 and 3.14. When I tried to use my <br>
software with B200mini USRP device, UHD completely crashed. I did some <br>
investigation, and found out, that even original Ettus Research binary <br>
distribution crashes on USB devices.<br>
<br>
Even this tiny bit of code crashes when compiled and run under Windows:<br>
<br>
int UHD_SAFE_MAIN(int argc, char *argv[])<br>
{<br>
=C2=A0 =C2=A0std::string hint =3D &quot;&quot;;<br>
=C2=A0 =C2=A0uhd::device_addrs_t addrs;<br>
<br>
=C2=A0 =C2=A0addrs =3D uhd::device::find(hint, uhd::device::ANY);<br>
}<br>
<br>
If you want to verify this does not work with USB devices at all, just <br>
run uhd_find_devices from UHD 3.14.1.0 binary release on bus series <br>
USRPs. I did use <br>
<a href=3D"http://files.ettus.com/binaries/uhd/uhd_003.014.001.000-release/=
Windows-10-x64/uhd_3.14.1.0-release_Winx64_VS2017.exe" rel=3D"noreferrer" t=
arget=3D"_blank">http://files.ettus.com/binaries/uhd/uhd_003.014.001.000-re=
lease/Windows-10-x64/uhd_3.14.1.0-release_Winx64_VS2017.exe</a><br>
<br>
I did trace the problem with uhd::device::find to destructor <br>
~libusb_device_impl(void), which calls libusb_unref_device. This should <br=
>
be called after libusb_free_device_list in libusb_device_list_impl, but <br=
>
when tracing the code, strange jumps occurs, and I suspect devices are <br>
unreferenced in destructor before they can be freed (but not <br>
unreferenced) in libusb_free_device_list. This works perfectly under <br>
linux, but not in Windows. It can be some compiler optimization problem.<br=
>
<br>
This is not the only problem in UHD, just *any* attempts to use USB <br>
devices fails. uhd::usrp::multi_usrp::make for example runs, but throws <br=
>
some 4 exceptions.<br>
<br>
More strangely, I suspect there is more to Windows UHD trouble. If I do <br=
>
this: uhd::device_addr_t addr; code fails with exception, with no USRP <br>
devices connected. It is very similar to <br>
<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018=
-July/057279.html" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.=
com/pipermail/usrp-users_lists.ettus.com/2018-July/057279.html</a> <br>
.<br>
<br>
Does anyone have any clue how to resolve this issue ? I am using linux <br>
as primary development OS with UHD, and I am not as fluent with MSVC <br>
compilers. I am using Windows just to compile Windows version of my USRP <b=
r>
software.<br>
<br>
Variants tested:<br>
<br>
Visual Studio 2015 and Visual Studio 2017, in their latest patch <br>
versions.<br>
Boost 1.67, 1.68, 1.69 and 1.70<br>
libusb 1.0.22 and 1.0.23rc3<br>
debug and release, static and dynamic, and static and dynamic runtime <br>
versions of all three libraries.<br>
<br>
None does work.<br>
<br>
Best regards,<br>
<br>
Jakub Rybka<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000b60c23059142ae01--


--===============0137907320635743489==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0137907320635743489==--

