Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B059BA395B
	for <lists+usrp-users@lfdr.de>; Fri, 30 Aug 2019 16:37:32 +0200 (CEST)
Received: from [::1] (port=49462 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i3i1o-0007GJ-AF; Fri, 30 Aug 2019 10:37:28 -0400
Received: from mail-lf1-f44.google.com ([209.85.167.44]:43650)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1i3i1k-0007AV-Q9
 for usrp-users@lists.ettus.com; Fri, 30 Aug 2019 10:37:25 -0400
Received: by mail-lf1-f44.google.com with SMTP id q27so5514738lfo.10
 for <usrp-users@lists.ettus.com>; Fri, 30 Aug 2019 07:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xgNnThERquHANQJ/IzmB3HajVp826b9fuMJ8jEPR+po=;
 b=FpX0i3PLn2ypltZJKBCiKih186GYl4fYH0E2a+udbvgbG7rzvZVCY+ANMwZiWyKnxb
 QmwjatqjTRchpLTFZECB+r7qFzK1d6Ue0909FHDr0LWHN/j4ZrjFvqiXIA+QqkiPlva2
 kbFpQb5P66X4Drfx7dNgiQd8hslpRuNfe0HKQwHmP/Ky/oT8+zGDTerHPhyxzdp5SbBv
 lldXIx67RvCXfAzz4vHCsI5qDjeSfbimLMKarsTqLpbxbAW9fr5QekOWb/O+pZveWXHB
 HLCQJPpY5WEUrQDA7cGyDZ4WJOLdbiy9h/myCuQRPn39nKRjBKkColgpgKR0LJ1728q5
 lSyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xgNnThERquHANQJ/IzmB3HajVp826b9fuMJ8jEPR+po=;
 b=uWh0Ya8xHcdjgsUjuFHFWJjX229NOUmLJb0PsYQE9tKM9MzrVzrNAsCe7ZjmvmKOhs
 L0ZO//jzOhVrUrAmNW6kG2ZU5ELUHqqggmb/KXMbgsI1W2f4ZhaYqZXLXWNeltQu4Elz
 iEJIVWjiTmaoTOz6kzMXH20dUmPTwtVFMmEqvS2TST4vWxbjrN+RXRxncTqTRbKqWfyz
 HXYVms5ZSSfVzeNDSDkJ2OkMjDz3EFJLzH+l3RQu3v2iSXGjQStvB4L+4hLJPo4cSwI4
 6cJA1bKeZya3z5iRPwTo+oe+iDK2GnD5aIiCzTOr3ssct/WZ5s9WGh2+IuDgimCaU4EA
 9+Ew==
X-Gm-Message-State: APjAAAWmRbp1FDakUiBlmkvemeCzgqnKch7GbekbIMV2LhCj0SmnNCu3
 Dz31CDktRh7H2JC9FEn8VWfDI4PBpM4UngTM8lNR9Y6U
X-Google-Smtp-Source: APXvYqySKf3voZe8vKk+TYClQeeH6+rN6JRx39MCEx33JNjw+mgWZbGpstp0mjcr+ERkeF/xm3xM1dTS1RSxynaSN0k=
X-Received: by 2002:ac2:50c4:: with SMTP id h4mr9528384lfm.104.1567175803115; 
 Fri, 30 Aug 2019 07:36:43 -0700 (PDT)
MIME-Version: 1.0
References: <7c488dd82b360fb737d6f203b7b844df@mtit.org>
 <CANf970YL45SR71Q8UgcNjymzTNGXYqLvRu=fqUBGHJaSmDCOEQ@mail.gmail.com>
 <e541a57f3cc909795dc4d2b1e717af43@mtit.org>
In-Reply-To: <e541a57f3cc909795dc4d2b1e717af43@mtit.org>
Date: Fri, 30 Aug 2019 09:36:31 -0500
Message-ID: <CANf970Zf3zjb1GNko89Vie3EJPdyR7HmQdaGWqoBJ1VUMHA3fw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============8002499632587244412=="
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

--===============8002499632587244412==
Content-Type: multipart/alternative; boundary="0000000000000baa020591568d9c"

--0000000000000baa020591568d9c
Content-Type: text/plain; charset="UTF-8"

Hey Jakub,

Thanks for the additional details. I can confirm that I've seen some
suspicious behavior from with UHD 3.14.1.0 binary on my machine since you
sent this in. It seems like libusb 1.0.22 causes crashing behavior with
uhd_find_devices. I rolled this back to libusb 1.0.21 and things seem to
have improved, but I need to do some more testing. I'd like to know if you
have similar results.

I'm going to get a fresh Windows image up and running today and see if I
can't characterize this any better on my end. I may reach back out to you
offline if there are any setup details we need to work through. Otherwise,
I'll try to post an update / resolution here once I have it.

Sam


On Fri, Aug 30, 2019 at 6:13 AM Jakub Rybka <rybka@mtit.org> wrote:

> Sam,
>
> I do have drivers installed on Windows 10 machine. I can manage the code
> to run by modifying UHD driver (commenting out libusb_unref_device), and
> my radio is then properly found. What is bugging me, that even original
> Ettus compiled UHD installer from files.ettus.com fails. If there are no
> UHD devices connected, uhd_find_devices.exe just shows "No UHD Devices
> Found". Under Windows, there is no such message. The program just fails,
> and does NOT write this message. I tested it on multiple computers
> running Windows 10 LTSC and Windows 10 Professional 1903.
>
> Best regards,
> Jakub
>
> Dne 2019-08-29 16:54, Sam Reiter napsal:
> > Jakub,
> >
> > I'll look into this. The issues you're reporting with the binary are
> > probably what I'll want to try to reproduce first. Can you be more
> > specific as to the behavior of your system during the crash you're
> > reporting? Screenshots would be useful if there are dialogs present
> > during / after the crash.
> >
> > Beyond that, it sounds like you've had this system up and running with
> > a B series in the past, right? This would imply that you've installed
> > the Windows USB driver successfully:
> >
> http://files.ettus.com/manual/page_transport.html#transport_usb_installwin
> > and that you can see the B series device in the Windows Device manager
> > when connected.
> >
> > Sam
> >
> > On Thu, Aug 29, 2019 at 3:11 AM Jakub Rybka via USRP-users
> > <usrp-users@lists.ettus.com> wrote:
> >
> >> Hello,
> >>
> >> I have encountered a strange problem using UHD 3.13 and 3.14
> >> releases
> >> under Windows. I am using X310 USRPs for some time now, and didn't
> >> have
> >> any problem with them. My development environment is Windows 10,
> >> VS2017,
> >> boost 1.67 and UHD versions 3.13 and 3.14. When I tried to use my
> >> software with B200mini USRP device, UHD completely crashed. I did
> >> some
> >> investigation, and found out, that even original Ettus Research
> >> binary
> >> distribution crashes on USB devices.
> >>
> >> Even this tiny bit of code crashes when compiled and run under
> >> Windows:
> >>
> >> int UHD_SAFE_MAIN(int argc, char *argv[])
> >> {
> >> std::string hint = "";
> >> uhd::device_addrs_t addrs;
> >>
> >> addrs = uhd::device::find(hint, uhd::device::ANY);
> >> }
> >>
> >> If you want to verify this does not work with USB devices at all,
> >> just
> >> run uhd_find_devices from UHD 3.14.1.0 binary release on bus series
> >> USRPs. I did use
> >>
> >
> http://files.ettus.com/binaries/uhd/uhd_003.014.001.000-release/Windows-10-x64/uhd_3.14.1.0-release_Winx64_VS2017.exe
> >>
> >> I did trace the problem with uhd::device::find to destructor
> >> ~libusb_device_impl(void), which calls libusb_unref_device. This
> >> should
> >> be called after libusb_free_device_list in libusb_device_list_impl,
> >> but
> >> when tracing the code, strange jumps occurs, and I suspect devices
> >> are
> >> unreferenced in destructor before they can be freed (but not
> >> unreferenced) in libusb_free_device_list. This works perfectly under
> >>
> >> linux, but not in Windows. It can be some compiler optimization
> >> problem.
> >>
> >> This is not the only problem in UHD, just *any* attempts to use USB
> >> devices fails. uhd::usrp::multi_usrp::make for example runs, but
> >> throws
> >> some 4 exceptions.
> >>
> >> More strangely, I suspect there is more to Windows UHD trouble. If I
> >> do
> >> this: uhd::device_addr_t addr; code fails with exception, with no
> >> USRP
> >> devices connected. It is very similar to
> >>
> >
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-July/057279.html
> >>
> >> .
> >>
> >> Does anyone have any clue how to resolve this issue ? I am using
> >> linux
> >> as primary development OS with UHD, and I am not as fluent with MSVC
> >>
> >> compilers. I am using Windows just to compile Windows version of my
> >> USRP
> >> software.
> >>
> >> Variants tested:
> >>
> >> Visual Studio 2015 and Visual Studio 2017, in their latest patch
> >> versions.
> >> Boost 1.67, 1.68, 1.69 and 1.70
> >> libusb 1.0.22 and 1.0.23rc3
> >> debug and release, static and dynamic, and static and dynamic
> >> runtime
> >> versions of all three libraries.
> >>
> >> None does work.
> >>
> >> Best regards,
> >>
> >> Jakub Rybka
> >>
> >> _______________________________________________
> >> USRP-users mailing list
> >> USRP-users@lists.ettus.com
> >> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000000baa020591568d9c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Jakub,</div><div><br></div><div>Thanks for the ad=
ditional details. I can confirm that I&#39;ve seen some suspicious behavior=
 from with UHD 3.14.1.0 binary on my machine since you sent this in. It see=
ms like libusb 1.0.22 causes crashing behavior with uhd_find_devices. I rol=
led this back to libusb 1.0.21 and things seem to have improved, but I need=
 to do some more testing. I&#39;d like to know if you have similar results.=
 <br></div><div><br></div><div>I&#39;m going to get a fresh Windows image u=
p and running today and see if I can&#39;t characterize this any better on =
my end. I may reach back out to you offline if there are any setup details =
we need to work through. Otherwise, I&#39;ll try to post an update / resolu=
tion here once I have it. <br></div><div><br></div><div><div><div dir=3D"lt=
r" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D=
"ltr"><div><div dir=3D"ltr">Sam</div></div></div></div></div><br></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On F=
ri, Aug 30, 2019 at 6:13 AM Jakub Rybka &lt;<a href=3D"mailto:rybka@mtit.or=
g">rybka@mtit.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">Sam,<br>
<br>
I do have drivers installed on Windows 10 machine. I can manage the code <b=
r>
to run by modifying UHD driver (commenting out libusb_unref_device), and <b=
r>
my radio is then properly found. What is bugging me, that even original <br=
>
Ettus compiled UHD installer from <a href=3D"http://files.ettus.com" rel=3D=
"noreferrer" target=3D"_blank">files.ettus.com</a> fails. If there are no <=
br>
UHD devices connected, uhd_find_devices.exe just shows &quot;No UHD Devices=
 <br>
Found&quot;. Under Windows, there is no such message. The program just fail=
s, <br>
and does NOT write this message. I tested it on multiple computers <br>
running Windows 10 LTSC and Windows 10 Professional 1903.<br>
<br>
Best regards,<br>
Jakub<br>
<br>
Dne 2019-08-29 16:54, Sam Reiter napsal:<br>
&gt; Jakub,<br>
&gt; <br>
&gt; I&#39;ll look into this. The issues you&#39;re reporting with the bina=
ry are<br>
&gt; probably what I&#39;ll want to try to reproduce first. Can you be more=
<br>
&gt; specific as to the behavior of your system during the crash you&#39;re=
<br>
&gt; reporting? Screenshots would be useful if there are dialogs present<br=
>
&gt; during / after the crash.<br>
&gt; <br>
&gt; Beyond that, it sounds like you&#39;ve had this system up and running =
with<br>
&gt; a B series in the past, right? This would imply that you&#39;ve instal=
led<br>
&gt; the Windows USB driver successfully:<br>
&gt; <a href=3D"http://files.ettus.com/manual/page_transport.html#transport=
_usb_installwin" rel=3D"noreferrer" target=3D"_blank">http://files.ettus.co=
m/manual/page_transport.html#transport_usb_installwin</a><br>
&gt; and that you can see the B series device in the Windows Device manager=
<br>
&gt; when connected.<br>
&gt; <br>
&gt; Sam<br>
&gt; <br>
&gt; On Thu, Aug 29, 2019 at 3:11 AM Jakub Rybka via USRP-users<br>
&gt; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">us=
rp-users@lists.ettus.com</a>&gt; wrote:<br>
&gt; <br>
&gt;&gt; Hello,<br>
&gt;&gt; <br>
&gt;&gt; I have encountered a strange problem using UHD 3.13 and 3.14<br>
&gt;&gt; releases<br>
&gt;&gt; under Windows. I am using X310 USRPs for some time now, and didn&#=
39;t<br>
&gt;&gt; have<br>
&gt;&gt; any problem with them. My development environment is Windows 10,<b=
r>
&gt;&gt; VS2017,<br>
&gt;&gt; boost 1.67 and UHD versions 3.13 and 3.14. When I tried to use my<=
br>
&gt;&gt; software with B200mini USRP device, UHD completely crashed. I did<=
br>
&gt;&gt; some<br>
&gt;&gt; investigation, and found out, that even original Ettus Research<br=
>
&gt;&gt; binary<br>
&gt;&gt; distribution crashes on USB devices.<br>
&gt;&gt; <br>
&gt;&gt; Even this tiny bit of code crashes when compiled and run under<br>
&gt;&gt; Windows:<br>
&gt;&gt; <br>
&gt;&gt; int UHD_SAFE_MAIN(int argc, char *argv[])<br>
&gt;&gt; {<br>
&gt;&gt; std::string hint =3D &quot;&quot;;<br>
&gt;&gt; uhd::device_addrs_t addrs;<br>
&gt;&gt; <br>
&gt;&gt; addrs =3D uhd::device::find(hint, uhd::device::ANY);<br>
&gt;&gt; }<br>
&gt;&gt; <br>
&gt;&gt; If you want to verify this does not work with USB devices at all,<=
br>
&gt;&gt; just<br>
&gt;&gt; run uhd_find_devices from UHD 3.14.1.0 binary release on bus serie=
s<br>
&gt;&gt; USRPs. I did use<br>
&gt;&gt; <br>
&gt; <a href=3D"http://files.ettus.com/binaries/uhd/uhd_003.014.001.000-rel=
ease/Windows-10-x64/uhd_3.14.1.0-release_Winx64_VS2017.exe" rel=3D"noreferr=
er" target=3D"_blank">http://files.ettus.com/binaries/uhd/uhd_003.014.001.0=
00-release/Windows-10-x64/uhd_3.14.1.0-release_Winx64_VS2017.exe</a><br>
&gt;&gt; <br>
&gt;&gt; I did trace the problem with uhd::device::find to destructor<br>
&gt;&gt; ~libusb_device_impl(void), which calls libusb_unref_device. This<b=
r>
&gt;&gt; should<br>
&gt;&gt; be called after libusb_free_device_list in libusb_device_list_impl=
,<br>
&gt;&gt; but<br>
&gt;&gt; when tracing the code, strange jumps occurs, and I suspect devices=
<br>
&gt;&gt; are<br>
&gt;&gt; unreferenced in destructor before they can be freed (but not<br>
&gt;&gt; unreferenced) in libusb_free_device_list. This works perfectly und=
er<br>
&gt;&gt; <br>
&gt;&gt; linux, but not in Windows. It can be some compiler optimization<br=
>
&gt;&gt; problem.<br>
&gt;&gt; <br>
&gt;&gt; This is not the only problem in UHD, just *any* attempts to use US=
B<br>
&gt;&gt; devices fails. uhd::usrp::multi_usrp::make for example runs, but<b=
r>
&gt;&gt; throws<br>
&gt;&gt; some 4 exceptions.<br>
&gt;&gt; <br>
&gt;&gt; More strangely, I suspect there is more to Windows UHD trouble. If=
 I<br>
&gt;&gt; do<br>
&gt;&gt; this: uhd::device_addr_t addr; code fails with exception, with no<=
br>
&gt;&gt; USRP<br>
&gt;&gt; devices connected. It is very similar to<br>
&gt;&gt; <br>
&gt; <a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2018-July/057279.html" rel=3D"noreferrer" target=3D"_blank">http://lists.e=
ttus.com/pipermail/usrp-users_lists.ettus.com/2018-July/057279.html</a><br>
&gt;&gt; <br>
&gt;&gt; .<br>
&gt;&gt; <br>
&gt;&gt; Does anyone have any clue how to resolve this issue ? I am using<b=
r>
&gt;&gt; linux<br>
&gt;&gt; as primary development OS with UHD, and I am not as fluent with MS=
VC<br>
&gt;&gt; <br>
&gt;&gt; compilers. I am using Windows just to compile Windows version of m=
y<br>
&gt;&gt; USRP<br>
&gt;&gt; software.<br>
&gt;&gt; <br>
&gt;&gt; Variants tested:<br>
&gt;&gt; <br>
&gt;&gt; Visual Studio 2015 and Visual Studio 2017, in their latest patch<b=
r>
&gt;&gt; versions.<br>
&gt;&gt; Boost 1.67, 1.68, 1.69 and 1.70<br>
&gt;&gt; libusb 1.0.22 and 1.0.23rc3<br>
&gt;&gt; debug and release, static and dynamic, and static and dynamic<br>
&gt;&gt; runtime<br>
&gt;&gt; versions of all three libraries.<br>
&gt;&gt; <br>
&gt;&gt; None does work.<br>
&gt;&gt; <br>
&gt;&gt; Best regards,<br>
&gt;&gt; <br>
&gt;&gt; Jakub Rybka<br>
&gt;&gt; <br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">US=
RP-users@lists.ettus.com</a><br>
&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000000baa020591568d9c--


--===============8002499632587244412==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8002499632587244412==--

