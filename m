Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 229EAA3BE3
	for <lists+usrp-users@lfdr.de>; Fri, 30 Aug 2019 18:24:35 +0200 (CEST)
Received: from [::1] (port=41414 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i3jhL-0000wK-V8; Fri, 30 Aug 2019 12:24:27 -0400
Received: from mail-lf1-f46.google.com ([209.85.167.46]:35211)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1i3jhI-0000nB-2W
 for usrp-users@lists.ettus.com; Fri, 30 Aug 2019 12:24:24 -0400
Received: by mail-lf1-f46.google.com with SMTP id w6so404139lfl.2
 for <usrp-users@lists.ettus.com>; Fri, 30 Aug 2019 09:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yng+EOfcnpO4esFWh20zc6yWMJ9ObBXFkq8YDFylM+w=;
 b=l5QISx8QdM5bveagvzHBrmx5GJZKblH1Mz7az6i5/tt4XyhGuImc7FmsZxPteS2oxa
 d9rZENc6tMxAVudVn5ugFiiqHzr2pYdt7AN1keR3nM/Jr16Ssvc61fFclg6681LFsbYH
 n0pH8srcGYYBx0vB04l5AB4Au0NZhRVWcrJA4hyd0K+B5VvUKraEXxuVJ7rhkP2+8lCJ
 yrBwE7lNKiVLv39wZMYy4ekz2lkzdN06U9h2g90WmpjxlbvOboxAYSVdKHOlVkTOhNUv
 kznuhNWozExrZHfYSpcn7ibXeI70FlpEU2qFmAmLjnpBgzVKx9PhXmOhFDUY2qRLwWbV
 GjzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yng+EOfcnpO4esFWh20zc6yWMJ9ObBXFkq8YDFylM+w=;
 b=W1RHzITDbvtnszjKEpCae09Gx944piSUA6Ypfv87QQB/yqoAzDGLBsd3IFGctmOsMk
 u81yHXIIGj5H0SPoxib/8TGJyGa3VwG3WJcgTkNWjBanahB0djPTEZgxfZBA1g5B5uy5
 nwPVT/0H/4iiBRFU5pQDEoB/euAa6fWSRMpsWUViQwYPWSBIlNu207IHIe3loGsHi4im
 EegI8wh541zdlr0U6ru45+xCs/qYBVbK2ZggbJnohutnAfA54Ca4IIFeKV/TcX45JicB
 5x5bWmGFbU48G9H9zHxH6CJhKxZPVGcU2DXFuAjzK0VBdMaGPnYw3hqFH4CGnJrMeCEr
 EAXA==
X-Gm-Message-State: APjAAAXOpD7GSmTjEASLjRvB8ARxUdu1qyYzetQco/sxJ86jiW+bA58s
 z54fsdPTS/vArw4gUI9TF/CNhju3LuOcd3tJMAyK1OoT
X-Google-Smtp-Source: APXvYqzY1G3F6c6Zh5zWXc/DgZj7dTkDktduFTZRTYkSs1NCzP/UQmvVw0p0Uqsy1TACn4R9fLELkcWTXd46e1TF2TM=
X-Received: by 2002:a19:a416:: with SMTP id q22mr10065722lfc.145.1567182222664; 
 Fri, 30 Aug 2019 09:23:42 -0700 (PDT)
MIME-Version: 1.0
References: <7c488dd82b360fb737d6f203b7b844df@mtit.org>
 <CANf970YL45SR71Q8UgcNjymzTNGXYqLvRu=fqUBGHJaSmDCOEQ@mail.gmail.com>
 <e541a57f3cc909795dc4d2b1e717af43@mtit.org>
 <CANf970Zf3zjb1GNko89Vie3EJPdyR7HmQdaGWqoBJ1VUMHA3fw@mail.gmail.com>
 <6d7ee1b40bea1a5a88db23f5a88c4101@mtit.org>
In-Reply-To: <6d7ee1b40bea1a5a88db23f5a88c4101@mtit.org>
Date: Fri, 30 Aug 2019 11:23:31 -0500
Message-ID: <CANf970YaRk_QUN2VfF+iVAa4+UvYiig0R+YGEd2isxNRQ3DWng@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============1816407629579410442=="
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

--===============1816407629579410442==
Content-Type: multipart/alternative; boundary="000000000000ae3a010591580bd2"

--000000000000ae3a010591580bd2
Content-Type: text/plain; charset="UTF-8"

Jakub,

If you specify:

uhd_find_devices.exe --args type=b200

Do you still see it hang?

Sam

On Fri, Aug 30, 2019 at 11:06 AM Jakub Rybka <rybka@mtit.org> wrote:

> Hello Sam,
>
>    rolling back to libusb 1.0.21 does indeed make things work better, but
> I must say far from perfect.
>
> D:\Libs\bin>uhd_find_devices.exe
> [INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_106900;
> UHD_3.14.1.0-release
> No UHD Devices Found
>
> Without any device connected, I finally have "No UHD Devices Found" and
> successful return code 0. But with USB USRP device connected, it just
> hangs, doesn't matter if it have firmware loaded or not.
>
> D:\Libs\bin>uhd_find_devices.exe
> [INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_106900;
> UHD_3.14.1.0-release
> *HANGS*
>
> But I can at least get output from uhd_usrp_probe:
>
> D:\Libs\bin>uhd_usrp_probe.exe
> [INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_106900;
> UHD_3.14.1.0-release
> [INFO] [B200] Loading firmware image: C:\UHD\usrp_b200_fw.hex...
> [INFO] [B200] Detected Device: B200mini
> [INFO] [B200] Loading FPGA image: C:\UHD\usrp_b200mini_fpga.bin...
> [INFO] [B200] Operating over USB 3.
> [INFO] [B200] Initialize CODEC control...
> [INFO] [B200] Initialize Radio control...
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Setting master clock rate selection to 'automatic'.
> [INFO] [B200] Asking for clock rate 16.000000 MHz...
> [INFO] [B200] Actually got clock rate 16.000000 MHz.
> *SHORTENED*
>
> As you can see, radio is working properly, and can get all properties
> and device tree. If I try my test program, which calls only
> uhd::device::find(hint, uhd::device::ANY);, i still do get exceptions
> even without any USB device, but at least it terminates with return code
> 0.
>
> Exception thrown at 0x00007FFC1C4A9129 in UHDTest.exe: Microsoft C++
> exception:
> boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<boost::system::system_error>
>
>  > at memory location 0x00000048601FB530.
> Exception thrown at 0x00007FFC1C4A9129 in UHDTest.exe: Microsoft C++
> exception: uhd::os_error at memory location 0x000000485F7DEB30.
> The thread 0xfc has exited with code 0 (0x0).
> The thread 0x820 has exited with code 0 (0x0).
> The thread 0x138c has exited with code 0 (0x0).
> The thread 0xe9c has exited with code 0 (0x0).
> The thread 0x217c has exited with code 0 (0x0).
> The thread 0x430 has exited with code 0 (0x0).
> The thread 0x438 has exited with code 0 (0x0).
> The thread 0x16dc has exited with code 0 (0x0).
> The thread 0x1638 has exited with code 0 (0x0).
> The thread 0x1c94 has exited with code 0 (0x0).
> The thread 0x1dac has exited with code 0 (0x0).
> The thread 0x22b8 has exited with code 0 (0x0).
> The thread 0x1830 has exited with code 0 (0x0).
> The thread 0x1330 has exited with code 0 (0x0).
> The thread 0x3f0 has exited with code 0 (0x0).
> The thread 0xdcc has exited with code 0 (0x0).
> The program '[4644] UHDTest.exe' has exited with code 0 (0x0).
>
> But I think it is safe to say, that libusb 1.0.22 and newer is causing
> *some* problems.
>
> Best regards,
>
> Jakub
>
>
> Dne 2019-08-30 16:36, Sam Reiter napsal:
> > Hey Jakub,
> >
> > Thanks for the additional details. I can confirm that I've seen some
> > suspicious behavior from with UHD 3.14.1.0 binary on my machine since
> > you sent this in. It seems like libusb 1.0.22 causes crashing behavior
> > with uhd_find_devices. I rolled this back to libusb 1.0.21 and things
> > seem to have improved, but I need to do some more testing. I'd like to
> > know if you have similar results.
> >
> > I'm going to get a fresh Windows image up and running today and see if
> > I can't characterize this any better on my end. I may reach back out
> > to you offline if there are any setup details we need to work through.
> > Otherwise, I'll try to post an update / resolution here once I have
> > it.
> >
> > Sam
> >
> > On Fri, Aug 30, 2019 at 6:13 AM Jakub Rybka <rybka@mtit.org> wrote:
> >
> >> Sam,
> >>
> >> I do have drivers installed on Windows 10 machine. I can manage the
> >> code
> >> to run by modifying UHD driver (commenting out libusb_unref_device),
> >> and
> >> my radio is then properly found. What is bugging me, that even
> >> original
> >> Ettus compiled UHD installer from files.ettus.com [1] fails. If
> >> there are no
> >> UHD devices connected, uhd_find_devices.exe just shows "No UHD
> >> Devices
> >> Found". Under Windows, there is no such message. The program just
> >> fails,
> >> and does NOT write this message. I tested it on multiple computers
> >> running Windows 10 LTSC and Windows 10 Professional 1903.
> >>
> >> Best regards,
> >> Jakub
> >>
> >> Dne 2019-08-29 16:54, Sam Reiter napsal:
> >>> Jakub,
> >>>
> >>> I'll look into this. The issues you're reporting with the binary
> >> are
> >>> probably what I'll want to try to reproduce first. Can you be more
> >>> specific as to the behavior of your system during the crash you're
> >>> reporting? Screenshots would be useful if there are dialogs
> >> present
> >>> during / after the crash.
> >>>
> >>> Beyond that, it sounds like you've had this system up and running
> >> with
> >>> a B series in the past, right? This would imply that you've
> >> installed
> >>> the Windows USB driver successfully:
> >>>
> >>
> >
> http://files.ettus.com/manual/page_transport.html#transport_usb_installwin
> >>> and that you can see the B series device in the Windows Device
> >> manager
> >>> when connected.
> >>>
> >>> Sam
> >>>
> >>> On Thu, Aug 29, 2019 at 3:11 AM Jakub Rybka via USRP-users
> >>> <usrp-users@lists.ettus.com> wrote:
> >>>
> >>>> Hello,
> >>>>
> >>>> I have encountered a strange problem using UHD 3.13 and 3.14
> >>>> releases
> >>>> under Windows. I am using X310 USRPs for some time now, and
> >> didn't
> >>>> have
> >>>> any problem with them. My development environment is Windows 10,
> >>>> VS2017,
> >>>> boost 1.67 and UHD versions 3.13 and 3.14. When I tried to use my
> >>>> software with B200mini USRP device, UHD completely crashed. I did
> >>>> some
> >>>> investigation, and found out, that even original Ettus Research
> >>>> binary
> >>>> distribution crashes on USB devices.
> >>>>
> >>>> Even this tiny bit of code crashes when compiled and run under
> >>>> Windows:
> >>>>
> >>>> int UHD_SAFE_MAIN(int argc, char *argv[])
> >>>> {
> >>>> std::string hint = "";
> >>>> uhd::device_addrs_t addrs;
> >>>>
> >>>> addrs = uhd::device::find(hint, uhd::device::ANY);
> >>>> }
> >>>>
> >>>> If you want to verify this does not work with USB devices at all,
> >>>> just
> >>>> run uhd_find_devices from UHD 3.14.1.0 binary release on bus
> >> series
> >>>> USRPs. I did use
> >>>>
> >>>
> >>
> >
> http://files.ettus.com/binaries/uhd/uhd_003.014.001.000-release/Windows-10-x64/uhd_3.14.1.0-release_Winx64_VS2017.exe
> >>>>
> >>>> I did trace the problem with uhd::device::find to destructor
> >>>> ~libusb_device_impl(void), which calls libusb_unref_device. This
> >>>> should
> >>>> be called after libusb_free_device_list in
> >> libusb_device_list_impl,
> >>>> but
> >>>> when tracing the code, strange jumps occurs, and I suspect
> >> devices
> >>>> are
> >>>> unreferenced in destructor before they can be freed (but not
> >>>> unreferenced) in libusb_free_device_list. This works perfectly
> >> under
> >>>>
> >>>> linux, but not in Windows. It can be some compiler optimization
> >>>> problem.
> >>>>
> >>>> This is not the only problem in UHD, just *any* attempts to use
> >> USB
> >>>> devices fails. uhd::usrp::multi_usrp::make for example runs, but
> >>>> throws
> >>>> some 4 exceptions.
> >>>>
> >>>> More strangely, I suspect there is more to Windows UHD trouble.
> >> If I
> >>>> do
> >>>> this: uhd::device_addr_t addr; code fails with exception, with no
> >>>> USRP
> >>>> devices connected. It is very similar to
> >>>>
> >>>
> >>
> >
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-July/057279.html
> >>>>
> >>>> .
> >>>>
> >>>> Does anyone have any clue how to resolve this issue ? I am using
> >>>> linux
> >>>> as primary development OS with UHD, and I am not as fluent with
> >> MSVC
> >>>>
> >>>> compilers. I am using Windows just to compile Windows version of
> >> my
> >>>> USRP
> >>>> software.
> >>>>
> >>>> Variants tested:
> >>>>
> >>>> Visual Studio 2015 and Visual Studio 2017, in their latest patch
> >>>> versions.
> >>>> Boost 1.67, 1.68, 1.69 and 1.70
> >>>> libusb 1.0.22 and 1.0.23rc3
> >>>> debug and release, static and dynamic, and static and dynamic
> >>>> runtime
> >>>> versions of all three libraries.
> >>>>
> >>>> None does work.
> >>>>
> >>>> Best regards,
> >>>>
> >>>> Jakub Rybka
> >>>>
> >>>> _______________________________________________
> >>>> USRP-users mailing list
> >>>> USRP-users@lists.ettus.com
> >>>>
> >> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> >
> > Links:
> > ------
> > [1] http://files.ettus.com
>

--000000000000ae3a010591580bd2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Jakub,</div><div><br></div><div>If you specify:</div>=
<div><br></div><div>uhd_find_devices.exe --args type=3Db200</div><div><br><=
/div><div>Do you still see it hang?</div><div><br></div><div><div><div dir=
=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr"><div><div dir=3D"ltr">Sam<br></div></div></div></div></div></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Fri, Aug 30, 2019 at 11:06 AM Jakub Rybka &lt;<a href=3D"mailto:rybka@=
mtit.org">rybka@mtit.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">Hello Sam,<br>
<br>
=C2=A0 =C2=A0rolling back to libusb 1.0.21 does indeed make things work bet=
ter, but <br>
I must say far from perfect.<br>
<br>
D:\Libs\bin&gt;uhd_find_devices.exe<br>
[INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_106900; <br>
UHD_3.14.1.0-release<br>
No UHD Devices Found<br>
<br>
Without any device connected, I finally have &quot;No UHD Devices Found&quo=
t; and <br>
successful return code 0. But with USB USRP device connected, it just <br>
hangs, doesn&#39;t matter if it have firmware loaded or not.<br>
<br>
D:\Libs\bin&gt;uhd_find_devices.exe<br>
[INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_106900; <br>
UHD_3.14.1.0-release<br>
*HANGS*<br>
<br>
But I can at least get output from uhd_usrp_probe:<br>
<br>
D:\Libs\bin&gt;uhd_usrp_probe.exe<br>
[INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_106900; <br>
UHD_3.14.1.0-release<br>
[INFO] [B200] Loading firmware image: C:\UHD\usrp_b200_fw.hex...<br>
[INFO] [B200] Detected Device: B200mini<br>
[INFO] [B200] Loading FPGA image: C:\UHD\usrp_b200mini_fpga.bin...<br>
[INFO] [B200] Operating over USB 3.<br>
[INFO] [B200] Initialize CODEC control...<br>
[INFO] [B200] Initialize Radio control...<br>
[INFO] [B200] Performing register loopback test...<br>
[INFO] [B200] Register loopback test passed<br>
[INFO] [B200] Setting master clock rate selection to &#39;automatic&#39;.<b=
r>
[INFO] [B200] Asking for clock rate 16.000000 MHz...<br>
[INFO] [B200] Actually got clock rate 16.000000 MHz.<br>
*SHORTENED*<br>
<br>
As you can see, radio is working properly, and can get all properties <br>
and device tree. If I try my test program, which calls only <br>
uhd::device::find(hint, uhd::device::ANY);, i still do get exceptions <br>
even without any USB device, but at least it terminates with return code <b=
r>
0.<br>
<br>
Exception thrown at 0x00007FFC1C4A9129 in UHDTest.exe: Microsoft C++ <br>
exception: <br>
boost::exception_detail::clone_impl&lt;boost::exception_detail::error_info_=
injector&lt;boost::system::system_error&gt; <br>
=C2=A0&gt; at memory location 0x00000048601FB530.<br>
Exception thrown at 0x00007FFC1C4A9129 in UHDTest.exe: Microsoft C++ <br>
exception: uhd::os_error at memory location 0x000000485F7DEB30.<br>
The thread 0xfc has exited with code 0 (0x0).<br>
The thread 0x820 has exited with code 0 (0x0).<br>
The thread 0x138c has exited with code 0 (0x0).<br>
The thread 0xe9c has exited with code 0 (0x0).<br>
The thread 0x217c has exited with code 0 (0x0).<br>
The thread 0x430 has exited with code 0 (0x0).<br>
The thread 0x438 has exited with code 0 (0x0).<br>
The thread 0x16dc has exited with code 0 (0x0).<br>
The thread 0x1638 has exited with code 0 (0x0).<br>
The thread 0x1c94 has exited with code 0 (0x0).<br>
The thread 0x1dac has exited with code 0 (0x0).<br>
The thread 0x22b8 has exited with code 0 (0x0).<br>
The thread 0x1830 has exited with code 0 (0x0).<br>
The thread 0x1330 has exited with code 0 (0x0).<br>
The thread 0x3f0 has exited with code 0 (0x0).<br>
The thread 0xdcc has exited with code 0 (0x0).<br>
The program &#39;[4644] UHDTest.exe&#39; has exited with code 0 (0x0).<br>
<br>
But I think it is safe to say, that libusb 1.0.22 and newer is causing <br>
*some* problems.<br>
<br>
Best regards,<br>
<br>
Jakub<br>
<br>
<br>
Dne 2019-08-30 16:36, Sam Reiter napsal:<br>
&gt; Hey Jakub,<br>
&gt; <br>
&gt; Thanks for the additional details. I can confirm that I&#39;ve seen so=
me<br>
&gt; suspicious behavior from with UHD 3.14.1.0 binary on my machine since<=
br>
&gt; you sent this in. It seems like libusb 1.0.22 causes crashing behavior=
<br>
&gt; with uhd_find_devices. I rolled this back to libusb 1.0.21 and things<=
br>
&gt; seem to have improved, but I need to do some more testing. I&#39;d lik=
e to<br>
&gt; know if you have similar results.<br>
&gt; <br>
&gt; I&#39;m going to get a fresh Windows image up and running today and se=
e if<br>
&gt; I can&#39;t characterize this any better on my end. I may reach back o=
ut<br>
&gt; to you offline if there are any setup details we need to work through.=
<br>
&gt; Otherwise, I&#39;ll try to post an update / resolution here once I hav=
e<br>
&gt; it.<br>
&gt; <br>
&gt; Sam<br>
&gt; <br>
&gt; On Fri, Aug 30, 2019 at 6:13 AM Jakub Rybka &lt;<a href=3D"mailto:rybk=
a@mtit.org" target=3D"_blank">rybka@mtit.org</a>&gt; wrote:<br>
&gt; <br>
&gt;&gt; Sam,<br>
&gt;&gt; <br>
&gt;&gt; I do have drivers installed on Windows 10 machine. I can manage th=
e<br>
&gt;&gt; code<br>
&gt;&gt; to run by modifying UHD driver (commenting out libusb_unref_device=
),<br>
&gt;&gt; and<br>
&gt;&gt; my radio is then properly found. What is bugging me, that even<br>
&gt;&gt; original<br>
&gt;&gt; Ettus compiled UHD installer from <a href=3D"http://files.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">files.ettus.com</a> [1] fails. If<b=
r>
&gt;&gt; there are no<br>
&gt;&gt; UHD devices connected, uhd_find_devices.exe just shows &quot;No UH=
D<br>
&gt;&gt; Devices<br>
&gt;&gt; Found&quot;. Under Windows, there is no such message. The program =
just<br>
&gt;&gt; fails,<br>
&gt;&gt; and does NOT write this message. I tested it on multiple computers=
<br>
&gt;&gt; running Windows 10 LTSC and Windows 10 Professional 1903.<br>
&gt;&gt; <br>
&gt;&gt; Best regards,<br>
&gt;&gt; Jakub<br>
&gt;&gt; <br>
&gt;&gt; Dne 2019-08-29 16:54, Sam Reiter napsal:<br>
&gt;&gt;&gt; Jakub,<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; I&#39;ll look into this. The issues you&#39;re reporting with =
the binary<br>
&gt;&gt; are<br>
&gt;&gt;&gt; probably what I&#39;ll want to try to reproduce first. Can you=
 be more<br>
&gt;&gt;&gt; specific as to the behavior of your system during the crash yo=
u&#39;re<br>
&gt;&gt;&gt; reporting? Screenshots would be useful if there are dialogs<br=
>
&gt;&gt; present<br>
&gt;&gt;&gt; during / after the crash.<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; Beyond that, it sounds like you&#39;ve had this system up and =
running<br>
&gt;&gt; with<br>
&gt;&gt;&gt; a B series in the past, right? This would imply that you&#39;v=
e<br>
&gt;&gt; installed<br>
&gt;&gt;&gt; the Windows USB driver successfully:<br>
&gt;&gt;&gt; <br>
&gt;&gt; <br>
&gt; <a href=3D"http://files.ettus.com/manual/page_transport.html#transport=
_usb_installwin" rel=3D"noreferrer" target=3D"_blank">http://files.ettus.co=
m/manual/page_transport.html#transport_usb_installwin</a><br>
&gt;&gt;&gt; and that you can see the B series device in the Windows Device=
<br>
&gt;&gt; manager<br>
&gt;&gt;&gt; when connected.<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; Sam<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; On Thu, Aug 29, 2019 at 3:11 AM Jakub Rybka via USRP-users<br>
&gt;&gt;&gt; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_b=
lank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; Hello,<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; I have encountered a strange problem using UHD 3.13 and 3.=
14<br>
&gt;&gt;&gt;&gt; releases<br>
&gt;&gt;&gt;&gt; under Windows. I am using X310 USRPs for some time now, an=
d<br>
&gt;&gt; didn&#39;t<br>
&gt;&gt;&gt;&gt; have<br>
&gt;&gt;&gt;&gt; any problem with them. My development environment is Windo=
ws 10,<br>
&gt;&gt;&gt;&gt; VS2017,<br>
&gt;&gt;&gt;&gt; boost 1.67 and UHD versions 3.13 and 3.14. When I tried to=
 use my<br>
&gt;&gt;&gt;&gt; software with B200mini USRP device, UHD completely crashed=
. I did<br>
&gt;&gt;&gt;&gt; some<br>
&gt;&gt;&gt;&gt; investigation, and found out, that even original Ettus Res=
earch<br>
&gt;&gt;&gt;&gt; binary<br>
&gt;&gt;&gt;&gt; distribution crashes on USB devices.<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; Even this tiny bit of code crashes when compiled and run u=
nder<br>
&gt;&gt;&gt;&gt; Windows:<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; int UHD_SAFE_MAIN(int argc, char *argv[])<br>
&gt;&gt;&gt;&gt; {<br>
&gt;&gt;&gt;&gt; std::string hint =3D &quot;&quot;;<br>
&gt;&gt;&gt;&gt; uhd::device_addrs_t addrs;<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; addrs =3D uhd::device::find(hint, uhd::device::ANY);<br>
&gt;&gt;&gt;&gt; }<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; If you want to verify this does not work with USB devices =
at all,<br>
&gt;&gt;&gt;&gt; just<br>
&gt;&gt;&gt;&gt; run uhd_find_devices from UHD 3.14.1.0 binary release on b=
us<br>
&gt;&gt; series<br>
&gt;&gt;&gt;&gt; USRPs. I did use<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt; <br>
&gt;&gt; <br>
&gt; <a href=3D"http://files.ettus.com/binaries/uhd/uhd_003.014.001.000-rel=
ease/Windows-10-x64/uhd_3.14.1.0-release_Winx64_VS2017.exe" rel=3D"noreferr=
er" target=3D"_blank">http://files.ettus.com/binaries/uhd/uhd_003.014.001.0=
00-release/Windows-10-x64/uhd_3.14.1.0-release_Winx64_VS2017.exe</a><br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; I did trace the problem with uhd::device::find to destruct=
or<br>
&gt;&gt;&gt;&gt; ~libusb_device_impl(void), which calls libusb_unref_device=
. This<br>
&gt;&gt;&gt;&gt; should<br>
&gt;&gt;&gt;&gt; be called after libusb_free_device_list in<br>
&gt;&gt; libusb_device_list_impl,<br>
&gt;&gt;&gt;&gt; but<br>
&gt;&gt;&gt;&gt; when tracing the code, strange jumps occurs, and I suspect=
<br>
&gt;&gt; devices<br>
&gt;&gt;&gt;&gt; are<br>
&gt;&gt;&gt;&gt; unreferenced in destructor before they can be freed (but n=
ot<br>
&gt;&gt;&gt;&gt; unreferenced) in libusb_free_device_list. This works perfe=
ctly<br>
&gt;&gt; under<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; linux, but not in Windows. It can be some compiler optimiz=
ation<br>
&gt;&gt;&gt;&gt; problem.<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; This is not the only problem in UHD, just *any* attempts t=
o use<br>
&gt;&gt; USB<br>
&gt;&gt;&gt;&gt; devices fails. uhd::usrp::multi_usrp::make for example run=
s, but<br>
&gt;&gt;&gt;&gt; throws<br>
&gt;&gt;&gt;&gt; some 4 exceptions.<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; More strangely, I suspect there is more to Windows UHD tro=
uble.<br>
&gt;&gt; If I<br>
&gt;&gt;&gt;&gt; do<br>
&gt;&gt;&gt;&gt; this: uhd::device_addr_t addr; code fails with exception, =
with no<br>
&gt;&gt;&gt;&gt; USRP<br>
&gt;&gt;&gt;&gt; devices connected. It is very similar to<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt; <br>
&gt;&gt; <br>
&gt; <a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2018-July/057279.html" rel=3D"noreferrer" target=3D"_blank">http://lists.e=
ttus.com/pipermail/usrp-users_lists.ettus.com/2018-July/057279.html</a><br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; .<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; Does anyone have any clue how to resolve this issue ? I am=
 using<br>
&gt;&gt;&gt;&gt; linux<br>
&gt;&gt;&gt;&gt; as primary development OS with UHD, and I am not as fluent=
 with<br>
&gt;&gt; MSVC<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; compilers. I am using Windows just to compile Windows vers=
ion of<br>
&gt;&gt; my<br>
&gt;&gt;&gt;&gt; USRP<br>
&gt;&gt;&gt;&gt; software.<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; Variants tested:<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; Visual Studio 2015 and Visual Studio 2017, in their latest=
 patch<br>
&gt;&gt;&gt;&gt; versions.<br>
&gt;&gt;&gt;&gt; Boost 1.67, 1.68, 1.69 and 1.70<br>
&gt;&gt;&gt;&gt; libusb 1.0.22 and 1.0.23rc3<br>
&gt;&gt;&gt;&gt; debug and release, static and dynamic, and static and dyna=
mic<br>
&gt;&gt;&gt;&gt; runtime<br>
&gt;&gt;&gt;&gt; versions of all three libraries.<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; None does work.<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; Best regards,<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; Jakub Rybka<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_b=
lank">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
&gt; <br>
&gt; Links:<br>
&gt; ------<br>
&gt; [1] <a href=3D"http://files.ettus.com" rel=3D"noreferrer" target=3D"_b=
lank">http://files.ettus.com</a><br>
</blockquote></div>

--000000000000ae3a010591580bd2--


--===============1816407629579410442==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1816407629579410442==--

